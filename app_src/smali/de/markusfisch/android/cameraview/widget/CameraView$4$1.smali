.class Lde/markusfisch/android/cameraview/widget/CameraView$4$1;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/markusfisch/android/cameraview/widget/CameraView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/markusfisch/android/cameraview/widget/CameraView$4;

.field final synthetic val$camera:Landroid/hardware/Camera;


# direct methods
.method constructor <init>(Lde/markusfisch/android/cameraview/widget/CameraView$4;Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "this$1"    # Lde/markusfisch/android/cameraview/widget/CameraView$4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lde/markusfisch/android/cameraview/widget/CameraView$4$1;->this$1:Lde/markusfisch/android/cameraview/widget/CameraView$4;

    iput-object p2, p0, Lde/markusfisch/android/cameraview/widget/CameraView$4$1;->val$camera:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 255
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView$4$1;->this$1:Lde/markusfisch/android/cameraview/widget/CameraView$4;

    iget-object v0, v0, Lde/markusfisch/android/cameraview/widget/CameraView$4;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    iget-object v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView$4$1;->val$camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lde/markusfisch/android/cameraview/widget/CameraView$4$1;->this$1:Lde/markusfisch/android/cameraview/widget/CameraView$4;

    iget v2, v2, Lde/markusfisch/android/cameraview/widget/CameraView$4;->val$cameraId:I

    invoke-static {v0, v1, v2}, Lde/markusfisch/android/cameraview/widget/CameraView;->access$300(Lde/markusfisch/android/cameraview/widget/CameraView;Landroid/hardware/Camera;I)V

    .line 256
    return-void
.end method
