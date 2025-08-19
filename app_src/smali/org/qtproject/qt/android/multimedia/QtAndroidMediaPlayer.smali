.class public Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;
.super Ljava/lang/Object;
.source "QtAndroidMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$State;,
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerBufferingListener;,
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerCompletionListener;,
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerInfoListener;,
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerSeekCompleteListener;,
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerVideoSizeChangedListener;,
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerErrorListener;,
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerPreparedListener;,
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerTimedTextListener;,
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Qt MediaPlayer"


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private final mContext:Landroid/content/Context;

.field private mHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mID:J

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMuted:Z

.field private mProgressScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private mProgressWatcherHandle:Ljava/util/concurrent/ScheduledFuture;

.field private volatile mState:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUri:Landroid/net/Uri;

.field private mVolume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 45
    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 46
    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mHeaders:Ljava/util/HashMap;

    .line 47
    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mUri:Landroid/net/Uri;

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMuted:Z

    .line 51
    const/16 v1, 0x64

    iput v1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mVolume:I

    .line 53
    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 54
    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mProgressScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 55
    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mProgressWatcherHandle:Ljava/util/concurrent/ScheduledFuture;

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    .line 217
    iput-wide p2, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mID:J

    .line 218
    iput-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mContext:Landroid/content/Context;

    .line 219
    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mID:J

    return-wide v0
.end method

.method private getMimeType(Landroid/media/MediaPlayer$TrackInfo;)Ljava/lang/String;
    .locals 2

    .line 502
    nop

    .line 504
    nop

    .line 506
    invoke-virtual {p1}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object p1

    .line 507
    const-string v0, "application/octet-stream"

    if-eqz p1, :cond_0

    .line 508
    const-string v1, "mime"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 3

    .line 238
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 239
    return-void

    .line 241
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 242
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V

    .line 244
    iget-boolean v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMuted:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mVolume:I

    :goto_0
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setVolumeHelper(I)V

    .line 245
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setAudioAttributes(Landroid/media/MediaPlayer;Landroid/media/AudioAttributes;)V

    .line 247
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerBufferingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerBufferingListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 248
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerCompletionListener;

    invoke-direct {v1, p0, v2}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerCompletionListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 249
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerInfoListener;

    invoke-direct {v1, p0, v2}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerInfoListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 250
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerSeekCompleteListener;

    invoke-direct {v1, p0, v2}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerSeekCompleteListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 251
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerVideoSizeChangedListener;

    invoke-direct {v1, p0, v2}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerVideoSizeChangedListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 252
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerErrorListener;

    invoke-direct {v1, p0, v2}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerErrorListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 253
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerPreparedListener;

    invoke-direct {v1, p0, v2}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerPreparedListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 254
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerTimedTextListener;

    invoke-direct {v1, p0, v2}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerTimedTextListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V

    .line 256
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mProgressScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 257
    return-void
.end method

.method private isMediaPlayerPrepared()Z
    .locals 1

    .line 460
    nop

    .line 462
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit16 v0, v0, 0x1e8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static setAudioAttributes(Landroid/media/MediaPlayer;Landroid/media/AudioAttributes;)V
    .locals 0

    .line 718
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 722
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    goto :goto_0

    .line 723
    :catch_0
    move-exception p0

    .line 724
    const-string p1, "Qt MediaPlayer"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 726
    :goto_0
    return-void

    .line 719
    :cond_1
    :goto_1
    return-void
.end method

