.class public final synthetic Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field public final synthetic f$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;

.field public final synthetic f$1:Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1$$ExternalSyntheticLambda0;->f$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;

    iput-object p2, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1$$ExternalSyntheticLambda0;->f$1:Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;

    iput p3, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6

    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1$$ExternalSyntheticLambda0;->f$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;

    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1$$ExternalSyntheticLambda0;->f$1:Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;

    iget v2, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1$$ExternalSyntheticLambda0;->f$3:I

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->lambda$onCameraReady$0$de-markusfisch-android-barcodescannerview-widget-BarcodeScannerView$1(Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;II[BLandroid/hardware/Camera;)V

    return-void
.end method
