.class public Lorg/qtproject/qt/android/bindings/QtActivity;
.super Landroid/app/Activity;
.source "QtActivity.java"


# static fields
.field public static final EXTRA_SOURCE_INFO:Ljava/lang/String; = "org.qtproject.qt.android.sourceInfo"


# instance fields
.field public APPLICATION_PARAMETERS:Ljava/lang/String;

.field public ENVIRONMENT_VARIABLES:Ljava/lang/String;

.field public QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

.field public QT_ANDROID_THEMES:[Ljava/lang/String;

.field private m_loader:Lorg/qtproject/qt/android/bindings/QtActivityLoader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->APPLICATION_PARAMETERS:Ljava/lang/String;

    .line 43
    const-string v1, "QT_USE_ANDROID_NATIVE_DIALOGS=1"

    iput-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->QT_ANDROID_THEMES:[Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    .line 67
    new-instance v0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/bindings/QtActivityLoader;-><init>(Lorg/qtproject/qt/android/bindings/QtActivity;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->m_loader:Lorg/qtproject/qt/android/bindings/QtActivityLoader;

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 70
    const-string v0, "Theme_Holo_Light"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->QT_ANDROID_THEMES:[Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_0
    const-string v0, "Theme_DeviceDefault_DayNight"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->QT_ANDROID_THEMES:[Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    .line 76
    :goto_0
    return-void
.end method

.method private addReferrer(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 242
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "org.qtproject.qt.android.sourceInfo"

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    const-string v0, ""

    .line 246
    .local v0, "sourceInformation":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/qtproject/qt/android/bindings/QtActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v2

    .line 247
    .local v2, "referrer":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 248
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android-app://"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_1
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    return-void
.end method


# virtual methods
.method public bringChildToBack(I)V
    .locals 1
    .param p1, "id"    # I

    .line 984
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->bringChildToBack(I)V

    .line 985
    return-void
.end method

.method public bringChildToFront(I)V
    .locals 1
    .param p1, "id"    # I

    .line 989
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->bringChildToFront(I)V

    .line 990
    return-void
.end method

.method public closeContextMenu()V
    .locals 1

    .line 994
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->closeContextMenu()V

    .line 995
    return-void
.end method

.method public createSurface(IZIIIII)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "onTop"    # Z
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I
    .param p7, "imageDepth"    # I

    .line 999
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/qtproject/qt/android/QtActivityDelegate;->createSurface(IZIIIII)V

    .line 1000
    return-void
.end method

.method public destroySurface(I)V
    .locals 1
    .param p1, "id"    # I

    .line 1004
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->destroySurface(I)V

    .line 1005
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 948
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchGenericMotionEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 949
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchGenericMotionEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 951
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 87
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchKeyEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchKeyEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 90
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 851
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchKeyShortcutEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 852
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchKeyShortcutEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 854
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 101
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchPopulateAccessibilityEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchPopulateAccessibilityEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 104
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 115
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchTouchEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchTouchEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 118
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 129
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchTrackballEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchTrackballEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 132
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getSurfaceCount()I
    .locals 1

    .line 1009
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->getSurfaceCount()I

    move-result v0

    return v0
.end method

.method public hideSoftwareKeyboard()V
    .locals 1

    .line 1014
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->hideSoftwareKeyboard()V

    .line 1015
    return-void
.end method

.method public hideSplashScreen()V
    .locals 1

    .line 1019
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->hideSplashScreen()V

    .line 1020
    return-void
.end method

.method public hideSplashScreen(I)V
    .locals 1
    .param p1, "duration"    # I

    .line 1024
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->hideSplashScreen(I)V

    .line 1025
    return-void
.end method

.method public initializeAccessibility()V
    .locals 1

    .line 1029
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->initializeAccessibility()V

    .line 1030
    return-void
.end method

.method public insertNativeView(ILandroid/view/View;IIII)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .line 1034
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/qtproject/qt/android/QtActivityDelegate;->insertNativeView(ILandroid/view/View;IIII)V

    .line 1035
    return-void
.end method

.method public isKeyboardVisible()Z
    .locals 1

    .line 1132
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->isKeyboardVisible()Z

    move-result v0

    return v0
.end method

.method public loadApplication(Landroid/app/Activity;Ljava/lang/ClassLoader;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "loaderParams"    # Landroid/os/Bundle;

    .line 1039
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/qtproject/qt/android/QtActivityDelegate;->loadApplication(Landroid/app/Activity;Ljava/lang/ClassLoader;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public notifyAccessibilityLocationChange(I)V
    .locals 1
    .param p1, "viewId"    # I

    .line 1112
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->notifyAccessibilityLocationChange(I)V

    .line 1113
    return-void
.end method

.method public notifyObjectFocus(I)V
    .locals 1
    .param p1, "viewId"    # I

    .line 1122
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->notifyObjectFocus(I)V

    .line 1123
    return-void
.end method

.method public notifyObjectHide(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "parentId"    # I

    .line 1117
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/QtActivityDelegate;->notifyObjectHide(II)V

    .line 1118
    return-void
.end method

.method public notifyQtAndroidPluginRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    .line 1137
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->notifyQtAndroidPluginRunning(Z)V

    .line 1138
    return-void
.end method

.method public notifyValueChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1127
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/QtActivityDelegate;->notifyValueChanged(ILjava/lang/String;)V

    .line 1128
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 865
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 866
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 867
    :cond_0
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 877
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 878
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 879
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 144
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onActivityResult:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onActivityResult:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void

    .line 148
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 149
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 3
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .line 159
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 160
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 161
    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 889
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 890
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 891
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 768
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 769
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 770
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 780
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 781
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 782
    :cond_0
    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "childActivity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .line 172
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 173
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 174
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 184
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 185
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 186
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 196
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 198
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 208
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 209
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 212
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 223
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 224
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 225
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 256
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 257
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/bindings/QtActivity;->onCreateHook(Landroid/os/Bundle;)V

    .line 258
    invoke-virtual {p0}, Lorg/qtproject/qt/android/bindings/QtActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/bindings/QtActivity;->addReferrer(Landroid/content/Intent;)V

    .line 259
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 265
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 266
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 267
    :cond_0
    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 2

    .line 277
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 278
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    return-object v1

    .line 281
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .line 292
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 293
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    return-object v1

    .line 296
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 821
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 822
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 823
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    return-object v1

    .line 825
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method protected onCreateHook(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 233
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->m_loader:Lorg/qtproject/qt/android/bindings/QtActivityLoader;

    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->APPLICATION_PARAMETERS:Ljava/lang/String;

    iput-object v1, v0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->APPLICATION_PARAMETERS:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->m_loader:Lorg/qtproject/qt/android/bindings/QtActivityLoader;

    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    iput-object v1, v0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->m_loader:Lorg/qtproject/qt/android/bindings/QtActivityLoader;

    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->QT_ANDROID_THEMES:[Ljava/lang/String;

    iput-object v1, v0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->QT_ANDROID_THEMES:[Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->m_loader:Lorg/qtproject/qt/android/bindings/QtActivityLoader;

    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    iput-object v1, v0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->m_loader:Lorg/qtproject/qt/android/bindings/QtActivityLoader;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->onCreate(Landroid/os/Bundle;)V

    .line 238
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 307
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 308
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 311
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 322
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 323
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 326
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 3
    .param p1, "featureId"    # I

    .line 338
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 339
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 342
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onCreatePopupMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1044
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->onCreatePopupMenu(Landroid/view/Menu;)V

    .line 1045
    return-void
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 2
    .param p1, "outBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 353
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 354
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 357
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v1

    return v1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 901
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 902
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 903
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 905
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 368
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 369
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 372
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected onDestroy()V
    .locals 1

    .line 383
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 384
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    .line 385
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 792
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 793
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 794
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 962
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onGenericMotionEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 963
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onGenericMotionEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 965
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 392
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyDown:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 393
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyDown:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 395
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 804
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyLongPress:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 805
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyLongPress:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 807
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 407
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyMultiple:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 408
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyMultiple:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 410
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 916
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyShortcut:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 917
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyShortcut:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 919
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 421
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyUp:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 422
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyUp:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 424
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .locals 1

    .line 435
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 436
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 437
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 443
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 444
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 447
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 458
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 459
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 462
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 473
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/bindings/QtActivity;->addReferrer(Landroid/content/Intent;)V

    .line 474
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 475
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 476
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 486
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 487
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 488
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 490
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 501
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 502
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 503
    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 513
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 514
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 515
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 525
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 526
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    .line 527
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 533
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 534
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    .line 535
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 541
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 542
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    .line 543
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .line 549
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 550
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 551
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 836
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 837
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 838
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 561
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 562
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 565
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 576
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 577
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 578
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 580
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 976
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onRequestPermissionsResult:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 977
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onRequestPermissionsResult:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    return-void

    .line 980
    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 591
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 592
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    .line 593
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 599
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 600
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 601
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 611
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 612
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    .line 613
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .line 619
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 620
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 621
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    return-object v1

    .line 623
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 634
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 635
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 636
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .line 647
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 648
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 649
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 651
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v1

    return v1
.end method

.method protected onStart()V
    .locals 1

    .line 662
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 663
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    .line 664
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 670
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 671
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    .line 672
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 1049
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->onTerminate()V

    .line 1050
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .line 678
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 679
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 680
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 690
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onTouchEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 691
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onTouchEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 693
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 704
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onTrackballEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 705
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onTrackballEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 707
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUserInteraction()V
    .locals 1

    .line 718
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 719
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 720
    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 730
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 731
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 732
    :cond_0
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 742
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 743
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 744
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .line 754
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 755
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 756
    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 930
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 931
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 932
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Landroid/view/ActionMode;

    return-object v1

    .line 934
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    return-object v1
.end method

.method public openContextMenu(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 1054
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/qtproject/qt/android/QtActivityDelegate;->openContextMenu(IIII)V

    .line 1055
    return-void
.end method

.method public resetOptionsMenu()V
    .locals 1

    .line 1059
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->resetOptionsMenu()V

    .line 1060
    return-void
.end method

.method public resetSoftwareKeyboard()V
    .locals 1

    .line 1064
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->resetSoftwareKeyboard()V

    .line 1065
    return-void
.end method

.method public setKeyboardVisibility(ZJ)Z
    .locals 1
    .param p1, "visibility"    # Z
    .param p2, "timeStamp"    # J

    .line 1069
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/qtproject/qt/android/QtActivityDelegate;->setKeyboardVisibility(ZJ)Z

    move-result v0

    return v0
.end method

.method public setSurfaceGeometry(IIIII)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .line 1074
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/qtproject/qt/android/QtActivityDelegate;->setSurfaceGeometry(IIIII)V

    .line 1075
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 1
    .param p1, "systemUiVisibility"    # I

    .line 1079
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->setSystemUiVisibility(I)V

    .line 1080
    return-void
.end method

.method public showSoftwareKeyboard(IIIIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "inputHints"    # I
    .param p6, "enterKeyType"    # I

    .line 1086
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/qtproject/qt/android/QtActivityDelegate;->showSoftwareKeyboard(IIIIII)V

    .line 1087
    return-void
.end method

.method public startApplication()Z
    .locals 1

    .line 1091
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->startApplication()Z

    move-result v0

    return v0
.end method

.method public super_dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 955
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 858
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public super_dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 870
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 871
    return-void
.end method

.method public super_onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 882
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 883
    return-void
.end method

.method public super_onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 152
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 153
    return-void
.end method

.method public super_onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .line 164
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 165
    return-void
.end method

.method public super_onAttachFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 894
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 895
    return-void
.end method

.method public super_onAttachedToWindow()V
    .locals 0

    .line 773
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 774
    return-void
.end method

.method public super_onBackPressed()V
    .locals 0

    .line 785
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 786
    return-void
.end method

.method public super_onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "childActivity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .line 177
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method

.method public super_onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 190
    return-void
.end method

.method public super_onContentChanged()V
    .locals 0

    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 202
    return-void
.end method

.method public super_onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 216
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public super_onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .line 228
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 229
    return-void
.end method

.method public super_onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 270
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 271
    return-void
.end method

.method public super_onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 285
    invoke-super {p0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public super_onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .line 300
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public super_onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 829
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public super_onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 315
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public super_onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 330
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public super_onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .line 346
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public super_onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "outBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 361
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public super_onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 909
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public super_onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 376
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public super_onDetachedFromWindow()V
    .locals 0

    .line 797
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 798
    return-void
.end method

.method public super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 969
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 399
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 811
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 414
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 923
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 428
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 451
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public super_onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 466
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public super_onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 479
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 480
    return-void
.end method

.method public super_onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 494
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public super_onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .line 506
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 507
    return-void
.end method

.method public super_onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 518
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 519
    return-void
.end method

.method public super_onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .line 554
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 555
    return-void
.end method

.method public super_onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 841
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 842
    return-void
.end method

.method public super_onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 569
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public super_onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 584
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public super_onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 604
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 605
    return-void
.end method

.method public super_onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 627
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public super_onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 639
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 641
    return-void
.end method

.method public super_onSearchRequested()Z
    .locals 1

    .line 655
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public super_onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .line 683
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 684
    return-void
.end method

.method public super_onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 697
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 711
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onUserInteraction()V
    .locals 0

    .line 723
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 724
    return-void
.end method

.method public super_onUserLeaveHint()V
    .locals 0

    .line 735
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 736
    return-void
.end method

.method public super_onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 747
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 748
    return-void
.end method

.method public super_onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 759
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 760
    return-void
.end method

.method public super_onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 938
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public updateFullScreen()V
    .locals 1

    .line 1096
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->updateFullScreen()V

    .line 1097
    return-void
.end method

.method public updateHandles(IIIIIIIIZ)V
    .locals 10
    .param p1, "mode"    # I
    .param p2, "editX"    # I
    .param p3, "editY"    # I
    .param p4, "editButtons"    # I
    .param p5, "x1"    # I
    .param p6, "y1"    # I
    .param p7, "x2"    # I
    .param p8, "y2"    # I
    .param p9, "rtl"    # Z

    .line 1102
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lorg/qtproject/qt/android/QtActivityDelegate;->updateHandles(IIIIIIIIZ)V

    .line 1103
    return-void
.end method

.method public updateSelection(IIII)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I
    .param p3, "candidatesStart"    # I
    .param p4, "candidatesEnd"    # I

    .line 1107
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/qtproject/qt/android/QtActivityDelegate;->updateSelection(IIII)V

    .line 1108
    return-void
.end method
