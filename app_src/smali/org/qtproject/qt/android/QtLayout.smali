.class public Lorg/qtproject/qt/android/QtLayout;
.super Landroid/view/ViewGroup;
.source "QtLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/QtLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private m_activityDisplayRotation:I

.field private m_nativeOrientation:I

.field private m_ownDisplayRotation:I

.field private m_startApplicationRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 p1, -0x1

    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_activityDisplayRotation:I

    .line 29
    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_ownDisplayRotation:I

    .line 30
    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_nativeOrientation:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 p1, -0x1

    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_activityDisplayRotation:I

    .line 29
    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_ownDisplayRotation:I

    .line 30
    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_nativeOrientation:I

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 p1, -0x1

    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_activityDisplayRotation:I

    .line 29
    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_ownDisplayRotation:I

    .line 30
    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_nativeOrientation:I

    .line 50
    iput-object p2, p0, Lorg/qtproject/qt/android/QtLayout;->m_startApplicationRunnable:Ljava/lang/Runnable;

    .line 51
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 208
    instance-of p1, p1, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    return p1
.end method

.method public displayRotation()I
    .locals 1

    .line 44
    iget v0, p0, Lorg/qtproject/qt/android/QtLayout;->m_ownDisplayRotation:I

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 177
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v2}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 214
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {v0, p1}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public moveChild(Landroid/view/View;I)V
    .locals 2

    .line 263
    if-nez p1, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 267
    return-void

    .line 269
    :cond_1
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtLayout;->detachViewFromParent(Landroid/view/View;)V

    .line 270
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->requestLayout()V

    .line 271
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->invalidate()V

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/qtproject/qt/android/QtLayout;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 273
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 186
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->getChildCount()I

    move-result p1

    .line 188
    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 189
    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/QtLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 190
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_0

    .line 191
    nop

    .line 192
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    .line 194
    iget p5, p4, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->x:I

    .line 195
    iget p4, p4, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->y:I

    .line 196
    nop

    .line 197
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p5

    .line 198
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p4

    .line 196
    invoke-virtual {p3, p5, p4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 188
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 202
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 134
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->getChildCount()I

    move-result v0

    .line 136
    nop

    .line 137
    nop

    .line 140
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtLayout;->measureChildren(II)V

    .line 143
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, v0, :cond_1

    .line 144
    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/QtLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 145
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 149
    nop

    .line 150
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    .line 152
    iget v6, v5, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->x:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 153
    iget v5, v5, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->y:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v5, v4

    .line 155
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 156
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 143
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 162
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 164
    invoke-static {v1, p1}, Lorg/qtproject/qt/android/QtLayout;->resolveSize(II)I

    move-result p1

    .line 165
    invoke-static {v0, p2}, Lorg/qtproject/qt/android/QtLayout;->resolveSize(II)I

    move-result p2

    .line 164
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtLayout;->setMeasuredDimension(II)V

    .line 166
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 22

    .line 66
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/qtproject/qt/android/QtLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 67
    if-nez v1, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 73
    invoke-virtual/range {p0 .. p0}, Lorg/qtproject/qt/android/QtLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    .line 75
    nop

    .line 76
    nop

    .line 78
    nop

    .line 79
    nop

    .line 81
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-ge v4, v5, :cond_1

    .line 82
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 84
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 85
    invoke-virtual {v2, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 86
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 87
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 89
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v6

    .line 90
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v3

    .line 91
    move/from16 v20, v6

    move v6, v3

    move v3, v5

    move/from16 v5, v20

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v4

    .line 94
    invoke-interface {v2}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 96
    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 98
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Insets;->left:I

    .line 99
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Insets;->top:I

    move-object/from16 v20, v4

    move v4, v2

    move-object/from16 v2, v20

    move/from16 v21, v6

    move v6, v3

    move v3, v5

    move/from16 v5, v21

    .line 102
    :goto_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 103
    iget v7, v1, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v9, v7

    .line 104
    iget v7, v1, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v11, v7

    .line 105
    iget v7, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v13, v7

    .line 106
    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    float-to-double v7, v1

    .line 107
    invoke-virtual {v2}, Landroid/view/Display;->getRefreshRate()F

    move-result v17

    .line 109
    move-wide v15, v7

    move/from16 v7, p1

    move/from16 v8, p2

    move-wide/from16 v18, v13

    move-wide v13, v15

    move-wide/from16 v15, v18

    invoke-static/range {v3 .. v17}, Lorg/qtproject/qt/android/QtNative;->setApplicationDisplayMetrics(IIIIIIDDDDF)V

    .line 114
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 115
    iget v2, v0, Lorg/qtproject/qt/android/QtLayout;->m_ownDisplayRotation:I

    iget v3, v0, Lorg/qtproject/qt/android/QtLayout;->m_activityDisplayRotation:I

    if-eq v2, v3, :cond_2

    if-ne v1, v3, :cond_2

    .line 121
    iget v2, v0, Lorg/qtproject/qt/android/QtLayout;->m_nativeOrientation:I

    invoke-static {v1, v2}, Lorg/qtproject/qt/android/QtNative;->handleOrientationChanged(II)V

    .line 123
    :cond_2
    iput v1, v0, Lorg/qtproject/qt/android/QtLayout;->m_ownDisplayRotation:I

    .line 125
    iget-object v1, v0, Lorg/qtproject/qt/android/QtLayout;->m_startApplicationRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 126
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 127
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/qtproject/qt/android/QtLayout;->m_startApplicationRunnable:Ljava/lang/Runnable;

    .line 129
    :cond_3
    return-void
.end method

.method public setActivityDisplayRotation(I)V
    .locals 0

    .line 34
    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_activityDisplayRotation:I

    .line 35
    return-void
.end method

.method public setLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V
    .locals 1

    .line 286
    if-nez p1, :cond_0

    .line 287
    return-void

    .line 290
    :cond_0
    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/QtLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    return-void

    .line 294
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne p0, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 296
    :goto_0
    if-eqz v0, :cond_3

    .line 297
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    if-eqz p3, :cond_4

    .line 299
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->invalidate()V

    goto :goto_1

    .line 301
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    :cond_4
    :goto_1
    return-void
.end method

.method public setNativeOrientation(I)V
    .locals 0

    .line 39
    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_nativeOrientation:I

    .line 40
    return-void
.end method
