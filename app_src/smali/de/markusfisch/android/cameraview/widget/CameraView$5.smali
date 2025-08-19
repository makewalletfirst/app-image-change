.class Lde/markusfisch/android/cameraview/widget/CameraView$5;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/markusfisch/android/cameraview/widget/CameraView;->initCamera(Landroid/hardware/Camera;I)V
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

    .line 401
    iput-object p1, p0, Lde/markusfisch/android/cameraview/widget/CameraView$5;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .line 403
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView$5;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    invoke-static {v0}, Lde/markusfisch/android/cameraview/widget/CameraView;->access$400(Lde/markusfisch/android/cameraview/widget/CameraView;)Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView$5;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    invoke-static {v0}, Lde/markusfisch/android/cameraview/widget/CameraView;->access$400(Lde/markusfisch/android/cameraview/widget/CameraView;)Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;

    move-result-object v0

    invoke-interface {v0}, Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;->onCameraError()V

    .line 406
    :cond_0
    return-void
.end method
