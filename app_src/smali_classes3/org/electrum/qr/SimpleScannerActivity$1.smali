.class Lorg/electrum/qr/SimpleScannerActivity$1;
.super Ljava/lang/Object;
.source "SimpleScannerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/electrum/qr/SimpleScannerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/electrum/qr/SimpleScannerActivity;


# direct methods
.method constructor <init>(Lorg/electrum/qr/SimpleScannerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/electrum/qr/SimpleScannerActivity;

    .line 51
    iput-object p1, p0, Lorg/electrum/qr/SimpleScannerActivity$1;->this$0:Lorg/electrum/qr/SimpleScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 54
    iget-object v0, p0, Lorg/electrum/qr/SimpleScannerActivity$1;->this$0:Lorg/electrum/qr/SimpleScannerActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lorg/electrum/qr/SimpleScannerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 55
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 56
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    const-string v3, "text/html"

    invoke-virtual {v1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    :cond_0
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 59
    .local v1, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "clipboardText":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/high16 v5, 0x80000

    if-le v4, v5, :cond_1

    .line 62
    iget-object v4, p0, Lorg/electrum/qr/SimpleScannerActivity$1;->this$0:Lorg/electrum/qr/SimpleScannerActivity;

    const-string v5, "Clipboard contents too large."

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 63
    return-void

    .line 65
    :cond_1
    iget-object v2, p0, Lorg/electrum/qr/SimpleScannerActivity$1;->this$0:Lorg/electrum/qr/SimpleScannerActivity;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lorg/electrum/qr/SimpleScannerActivity;->access$000(Lorg/electrum/qr/SimpleScannerActivity;Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;Ljava/lang/String;)V

    .line 66
    .end local v1    # "item":Landroid/content/ClipData$Item;
    .end local v3    # "clipboardText":Ljava/lang/String;
    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, p0, Lorg/electrum/qr/SimpleScannerActivity$1;->this$0:Lorg/electrum/qr/SimpleScannerActivity;

    const-string v3, "Clipboard is empty."

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 69
    :goto_0
    return-void
.end method
