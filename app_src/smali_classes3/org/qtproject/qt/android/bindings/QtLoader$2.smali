.class Lorg/qtproject/qt/android/bindings/QtLoader$2;
.super Ljava/lang/Object;
.source "QtLoader.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/bindings/QtLoader;->loadApplication(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/bindings/QtLoader;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/bindings/QtLoader;)V
    .locals 0
    .param p1, "this$0"    # Lorg/qtproject/qt/android/bindings/QtLoader;

    .line 204
    iput-object p1, p0, Lorg/qtproject/qt/android/bindings/QtLoader$2;->this$0:Lorg/qtproject/qt/android/bindings/QtLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 207
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtLoader$2;->this$0:Lorg/qtproject/qt/android/bindings/QtLoader;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/bindings/QtLoader;->finish()V

    .line 208
    return-void
.end method