.method private setState(I)V
    .locals 2

    .line 228
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    if-ne v0, p1, :cond_0

    .line 229
    return-void

    .line 231
    :cond_0
    iput p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    .line 233
    iget p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    iget-wide v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mID:J

    invoke-virtual {p0, p1, v0, v1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->onStateChangedNative(IJ)V

    .line 234
    return-void
.end method

.method private setVolumeHelper(I)V
    .locals 1

    .line 633
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit16 v0, v0, 0x1fa

    if-nez v0, :cond_0

    .line 640
    return-void

    .line 644
    :cond_0
    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 645
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    goto :goto_0

    .line 646
    :catch_0
    move-exception p1

    .line 647
    const-string v0, "Qt MediaPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 649
    :goto_0
    return-void
.end method


# virtual methods
.method public cancelProgressWatcher()V
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mProgressScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 278
    :cond_0
    return-void
.end method

.method public deselectTrack(I)V
    .locals 2

    .line 530
    invoke-direct {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->isMediaPlayerPrepared()Z

    move-result v0

    const-string v1, "Qt MediaPlayer"

    if-nez v0, :cond_0

    .line 531
    const-string p1, "Trying to deselect track of a media player that is not prepared!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-void

    .line 537
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->deselectTrack(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    goto :goto_0

    .line 538
    :catch_0
    move-exception p1

    .line 539
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    :goto_0
    return-void
.end method

.method public display()Landroid/view/SurfaceHolder;
    .locals 1

    .line 653
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getAllTrackInfo()[Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;
    .locals 8

    .line 467
    invoke-direct {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->isMediaPlayerPrepared()Z

    move-result v0

    const-string v1, "Qt MediaPlayer"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 468
    const-string v0, "Trying to get track info of a media player that is not prepared!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-array v0, v2, [Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;

    return-object v0

    .line 472
    :cond_0
    new-array v0, v2, [Landroid/media/MediaPlayer$TrackInfo;

    .line 476
    :try_start_0
    iget-object v3, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    goto :goto_0

    .line 477
    :catch_0
    move-exception v3

    .line 478
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    :goto_0
    array-length v1, v0

    .line 482
    new-array v3, v1, [Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;

    .line 484
    nop

    :goto_1
    if-ge v2, v1, :cond_1

    .line 486
    aget-object v4, v0, v2

    .line 488
    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v5

    .line 489
    invoke-direct {p0, v4}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->getMimeType(Landroid/media/MediaPlayer$TrackInfo;)Ljava/lang/String;

    move-result-object v6

    .line 490
    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 492
    new-instance v7, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;

    invoke-direct {v7, p0, v5, v6, v4}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;ILjava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v2

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 495
    :cond_1
    return-object v3
.end method

.method public getCurrentPosition()I
    .locals 3

    .line 576
    nop

    .line 577
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit16 v0, v0, 0x1fa

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 584
    return v1

    .line 588
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    const-string v2, "Qt MediaPlayer"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    :goto_0
    return v1
.end method

.method public getDuration()I
    .locals 3

    .line 599
    nop

    .line 600
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit16 v0, v0, 0x1e8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 605
    return v1

    .line 609
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    goto :goto_0

    .line 610
    :catch_0
    move-exception v0

    .line 611
    const-string v2, "Qt MediaPlayer"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    :goto_0
    return v1
.end method

.method public getMediaPlayerHandle()Landroid/media/MediaPlayer;
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getSelectedTrack(I)I
    .locals 8

    .line 546
    nop

    .line 547
    invoke-direct {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->isMediaPlayerPrepared()Z

    move-result v0

    const-string v1, "Qt MediaPlayer"

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 548
    const-string p1, "Trying to get the selected track of a media player that is not prepared!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return v2

    .line 552
    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v0

    .line 553
    :goto_0
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v0

    .line 554
    :goto_1
    const/4 v6, 0x3

    if-ne p1, v6, :cond_3

    move v6, v3

    goto :goto_2

    :cond_3
    move v6, v0

    .line 555
    :goto_2
    const/4 v7, 0x4

    if-ne p1, v7, :cond_4

    move v0, v3

    .line 557
    :cond_4
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-nez v0, :cond_5

    if-nez v6, :cond_5

    .line 559
    const-string p1, "Trying to get a selected track of a invalid type Only Video,Audio, TimedText and Subtitle tracks are selectable."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return v2

    .line 566
    :cond_5
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 567
    :catch_0
    move-exception p1

    .line 568
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 571
    return v2
.end method

.method public getVolume()I
    .locals 1

    .line 669
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mVolume:I

    return v0
.end method

.method public initHeaders()V
    .locals 1

    .line 391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mHeaders:Ljava/util/HashMap;

    .line 392
    return-void
.end method

.method public isMuted()Z
    .locals 1

    .line 680
    iget-boolean v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMuted:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .line 356
    nop

    .line 357
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit16 v0, v0, 0x1fa

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 364
    return v1

    .line 368
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    const-string v2, "Qt MediaPlayer"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    :goto_0
    return v1
.end method

.method public mute(Z)V
    .locals 0

    .line 674
    iput-boolean p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMuted:Z

    .line 675
    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mVolume:I

    :goto_0
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setVolumeHelper(I)V

    .line 676
    return-void
.end method

.method public native onBufferingUpdateNative(IJ)V
.end method

.method public native onDurationChangedNative(IJ)V
.end method

.method public native onErrorNative(IIJ)V
.end method

.method public native onInfoNative(IIJ)V
.end method

.method public native onProgressUpdateNative(IJ)V
.end method

.method public native onStateChangedNative(IJ)V
.end method

.method public native onTimedTextChangedNative(Ljava/lang/String;IJ)V
.end method

.method public native onTrackInfoChangedNative(J)V
.end method

.method public native onVideoSizeChangedNative(IIJ)V
.end method

.method public pause()V
    .locals 2

    .line 300
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit16 v0, v0, 0x1a0

    if-nez v0, :cond_0

    .line 301
    return-void

    .line 304
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 305
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    const-string v1, "Qt MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    :goto_0
    return-void
.end method

.method public prepareAsync()V
    .locals 2

    .line 378
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit8 v0, v0, 0x50

    if-nez v0, :cond_0

    .line 379
    return-void

    .line 382
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 383
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    const-string v1, "Qt MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 696
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 698
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 702
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V

    .line 703
    invoke-virtual {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->cancelProgressWatcher()V

    .line 704
    return-void
.end method

.method public reset()V
    .locals 2

    .line 685
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 686
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 690
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V

    .line 691
    invoke-virtual {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->cancelProgressWatcher()V

    .line 692
    return-void
.end method

.method public seekTo(I)V
    .locals 3

    .line 334
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit16 v0, v0, 0x1a8

    if-nez v0, :cond_0

    .line 338
    return-void

    .line 342
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 345
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    int-to-long v1, p1

    const/4 p1, 0x3

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_0

    .line 347
    :cond_1
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    goto :goto_1

    .line 349
    :catch_0
    move-exception p1

    .line 350
    const-string v0, "Qt MediaPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    :goto_1
    return-void
.end method

.method public selectTrack(I)V
    .locals 2

    .line 516
    invoke-direct {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->isMediaPlayerPrepared()Z

    move-result v0

    const-string v1, "Qt MediaPlayer"

    if-nez v0, :cond_0

    .line 517
    const-string p1, "Trying to select a track of a media player that is not prepared!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void

    .line 522
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->selectTrack(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    goto :goto_0

    .line 523
    :catch_0
    move-exception p1

    .line 524
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    :goto_0
    return-void
.end method

.method public setAudioAttributes(II)V
    .locals 1

    .line 708
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 709
    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    .line 710
    invoke-virtual {p2, p1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 711
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 713
    iget-object p2, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {p2, p1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setAudioAttributes(Landroid/media/MediaPlayer;Landroid/media/AudioAttributes;)V

    .line 714
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 13

    .line 401
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 402
    invoke-direct {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->init()V

    .line 404
    :cond_0
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 405
    invoke-virtual {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->reset()V

    .line 408
    :cond_1
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    const-string v3, "Qt MediaPlayer"

    if-eq v0, v2, :cond_2

    .line 409
    const-string p1, "Trying to set data source of a media player that is not idle!"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void

    .line 413
    :cond_2
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    .line 414
    iget-object v2, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 416
    :cond_3
    nop

    .line 417
    nop

    .line 419
    const/4 v0, 0x0

    const/16 v2, -0x3ec

    const/16 v4, 0x200

    const/16 v5, 0x10

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mUri:Landroid/net/Uri;

    .line 420
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "assets"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 421
    iget-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 422
    iget-object v6, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 423
    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 424
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v8

    .line 425
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v10

    .line 426
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    .line 427
    iget-object v6, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    move-object v12, v0

    move-object v0, p1

    move-object p1, v12

    goto :goto_1

    .line 441
    :catchall_0
    move-exception v3

    move-object v12, v0

    move-object v0, p1

    move-object p1, v12

    goto/16 :goto_8

    .line 438
    :catch_0
    move-exception v6

    move-object v12, v0

    move-object v0, p1

    move-object p1, v12

    goto/16 :goto_5

    .line 428
    :cond_4
    :try_start_2
    iget-object v6, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 429
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v6, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 430
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    .line 431
    iget-object v7, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 432
    goto :goto_1

    .line 438
    :catch_1
    move-exception v6

    goto :goto_5

    .line 432
    :cond_5
    :try_start_4
    iget-object v6, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "content"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 433
    iget-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mUri:Landroid/net/Uri;

    iget-object v8, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {p1, v6, v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_0

    .line 435
    :cond_6
    iget-object v6, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 437
    :goto_0
    move-object p1, v0

    :goto_1
    :try_start_5
    invoke-direct {p0, v5}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 442
    if-eqz v0, :cond_7

    .line 443
    :try_start_6
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_2

    .line 446
    :catch_2
    move-exception p1

    goto :goto_3

    .line 444
    :cond_7
    :goto_2
    if-eqz p1, :cond_8

    .line 445
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 446
    :cond_8
    :goto_3
    nop

    .line 448
    iget p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/2addr p1, v5

    if-nez p1, :cond_b

    .line 449
    :goto_4
    invoke-direct {p0, v4}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V

    .line 450
    iget-wide v3, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mID:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->onErrorNative(IIJ)V

    .line 453
    return-void

    .line 441
    :catchall_1
    move-exception v3

    move-object p1, v0

    goto :goto_8

    .line 438
    :catch_3
    move-exception v6

    move-object p1, v0

    .line 439
    :goto_5
    :try_start_7
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 442
    if-eqz v0, :cond_9

    .line 443
    :try_start_8
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_6

    .line 446
    :catch_4
    move-exception p1

    goto :goto_7

    .line 444
    :cond_9
    :goto_6
    if-eqz p1, :cond_a

    .line 445
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 446
    :cond_a
    :goto_7
    nop

    .line 448
    iget p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/2addr p1, v5

    if-nez p1, :cond_b

    .line 449
    goto :goto_4

    .line 456
    :cond_b
    return-void

    .line 441
    :catchall_2
    move-exception v3

    .line 442
    :goto_8
    if-eqz v0, :cond_c

    .line 443
    :try_start_9
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_9

    .line 446
    :catch_5
    move-exception p1

    goto :goto_a

    .line 444
    :cond_c
    :goto_9
    if-eqz p1, :cond_d

    .line 445
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 446
    :cond_d
    :goto_a
    nop

    .line 448
    iget p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/2addr p1, v5

    if-nez p1, :cond_e

    .line 449
    goto :goto_4

    .line 455
    :cond_e
    throw v3
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 658
    iput-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 660
    iget p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 661
    return-void

    .line 663
    :cond_0
    iget-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 664
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-void
.end method

.method public setPlaybackRate(F)Z
    .locals 5

    .line 730
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    .line 731
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 734
    float-to-double v1, p1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    .line 735
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 738
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    nop

    .line 744
    iget p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    const/16 v0, 0x20

    and-int/2addr p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 745
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V

    .line 746
    invoke-virtual {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->startProgressWatcher()V

    .line 749
    :cond_1
    const/4 p1, 0x1

    return p1

    .line 739
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 740
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set playback rate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " :"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Qt MediaPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 p1, 0x0

    return p1
.end method

.method public setVolume(I)V
    .locals 1

    .line 619
    if-gez p1, :cond_0

    .line 620
    const/4 p1, 0x0

    .line 622
    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 623
    move p1, v0

    .line 625
    :cond_1
    iput p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mVolume:I

    .line 627
    iget-boolean v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMuted:Z

    if-nez v0, :cond_2

    .line 628
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setVolumeHelper(I)V

    .line 629
    :cond_2
    return-void
.end method

.method public start()V
    .locals 2

    .line 282
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit16 v0, v0, 0x1a8

    if-nez v0, :cond_0

    .line 286
    return-void

    .line 290
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 291
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V

    .line 292
    invoke-virtual {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->startProgressWatcher()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    const-string v1, "Qt MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    :goto_0
    return-void
.end method

.method public startProgressWatcher()V
    .locals 8

    .line 262
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mProgressScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mProgressScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    .line 263
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mProgressScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 265
    :cond_1
    iget-object v1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mProgressScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;

    invoke-direct {v2, p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)V

    const-wide/16 v3, 0xa

    const-wide/16 v5, 0x64

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mProgressWatcherHandle:Ljava/util/concurrent/ScheduledFuture;

    .line 272
    return-void
.end method

.method public stop()V
    .locals 2

    .line 314
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit16 v0, v0, 0x1e8

    if-nez v0, :cond_0

    .line 319
    return-void

    .line 323
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 324
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V

    .line 325
    invoke-virtual {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->cancelProgressWatcher()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    const-string v1, "Qt MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    :goto_0
    return-void
.end method
