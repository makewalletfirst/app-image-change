.class public Lde/markusfisch/android/cameraview/widget/CameraView;
.super Landroid/widget/FrameLayout;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;
    }
.end annotation


# static fields
.field public static final SCALE_TYPE_CENTER_CROP:I = 0x0

.field public static final SCALE_TYPE_CENTER_INSIDE:I = 0x1


# instance fields
.field private cam:Landroid/hardware/Camera;

.field private cameraCallbackThread:Landroid/os/HandlerThread;

.field private cameraListener:Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;

.field private final focusRunnable:Ljava/lang/Runnable;

.field private frameHeight:I

.field private frameOrientation:I

.field private frameWidth:I

.field private isOpen:Z

.field private orientationListener:Landroid/view/OrientationEventListener;

.field public final previewRect:Landroid/graphics/Rect;

.field private scaleType:I

.field private tries:I

.field private useOrientationListener:Z

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 207
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->previewRect:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Lde/markusfisch/android/cameraview/widget/CameraView$1;

    invoke-direct {v0, p0}, Lde/markusfisch/android/cameraview/widget/CameraView$1;-><init>(Lde/markusfisch/android/cameraview/widget/CameraView;)V

    iput-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->focusRunnable:Ljava/lang/Runnable;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->isOpen:Z

    .line 53
    iput-boolean v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->useOrientationListener:Z

    .line 58
    iput v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->scaleType:I

    .line 59
    iput v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->tries:I

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 211
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->previewRect:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Lde/markusfisch/android/cameraview/widget/CameraView$1;

    invoke-direct {v0, p0}, Lde/markusfisch/android/cameraview/widget/CameraView$1;-><init>(Lde/markusfisch/android/cameraview/widget/CameraView;)V

    iput-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->focusRunnable:Ljava/lang/Runnable;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->isOpen:Z

    .line 53
    iput-boolean v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->useOrientationListener:Z

    .line 58
    iput v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->scaleType:I

    .line 59
    iput v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->tries:I

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 218
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->previewRect:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Lde/markusfisch/android/cameraview/widget/CameraView$1;

    invoke-direct {v0, p0}, Lde/markusfisch/android/cameraview/widget/CameraView$1;-><init>(Lde/markusfisch/android/cameraview/widget/CameraView;)V

    iput-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->focusRunnable:Ljava/lang/Runnable;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->isOpen:Z

    .line 53
    iput-boolean v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->useOrientationListener:Z

    .line 58
    iput v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->scaleType:I

    .line 59
    iput v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->tries:I

    .line 219
    return-void
.end method

