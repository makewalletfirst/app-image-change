.class Lorg/qtproject/qt/android/QtNative$14;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtNative;->setSystemUiVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$systemUiVisibility:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 718
    iput p1, p0, Lorg/qtproject/qt/android/QtNative$14;->val$systemUiVisibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 721
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1400()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 722
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1400()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    iget v1, p0, Lorg/qtproject/qt/android/QtNative$14;->val$systemUiVisibility:I

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->setSystemUiVisibility(I)V

    .line 724
    :cond_0
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->updateWindow()V

    .line 725
    return-void
.end method
