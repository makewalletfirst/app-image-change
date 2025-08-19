.class public interface abstract Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;
.super Ljava/lang/Object;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/markusfisch/android/cameraview/widget/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCameraListener"
.end annotation


# virtual methods
.method public abstract onCameraError()V
.end method

.method public abstract onCameraReady(Landroid/hardware/Camera;)V
.end method

.method public abstract onCameraStopping(Landroid/hardware/Camera;)V
.end method

.method public abstract onConfigureParameters(Landroid/hardware/Camera$Parameters;)V
.end method

.method public abstract onPreviewStarted(Landroid/hardware/Camera;)V
.end method
