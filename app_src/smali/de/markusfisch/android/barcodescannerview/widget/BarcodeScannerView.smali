.class public Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;
.super Lde/markusfisch/android/cameraview/widget/CameraView;
.source "BarcodeScannerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnBarcodeListener;,
        Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnSetCropRectListener;
    }
.end annotation


# instance fields
.field private cropRatio:F

.field private final cropRect:Landroid/graphics/Rect;

.field private decoding:Z

.field public final formats:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private onBarcodeListener:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnBarcodeListener;

.field private onSetCropRectListener:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnSetCropRectListener;

.field private overlayView:Lde/markusfisch/android/barcodescannerview/widget/OverlayView;

.field private showOverlay:Z

.field private tryDownscale:Z

.field private tryInvert:Z

.field private tryRotate:Z

.field private useLocalAverage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Lde/markusfisch/android/cameraview/widget/CameraView;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->formats:Ljava/util/HashSet;

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->cropRect:Landroid/graphics/Rect;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->decoding:Z

    .line 36
    iput-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->showOverlay:Z

    .line 37
    iput-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->tryRotate:Z

    .line 38
    iput-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->tryInvert:Z

    .line 39
    iput-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->tryDownscale:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->useLocalAverage:Z

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->cropRatio:F

    .line 45
    invoke-direct {p0, p1}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    invoke-direct {p0, p1, p2}, Lde/markusfisch/android/cameraview/widget/CameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->formats:Ljava/util/HashSet;

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->cropRect:Landroid/graphics/Rect;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->decoding:Z

    .line 36
    iput-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->showOverlay:Z

    .line 37
    iput-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->tryRotate:Z

    .line 38
    iput-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->tryInvert:Z

    .line 39
    iput-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->tryDownscale:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->useLocalAverage:Z

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->cropRatio:F

    .line 50
    invoke-direct {p0, p1}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lde/markusfisch/android/cameraview/widget/CameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->formats:Ljava/util/HashSet;

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->cropRect:Landroid/graphics/Rect;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->decoding:Z

    .line 36
    iput-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->showOverlay:Z

    .line 37
    iput-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->tryRotate:Z

    .line 38
    iput-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->tryInvert:Z

    .line 39
    iput-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->tryDownscale:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->useLocalAverage:Z

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->cropRatio:F

    .line 58
    invoke-direct {p0, p1}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->init(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;II)V
    .locals 0
    .param p0, "x0"    # Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 19
    invoke-direct {p0, p1, p2}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->calculateCropRect(II)V

    return-void
.end method

