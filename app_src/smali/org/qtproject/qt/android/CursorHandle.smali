.class public Lorg/qtproject/qt/android/CursorHandle;
.super Ljava/lang/Object;
.source "CursorHandle.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private m_activity:Landroid/app/Activity;

.field private m_attr:I

.field private m_cursorView:Lorg/qtproject/qt/android/CursorView;

.field private m_id:I

.field private m_lastX:I

.field private m_lastY:I

.field private m_layout:Landroid/view/View;

.field private m_popup:Landroid/widget/PopupWindow;

.field private m_posX:I

.field private m_posY:I

.field private m_rtl:Z

.field m_yShift:I

.field tolerance:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;IIZ)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    .line 73
    iput-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    .line 74
    iput-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    .line 79
    iput v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    .line 87
    iput-object p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_activity:Landroid/app/Activity;

    .line 88
    iput p3, p0, Lorg/qtproject/qt/android/CursorHandle;->m_id:I

    .line 89
    iput p4, p0, Lorg/qtproject/qt/android/CursorHandle;->m_attr:I

    .line 90
    iput-object p2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    .line 91
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 92
    const/4 p2, 0x5

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p2, p3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_yShift:I

    .line 93
    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->tolerance:I

    .line 94
    rsub-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastY:I

    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastX:I

    .line 95
    iput-boolean p5, p0, Lorg/qtproject/qt/android/CursorHandle;->m_rtl:Z

    .line 96
    return-void
.end method

.method private initOverlay()Z
    .locals 7

    .line 99
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    new-array v2, v1, [I

    iget v3, p0, Lorg/qtproject/qt/android/CursorHandle;->m_attr:I

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 104
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 106
    new-instance v3, Lorg/qtproject/qt/android/CursorView;

    invoke-direct {v3, v0, p0}, Lorg/qtproject/qt/android/CursorView;-><init>(Landroid/content/Context;Lorg/qtproject/qt/android/CursorHandle;)V

    iput-object v3, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    .line 107
    invoke-virtual {v3, v2}, Lorg/qtproject/qt/android/CursorView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    const v6, 0x10102c8

    invoke-direct {v3, v0, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    .line 110
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 111
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 112
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 114
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 116
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 118
    :cond_0
    return v1
.end method


# virtual methods
.method public bottom()I
    .locals 2

    .line 158
    invoke-direct {p0}, Lorg/qtproject/qt/android/CursorHandle;->initOverlay()Z

    .line 159
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 160
    iget-object v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    invoke-virtual {v1, v0}, Lorg/qtproject/qt/android/CursorView;->getLocationOnScreen([I)V

    .line 161
    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/CursorView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hide()V
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 168
    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .line 190
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/CursorHandle;->setPosition(II)V

    .line 193
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setPosition(II)V
    .locals 8

    .line 123
    invoke-direct {p0}, Lorg/qtproject/qt/android/CursorHandle;->initOverlay()Z

    .line 125
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 126
    iget-object v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 129
    new-array v2, v0, [I

    .line 130
    new-array v3, v0, [I

    .line 131
    iget-object v4, p0, Lorg/qtproject/qt/android/CursorHandle;->m_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 132
    iget-object v4, p0, Lorg/qtproject/qt/android/CursorHandle;->m_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 134
    const/4 v4, 0x0

    aget v5, v1, v4

    add-int/2addr v5, p1

    aget v6, v2, v4

    sub-int/2addr v5, v6

    .line 135
    const/4 v6, 0x1

    aget v1, v1, v6

    add-int/2addr v1, p2

    iget v7, p0, Lorg/qtproject/qt/android/CursorHandle;->m_yShift:I

    add-int/2addr v1, v7

    aget v3, v3, v6

    aget v2, v2, v6

    sub-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 137
    iget v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_id:I

    if-ne v2, v6, :cond_0

    .line 138
    iget-object v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    sub-int/2addr v5, v2

    goto :goto_0

    .line 139
    :cond_0
    const/4 v3, 0x3

    if-ne v2, v0, :cond_1

    iget-boolean v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_rtl:Z

    if-eqz v0, :cond_2

    :cond_1
    if-ne v2, v3, :cond_3

    iget-boolean v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_rtl:Z

    if-eqz v0, :cond_3

    .line 140
    :cond_2
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    mul-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x4

    sub-int/2addr v5, v0

    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    sub-int/2addr v5, v0

    .line 145
    :goto_0
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-virtual {v0, v5, v1, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 147
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    sub-int v1, p1, v1

    iget v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt/android/CursorView;->adjusted(II)V

    goto :goto_1

    .line 149
    :cond_4
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 152
    :goto_1
    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    .line 153
    iput p2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    .line 154
    return-void
.end method

.method public updatePosition(II)V
    .locals 3

    .line 177
    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_yShift:I

    sub-int/2addr p2, v0

    .line 178
    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastX:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->tolerance:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastY:I

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->tolerance:I

    if-le v0, v1, :cond_1

    .line 179
    :cond_0
    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_id:I

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Lorg/qtproject/qt/android/QtNative;->handleLocationChanged(III)V

    .line 180
    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastX:I

    .line 181
    iput p2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastY:I

    .line 183
    :cond_1
    return-void
.end method

.method public width()I
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method
