.class Lde/markusfisch/android/cameraview/widget/CameraView$1;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/markusfisch/android/cameraview/widget/CameraView;
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

    .line 45
    iput-object p1, p0, Lde/markusfisch/android/cameraview/widget/CameraView$1;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 48
    iget-object v0, p0, Lde/markusfisch/android/cameraview/widget/CameraView$1;->this$0:Lde/markusfisch/android/cameraview/widget/CameraView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/markusfisch/android/cameraview/widget/CameraView;->setFocusArea(Landroid/graphics/Rect;)Z

    .line 49
    return-void
.end method
