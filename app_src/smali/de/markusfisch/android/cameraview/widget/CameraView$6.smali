.class Lde/markusfisch/android/cameraview/widget/CameraView$6;
.super Landroid/view/OrientationEventListener;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/markusfisch/android/cameraview/widget/CameraView;->enableOrientationListener(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

.field final synthetic val$cameraId:I

.field final synthetic val$defaultDisplay:Landroid/view/Display;

.field final synthetic val$defaultOrientation:I


# direct methods
.method constructor <init>(Lde/markusfisch/android/cameraview/widget/CameraView;Landroid/content/Context;IILandroid/view/Display;I)V
    .locals 0
    .param p1, "this$0"    # Lde/markusfisch/android/cameraview/widget/CameraView;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I

    .line 428
    iput-object p1, p0, Lde/markusfisch/android/cameraview/widget/CameraView$6;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    iput p4, p0, Lde/markusfisch/android/cameraview/widget/CameraView$6;->val$defaultOrientation:I

    iput-object p5, p0, Lde/markusfisch/android/cameraview/widget/CameraView$6;->val$defaultDisplay:Landroid/view/Display;

    iput p6, p0, Lde/markusfisch/android/cameraview/widget/CameraView$6;->val$cameraId:I

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .line 431
    iget v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView$6;->val$defaultOrientation:I

    iget-object v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView$6;->val$defaultDisplay:Landroid/view/Display;

    .line 432
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    sub-int/2addr v0, v1

    .line 431
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 433
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView$6;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    invoke-virtual {v0}, Lde/markusfisch/android/cameraview/widget/CameraView;->close()V

    .line 434
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView$6;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    iget v1, p0, Lde/markusfisch/android/cameraview/widget/CameraView$6;->val$cameraId:I

    invoke-virtual {v0, v1}, Lde/markusfisch/android/cameraview/widget/CameraView;->openAsync(I)V

    .line 436
    :cond_0
    return-void
.end method
