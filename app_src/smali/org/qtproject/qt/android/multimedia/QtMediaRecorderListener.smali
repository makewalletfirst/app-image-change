.class public Lorg/qtproject/qt/android/multimedia/QtMediaRecorderListener;
.super Ljava/lang/Object;
.source "QtMediaRecorderListener.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# instance fields
.field private m_id:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/qtproject/qt/android/multimedia/QtMediaRecorderListener;->m_id:J

    .line 14
    iput-wide p1, p0, Lorg/qtproject/qt/android/multimedia/QtMediaRecorderListener;->m_id:J

    .line 15
    return-void
.end method

.method private static native notifyError(JII)V
.end method

.method private static native notifyInfo(JII)V
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2

    .line 20
    iget-wide v0, p0, Lorg/qtproject/qt/android/multimedia/QtMediaRecorderListener;->m_id:J

    invoke-static {v0, v1, p2, p3}, Lorg/qtproject/qt/android/multimedia/QtMediaRecorderListener;->notifyError(JII)V

    .line 21
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2

    .line 26
    iget-wide v0, p0, Lorg/qtproject/qt/android/multimedia/QtMediaRecorderListener;->m_id:J

    invoke-static {v0, v1, p2, p3}, Lorg/qtproject/qt/android/multimedia/QtMediaRecorderListener;->notifyInfo(JII)V

    .line 27
    return-void
.end method
