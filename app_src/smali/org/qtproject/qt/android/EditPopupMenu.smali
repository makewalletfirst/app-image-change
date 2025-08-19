.class public Lorg/qtproject/qt/android/EditPopupMenu;
.super Ljava/lang/Object;
.source "EditPopupMenu.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lorg/qtproject/qt/android/EditContextView$OnClickListener;


# instance fields
.field private m_activity:Landroid/app/Activity;

.field private m_buttons:I

.field private m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private m_layout:Landroid/view/View;

.field private m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private m_popup:Landroid/widget/PopupWindow;

.field private m_posX:I

.field private m_posY:I

.field private m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private m_view:Lorg/qtproject/qt/android/EditContextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    .line 30
    iput-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    .line 31
    iput-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    .line 42
    iput-object p1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_activity:Landroid/app/Activity;

    .line 43
    new-instance v0, Lorg/qtproject/qt/android/EditContextView;

    invoke-direct {v0, p1, p0}, Lorg/qtproject/qt/android/EditContextView;-><init>(Landroid/content/Context;Lorg/qtproject/qt/android/EditContextView$OnClickListener;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    .line 44
    invoke-virtual {v0, p0}, Lorg/qtproject/qt/android/EditContextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 46
    iput-object p2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    .line 47
    return-void
.end method

.method private initOverlay()V
    .locals 4

    .line 51
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    .line 56
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 57
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 58
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 60
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 62
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 63
    return-void
.end method


# virtual methods
.method public contextButtonClicked(I)V
    .locals 0

    .line 145
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 156
    :sswitch_0
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->selectAll()Z

    goto :goto_0

    .line 153
    :sswitch_1
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->paste()Z

    .line 154
    goto :goto_0

    .line 147
    :sswitch_2
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->cut()Z

    .line 148
    goto :goto_0

    .line 150
    :sswitch_3
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->copy()Z

    .line 151
    nop

    .line 159
    :goto_0
    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditPopupMenu;->hide()V

    .line 160
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1040001 -> :sswitch_3
        0x1040003 -> :sswitch_2
        0x104000b -> :sswitch_1
        0x104000d -> :sswitch_0
    .end sparse-switch
.end method

.method public hide()V
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    .line 121
    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 138
    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_0

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    iget p3, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posX:I

    iget p4, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posY:I

    iget p5, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_buttons:I

    iget-object p6, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    iget-object p7, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    iget-object p8, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lorg/qtproject/qt/android/EditPopupMenu;->setPosition(IIILorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;)V

    .line 141
    :cond_1
    return-void
.end method

.method public onPreDraw()Z
    .locals 8

    .line 128
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget v2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posX:I

    iget v3, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posY:I

    iget v4, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_buttons:I

    iget-object v5, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    iget-object v6, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    iget-object v7, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/qtproject/qt/android/EditPopupMenu;->setPosition(IIILorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;)V

    .line 131
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setPosition(IIILorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;)V
    .locals 7

    .line 69
    invoke-direct {p0}, Lorg/qtproject/qt/android/EditPopupMenu;->initOverlay()V

    .line 71
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    invoke-virtual {v0, p3}, Lorg/qtproject/qt/android/EditContextView;->updateButtons(I)V

    .line 72
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 73
    iget-object v2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 76
    new-array v2, v0, [I

    .line 77
    new-array v3, v0, [I

    .line 78
    iget-object v4, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 79
    iget-object v4, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 81
    const/4 v4, 0x0

    aget v5, v1, v4

    add-int/2addr v5, p1

    aget v6, v2, v4

    sub-int/2addr v5, v6

    .line 82
    const/4 v6, 0x1

    aget v1, v1, v6

    add-int/2addr v1, p2

    aget v3, v3, v6

    aget v2, v2, v6

    sub-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 84
    iget-object v2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    invoke-virtual {v2}, Lorg/qtproject/qt/android/EditContextView;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    sub-int/2addr v5, v2

    .line 86
    iget-object v2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    invoke-virtual {v2}, Lorg/qtproject/qt/android/EditContextView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 87
    if-gez v1, :cond_1

    .line 88
    if-eqz p4, :cond_0

    .line 89
    invoke-virtual {p4}, Lorg/qtproject/qt/android/CursorHandle;->bottom()I

    move-result v1

    goto :goto_0

    .line 90
    :cond_0
    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    .line 91
    invoke-virtual {p5}, Lorg/qtproject/qt/android/CursorHandle;->bottom()I

    move-result v1

    invoke-virtual {p6}, Lorg/qtproject/qt/android/CursorHandle;->bottom()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 92
    if-gtz v1, :cond_1

    .line 93
    iget-object v2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 97
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    invoke-virtual {v3}, Lorg/qtproject/qt/android/EditContextView;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v3, p1

    if-ge v2, v3, :cond_2

    .line 98
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    invoke-virtual {v2}, Lorg/qtproject/qt/android/EditContextView;->getWidth()I

    move-result v2

    sub-int v5, v0, v2

    .line 100
    :cond_2
    if-gez v5, :cond_3

    .line 101
    move v5, v4

    .line 103
    :cond_3
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-virtual {v0, v5, v1, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    .line 106
    :cond_4
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 108
    :goto_1
    iput p1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posX:I

    .line 109
    iput p2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posY:I

    .line 110
    iput p3, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_buttons:I

    .line 111
    iput-object p4, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 112
    iput-object p5, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 113
    iput-object p6, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 114
    return-void
.end method
