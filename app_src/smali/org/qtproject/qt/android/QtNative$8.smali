.class Lorg/qtproject/qt/android/QtNative$8;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtNative;->quitApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 476
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->quitQtAndroidPlugin()V

    .line 477
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1100()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1100()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 479
    :cond_0
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1200()Landroid/app/Service;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 480
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1200()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 482
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->access$1302(Z)Z

    .line 483
    return-void
.end method
