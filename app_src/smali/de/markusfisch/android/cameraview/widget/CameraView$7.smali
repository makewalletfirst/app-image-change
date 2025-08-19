.class Lde/markusfisch/android/cameraview/widget/CameraView$7;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/markusfisch/android/cameraview/widget/CameraView;->addSurfaceView(Landroid/content/Context;II)V
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

    .line 512
    iput-object p1, p0, Lde/markusfisch/android/cameraview/widget/CameraView$7;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 524
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView$7;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    invoke-static {v0}, Lde/markusfisch/android/cameraview/widget/CameraView;->access$100(Lde/markusfisch/android/cameraview/widget/CameraView;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 525
    return-void

    .line 528
    :cond_0
    :try_start_0
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView$7;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    invoke-static {v0}, Lde/markusfisch/android/cameraview/widget/CameraView;->access$100(Lde/markusfisch/android/cameraview/widget/CameraView;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    nop

    .line 532
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView$7;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    invoke-static {v0}, Lde/markusfisch/android/cameraview/widget/CameraView;->access$100(Lde/markusfisch/android/cameraview/widget/CameraView;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 533
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView$7;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    invoke-static {v0}, Lde/markusfisch/android/cameraview/widget/CameraView;->access$400(Lde/markusfisch/android/cameraview/widget/CameraView;)Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView$7;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    invoke-static {v0}, Lde/markusfisch/android/cameraview/widget/CameraView;->access$400(Lde/markusfisch/android/cameraview/widget/CameraView;)Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;

    move-result-object v0

    iget-object v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView$7;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    invoke-static {v1}, Lde/markusfisch/android/cameraview/widget/CameraView;->access$100(Lde/markusfisch/android/cameraview/widget/CameraView;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-interface {v0, v1}, Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;->onPreviewStarted(Landroid/hardware/Camera;)V

    .line 536
    :cond_1
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Ljava/io/IOException;
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 516
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 540
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView$7;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    invoke-virtual {v0}, Lde/markusfisch/android/cameraview/widget/CameraView;->close()V

    .line 541
    return-void
.end method
