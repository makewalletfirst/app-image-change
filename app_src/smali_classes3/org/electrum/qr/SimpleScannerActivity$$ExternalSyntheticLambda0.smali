.class public final synthetic Lorg/electrum/qr/SimpleScannerActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnBarcodeListener;


# instance fields
.field public final synthetic f$0:Lorg/electrum/qr/SimpleScannerActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/electrum/qr/SimpleScannerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/electrum/qr/SimpleScannerActivity$$ExternalSyntheticLambda0;->f$0:Lorg/electrum/qr/SimpleScannerActivity;

    return-void
.end method


# virtual methods
.method public final onBarcodeRead(Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;)Z
    .locals 1

    iget-object v0, p0, Lorg/electrum/qr/SimpleScannerActivity$$ExternalSyntheticLambda0;->f$0:Lorg/electrum/qr/SimpleScannerActivity;

    invoke-virtual {v0, p1}, Lorg/electrum/qr/SimpleScannerActivity;->lambda$startCamera$0$org-electrum-qr-SimpleScannerActivity(Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;)Z

    move-result p1

    return p1
.end method
