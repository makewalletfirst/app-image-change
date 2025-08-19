.class public Lde/markusfisch/android/barcodescannerview/widget/OverlayView;
.super Landroid/view/View;
.source "OverlayView.java"


# instance fields
.field private final clearPointsRunnable:Ljava/lang/Runnable;

.field private final coords:[F

.field private cornerRadius:F

.field private count:I

.field private final cropPaint:Landroid/graphics/Paint;

.field private final cropRectInView:Landroid/graphics/RectF;

.field private final dotPaint:Landroid/graphics/Paint;

.field private dotRadius:F

.field private final matrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->dotPaint:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->cropPaint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->cropRectInView:Landroid/graphics/RectF;

    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->matrix:Landroid/graphics/Matrix;

    .line 23
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->coords:[F

    .line 24
    new-instance v0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView$$ExternalSyntheticLambda0;-><init>(Lde/markusfisch/android/barcodescannerview/widget/OverlayView;)V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->clearPointsRunnable:Ljava/lang/Runnable;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->count:I

    .line 32
    invoke-direct {p0, p1}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->dotPaint:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->cropPaint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->cropRectInView:Landroid/graphics/RectF;

    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->matrix:Landroid/graphics/Matrix;

    .line 23
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->coords:[F

    .line 24
    new-instance v0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView$$ExternalSyntheticLambda0;-><init>(Lde/markusfisch/android/barcodescannerview/widget/OverlayView;)V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->clearPointsRunnable:Ljava/lang/Runnable;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->count:I

    .line 37
    invoke-direct {p0, p1}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->dotPaint:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->cropPaint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->cropRectInView:Landroid/graphics/RectF;

    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->matrix:Landroid/graphics/Matrix;

    .line 23
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->coords:[F

    .line 24
    new-instance v0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView$$ExternalSyntheticLambda0;-><init>(Lde/markusfisch/android/barcodescannerview/widget/OverlayView;)V

    iput-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->clearPointsRunnable:Ljava/lang/Runnable;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->count:I

    .line 45
    invoke-direct {p0, p1}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method private addCoordinate(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "point"    # Landroid/graphics/Point;

    .line 122
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->coords:[F

    iget v1, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->count:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    aput v2, v0, v1

    .line 123
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->coords:[F

    iget v1, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->count:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    aput v2, v0, v1

    .line 124
    return-void
.end method

.method private clear()V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->invalidate()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->count:I

    .line 98
    return-void
.end method

.method private static clipOutPathCompat(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 2
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "path"    # Landroid/graphics/Path;

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    goto :goto_0

    .line 149
    :cond_0
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 151
    :goto_0
    return-void
.end method

.method private static createRoundedRectPath(Landroid/graphics/RectF;FF)Landroid/graphics/Path;
    .locals 7
    .param p0, "rect"    # Landroid/graphics/RectF;
    .param p1, "rx"    # F
    .param p2, "ry"    # F

    .line 155
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, p1, v1

    sub-float/2addr v0, v2

    .line 156
    .local v0, "widthMinusCorners":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v1, p2

    sub-float/2addr v2, v1

    .line 157
    .local v2, "heightMinusCorners":F
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 158
    .local v1, "path":Landroid/graphics/Path;
    iget v3, p0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, p2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 159
    neg-float v3, p2

    neg-float v4, p1

    neg-float v5, p2

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3, v4, v5}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 160
    neg-float v3, v0

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 161
    neg-float v3, p1

    neg-float v4, p1

    invoke-virtual {v1, v3, v6, v4, p2}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 162
    invoke-virtual {v1, v6, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 163
    invoke-virtual {v1, v6, p2, p1, p2}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 164
    invoke-virtual {v1, v0, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 165
    neg-float v3, p2

    invoke-virtual {v1, p1, v6, p1, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 166
    neg-float v3, v2

    invoke-virtual {v1, v6, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 167
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 168
    return-object v1
.end method

.method private static drawClip(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;F)V
    .locals 4
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "roi"    # Landroid/graphics/RectF;
    .param p2, "roiPaint"    # Landroid/graphics/Paint;
    .param p3, "cornerRadius"    # F

    .line 128
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 129
    .local v0, "minDist":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 130
    return-void

    .line 133
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 134
    div-float v1, v0, v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 135
    .local v1, "radius":F
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 136
    nop

    .line 137
    invoke-static {p1, v1, v1}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->createRoundedRectPath(Landroid/graphics/RectF;FF)Landroid/graphics/Path;

    move-result-object v2

    .line 136
    invoke-static {p0, v2}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->clipOutPathCompat(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .line 138
    const/high16 v2, -0x80000000

    invoke-virtual {p0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 139
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 140
    .end local v1    # "radius":F
    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 143
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 110
    .local v0, "dp":F
    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->dotRadius:F

    .line 111
    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->cornerRadius:F

    .line 113
    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->dotPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->dotPaint:Landroid/graphics/Paint;

    const v2, -0x3f000001    # -7.9999995f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->cropPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->cropPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->cropPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$de-markusfisch-android-barcodescannerview-widget-OverlayView()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->clear()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 102
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->cropRectInView:Landroid/graphics/RectF;

    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->cropPaint:Landroid/graphics/Paint;

    iget v2, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->cornerRadius:F

    invoke-static {p1, v0, v1, v2}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->drawClip(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;F)V

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->count:I

    if-ge v0, v1, :cond_0

    .line 104
    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->coords:[F

    aget v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    iget v3, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->dotRadius:F

    iget-object v4, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 103
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 106
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public show(Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;)V
    .locals 7
    .param p1, "position"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;

    .line 82
    invoke-direct {p0}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->clear()V

    .line 83
    if-nez p1, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->getTopLeft()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->addCoordinate(Landroid/graphics/Point;)V

    .line 87
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->getTopRight()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->addCoordinate(Landroid/graphics/Point;)V

    .line 88
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->getBottomRight()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->addCoordinate(Landroid/graphics/Point;)V

    .line 89
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->getBottomLeft()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->addCoordinate(Landroid/graphics/Point;)V

    .line 90
    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->coords:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->count:I

    move-object v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 91
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->clearPointsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 92
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->clearPointsRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    return-void
.end method

.method public updateTransformationMatrix(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "imageRotation"    # I
    .param p4, "viewRect"    # Landroid/graphics/Rect;
    .param p5, "cropRect"    # Landroid/graphics/Rect;

    .line 54
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->cropRectInView:Landroid/graphics/RectF;

    invoke-virtual {v0, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 57
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->matrix:Landroid/graphics/Matrix;

    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 58
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->matrix:Landroid/graphics/Matrix;

    int-to-float v1, p3

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 59
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 60
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->matrix:Landroid/graphics/Matrix;

    iget v1, p4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 61
    iget-object v0, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->cropRectInView:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 64
    sparse-switch p3, :sswitch_data_0

    .line 71
    int-to-float v0, p1

    .line 72
    .local v0, "uprightWidth":F
    int-to-float v1, p2

    .local v1, "uprightHeight":F
    goto :goto_0

    .line 67
    .end local v0    # "uprightWidth":F
    .end local v1    # "uprightHeight":F
    :sswitch_0
    int-to-float v0, p2

    .line 68
    .restart local v0    # "uprightWidth":F
    int-to-float v1, p1

    .line 69
    .restart local v1    # "uprightHeight":F
    nop

    .line 75
    :goto_0
    iget-object v2, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->matrix:Landroid/graphics/Matrix;

    .line 76
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    .line 77
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    .line 75
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 78
    iget-object v2, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->cropRectInView:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lde/markusfisch/android/barcodescannerview/widget/OverlayView;->cropRectInView:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 79
    return-void

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method
