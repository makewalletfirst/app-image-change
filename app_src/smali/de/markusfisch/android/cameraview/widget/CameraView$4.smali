.class Lde/markusfisch/android/cameraview/widget/CameraView$4;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/markusfisch/android/cameraview/widget/CameraView;->openAsync(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

.field final synthetic val$cameraId:I


# direct methods
.method constructor <init>(Lde/markusfisch/android/cameraview/widget/CameraView;I)V
    .locals 0
    .param p1, "this$0"    # Lde/markusfisch/android/cameraview/widget/CameraView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lde/markusfisch/android/cameraview/widget/CameraView$4;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    iput p2, p0, Lde/markusfisch/android/cameraview/widget/CameraView$4;->val$cameraId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 246
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView$4;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    invoke-static {v0}, Lde/markusfisch/android/cameraview/widget/CameraView;->access$100(Lde/markusfisch/android/cameraview/widget/CameraView;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    return-void

    .line 251
    :cond_0
    iget v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView$4;->val$cameraId:I

    invoke-static {v0}, Lde/markusfisch/android/cameraview/widget/CameraView;->access$200(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 252
    .local v0, "camera":Landroid/hardware/Camera;
    iget-object v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView$4;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    new-instance v2, Lde/markusfisch/android/cameraview/widget/CameraView$4$1;

    invoke-direct {v2, p0, v0}, Lde/markusfisch/android/cameraview/widget/CameraView$4$1;-><init>(Lde/markusfisch/android/cameraview/widget/CameraView$4;Landroid/hardware/Camera;)V

    invoke-virtual {v1, v2}, Lde/markusfisch/android/cameraview/widget/CameraView;->post(Ljava/lang/Runnable;)Z

    .line 258
    return-void
.end method