.method static synthetic access$000(Lde/markusfisch/android/cameraview/widget/CameraView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lde/markusfisch/android/cameraview/widget/CameraView;

    .line 27
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->focusRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lde/markusfisch/android/cameraview/widget/CameraView;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lde/markusfisch/android/cameraview/widget/CameraView;

    .line 27
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cam:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$200(I)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # I

    .line 27
    invoke-static {p0}, Lde/markusfisch/android/cameraview/widget/CameraView;->openCameraAndCatch(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lde/markusfisch/android/cameraview/widget/CameraView;Landroid/hardware/Camera;I)V
    .locals 0
    .param p0, "x0"    # Lde/markusfisch/android/cameraview/widget/CameraView;
    .param p1, "x1"    # Landroid/hardware/Camera;
    .param p2, "x2"    # I

    .line 27
    invoke-direct {p0, p1, p2}, Lde/markusfisch/android/cameraview/widget/CameraView;->initCamera(Landroid/hardware/Camera;I)V

    return-void
.end method

.method static synthetic access$400(Lde/markusfisch/android/cameraview/widget/CameraView;)Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;
    .locals 1
    .param p0, "x0"    # Lde/markusfisch/android/cameraview/widget/CameraView;

    .line 27
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cameraListener:Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;

    return-object v0
.end method

.method private addPreview(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 444
    :try_start_0
    invoke-direct {p0}, Lde/markusfisch/android/cameraview/widget/CameraView;->setCameraParameters()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .local v0, "transpose":Z
    nop

    .line 453
    if-eqz v0, :cond_0

    .line 454
    iget v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->frameHeight:I

    .line 455
    .local v1, "childWidth":I
    iget v2, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->frameWidth:I

    .local v2, "childHeight":I
    goto :goto_0

    .line 457
    .end local v1    # "childWidth":I
    .end local v2    # "childHeight":I
    :cond_0
    iget v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->frameWidth:I

    .line 458
    .restart local v1    # "childWidth":I
    iget v2, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->frameHeight:I

    .line 460
    .restart local v2    # "childHeight":I
    :goto_0
    invoke-direct {p0, p1, v1, v2}, Lde/markusfisch/android/cameraview/widget/CameraView;->addSurfaceView(Landroid/content/Context;II)V

    .line 461
    iget-object v3, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cameraListener:Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;

    if-eqz v3, :cond_1

    .line 462
    iget-object v4, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cam:Landroid/hardware/Camera;

    invoke-interface {v3, v4}, Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;->onCameraReady(Landroid/hardware/Camera;)V

    .line 464
    :cond_1
    return-void

    .line 445
    .end local v0    # "transpose":Z
    .end local v1    # "childWidth":I
    .end local v2    # "childHeight":I
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cameraListener:Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;

    if-eqz v1, :cond_2

    .line 447
    iget-object v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cameraListener:Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;

    invoke-interface {v1}, Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;->onCameraError()V

    .line 449
    :cond_2
    return-void
.end method

.method private addSurfaceView(Landroid/content/Context;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "surfaceWidth"    # I
    .param p3, "surfaceHeight"    # I

    .line 506
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 507
    .local v0, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v8

    .line 508
    .local v8, "holder":Landroid/view/SurfaceHolder;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 509
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 511
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 512
    new-instance v2, Lde/markusfisch/android/cameraview/widget/CameraView$7;

    invoke-direct {v2, p0}, Lde/markusfisch/android/cameraview/widget/CameraView$7;-><init>(Lde/markusfisch/android/cameraview/widget/CameraView;)V

    invoke-interface {v8, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 543
    invoke-virtual {p0, v0}, Lde/markusfisch/android/cameraview/widget/CameraView;->addView(Landroid/view/View;)V

    .line 544
    iget v2, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->viewWidth:I

    iget v3, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->viewHeight:I

    iget-object v6, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->previewRect:Landroid/graphics/Rect;

    iget v4, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->scaleType:I

    if-ne v4, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v7, v1

    move v1, v2

    move v2, v3

    move-object v3, v0

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v7}, Lde/markusfisch/android/cameraview/widget/CameraView;->setChildLayout(IILandroid/view/View;IILandroid/graphics/Rect;Z)V

    .line 552
    return-void
.end method

.method private enableOrientationListener(Landroid/content/Context;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # I

    .line 424
    nop

    .line 425
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 426
    .local v0, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v8

    .line 427
    .local v8, "defaultOrientation":I
    new-instance v9, Lde/markusfisch/android/cameraview/widget/CameraView$6;

    const/4 v4, 0x3

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v5, v8

    move-object v6, v0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lde/markusfisch/android/cameraview/widget/CameraView$6;-><init>(Lde/markusfisch/android/cameraview/widget/CameraView;Landroid/content/Context;IILandroid/view/Display;I)V

    iput-object v9, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->orientationListener:Landroid/view/OrientationEventListener;

    .line 438
    invoke-virtual {v9}, Landroid/view/OrientationEventListener;->enable()V

    .line 439
    return-void
.end method

.method public static findBestPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 20
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .line 178
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move/from16 v0, p1

    move/from16 v1, p2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 179
    .local v2, "ASPECT_TOLERANCE":D
    int-to-double v4, v0

    int-to-double v6, v1

    div-double/2addr v4, v6

    .line 180
    .local v4, "targetRatio":D
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 181
    .local v6, "minDiff":D
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 182
    .local v8, "minDiffAspect":D
    const/4 v10, 0x0

    .line 183
    .local v10, "bestSize":Landroid/hardware/Camera$Size;
    const/4 v11, 0x0

    .line 185
    .local v11, "bestSizeAspect":Landroid/hardware/Camera$Size;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/Camera$Size;

    .line 186
    .local v13, "size":Landroid/hardware/Camera$Size;
    iget v14, v13, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v14, v1

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-double v14, v14

    iget v1, v13, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v1, v0

    .line 187
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v0, v1

    add-double/2addr v14, v0

    .line 189
    .local v14, "diff":D
    cmpg-double v0, v14, v6

    if-gez v0, :cond_0

    .line 190
    move-object v0, v13

    .line 191
    .end local v10    # "bestSize":Landroid/hardware/Camera$Size;
    .local v0, "bestSize":Landroid/hardware/Camera$Size;
    move-wide v6, v14

    move-object v10, v0

    .line 194
    .end local v0    # "bestSize":Landroid/hardware/Camera$Size;
    .restart local v10    # "bestSize":Landroid/hardware/Camera$Size;
    :cond_0
    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    int-to-double v0, v0

    move-wide/from16 v16, v2

    .end local v2    # "ASPECT_TOLERANCE":D
    .local v16, "ASPECT_TOLERANCE":D
    iget v2, v13, Landroid/hardware/Camera$Size;->height:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 196
    .local v0, "ratio":D
    sub-double v2, v0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v18, 0x3fb999999999999aL    # 0.1

    cmpg-double v2, v2, v18

    if-gez v2, :cond_1

    cmpg-double v2, v14, v8

    if-gez v2, :cond_1

    .line 198
    move-object v2, v13

    .line 199
    .end local v11    # "bestSizeAspect":Landroid/hardware/Camera$Size;
    .local v2, "bestSizeAspect":Landroid/hardware/Camera$Size;
    move-wide v8, v14

    move-object v11, v2

    .line 201
    .end local v0    # "ratio":D
    .end local v2    # "bestSizeAspect":Landroid/hardware/Camera$Size;
    .end local v13    # "size":Landroid/hardware/Camera$Size;
    .end local v14    # "diff":D
    .restart local v11    # "bestSizeAspect":Landroid/hardware/Camera$Size;
    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    move-wide/from16 v2, v16

    goto :goto_0

    .line 203
    .end local v16    # "ASPECT_TOLERANCE":D
    .local v2, "ASPECT_TOLERANCE":D
    :cond_2
    move-wide/from16 v16, v2

    .end local v2    # "ASPECT_TOLERANCE":D
    .restart local v16    # "ASPECT_TOLERANCE":D
    if-eqz v11, :cond_3

    move-object v0, v11

    goto :goto_1

    :cond_3
    move-object v0, v10

    :goto_1
    return-object v0
.end method

.method public static findCameraId(I)I
    .locals 4
    .param p0, "facing"    # I

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .local v1, "l":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 68
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 69
    .local v2, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 70
    iget v3, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, p0, :cond_0

    .line 71
    return v0

    .line 67
    .end local v2    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "i":I
    .end local v1    # "l":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static getDeviceRotation(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 90
    nop

    .line 91
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 92
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    const/4 v0, 0x0

    return v0

    .line 99
    :pswitch_0
    const/16 v0, 0x10e

    return v0

    .line 97
    :pswitch_1
    const/16 v0, 0xb4

    return v0

    .line 95
    :pswitch_2
    const/16 v0, 0x5a

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRelativeCameraOrientation(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraId"    # I

    .line 80
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 81
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 82
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 83
    .local v1, "orientation":I
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 84
    add-int/lit16 v1, v1, -0xb4

    .line 86
    :cond_0
    invoke-static {p0}, Lde/markusfisch/android/cameraview/widget/CameraView;->getDeviceRotation(Landroid/content/Context;)I

    move-result v2

    sub-int v2, v1, v2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    return v2
.end method

.method private initCamera(Landroid/hardware/Camera;I)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "cameraId"    # I

    .line 376
    iget-boolean v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->isOpen:Z

    if-nez v0, :cond_1

    .line 379
    if-eqz p1, :cond_0

    .line 380
    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    .line 382
    :cond_0
    return-void

    .line 384
    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 385
    iget-object v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cameraListener:Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cam:Landroid/hardware/Camera;

    if-nez v2, :cond_3

    .line 389
    iget v2, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->tries:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 390
    iput-boolean v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->isOpen:Z

    .line 391
    invoke-virtual {p0, p2}, Lde/markusfisch/android/cameraview/widget/CameraView;->openAsync(I)V

    .line 392
    iget v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->tries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->tries:I

    goto :goto_0

    .line 394
    :cond_2
    invoke-interface {v1}, Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;->onCameraError()V

    .line 397
    :cond_3
    :goto_0
    return-void

    .line 399
    :cond_4
    iput v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->tries:I

    .line 400
    iput-object p1, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cam:Landroid/hardware/Camera;

    .line 401
    new-instance v0, Lde/markusfisch/android/cameraview/widget/CameraView$5;

    invoke-direct {v0, p0}, Lde/markusfisch/android/cameraview/widget/CameraView$5;-><init>(Lde/markusfisch/android/cameraview/widget/CameraView;)V

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 408
    invoke-virtual {p0}, Lde/markusfisch/android/cameraview/widget/CameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 409
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_5

    .line 410
    invoke-virtual {p0}, Lde/markusfisch/android/cameraview/widget/CameraView;->close()V

    .line 411
    return-void

    .line 413
    :cond_5
    iget-boolean v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->useOrientationListener:Z

    if-eqz v1, :cond_6

    .line 414
    invoke-direct {p0, v0, p2}, Lde/markusfisch/android/cameraview/widget/CameraView;->enableOrientationListener(Landroid/content/Context;I)V

    .line 416
    :cond_6
    invoke-static {v0, p2}, Lde/markusfisch/android/cameraview/widget/CameraView;->getRelativeCameraOrientation(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->frameOrientation:I

    .line 417
    iget v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->viewWidth:I

    if-lez v1, :cond_7

    .line 418
    invoke-direct {p0, v0}, Lde/markusfisch/android/cameraview/widget/CameraView;->addPreview(Landroid/content/Context;)V

    .line 420
    :cond_7
    return-void
.end method

.method private static openCameraAndCatch(I)Landroid/hardware/Camera;
    .locals 2
    .param p0, "cameraId"    # I

    .line 369
    :try_start_0
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static setAutoFocus(Landroid/hardware/Camera$Parameters;)Z
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 109
    const-string v0, "continuous-picture"

    .line 112
    .local v0, "continuousPicture":Ljava/lang/String;
    const-string v1, "continuous-video"

    .line 115
    .local v1, "continuousVideo":Ljava/lang/String;
    const-string v2, "auto"

    .line 118
    .local v2, "autoFocus":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    .line 120
    .local v3, "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 130
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 127
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method private setCameraParameters()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 467
    iget v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->frameOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 468
    .local v0, "transpose":Z
    :goto_1
    iget-object v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 469
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    iget v2, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->frameOrientation:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 470
    invoke-direct {p0, v1, v0}, Lde/markusfisch/android/cameraview/widget/CameraView;->setPreviewSize(Landroid/hardware/Camera$Parameters;Z)V

    .line 471
    iget-object v2, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cameraListener:Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;

    if-eqz v2, :cond_2

    .line 472
    invoke-interface {v2, v1}, Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;->onConfigureParameters(Landroid/hardware/Camera$Parameters;)V

    .line 474
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 475
    .local v2, "size":Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_3

    .line 476
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iput v3, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->frameWidth:I

    .line 477
    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    iput v3, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->frameHeight:I

    .line 479
    :cond_3
    iget-object v3, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 480
    iget-object v3, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cam:Landroid/hardware/Camera;

    iget v4, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->frameOrientation:I

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 481
    return v0
.end method

.method private static setChildLayout(IILandroid/view/View;IILandroid/graphics/Rect;Z)V
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "child"    # Landroid/view/View;
    .param p3, "childWidth"    # I
    .param p4, "childHeight"    # I
    .param p5, "childRect"    # Landroid/graphics/Rect;
    .param p6, "centerInside"    # Z

    .line 562
    mul-int v0, p0, p4

    .line 563
    .local v0, "widthByHeight":I
    mul-int v1, p1, p3

    .line 564
    .local v1, "heightByWidth":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p6, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    .line 567
    .local v4, "dontScaleBeyondScreen":Z
    :goto_1
    if-eqz v4, :cond_2

    if-le v0, v1, :cond_3

    goto :goto_2

    :cond_2
    if-ge v0, v1, :cond_3

    .line 572
    :goto_2
    mul-int v5, p3, p1

    div-int/2addr v5, p4

    .line 573
    .end local p3    # "childWidth":I
    .local v5, "childWidth":I
    move p3, p1

    .end local p4    # "childHeight":I
    .local p3, "childHeight":I
    goto :goto_3

    .line 575
    .end local v5    # "childWidth":I
    .local p3, "childWidth":I
    .restart local p4    # "childHeight":I
    :cond_3
    mul-int v5, p4, p0

    div-int p4, v5, p3

    .line 576
    move v5, p0

    move p3, p4

    .line 579
    .end local p4    # "childHeight":I
    .restart local v5    # "childWidth":I
    .local p3, "childHeight":I
    :goto_3
    sub-int p4, p0, v5

    shr-int/2addr p4, v3

    .line 580
    .local p4, "l":I
    if-eqz v4, :cond_4

    .line 581
    sub-int v2, p1, p3

    shr-int/2addr v2, v3

    goto :goto_4

    .line 582
    :cond_4
    nop

    :goto_4
    nop

    .line 584
    .local v2, "t":I
    add-int v3, p4, v5

    add-int v6, v2, p3

    invoke-virtual {p5, p4, v2, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 590
    iget v3, p5, Landroid/graphics/Rect;->left:I

    iget v6, p5, Landroid/graphics/Rect;->top:I

    iget v7, p5, Landroid/graphics/Rect;->right:I

    iget v8, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v3, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 595
    return-void
.end method

.method private setPreviewSize(Landroid/hardware/Camera$Parameters;Z)V
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "transpose"    # Z

    .line 487
    if-eqz p2, :cond_0

    .line 488
    iget v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->viewHeight:I

    iput v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->frameWidth:I

    .line 489
    iget v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->viewWidth:I

    iput v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->frameHeight:I

    goto :goto_0

    .line 491
    :cond_0
    iget v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->viewWidth:I

    iput v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->frameWidth:I

    .line 492
    iget v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->viewHeight:I

    iput v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->frameHeight:I

    .line 494
    :goto_0
    nop

    .line 496
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->frameWidth:I

    iget v2, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->frameHeight:I

    .line 494
    invoke-static {v0, v1, v2}, Lde/markusfisch/android/cameraview/widget/CameraView;->findBestPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 499
    .local v0, "size":Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 500
    return-void
.end method


# virtual methods
.method public calculateFocusRect(FFI)Landroid/graphics/Rect;
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # I

    .line 310
    iget v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->viewWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float v0, v1, v0

    mul-float/2addr v0, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 311
    .local v0, "cx":I
    iget v3, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->viewHeight:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float/2addr v1, p2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 312
    .local v1, "cy":I
    new-instance v2, Landroid/graphics/Rect;

    sub-int v3, v0, p3

    .line 313
    const/16 v4, -0x3e8

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v5, v1, p3

    .line 314
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v5, v0, p3

    .line 315
    const/16 v6, 0x3e8

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v7, v1, p3

    .line 316
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 312
    return-object v2
.end method

.method public close()V
    .locals 3

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->isOpen:Z

    .line 264
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->orientationListener:Landroid/view/OrientationEventListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 266
    iput-object v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->orientationListener:Landroid/view/OrientationEventListener;

    .line 268
    :cond_0
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cam:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 269
    iget-object v2, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cameraListener:Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;

    if-eqz v2, :cond_1

    .line 270
    invoke-interface {v2, v0}, Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;->onCameraStopping(Landroid/hardware/Camera;)V

    .line 272
    :cond_1
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 273
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 274
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 275
    iput-object v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cam:Landroid/hardware/Camera;

    .line 277
    :cond_2
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cameraCallbackThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 279
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 281
    :try_start_0
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cameraCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 284
    :goto_0
    iput-object v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cameraCallbackThread:Landroid/os/HandlerThread;

    .line 286
    :cond_3
    invoke-virtual {p0}, Lde/markusfisch/android/cameraview/widget/CameraView;->removeAllViews()V

    .line 287
    return-void
.end method

.method public focusTo(Landroid/view/View;FF)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 151
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cam:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 152
    return v1

    .line 157
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 158
    const/16 v0, 0x64

    invoke-virtual {p0, p2, p3, v0}, Lde/markusfisch/android/cameraview/widget/CameraView;->calculateFocusRect(FFI)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/markusfisch/android/cameraview/widget/CameraView;->setFocusArea(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    return v1

    .line 161
    :cond_1
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cam:Landroid/hardware/Camera;

    new-instance v2, Lde/markusfisch/android/cameraview/widget/CameraView$3;

    invoke-direct {v2, p0, p1}, Lde/markusfisch/android/cameraview/widget/CameraView$3;-><init>(Lde/markusfisch/android/cameraview/widget/CameraView;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    nop

    .line 171
    const/4 v0, 0x1

    return v0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/RuntimeException;
    return v1
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .line 294
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cam:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getFrameHeight()I
    .locals 1

    .line 302
    iget v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->frameHeight:I

    return v0
.end method

.method public getFrameOrientation()I
    .locals 1

    .line 306
    iget v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->frameOrientation:I

    return v0
.end method

.method public getFrameWidth()I
    .locals 1

    .line 298
    iget v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->frameWidth:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 353
    if-nez p1, :cond_0

    .line 354
    return-void

    .line 356
    :cond_0
    sub-int v0, p4, p2

    iput v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->viewWidth:I

    .line 357
    sub-int v0, p5, p3

    iput v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->viewHeight:I

    .line 358
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cam:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lde/markusfisch/android/cameraview/widget/CameraView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 359
    invoke-virtual {p0}, Lde/markusfisch/android/cameraview/widget/CameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 360
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 361
    return-void

    .line 363
    :cond_1
    invoke-direct {p0, v0}, Lde/markusfisch/android/cameraview/widget/CameraView;->addPreview(Landroid/content/Context;)V

    .line 365
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    return-void
.end method

.method public openAsync(I)V
    .locals 2
    .param p1, "cameraId"    # I

    .line 230
    iget-boolean v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->isOpen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cameraCallbackThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->isOpen:Z

    .line 237
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraCallbackHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cameraCallbackThread:Landroid/os/HandlerThread;

    .line 239
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 240
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cameraCallbackThread:Landroid/os/HandlerThread;

    .line 241
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 242
    .local v0, "callbackThreadHandler":Landroid/os/Handler;
    new-instance v1, Lde/markusfisch/android/cameraview/widget/CameraView$4;

    invoke-direct {v1, p0, p1}, Lde/markusfisch/android/cameraview/widget/CameraView$4;-><init>(Lde/markusfisch/android/cameraview/widget/CameraView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    return-void

    .line 231
    .end local v0    # "callbackThreadHandler":Landroid/os/Handler;
    :cond_1
    :goto_0
    return-void
.end method

.method public setFocusArea(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "area"    # Landroid/graphics/Rect;

    .line 321
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cam:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    goto :goto_1

    .line 326
    :cond_0
    :try_start_0
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 327
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v2

    if-lez v2, :cond_2

    .line 328
    if-eqz p1, :cond_1

    .line 329
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v2, "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v3, Landroid/hardware/Camera$Area;

    const/16 v4, 0x3e8

    invoke-direct {v3, p1, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 333
    const-string v3, "auto"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 334
    .end local v2    # "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    goto :goto_0

    .line 335
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 336
    invoke-static {v0}, Lde/markusfisch/android/cameraview/widget/CameraView;->setAutoFocus(Landroid/hardware/Camera$Parameters;)Z

    .line 339
    :cond_2
    :goto_0
    iget-object v2, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    const/4 v1, 0x1

    return v1

    .line 341
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/RuntimeException;
    return v1

    .line 323
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3
    :goto_1
    return v1
.end method

.method public setOnCameraListener(Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;)V
    .locals 0
    .param p1, "listener"    # Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;

    .line 290
    iput-object p1, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->cameraListener:Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;

    .line 291
    return-void
.end method

.method public setScaleType(I)V
    .locals 0
    .param p1, "scaleType"    # I

    .line 226
    iput p1, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->scaleType:I

    .line 227
    return-void
.end method

.method public setTapToFocus()V
    .locals 1

    .line 136
    new-instance v0, Lde/markusfisch/android/cameraview/widget/CameraView$2;

    invoke-direct {v0, p0}, Lde/markusfisch/android/cameraview/widget/CameraView$2;-><init>(Lde/markusfisch/android/cameraview/widget/CameraView;)V

    invoke-virtual {p0, v0}, Lde/markusfisch/android/cameraview/widget/CameraView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    return-void
.end method

.method public setUseOrientationListener(Z)V
    .locals 0
    .param p1, "use"    # Z

    .line 222
    iput-boolean p1, p0, Lde/markusfisch/android/cameraview/widget/CameraView;->useOrientationListener:Z

    .line 223
    return-void
.end method
