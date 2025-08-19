.class public Lorg/qtproject/qt/android/QtSurface;
.super Landroid/view/SurfaceView;
.source "QtSurface.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private m_accessibilityDelegate:Ljava/lang/Object;

.field private m_gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZI)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtSurface;->m_accessibilityDelegate:Ljava/lang/Object;

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtSurface;->setFocusable(Z)V

    .line 27
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtSurface;->setFocusableInTouchMode(Z)V

    .line 28
    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/QtSurface;->setZOrderMediaOverlay(Z)V

    .line 29
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p3

    invoke-interface {p3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 30
    const/4 p3, 0x1

    const/16 v0, 0x10

    if-ne p4, v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p4

    const/4 v0, 0x4

    invoke-interface {p4, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p4

    invoke-interface {p4, p3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 35
    :goto_0
    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/QtSurface;->setId(I)V

    .line 36
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p4, Lorg/qtproject/qt/android/QtSurface$1;

    invoke-direct {p4, p0}, Lorg/qtproject/qt/android/QtSurface$1;-><init>(Lorg/qtproject/qt/android/QtSurface;)V

    invoke-direct {p2, p1, p4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lorg/qtproject/qt/android/QtSurface;->m_gestureDetector:Landroid/view/GestureDetector;

    .line 42
    invoke-virtual {p2, p3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 88
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtSurface;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/QtNative;->sendGenericMotionEvent(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtSurface;->getX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtSurface;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 73
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtSurface;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/QtNative;->sendTouchEvent(Landroid/view/MotionEvent;I)V

    .line 74
    iget-object v0, p0, Lorg/qtproject/qt/android/QtSurface;->m_gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 75
    const/4 p1, 0x1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtSurface;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/QtNative;->sendTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 82
    const/4 p1, 0x1

    return p1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 53
    const/4 p2, 0x1

    if-lt p3, p2, :cond_1

    if-ge p4, p2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtSurface;->getId()I

    move-result p2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p2, p1, p3, p4}, Lorg/qtproject/qt/android/QtNative;->setSurface(ILjava/lang/Object;II)V

    .line 57
    return-void

    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 48
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtSurface;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lorg/qtproject/qt/android/QtNative;->setSurface(ILjava/lang/Object;II)V

    .line 63
    return-void
.end method
