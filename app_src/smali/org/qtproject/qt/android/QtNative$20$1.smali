.class Lorg/qtproject/qt/android/QtNative$20$1;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtNative$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtNative$20;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtNative$20;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lorg/qtproject/qt/android/QtNative$20$1;->this$0:Lorg/qtproject/qt/android/QtNative$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryClipChanged()V
    .locals 0

    .line 811
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->onClipboardDataChanged()V

    .line 812
    return-void
.end method
