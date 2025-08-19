.class public Lorg/qtproject/qt/android/multimedia/QtCameraListener;
.super Ljava/lang/Object;
.source "QtCameraListener.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final BUFFER_POOL_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Qt Camera"


# instance fields
.field private m_cameraId:I

.field private m_lastPreviewBuffer:[B

.field private m_notifyNewFrames:Z

.field private m_notifyWhenFrameAvailable:Z

.field private m_previewBuffers:[[B

.field private m_previewBytesPerLine:I

.field private m_previewFormat:I

.field private m_previewSize:Landroid/hardware/Camera$Size;


# direct methods
.method private constructor <init>(I)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_cameraId:I

    .line 33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_notifyNewFrames:Z

    .line 34
    iput-boolean v1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_notifyWhenFrameAvailable:Z

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBuffers:[[B

    .line 36
    iput-object v1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_lastPreviewBuffer:[B

    .line 37
    iput-object v1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    .line 38
    const/16 v1, 0x11

    iput v1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewFormat:I

    .line 39
    iput v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBytesPerLine:I

    .line 43
    iput p1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_cameraId:I

    .line 44
    return-void
.end method

.method private static native notifyAutoFocusComplete(IZ)V
.end method

.method private static native notifyFrameAvailable(I)V
.end method

.method private static native notifyNewPreviewFrame(I[BIIII)V
.end method

.method private static native notifyPictureCaptured(I[B)V
.end method

.method private static native notifyPictureExposed(I)V
.end method


# virtual methods
.method public clearPreviewCallback(Landroid/hardware/Camera;)V
    .locals 1

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 90
    return-void
.end method

.method public lastPreviewBuffer()[B
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_lastPreviewBuffer:[B

    return-object v0
.end method

.method public notifyNewFrames(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_notifyNewFrames:Z

    .line 49
    return-void
.end method

.method public notifyWhenFrameAvailable(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_notifyWhenFrameAvailable:Z

    .line 54
    return-void
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    .line 243
    iget p2, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_cameraId:I

    invoke-static {p2, p1}, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->notifyAutoFocusComplete(IZ)V

    .line 244
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 11

    .line 175
    nop

    .line 177
    const/4 p2, 0x0

    :try_start_0
    const-string v0, "pic_"

    const-string v1, ".jpg"

    invoke-static {}, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils;->getCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 178
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 181
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0xa

    .line 182
    invoke-virtual {v1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 184
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 185
    const-string v1, "Orientation"

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 188
    nop

    .line 190
    sparse-switch v0, :sswitch_data_0

    move v0, v2

    goto :goto_0

    .line 198
    :sswitch_0
    const/16 v0, 0x10e

    goto :goto_0

    .line 192
    :sswitch_1
    const/16 v0, 0x5a

    .line 193
    goto :goto_0

    .line 195
    :sswitch_2
    const/16 v0, 0xb4

    .line 196
    nop

    .line 202
    :goto_0
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 203
    iget v3, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_cameraId:I

    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 205
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v0

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    .line 207
    array-length v0, p1

    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 209
    int-to-float v2, v3

    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 211
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 212
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-virtual {v9, v1, v2, v3, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 215
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 216
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    .line 215
    move-object v4, v0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 218
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 219
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 220
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 222
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 225
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_cameraId:I

    invoke-static {v0, v2}, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->notifyPictureCaptured(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 234
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 227
    :cond_1
    return-void

    .line 233
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    :try_start_1
    const-string v1, "Qt Camera"

    const-string v2, "Error fixing bitmap orientation."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 237
    :cond_2
    iget p2, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_cameraId:I

    invoke-static {p2, p1}, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->notifyPictureCaptured(I[B)V

    .line 238
    return-void

    .line 233
    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 235
    :cond_3
    throw p1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x6 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6

    .line 147
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_lastPreviewBuffer:[B

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 150
    :cond_0
    iput-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_lastPreviewBuffer:[B

    .line 152
    if-eqz p1, :cond_2

    .line 153
    iget-boolean p2, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_notifyWhenFrameAvailable:Z

    if-eqz p2, :cond_1

    .line 154
    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_notifyWhenFrameAvailable:Z

    .line 155
    iget p2, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_cameraId:I

    invoke-static {p2}, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->notifyFrameAvailable(I)V

    .line 157
    :cond_1
    iget-boolean p2, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_notifyNewFrames:Z

    if-eqz p2, :cond_2

    .line 158
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_cameraId:I

    iget-object p2, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    iget-object p2, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    iget v3, p2, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewFormat:I

    iget v5, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBytesPerLine:I

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->notifyNewPreviewFrame(I[BIIII)V

    .line 164
    :cond_2
    return-void
.end method

.method public onShutter()V
    .locals 1

    .line 169
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_cameraId:I

    invoke-static {v0}, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->notifyPictureExposed(I)V

    .line 170
    return-void
.end method

.method public previewBytesPerLine()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBytesPerLine:I

    return v0
.end method

.method public previewFormat()I
    .locals 1

    .line 79
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewFormat:I

    return v0
.end method

.method public previewHeight()I
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, -0x1

    return v0

    .line 74
    :cond_0
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    return v0
.end method

.method public previewWidth()I
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    if-nez v0, :cond_0

    .line 64
    const/4 v0, -0x1

    return v0

    .line 66
    :cond_0
    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    return v0
.end method

.method public setupPreviewCallback(Landroid/hardware/Camera;)V
    .locals 6

    .line 95
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->clearPreviewCallback(Landroid/hardware/Camera;)V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_lastPreviewBuffer:[B

    .line 98
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iput-object v1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    .line 100
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    iput v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewFormat:I

    .line 102
    nop

    .line 103
    const/4 v1, 0x2

    const v2, 0x32315659

    if-ne v0, v2, :cond_0

    .line 105
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    mul-int/lit8 v0, v0, 0x10

    .line 106
    div-int/lit8 v2, v0, 0x2

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x10

    .line 107
    iget-object v3, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v0

    .line 108
    iget-object v4, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v4

    div-int/2addr v2, v1

    .line 109
    mul-int/2addr v2, v1

    add-int/2addr v3, v2

    .line 111
    iput v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBytesPerLine:I

    .line 113
    goto :goto_0

    .line 114
    :cond_0
    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    .line 115
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v0

    mul-double/2addr v2, v4

    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v3, v2

    .line 118
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewFormat:I

    sparse-switch v0, :sswitch_data_0

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBytesPerLine:I

    goto :goto_0

    .line 120
    :sswitch_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBytesPerLine:I

    .line 121
    goto :goto_0

    .line 124
    :sswitch_1
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBytesPerLine:I

    .line 125
    nop

    .line 134
    :goto_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBuffers:[[B

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    aget-object v0, v0, v2

    array-length v0, v0

    if-eq v0, v3, :cond_2

    .line 135
    :cond_1
    new-array v0, v1, [I

    const/4 v4, 0x1

    aput v3, v0, v4

    aput v1, v0, v2

    const-class v1, B

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBuffers:[[B

    .line 138
    :cond_2
    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 139
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBuffers:[[B

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 140
    invoke-virtual {p1, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 141
    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x11 -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method