.method static synthetic access$100(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnSetCropRectListener;
    .locals 1
    .param p0, "x0"    # Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    .line 19
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->onSetCropRectListener:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnSetCropRectListener;

    return-object v0
.end method

.method static synthetic access$1000(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnBarcodeListener;
    .locals 1
    .param p0, "x0"    # Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    .line 19
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->onBarcodeListener:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnBarcodeListener;

    return-object v0
.end method

.method static synthetic access$200(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    .line 19
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->cropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Z
    .locals 1
    .param p0, "x0"    # Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    .line 19
    iget-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->showOverlay:Z

    return v0
.end method

.method static synthetic access$400(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Lde/markusfisch/android/barcodescannerview/widget/OverlayView;
    .locals 1
    .param p0, "x0"    # Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    .line 19
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->overlayView:Lde/markusfisch/android/barcodescannerview/widget/OverlayView;

    return-object v0
.end method

.method static synthetic access$402(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;Lde/markusfisch/android/barcodescannerview/widget/OverlayView;)Lde/markusfisch/android/barcodescannerview/widget/OverlayView;
    .locals 0
    .param p0, "x0"    # Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;
    .param p1, "x1"    # Lde/markusfisch/android/barcodescannerview/widget/OverlayView;

    .line 19
    iput-object p1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->overlayView:Lde/markusfisch/android/barcodescannerview/widget/OverlayView;

    return-object p1
.end method

.method static synthetic access$500(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Z
    .locals 1
    .param p0, "x0"    # Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    .line 19
    iget-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->tryRotate:Z

    return v0
.end method

.method static synthetic access$600(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Z
    .locals 1
    .param p0, "x0"    # Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    .line 19
    iget-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->tryInvert:Z

    return v0
.end method

.method static synthetic access$700(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Z
    .locals 1
    .param p0, "x0"    # Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    .line 19
    iget-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->tryDownscale:Z

    return v0
.end method

.method static synthetic access$800(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Z
    .locals 1
    .param p0, "x0"    # Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    .line 19
    iget-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->decoding:Z

    return v0
.end method

.method static synthetic access$802(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;
    .param p1, "x1"    # Z

    .line 19
    iput-boolean p1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->decoding:Z

    return p1
.end method

.method static synthetic access$900(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;)Z
    .locals 1
    .param p0, "x0"    # Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    .line 19
    iget-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->useLocalAverage:Z

    return v0
.end method

.method static synthetic access$980(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;I)Z
    .locals 1
    .param p0, "x0"    # Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;
    .param p1, "x1"    # I

    .line 19
    iget-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->useLocalAverage:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->useLocalAverage:Z

    return v0
.end method

.method private calculateCropRect(II)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 271
    iget v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->cropRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 272
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->previewRect:Landroid/graphics/Rect;

    .line 273
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 272
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 274
    .local v0, "minPreview":I
    int-to-float v1, v0

    iget v2, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->cropRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 275
    .local v1, "sizeInPreviewRect":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 276
    .local v2, "minFrame":I
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 278
    .local v3, "sizeInFrame":I
    sub-int v4, p1, v3

    div-int/lit8 v4, v4, 0x2

    .line 279
    .local v4, "left":I
    sub-int v5, p2, v3

    div-int/lit8 v5, v5, 0x2

    .line 280
    .local v5, "top":I
    iget-object v6, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->cropRect:Landroid/graphics/Rect;

    add-int v7, v4, v3

    add-int v8, v5, v3

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 282
    .end local v0    # "minPreview":I
    .end local v1    # "sizeInPreviewRect":I
    .end local v2    # "minFrame":I
    .end local v3    # "sizeInFrame":I
    .end local v4    # "left":I
    .end local v5    # "top":I
    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->cropRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 285
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 176
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->formats:Ljava/util/HashSet;

    sget-object v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;->QR_CODE:Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->setUseOrientationListener(Z)V

    .line 178
    new-instance v0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;

    invoke-direct {v0, p0, p1}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$1;-><init>(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->setOnCameraListener(Lde/markusfisch/android/cameraview/widget/CameraView$OnCameraListener;)V

    .line 268
    return-void
.end method


# virtual methods
.method public getCropRatio()F
    .locals 1

    .line 140
    iget v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->cropRatio:F

    return v0
.end method

.method public isDecoding()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->decoding:Z

    return v0
.end method

.method public openAsync()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->openAsync(Z)V

    .line 66
    return-void
.end method

.method public openAsync(Z)V
    .locals 1
    .param p1, "front"    # Z

    .line 74
    if-eqz p1, :cond_0

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    invoke-static {v0}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->findCameraId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->openAsync(I)V

    .line 77
    return-void
.end method

.method public setCropRatio(F)V
    .locals 2
    .param p1, "ratio"    # F

    .line 133
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->cropRatio:F

    .line 134
    return-void
.end method

.method public setDecoding(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 149
    iput-boolean p1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->decoding:Z

    .line 150
    return-void
.end method

.method public setOnBarcodeListener(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnBarcodeListener;)V
    .locals 0
    .param p1, "listener"    # Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnBarcodeListener;

    .line 85
    iput-object p1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->onBarcodeListener:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnBarcodeListener;

    .line 86
    return-void
.end method

.method public setOnSetCropRectListener(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnSetCropRectListener;)V
    .locals 0
    .param p1, "listener"    # Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnSetCropRectListener;

    .line 94
    iput-object p1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->onSetCropRectListener:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnSetCropRectListener;

    .line 95
    return-void
.end method

.method public setShowOverlay(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 165
    iput-boolean p1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->showOverlay:Z

    .line 166
    return-void
.end method

.method public setTryDownscale(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 123
    iput-boolean p1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->tryDownscale:Z

    .line 124
    return-void
.end method

.method public setTryInvert(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 113
    iput-boolean p1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->tryInvert:Z

    .line 114
    return-void
.end method

.method public setTryRotate(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 104
    iput-boolean p1, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->tryRotate:Z

    .line 105
    return-void
.end method

.method public showOverlay()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->showOverlay:Z

    return v0
.end method
