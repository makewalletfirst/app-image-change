.class Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;
.super Ljava/lang/Object;
.source "BarcodeScannerView.java"

# interfaces
.implements Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    iput-object p2, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCameraReady$0$de-markusfisch-android-barcodescannerview-widget-BarcodeScannerView$1(Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;II[BLandroid/hardware/Camera;)V
    .locals 8
    .param p1, "options"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;
    .param p2, "width"    # I
    .param p3, "orientation"    # I
    .param p4, "data"    # [B
    .param p5, "camera1"    # Landroid/hardware/Camera;

    .line 228
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-static {v0}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$800(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$980(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;I)Z

    .line 235
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-static {v0}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$900(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    sget-object v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;->LOCAL_AVERAGE:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    goto :goto_0

    .line 237
    :cond_1
    sget-object v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;->GLOBAL_HISTOGRAM:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    .line 235
    :goto_0
    invoke-virtual {p1, v0}, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->setBinarizer(Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;)V

    .line 238
    sget-object v2, Lde/markusfisch/android/zxingcpp/ZxingCpp;->INSTANCE:Lde/markusfisch/android/zxingcpp/ZxingCpp;

    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    .line 241
    invoke-static {v0}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$200(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Landroid/graphics/Rect;

    move-result-object v5

    .line 238
    move-object v3, p4

    move v4, p2

    move v6, p3

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->readByteArray([BILandroid/graphics/Rect;ILde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;)Ljava/util/List;

    move-result-object v0

    .line 244
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_2

    goto :goto_1

    .line 247
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;

    .line 248
    .local v1, "result":Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;
    iget-object v2, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-static {v2}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$400(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Lde/markusfisch/android/barcodescannerview/widget/OverlayView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 249
    iget-object v2, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-static {v2}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$400(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Lde/markusfisch/android/barcodescannerview/widget/OverlayView;

    move-result-object v2

    invoke-virtual {v1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->getPosition()Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->show(Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;)V

    .line 251
    :cond_3
    iget-object v2, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-static {v2}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$1000(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnBarcodeListener;

    move-result-object v2

    if-nez v2, :cond_4

    .line 252
    return-void

    .line 254
    :cond_4
    iget-object v2, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-static {v2}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$1000(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnBarcodeListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnBarcodeListener;->onBarcodeRead(Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;)Z

    move-result v3

    invoke-static {v2, v3}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$802(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;Z)Z

    .line 255
    return-void

    .line 245
    .end local v1    # "result":Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;
    :cond_5
    :goto_1
    return-void
.end method

.method public onCameraError()V
    .locals 0

    .line 195
    return-void
.end method

.method public onCameraReady(Landroid/hardware/Camera;)V
    .locals 9
    .param p1, "camera"    # Landroid/hardware/Camera;

    .line 199
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-virtual {v0}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->getFrameWidth()I

    move-result v0

    .line 200
    .local v0, "width":I
    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-virtual {v1}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->getFrameHeight()I

    move-result v7

    .line 201
    .local v7, "height":I
    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-virtual {v1}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->getFrameOrientation()I

    move-result v8

    .line 202
    .local v8, "orientation":I
    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-static {v1, v0, v7}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$000(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;II)V

    .line 203
    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-static {v1}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$100(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnSetCropRectListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-static {v1}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$100(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnSetCropRectListener;

    move-result-object v1

    iget-object v2, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-static {v2}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$200(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v1, v2}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnSetCropRectListener;->onSetCropRect(Landroid/graphics/Rect;)V

    .line 206
    :cond_0
    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-static {v1}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$300(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    new-instance v2, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;

    iget-object v3, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$402(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;Lde/markusfisch/android/barcodescannerview/widget/OverlayView;)Lde/markusfisch/android/barcodescannerview/widget/OverlayView;

    .line 208
    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-static {v1}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$400(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Lde/markusfisch/android/barcodescannerview/widget/OverlayView;

    move-result-object v1

    iget-object v2, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    iget-object v5, v2, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->previewRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    .line 213
    invoke-static {v2}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$200(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Landroid/graphics/Rect;

    move-result-object v6

    .line 208
    move v2, v0

    move v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->updateTransformationMatrix(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 214
    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-static {v1}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$400(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Lde/markusfisch/android/barcodescannerview/widget/OverlayView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->addView(Landroid/view/View;)V

    .line 215
    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-static {v1}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$400(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Lde/markusfisch/android/barcodescannerview/widget/OverlayView;

    move-result-object v1

    iget-object v2, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    iget-object v2, v2, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->previewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    iget-object v3, v3, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->previewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    iget-object v4, v4, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->previewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    iget-object v5, v5, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->previewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->layout(IIII)V

    .line 221
    :cond_1
    new-instance v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;

    invoke-direct {v1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;-><init>()V

    .line 222
    .local v1, "options":Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;
    iget-object v2, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-static {v2}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$500(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->setTryRotate(Z)V

    .line 223
    iget-object v2, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-static {v2}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$600(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->setTryInvert(Z)V

    .line 224
    iget-object v2, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-static {v2}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$700(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->setTryDownscale(Z)V

    .line 225
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->setMaxNumberOfSymbols(I)V

    .line 226
    iget-object v2, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    iget-object v2, v2, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->formats:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->setFormats(Ljava/util/Set;)V

    .line 227
    new-instance v2, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, v0, v8}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1$$ExternalSyntheticLambda0;-><init>(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;II)V

    invoke-virtual {p1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 256
    return-void
.end method

.method public onCameraStopping(Landroid/hardware/Camera;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/Camera;

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 265
    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;->this$0:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-static {v1, v0}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->access$402(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;Lde/markusfisch/android/barcodescannerview/widget/OverlayView;)Lde/markusfisch/android/barcodescannerview/widget/OverlayView;

    .line 266
    return-void
.end method

.method public onConfigureParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 181
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    .line 182
    .local v0, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 183
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    .local v2, "mode":Ljava/lang/String;
    const-string v3, "barcode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 186
    goto :goto_1

    .line 188
    .end local v2    # "mode":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 190
    :cond_1
    :goto_1
    invoke-static {p1}, Lde/markusfisch/android/cameraview/widget/CameraView;->setAutoFocus(Landroid/hardware/Camera$Parameters;)Z

    .line 191
    return-void
.end method

.method public onPreviewStarted(Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;

    .line 260
    return-void
.end method
