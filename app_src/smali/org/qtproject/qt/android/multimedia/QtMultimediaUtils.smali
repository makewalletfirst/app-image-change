.class public Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils;
.super Ljava/lang/Object;
.source "QtMultimediaUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;
    }
.end annotation


# static fields
.field private static final QtTAG:Ljava/lang/String; = "Qt QtMultimediaUtils"

.field private static m_context:Landroid/content/Context;

.field private static m_orientationListener:Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils;->m_context:Landroid/content/Context;

    .line 42
    sput-object v0, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils;->m_orientationListener:Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method static enableOrientationListener(Z)V
    .locals 0

    .line 61
    if-eqz p0, :cond_0

    .line 62
    sget-object p0, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils;->m_orientationListener:Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;

    invoke-virtual {p0}, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;->enable()V

    goto :goto_0

    .line 64
    :cond_0
    sget-object p0, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils;->m_orientationListener:Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;

    invoke-virtual {p0}, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;->disable()V

    .line 65
    :goto_0
    return-void
.end method

.method static getCacheDirectory()Ljava/io/File;
    .locals 1

    .line 110
    sget-object v0, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getDefaultMediaDirectory(I)Ljava/lang/String;
    .locals 3

    .line 74
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 75
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 83
    :pswitch_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 84
    goto :goto_0

    .line 80
    :pswitch_1
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 81
    goto :goto_0

    .line 77
    :pswitch_2
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 78
    nop

    .line 89
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 94
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Sounds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :cond_0
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 100
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 102
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getDeviceOrientation()I
    .locals 1

    .line 69
    sget v0, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;->deviceOrientation:I

    return v0
.end method

.method private static getMediaCodecs()[Ljava/lang/String;
    .locals 4

    .line 120
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 121
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 122
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 123
    nop

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 124
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_0
    return-object v2
.end method

.method public static getMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 130
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 131
    nop

    .line 134
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 135
    if-eqz v2, :cond_0

    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 138
    move-object v1, p0

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 140
    if-eqz p0, :cond_1

    .line 141
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    .line 145
    :cond_1
    :goto_0
    goto :goto_1

    .line 143
    :catch_0
    move-exception p0

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMimeType(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Qt QtMultimediaUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_1
    return-object v1
.end method

.method static registerMediaFile(Ljava/lang/String;)V
    .locals 3

    .line 107
    sget-object v0, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils;->m_context:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-static {v0, v1, p0, p0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 108
    return-void
.end method

.method public static setActivity(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0

    .line 47
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1

    .line 51
    sput-object p0, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils;->m_context:Landroid/content/Context;

    .line 52
    new-instance v0, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils;->m_orientationListener:Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;

    .line 53
    return-void
.end method
