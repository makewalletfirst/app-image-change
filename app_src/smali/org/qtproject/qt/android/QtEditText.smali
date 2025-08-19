.class public Lorg/qtproject/qt/android/QtEditText;
.super Landroid/view/View;
.source "QtEditText.java"


# instance fields
.field m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

.field m_imeOptions:I

.field m_initialCapsMode:I

.field m_inputType:I

.field m_optionsChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/qtproject/qt/android/QtActivityDelegate;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 p1, 0x0

    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_initialCapsMode:I

    .line 16
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputType:I

    .line 18
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    .line 49
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtEditText;->setFocusable(Z)V

    .line 50
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtEditText;->setFocusableInTouchMode(Z)V

    .line 51
    iput-object p2, p0, Lorg/qtproject/qt/android/QtEditText;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    .line 52
    return-void
.end method


# virtual methods
.method public getActivityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 61
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputType:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 62
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 63
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_initialCapsMode:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 64
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 65
    new-instance p1, Lorg/qtproject/qt/android/QtInputConnection;

    invoke-direct {p1, p0}, Lorg/qtproject/qt/android/QtInputConnection;-><init>(Lorg/qtproject/qt/android/QtEditText;)V

    return-object p1
.end method

.method public setImeOptions(I)V
    .locals 1

    .line 23
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    if-ne p1, v0, :cond_0

    .line 24
    return-void

    .line 25
    :cond_0
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    .line 26
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    .line 27
    return-void
.end method

.method public setInitialCapsMode(I)V
    .locals 1

    .line 31
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_initialCapsMode:I

    if-ne p1, v0, :cond_0

    .line 32
    return-void

    .line 33
    :cond_0
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_initialCapsMode:I

    .line 34
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    .line 35
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 40
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputType:I

    if-ne p1, v0, :cond_0

    .line 41
    return-void

    .line 42
    :cond_0
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputType:I

    .line 43
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    .line 44
    return-void
.end method
