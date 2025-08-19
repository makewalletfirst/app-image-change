.class Lorg/qtproject/qt/android/QtNative$27;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtNative;->setSurfaceGeometry(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$h:I

.field final synthetic val$id:I

.field final synthetic val$w:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1066
    iput p1, p0, Lorg/qtproject/qt/android/QtNative$27;->val$id:I

    iput p2, p0, Lorg/qtproject/qt/android/QtNative$27;->val$x:I

    iput p3, p0, Lorg/qtproject/qt/android/QtNative$27;->val$y:I

    iput p4, p0, Lorg/qtproject/qt/android/QtNative$27;->val$w:I

    iput p5, p0, Lorg/qtproject/qt/android/QtNative$27;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1069
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1400()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1070
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1400()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v1

    iget v2, p0, Lorg/qtproject/qt/android/QtNative$27;->val$id:I

    iget v3, p0, Lorg/qtproject/qt/android/QtNative$27;->val$x:I

    iget v4, p0, Lorg/qtproject/qt/android/QtNative$27;->val$y:I

    iget v5, p0, Lorg/qtproject/qt/android/QtNative$27;->val$w:I

    iget v6, p0, Lorg/qtproject/qt/android/QtNative$27;->val$h:I

    invoke-virtual/range {v1 .. v6}, Lorg/qtproject/qt/android/QtActivityDelegate;->setSurfaceGeometry(IIIII)V

    .line 1071
    :cond_0
    return-void
.end method
