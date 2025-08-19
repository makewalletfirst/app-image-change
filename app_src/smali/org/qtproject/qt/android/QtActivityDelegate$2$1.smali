.class Lorg/qtproject/qt/android/QtActivityDelegate$2$1;
.super Landroid/os/ResultReceiver;
.source "QtActivityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtActivityDelegate$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate$2;Landroid/os/Handler;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .line 375
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 377
    :pswitch_0
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->updateCursorPosition()Z

    goto :goto_0

    .line 416
    :pswitch_1
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget-object p1, p1, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    const/4 p2, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->setKeyboardVisibility(ZJ)Z

    goto :goto_1

    .line 380
    :goto_0
    :pswitch_2
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget-object p1, p1, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    const/4 p2, 0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->setKeyboardVisibility(ZJ)Z

    .line 381
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget-object p1, p1, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$200(Lorg/qtproject/qt/android/QtActivityDelegate;)I

    move-result p1

    if-nez p1, :cond_0

    .line 383
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget-object p1, p1, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$800(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtLayout;

    move-result-object p1

    new-instance p2, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;

    invoke-direct {p2, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate$2$1;)V

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    .line 411
    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$700(Lorg/qtproject/qt/android/QtActivityDelegate;)I

    move-result v0

    int-to-long v0, v0

    .line 383
    invoke-virtual {p1, p2, v0, v1}, Lorg/qtproject/qt/android/QtLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 419
    :cond_0
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
