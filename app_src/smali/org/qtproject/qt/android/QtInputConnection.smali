.class public Lorg/qtproject/qt/android/QtInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "QtInputConnection.java"


# static fields
.field private static final ID_ADD_TO_DICTIONARY:I = 0x102002a

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_URL:I = 0x1020023

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_SWITCH_INPUT_METHOD:I = 0x1020024


# instance fields
.field private m_view:Lorg/qtproject/qt/android/QtEditText;


# direct methods
.method public constructor <init>(Lorg/qtproject/qt/android/QtEditText;)V
    .locals 1

    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    .line 103
    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    .line 104
    return-void
.end method

.method private setClosing(Z)V
    .locals 3

    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    new-instance v0, Lorg/qtproject/qt/android/HideKeyboardRunnable;

    invoke-direct {v0}, Lorg/qtproject/qt/android/HideKeyboardRunnable;-><init>()V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Lorg/qtproject/qt/android/QtEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/qtproject/qt/android/QtActivityDelegate;->setKeyboardVisibility(ZJ)Z

    .line 98
    :goto_0
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 110
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 124
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result p1

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtNativeInputConnection;->commitCompletion(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 131
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->commitText(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 1

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 138
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method

.method public endBatchEdit()Z
    .locals 1

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 117
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->endBatchEdit()Z

    move-result v0

    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    .line 145
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 146
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 0

    .line 152
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getCursorCapsMode(I)I

    move-result p1

    return p1
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1

    .line 158
    iget v0, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    iget p1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    invoke-static {v0, p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getExtractedText(III)Lorg/qtproject/qt/android/QtExtractedText;

    move-result-object p1

    .line 161
    if-nez p1, :cond_0

    .line 162
    const/4 p1, 0x0

    return-object p1

    .line 164
    :cond_0
    new-instance p2, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {p2}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 165
    iget v0, p1, Lorg/qtproject/qt/android/QtExtractedText;->partialEndOffset:I

    iput v0, p2, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 166
    iget v0, p1, Lorg/qtproject/qt/android/QtExtractedText;->partialStartOffset:I

    iput v0, p2, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 167
    iget v0, p1, Lorg/qtproject/qt/android/QtExtractedText;->selectionEnd:I

    iput v0, p2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 168
    iget v0, p1, Lorg/qtproject/qt/android/QtExtractedText;->selectionStart:I

    iput v0, p2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 169
    iget v0, p1, Lorg/qtproject/qt/android/QtExtractedText;->startOffset:I

    iput v0, p2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 170
    iget-object p1, p1, Lorg/qtproject/qt/android/QtExtractedText;->text:Ljava/lang/String;

    iput-object p1, p2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 171
    return-object p2
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 0

    .line 176
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getSelectedText(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 0

    .line 182
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getTextAfterCursor(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 0

    .line 188
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getTextBeforeCursor(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public performContextMenuAction(I)Z
    .locals 2

    .line 194
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 224
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performContextMenuAction(I)Z

    move-result p1

    return p1

    .line 222
    :pswitch_1
    return v0

    .line 207
    :pswitch_2
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtEditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 208
    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 211
    :cond_0
    return v0

    .line 200
    :pswitch_3
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->copyURL()Z

    move-result p1

    return p1

    .line 204
    :pswitch_4
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->paste()Z

    move-result p1

    return p1

    .line 198
    :pswitch_5
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->copy()Z

    move-result p1

    return p1

    .line 202
    :pswitch_6
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->cut()Z

    move-result p1

    return p1

    .line 196
    :pswitch_7
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->selectAll()Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10

    .line 233
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputConnection;->finishComposingText()Z

    .line 234
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    if-eqz v0, :cond_0

    .line 236
    iget v0, v0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    sparse-switch v0, :sswitch_data_0

    .line 259
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->hideSoftwareKeyboard()V

    goto :goto_0

    .line 256
    :sswitch_0
    goto :goto_0

    .line 247
    :sswitch_1
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    .line 248
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    .line 249
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    const/16 v7, 0x3d

    .line 251
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    const/4 v9, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 253
    invoke-super {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 238
    :sswitch_2
    new-instance v9, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    .line 239
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 240
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/16 v6, 0x3d

    .line 242
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 243
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 244
    invoke-super {p0, v9}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 264
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x7 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setComposingRegion(II)Z
    .locals 1

    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 278
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->setComposingRegion(II)Z

    move-result p1

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1

    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 271
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->setComposingText(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public setSelection(II)Z
    .locals 1

    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 285
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->setSelection(II)Z

    move-result p1

    return p1
.end method
