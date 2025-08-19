.class Lde/markusfisch/android/cameraview/widget/CameraView$2;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/markusfisch/android/cameraview/widget/CameraView;->setTapToFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/markusfisch/android/cameraview/widget/CameraView;


# direct methods
.method constructor <init>(Lde/markusfisch/android/cameraview/widget/CameraView;)V
    .locals 0
    .param p1, "this$0"    # Lde/markusfisch/android/cameraview/widget/CameraView;

    .line 136
    iput-object p1, p0, Lde/markusfisch/android/cameraview/widget/CameraView$2;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView$2;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    .line 140
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Lde/markusfisch/android/cameraview/widget/CameraView;->focusTo(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 142
    const/4 v0, 0x0

    return v0

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 145
    return v1
.end method
