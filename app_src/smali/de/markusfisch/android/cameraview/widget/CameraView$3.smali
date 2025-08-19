.class Lde/markusfisch/android/cameraview/widget/CameraView$3;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/markusfisch/android/cameraview/widget/CameraView;->focusTo(Landroid/view/View;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lde/markusfisch/android/cameraview/widget/CameraView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lde/markusfisch/android/cameraview/widget/CameraView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lde/markusfisch/android/cameraview/widget/CameraView$3;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    iput-object p2, p0, Lde/markusfisch/android/cameraview/widget/CameraView$3;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .line 164
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView$3;->val$v:Landroid/view/View;

    iget-object v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView$3;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    invoke-static {v1}, Lde/markusfisch/android/cameraview/widget/CameraView;->access$000(Lde/markusfisch/android/cameraview/widget/CameraView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 165
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView$3;->val$v:Landroid/view/View;

    iget-object v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView$3;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    invoke-static {v1}, Lde/markusfisch/android/cameraview/widget/CameraView;->access$000(Lde/markusfisch/android/cameraview/widget/CameraView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    return-void
.end method
