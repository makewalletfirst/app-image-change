.class public Lorg/qtproject/qt/android/QtActivityDelegate;
.super Ljava/lang/Object;
.source "QtActivityDelegate.java"


# static fields
.field private static final APPLICATION_PARAMETERS_KEY:Ljava/lang/String; = "application.parameters"

.field public static final ApplicationActive:I = 0x4

.field public static final ApplicationHidden:I = 0x1

.field public static final ApplicationInactive:I = 0x2

.field public static final ApplicationSuspended:I = 0x0

.field private static final BUNDLED_LIBRARIES_KEY:Ljava/lang/String; = "bundled.libraries"

.field private static final CursorHandleNotShown:I = 0x0

.field private static final CursorHandleShowEdit:I = 0x100

.field private static final CursorHandleShowNormal:I = 0x1

.field private static final CursorHandleShowSelection:I = 0x2

.field private static final ENVIRONMENT_VARIABLES_KEY:Ljava/lang/String; = "environment.variables"

.field private static final MAIN_LIBRARY_KEY:Ljava/lang/String; = "main.library"

.field private static final NATIVE_LIBRARIES_KEY:Ljava/lang/String; = "native.libraries"

.field private static final STATIC_INIT_CLASSES_KEY:Ljava/lang/String; = "static.init.classes"

.field public static final SYSTEM_UI_VISIBILITY_FULLSCREEN:I = 0x1

.field public static final SYSTEM_UI_VISIBILITY_NORMAL:I = 0x0

.field public static final SYSTEM_UI_VISIBILITY_TRANSLUCENT:I = 0x2

.field private static m_applicationParameters:Ljava/lang/String;


# instance fields
.field private final EnterKeyDefault:I

.field private final EnterKeyDone:I

.field private final EnterKeyGo:I

.field private final EnterKeyNext:I

.field private final EnterKeyPrevious:I

.field private final EnterKeyReturn:I

.field private final EnterKeySearch:I

.field private final EnterKeySend:I

.field private final ImhDate:I

.field private final ImhDialableCharactersOnly:I

.field private final ImhDigitsOnly:I

.field private final ImhEmailCharactersOnly:I

.field private final ImhFormattedNumbersOnly:I

.field private final ImhHiddenText:I

.field private final ImhLatinOnly:I

.field private final ImhLowercaseOnly:I

.field private final ImhMultiLine:I

.field private final ImhNoAutoUppercase:I

.field private final ImhNoPredictiveText:I

.field private final ImhPreferLatin:I

.field private final ImhPreferLowercase:I

.field private final ImhPreferNumbers:I

.field private final ImhPreferUppercase:I

.field private final ImhSensitiveData:I

.field private final ImhTime:I

.field private final ImhUppercaseOnly:I

.field private final ImhUrlCharactersOnly:I

.field private final displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

.field private m_activity:Landroid/app/Activity;

.field public m_backKeyPressedSent:Z

.field private m_contextMenuVisible:Z

.field private m_currentRotation:I

.field private m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private m_dummyView:Landroid/view/View;

.field private m_editPopupMenu:Lorg/qtproject/qt/android/EditPopupMenu;

.field private m_editText:Lorg/qtproject/qt/android/QtEditText;

.field private m_imm:Landroid/view/inputmethod/InputMethodManager;

.field private m_isPluginRunning:Z

.field private m_keyboardIsVisible:Z

.field private m_landscapeKeyboardHeight:I

.field private m_lastChar:I

.field private m_layout:Lorg/qtproject/qt/android/QtLayout;

.field private m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private m_mainLib:Ljava/lang/String;

.field private m_metaState:J

.field private m_nativeOrientation:I

.field private m_nativeViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m_optionsMenuIsVisible:Z

.field private m_portraitKeyboardHeight:I

.field private m_probeKeyboardHeightDelay:I

.field private m_quitApp:Z

.field private m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private m_showHideTimeStamp:J

.field private m_softInputMode:I

.field private m_splashScreen:Landroid/widget/ImageView;

.field private m_splashScreenSticky:Z

.field private m_started:Z

.field private m_super_dispatchGenericMotionEvent:Ljava/lang/reflect/Method;

.field private m_super_dispatchKeyEvent:Ljava/lang/reflect/Method;

.field private m_super_onActivityResult:Ljava/lang/reflect/Method;

.field private m_super_onConfigurationChanged:Ljava/lang/reflect/Method;

.field private m_super_onKeyDown:Ljava/lang/reflect/Method;

.field private m_super_onKeyUp:Ljava/lang/reflect/Method;

.field private m_super_onRestoreInstanceState:Ljava/lang/reflect/Method;

.field private m_super_onRetainNonConfigurationInstance:Ljava/lang/reflect/Method;

.field private m_super_onSaveInstanceState:Ljava/lang/reflect/Method;

.field private m_super_onWindowFocusChanged:Ljava/lang/reflect/Method;

.field private m_surfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/qtproject/qt/android/QtSurface;",
            ">;"
        }
    .end annotation
.end field

.field private m_systemUiVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_applicationParameters:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    .line 73
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_dispatchKeyEvent:Ljava/lang/reflect/Method;

    .line 74
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onRestoreInstanceState:Ljava/lang/reflect/Method;

    .line 75
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onRetainNonConfigurationInstance:Ljava/lang/reflect/Method;

    .line 76
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onSaveInstanceState:Ljava/lang/reflect/Method;

    .line 77
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onKeyDown:Ljava/lang/reflect/Method;

    .line 78
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onKeyUp:Ljava/lang/reflect/Method;

    .line 79
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onConfigurationChanged:Ljava/lang/reflect/Method;

    .line 80
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onActivityResult:Ljava/lang/reflect/Method;

    .line 81
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_dispatchGenericMotionEvent:Ljava/lang/reflect/Method;

    .line 82
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onWindowFocusChanged:Ljava/lang/reflect/Method;

    .line 97
    const/4 v1, -0x1

    iput v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_currentRotation:I

    .line 98
    const/4 v1, 0x0

    iput v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeOrientation:I

    .line 102
    iput v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_lastChar:I

    .line 103
    iput v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_softInputMode:I

    .line 104
    iput v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_systemUiVisibility:I

    .line 105
    iput-boolean v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_started:Z

    .line 106
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    .line 107
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    .line 108
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    .line 109
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    .line 110
    iput-boolean v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreenSticky:Z

    .line 111
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    .line 112
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    .line 113
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_quitApp:Z

    .line 114
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    .line 115
    iput-boolean v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_keyboardIsVisible:Z

    .line 116
    iput-boolean v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_backKeyPressedSent:Z

    .line 117
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_showHideTimeStamp:J

    .line 118
    iput v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_portraitKeyboardHeight:I

    .line 119
    iput v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_landscapeKeyboardHeight:I

    .line 120
    const/16 v3, 0x32

    iput v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_probeKeyboardHeightDelay:I

    .line 125
    iput-boolean v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_isPluginRunning:Z

    .line 127
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    .line 183
    iput v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhHiddenText:I

    .line 184
    const/4 v0, 0x2

    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhSensitiveData:I

    .line 185
    const/4 v3, 0x4

    iput v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhNoAutoUppercase:I

    .line 186
    const/16 v4, 0x8

    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhPreferNumbers:I

    .line 187
    const/16 v4, 0x10

    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhPreferUppercase:I

    .line 188
    const/16 v4, 0x20

    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhPreferLowercase:I

    .line 189
    const/16 v4, 0x40

    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhNoPredictiveText:I

    .line 191
    const/16 v4, 0x80

    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhDate:I

    .line 192
    const/16 v4, 0x100

    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhTime:I

    .line 194
    const/16 v4, 0x200

    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhPreferLatin:I

    .line 196
    const/16 v4, 0x400

    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhMultiLine:I

    .line 198
    const/high16 v4, 0x10000

    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhDigitsOnly:I

    .line 199
    const/high16 v4, 0x20000

    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhFormattedNumbersOnly:I

    .line 200
    const/high16 v4, 0x40000

    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhUppercaseOnly:I

    .line 201
    const/high16 v4, 0x80000

    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhLowercaseOnly:I

    .line 202
    const/high16 v4, 0x100000

    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhDialableCharactersOnly:I

    .line 203
    const/high16 v4, 0x200000

    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhEmailCharactersOnly:I

    .line 204
    const/high16 v4, 0x400000

    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhUrlCharactersOnly:I

    .line 205
    const/high16 v4, 0x800000

    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhLatinOnly:I

    .line 208
    iput v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->EnterKeyDefault:I

    .line 209
    iput v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->EnterKeyReturn:I

    .line 210
    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->EnterKeyDone:I

    .line 211
    const/4 v0, 0x3

    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->EnterKeyGo:I

    .line 212
    iput v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->EnterKeySend:I

    .line 213
    const/4 v0, 0x5

    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->EnterKeySearch:I

    .line 214
    const/4 v0, 0x6

    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->EnterKeyNext:I

    .line 215
    const/4 v0, 0x7

    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->EnterKeyPrevious:I

    .line 562
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$4;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$4;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1174
    iput-boolean v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_optionsMenuIsVisible:Z

    .line 1204
    iput-boolean v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_contextMenuVisible:Z

    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtEditText;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    return-object p0
.end method

.method static synthetic access$100(Lorg/qtproject/qt/android/QtActivityDelegate;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/qtproject/qt/android/QtActivityDelegate;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeOrientation:I

    return p0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_applicationParameters:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/qtproject/qt/android/QtActivityDelegate;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_mainLib:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lorg/qtproject/qt/android/QtActivityDelegate;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_started:Z

    return p1
.end method

.method static synthetic access$200(Lorg/qtproject/qt/android/QtActivityDelegate;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_softInputMode:I

    return p0
.end method

.method static synthetic access$300(Lorg/qtproject/qt/android/QtActivityDelegate;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_keyboardIsVisible:Z

    return p0
.end method

.method static synthetic access$400(Lorg/qtproject/qt/android/QtActivityDelegate;)Landroid/app/Activity;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lorg/qtproject/qt/android/QtActivityDelegate;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_landscapeKeyboardHeight:I

    return p0
.end method

.method static synthetic access$502(Lorg/qtproject/qt/android/QtActivityDelegate;I)I
    .locals 0

    .line 70
    iput p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_landscapeKeyboardHeight:I

    return p1
.end method

.method static synthetic access$600(Lorg/qtproject/qt/android/QtActivityDelegate;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_portraitKeyboardHeight:I

    return p0
.end method

.method static synthetic access$602(Lorg/qtproject/qt/android/QtActivityDelegate;I)I
    .locals 0

    .line 70
    iput p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_portraitKeyboardHeight:I

    return p1
.end method

.method static synthetic access$700(Lorg/qtproject/qt/android/QtActivityDelegate;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_probeKeyboardHeightDelay:I

    return p0
.end method

.method static synthetic access$728(Lorg/qtproject/qt/android/QtActivityDelegate;I)I
    .locals 1

    .line 70
    iget v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_probeKeyboardHeightDelay:I

    mul-int/2addr v0, p1

    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_probeKeyboardHeightDelay:I

    return v0
.end method

.method static synthetic access$800(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtLayout;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    return-object p0
.end method

.method static synthetic access$900(Lorg/qtproject/qt/android/QtActivityDelegate;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_currentRotation:I

    return p0
.end method

.method static synthetic access$902(Lorg/qtproject/qt/android/QtActivityDelegate;I)I
    .locals 0

    .line 70
    iput p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_currentRotation:I

    return p1
.end method

.method private handleUiModeChange(I)V
    .locals 7

    .line 980
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_1

    .line 982
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 983
    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v2

    .line 984
    if-eqz v2, :cond_1

    .line 986
    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->luminance(I)F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v3, v5

    const/16 v3, 0x8

    if-lez v0, :cond_0

    .line 987
    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 988
    :goto_0
    invoke-interface {v2, v0, v3}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 992
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 998
    :sswitch_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->runIfNeeded(Landroid/content/Context;Z)V

    .line 999
    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->handleUiDarkModeChanged(I)V

    goto :goto_1

    .line 994
    :sswitch_1
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle;->runIfNeeded(Landroid/content/Context;Z)V

    .line 995
    invoke-static {v1}, Lorg/qtproject/qt/android/QtNative;->handleUiDarkModeChanged(I)V

    .line 996
    nop

    .line 1002
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private loadActivity(Landroid/app/Activity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 623
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    .line 625
    invoke-static {p1, p0}, Lorg/qtproject/qt/android/QtNative;->setActivity(Landroid/app/Activity;Lorg/qtproject/qt/android/QtActivityDelegate;)V

    .line 626
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->setActionBarVisibility(Z)V

    .line 628
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 629
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/view/KeyEvent;

    aput-object v3, v2, p1

    .line 630
    const-string v3, "super_dispatchKeyEvent"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_dispatchKeyEvent:Ljava/lang/reflect/Method;

    .line 631
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v2, p1

    .line 632
    const-string v3, "super_onRestoreInstanceState"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onRestoreInstanceState:Ljava/lang/reflect/Method;

    .line 633
    new-array v2, p1, [Ljava/lang/Class;

    .line 634
    const-string v3, "super_onRetainNonConfigurationInstance"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onRetainNonConfigurationInstance:Ljava/lang/reflect/Method;

    .line 635
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v2, p1

    .line 636
    const-string v3, "super_onSaveInstanceState"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onSaveInstanceState:Ljava/lang/reflect/Method;

    .line 637
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, p1

    const-class v4, Landroid/view/KeyEvent;

    aput-object v4, v3, v1

    .line 638
    const-string v4, "super_onKeyDown"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onKeyDown:Ljava/lang/reflect/Method;

    .line 639
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, p1

    const-class v4, Landroid/view/KeyEvent;

    aput-object v4, v3, v1

    .line 640
    const-string v4, "super_onKeyUp"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onKeyUp:Ljava/lang/reflect/Method;

    .line 641
    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/res/Configuration;

    aput-object v4, v3, p1

    .line 642
    const-string v4, "super_onConfigurationChanged"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onConfigurationChanged:Ljava/lang/reflect/Method;

    .line 643
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, p1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    const-class v4, Landroid/content/Intent;

    aput-object v4, v3, v2

    .line 644
    const-string v2, "super_onActivityResult"

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onActivityResult:Ljava/lang/reflect/Method;

    .line 645
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, p1

    .line 646
    const-string v3, "super_onWindowFocusChanged"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onWindowFocusChanged:Ljava/lang/reflect/Method;

    .line 647
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/view/MotionEvent;

    aput-object v2, v1, p1

    .line 648
    const-string v2, "super_dispatchGenericMotionEvent"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_dispatchGenericMotionEvent:Ljava/lang/reflect/Method;

    .line 650
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_softInputMode:I

    .line 652
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 653
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 654
    return-void
.end method

.method private setActionBarVisibility(Z)V
    .locals 1

    .line 1266
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1267
    return-void

    .line 1268
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 1271
    :cond_1
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->show()V

    goto :goto_1

    .line 1269
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 1272
    :goto_1
    return-void
.end method


# virtual methods
.method public bringChildToBack(I)V
    .locals 2

    .line 1389
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1390
    if-eqz v0, :cond_0

    .line 1391
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/qtproject/qt/android/QtLayout;->moveChild(Landroid/view/View;I)V

    .line 1392
    return-void

    .line 1395
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 1396
    if-eqz p1, :cond_1

    .line 1397
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->getSurfaceCount()I

    move-result v0

    .line 1398
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {v1, p1, v0}, Lorg/qtproject/qt/android/QtLayout;->moveChild(Landroid/view/View;I)V

    .line 1400
    :cond_1
    return-void
.end method

.method public bringChildToFront(I)V
    .locals 2

    .line 1374
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1375
    if-eqz v0, :cond_1

    .line 1376
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->getSurfaceCount()I

    move-result p1

    .line 1377
    if-lez p1, :cond_0

    .line 1378
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, v0, p1}, Lorg/qtproject/qt/android/QtLayout;->moveChild(Landroid/view/View;I)V

    .line 1379
    :cond_0
    return-void

    .line 1382
    :cond_1
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 1383
    if-eqz p1, :cond_2

    .line 1384
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/qtproject/qt/android/QtLayout;->moveChild(Landroid/view/View;I)V

    .line 1385
    :cond_2
    return-void
.end method

.method public closeContextMenu()V
    .locals 1

    .line 1261
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    .line 1262
    return-void
.end method

.method public createSurface(IZIIIII)V
    .locals 4

    .line 1296
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1297
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1298
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010054

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1299
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 1300
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1302
    :cond_0
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1304
    :goto_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1305
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {v1, v0}, Lorg/qtproject/qt/android/QtLayout;->removeView(Landroid/view/View;)V

    .line 1306
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    .line 1310
    :cond_1
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1311
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtLayout;->removeView(Landroid/view/View;)V

    .line 1313
    :cond_2
    new-instance v0, Lorg/qtproject/qt/android/QtSurface;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1, p2, p7}, Lorg/qtproject/qt/android/QtSurface;-><init>(Landroid/content/Context;IZI)V

    .line 1314
    if-ltz p5, :cond_4

    if-gez p6, :cond_3

    goto :goto_1

    .line 1318
    :cond_3
    new-instance p2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {p2, p5, p6, p3, p4}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, p2}, Lorg/qtproject/qt/android/QtSurface;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1315
    :cond_4
    :goto_1
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2}, Lorg/qtproject/qt/android/QtSurface;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1323
    :goto_2
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->getSurfaceCount()I

    move-result p2

    .line 1324
    iget-object p3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {p3, v0, p2}, Lorg/qtproject/qt/android/QtLayout;->addView(Landroid/view/View;I)V

    .line 1326
    iget-object p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    iget-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreenSticky:Z

    if-nez p1, :cond_5

    .line 1328
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->hideSplashScreen()V

    .line 1329
    :cond_5
    return-void
.end method

.method public destroySurface(I)V
    .locals 2

    .line 1345
    nop

    .line 1347
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1349
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1350
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1352
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Qt JAVA"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1355
    :goto_0
    if-nez p1, :cond_2

    .line 1356
    return-void

    .line 1360
    :cond_2
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1361
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    goto :goto_1

    .line 1363
    :cond_3
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtLayout;->removeView(Landroid/view/View;)V

    .line 1365
    :goto_1
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1404
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    return v1

    .line 1408
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_dispatchGenericMotionEvent:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 1409
    :catch_0
    move-exception p1

    .line 1410
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1412
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1154
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_started:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1155
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 1156
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1157
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1158
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 1159
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v2, v0, v3, v4}, Lorg/qtproject/qt/android/QtNative;->keyDown(IIIZ)V

    .line 1160
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-static {v2, v0, v3, v4}, Lorg/qtproject/qt/android/QtNative;->keyUp(IIIZ)V

    .line 1163
    :cond_2
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1164
    return v1

    .line 1167
    :cond_3
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_dispatchKeyEvent:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 1168
    :catch_0
    move-exception p1

    .line 1169
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1171
    return v2
.end method

.method getAppIconSize(Landroid/app/Activity;)I
    .locals 3

    .line 452
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x1050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 453
    const/16 v1, 0x200

    const/16 v2, 0x24

    if-lt v0, v2, :cond_0

    if-le v0, v1, :cond_2

    .line 454
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 455
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 456
    iget p1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit8 p1, p1, 0xa

    mul-int/lit8 p1, p1, 0x3

    .line 457
    if-ge p1, v2, :cond_1

    .line 458
    move v0, v2

    goto :goto_0

    .line 457
    :cond_1
    move v0, p1

    .line 460
    :goto_0
    if-le v0, v1, :cond_2

    .line 461
    move v0, v1

    .line 464
    :cond_2
    return v0
.end method

.method public getSelectHandleWidth()I
    .locals 2

    .line 483
    nop

    .line 484
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v1, :cond_0

    .line 485
    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorHandle;->width()I

    move-result v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/CursorHandle;->width()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorHandle;->width()I

    move-result v0

    goto :goto_0

    .line 486
    :cond_1
    const/4 v0, 0x0

    .line 489
    :goto_0
    return v0
.end method

.method public getSurfaceCount()I
    .locals 1

    .line 1369
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public hideSoftwareKeyboard()V
    .locals 5

    .line 431
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 432
    return-void

    .line 433
    :cond_0
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/QtEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lorg/qtproject/qt/android/QtActivityDelegate$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lorg/qtproject/qt/android/QtActivityDelegate$3;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 448
    return-void
.end method

.method public hideSplashScreen()V
    .locals 1

    .line 884
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->hideSplashScreen(I)V

    .line 885
    return-void
.end method

.method public hideSplashScreen(I)V
    .locals 3

    .line 889
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 890
    return-void

    .line 892
    :cond_0
    if-gtz p1, :cond_1

    .line 893
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/QtLayout;->removeView(Landroid/view/View;)V

    .line 894
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    .line 895
    return-void

    .line 898
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 899
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 900
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 902
    new-instance p1, Lorg/qtproject/qt/android/QtActivityDelegate$7;

    invoke-direct {p1, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$7;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 913
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 914
    return-void
.end method

.method public initializeAccessibility()V
    .locals 3

    .line 959
    new-instance v0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-direct {v0, v1, v2, p0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lorg/qtproject/qt/android/QtActivityDelegate;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    .line 960
    return-void
.end method

.method public insertNativeView(ILandroid/view/View;IIII)V
    .locals 3

    .line 1275
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1276
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {v1, v0}, Lorg/qtproject/qt/android/QtLayout;->removeView(Landroid/view/View;)V

    .line 1277
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    .line 1280
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1281
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtLayout;->removeView(Landroid/view/View;)V

    .line 1283
    :cond_1
    if-ltz p5, :cond_3

    if-gez p6, :cond_2

    goto :goto_0

    .line 1287
    :cond_2
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {v0, p5, p6, p3, p4}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1284
    :cond_3
    :goto_0
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1290
    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 1291
    iget-object p3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {p3, p2}, Lorg/qtproject/qt/android/QtLayout;->addView(Landroid/view/View;)V

    .line 1292
    iget-object p3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    return-void
.end method

.method public isKeyboardVisible()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_keyboardIsVisible:Z

    return v0
.end method

.method isUiModeDark(Landroid/content/res/Configuration;)Z
    .locals 1

    .line 974
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadApplication(Landroid/app/Activity;Ljava/lang/ClassLoader;Landroid/os/Bundle;)Z
    .locals 18

    .line 659
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v3, "native.libraries"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 660
    const-string v5, "bundled.libraries"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 661
    const-string v6, "environment.variables"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 666
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->loadActivity(Landroid/app/Activity;)V

    .line 667
    invoke-static/range {p2 .. p2}, Lorg/qtproject/qt/android/QtNative;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 671
    nop

    .line 673
    const-string v0, "static.init.classes"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 674
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, [Ljava/lang/String;

    array-length v9, v7

    move v10, v4

    :goto_0
    if-ge v10, v9, :cond_2

    aget-object v11, v7, v10

    .line 675
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 676
    move-object/from16 v12, p2

    goto :goto_3

    .line 679
    :cond_1
    move-object/from16 v12, p2

    :try_start_1
    invoke-virtual {v12, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 680
    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 682
    :try_start_2
    const-string v0, "setActivity"

    const/4 v15, 0x2

    new-array v8, v15, [Ljava/lang/Class;

    const-class v17, Landroid/app/Activity;

    aput-object v17, v8, v4

    const-class v17, Ljava/lang/Object;

    const/16 v16, 0x1

    aput-object v17, v8, v16

    invoke-virtual {v13, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 683
    new-array v8, v15, [Ljava/lang/Object;

    iget-object v15, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    aput-object v15, v8, v4

    const/4 v15, 0x1

    aput-object v1, v8, v15

    invoke-virtual {v0, v14, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 686
    goto :goto_1

    .line 684
    :catch_0
    move-exception v0

    .line 685
    :try_start_3
    const-string v0, "Qt JAVA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Class "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " does not implement setActivity method"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 690
    :goto_1
    :try_start_4
    const-string v0, "setContext"

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v11, v4

    invoke-virtual {v13, v0, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 691
    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Object;

    iget-object v8, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    aput-object v8, v11, v4

    invoke-virtual {v0, v14, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 694
    goto :goto_2

    .line 692
    :catch_1
    move-exception v0

    .line 693
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 697
    :goto_2
    goto :goto_3

    .line 695
    :catch_2
    move-exception v0

    .line 696
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 674
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 700
    :cond_2
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->loadQtLibraries(Ljava/util/ArrayList;)V

    .line 701
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 702
    iget-object v3, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {v3}, Lorg/qtproject/qt/android/QtNativeLibrariesDir;->nativeLibrariesDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 703
    invoke-static {v0, v3}, Lorg/qtproject/qt/android/QtNative;->loadBundledLibraries(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 704
    const-string v5, "main.library"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_mainLib:Ljava/lang/String;

    .line 706
    if-nez v5, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 707
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_mainLib:Ljava/lang/String;

    .line 708
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 706
    :cond_3
    const/4 v7, 0x1

    .line 711
    :goto_4
    invoke-static/range {p3 .. p3}, Lorg/qtproject/qt/android/ExtractStyle;->setup(Landroid/os/Bundle;)V

    .line 712
    iget-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/qtproject/qt/android/QtActivityDelegate;->isUiModeDark(Landroid/content/res/Configuration;)Z

    move-result v5

    invoke-static {v0, v5}, Lorg/qtproject/qt/android/ExtractStyle;->runIfNeeded(Landroid/content/Context;Z)V

    .line 714
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariables(Ljava/lang/String;)V

    .line 715
    const-string v0, "QT_ANDROID_FONTS_MONOSPACE"

    const-string v5, "Droid Sans Mono;Droid Sans;Droid Sans Fallback"

    invoke-static {v0, v5}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v0, "QT_ANDROID_FONTS_SERIF"

    const-string v5, "Droid Serif"

    invoke-static {v0, v5}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v5, "HOME"

    invoke-static {v5, v0}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v5, "TMPDIR"

    invoke-static {v5, v0}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v0, "QT_ANDROID_FONTS"

    const-string v5, "Roboto;Droid Sans;Droid Sans Fallback"

    invoke-static {v0, v5}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    nop

    .line 723
    invoke-virtual/range {p0 .. p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->getAppIconSize(Landroid/app/Activity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 722
    const-string v5, "QT_ANDROID_APP_ICON_SIZE"

    invoke-static {v5, v0}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v0, "application.parameters"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 726
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_applicationParameters:Ljava/lang/String;

    goto :goto_5

    .line 728
    :cond_4
    const-string v0, ""

    sput-object v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_applicationParameters:Ljava/lang/String;

    .line 730
    :goto_5
    iget-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_mainLib:Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/qtproject/qt/android/QtNative;->loadMainLibrary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_mainLib:Ljava/lang/String;

    .line 731
    if-eqz v0, :cond_5

    move v4, v7

    :cond_5
    return v4

    .line 668
    :catch_3
    move-exception v0

    .line 669
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 670
    return v4

    .line 662
    :cond_6
    :goto_6
    return v4
.end method

.method public notifyAccessibilityLocationChange(I)V
    .locals 1

    .line 918
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    if-nez v0, :cond_0

    .line 919
    return-void

    .line 920
    :cond_0
    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->notifyLocationChange(I)V

    .line 921
    return-void
.end method

.method public notifyObjectFocus(I)V
    .locals 1

    .line 932
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    if-nez v0, :cond_0

    .line 933
    return-void

    .line 934
    :cond_0
    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->notifyObjectFocus(I)V

    .line 935
    return-void
.end method

.method public notifyObjectHide(II)V
    .locals 1

    .line 925
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    if-nez v0, :cond_0

    .line 926
    return-void

    .line 927
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->notifyObjectHide(II)V

    .line 928
    return-void
.end method

.method public notifyQtAndroidPluginRunning(Z)V
    .locals 0

    .line 954
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_isPluginRunning:Z

    .line 955
    return-void
.end method

.method public notifyScrolledEvent(I)V
    .locals 1

    .line 946
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    if-nez v0, :cond_0

    .line 947
    return-void

    .line 948
    :cond_0
    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->notifyScrolledEvent(I)V

    .line 949
    return-void
.end method

.method public notifyValueChanged(ILjava/lang/String;)V
    .locals 1

    .line 939
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    if-nez v0, :cond_0

    .line 940
    return-void

    .line 941
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->notifyValueChanged(ILjava/lang/String;)V

    .line 942
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1047
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onActivityResult:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    goto :goto_0

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1052
    :goto_0
    invoke-static {p1, p2, p3}, Lorg/qtproject/qt/android/QtNative;->onActivityResult(IILandroid/content/Intent;)V

    .line 1053
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1007
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onConfigurationChanged:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    goto :goto_0

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1011
    :goto_0
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->handleUiModeChange(I)V

    .line 1012
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_contextMenuVisible:Z

    .line 1231
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtNative;->onContextItemSelected(IZ)Z

    move-result p1

    return p1
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .line 1222
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_contextMenuVisible:Z

    if-nez v0, :cond_0

    .line 1223
    return-void

    .line 1224
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_contextMenuVisible:Z

    .line 1225
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 1226
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 788
    const-string v0, "android.app.splash_screen_sticky"

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_quitApp:Z

    .line 789
    nop

    .line 790
    if-nez p1, :cond_0

    .line 791
    new-instance p1, Lorg/qtproject/qt/android/QtActivityDelegate$5;

    invoke-direct {p1, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$5;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    goto :goto_0

    .line 790
    :cond_0
    const/4 p1, 0x0

    .line 804
    :goto_0
    new-instance v2, Lorg/qtproject/qt/android/QtLayout;

    iget-object v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-direct {v2, v3, p1}, Lorg/qtproject/qt/android/QtLayout;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    .line 806
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 809
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, -0x1

    :try_start_0
    iget-object v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 811
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.app.splash_screen_drawable_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    if-ne p1, v3, :cond_1

    const-string v7, "landscape"

    goto :goto_1

    :cond_1
    const-string v7, "portrait"

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 813
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 814
    const-string v6, "android.app.splash_screen_drawable"

    .line 816
    :cond_2
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 817
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreenSticky:Z

    .line 818
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 819
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    .line 820
    iget-object v6, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 821
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 822
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 823
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    iget-object v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Lorg/qtproject/qt/android/QtLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :cond_4
    goto :goto_3

    .line 825
    :catch_0
    move-exception v0

    .line 826
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 829
    :goto_3
    new-instance v0, Lorg/qtproject/qt/android/QtEditText;

    iget-object v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v5, p0}, Lorg/qtproject/qt/android/QtEditText;-><init>(Landroid/content/Context;Lorg/qtproject/qt/android/QtActivityDelegate;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    .line 830
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const-string v5, "input_method"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    .line 831
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    .line 832
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    .line 833
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 834
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 838
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 839
    if-eq v0, v1, :cond_6

    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    goto :goto_4

    :cond_5
    move v4, v2

    goto :goto_5

    :cond_6
    :goto_4
    move v4, v1

    .line 840
    :goto_5
    if-ne p1, v3, :cond_7

    move v2, v1

    .line 841
    :cond_7
    if-eqz v2, :cond_8

    if-eqz v4, :cond_9

    :cond_8
    if-nez v2, :cond_a

    if-eqz v4, :cond_a

    .line 842
    :cond_9
    iput v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeOrientation:I

    goto :goto_6

    .line 844
    :cond_a
    iput v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeOrientation:I

    .line 846
    :goto_6
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    iget v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeOrientation:I

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/QtLayout;->setNativeOrientation(I)V

    .line 847
    iget p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeOrientation:I

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtNative;->handleOrientationChanged(II)V

    .line 848
    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_currentRotation:I

    .line 850
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->handleUiModeChange(I)V

    .line 852
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_b

    .line 853
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    goto :goto_7

    .line 854
    :cond_b
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    .line 855
    :goto_7
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->handleRefreshRateChanged(F)V

    .line 857
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$6;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$6;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 879
    new-instance p1, Lorg/qtproject/qt/android/EditPopupMenu;

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-direct {p1, v0, v1}, Lorg/qtproject/qt/android/EditPopupMenu;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editPopupMenu:Lorg/qtproject/qt/android/EditPopupMenu;

    .line 880
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 1209
    invoke-interface {p1}, Landroid/view/ContextMenu;->clearHeader()V

    .line 1210
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 1211
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_contextMenuVisible:Z

    .line 1212
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 1177
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1178
    const/4 p1, 0x1

    return p1
.end method

.method public onCreatePopupMenu(Landroid/view/Menu;)V
    .locals 0

    .line 1216
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->fillContextMenu(Landroid/view/Menu;)V

    .line 1217
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_contextMenuVisible:Z

    .line 1218
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1016
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_quitApp:Z

    if-eqz v0, :cond_0

    .line 1017
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->terminateQt()V

    .line 1018
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lorg/qtproject/qt/android/QtNative;->setActivity(Landroid/app/Activity;Lorg/qtproject/qt/android/QtActivityDelegate;)V

    .line 1019
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtThread;->exit()V

    .line 1020
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1022
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1097
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_started:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_isPluginRunning:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1100
    :cond_0
    iget-wide v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_metaState:J

    invoke-static {v2, v3, p1, p2}, Landroid/text/method/MetaKeyKeyListener;->handleKeyDown(JILandroid/view/KeyEvent;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_metaState:J

    .line 1101
    invoke-static {v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(J)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    .line 1102
    nop

    .line 1103
    iget-wide v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_metaState:J

    invoke-static {v2, v3}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_metaState:J

    .line 1105
    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    .line 1106
    const v2, 0x7fffffff

    and-int/2addr v2, v0

    .line 1107
    iget v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_lastChar:I

    invoke-static {v3, v2}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    .line 1108
    goto :goto_0

    .line 1105
    :cond_1
    move v2, v0

    .line 1111
    :goto_0
    const/16 v3, 0x18

    if-eq p1, v3, :cond_2

    const/16 v3, 0x19

    if-eq p1, v3, :cond_2

    const/16 v3, 0x5b

    if-ne p1, v3, :cond_3

    .line 1114
    :cond_2
    const-string v3, "QT_ANDROID_VOLUME_KEYS"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1115
    return v1

    .line 1118
    :cond_3
    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_lastChar:I

    .line 1119
    const/4 v0, 0x4

    const/4 v3, 0x1

    if-ne p1, v0, :cond_4

    .line 1120
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_keyboardIsVisible:Z

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_backKeyPressedSent:Z

    .line 1121
    if-nez v0, :cond_4

    .line 1122
    return v3

    .line 1124
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-lez p2, :cond_5

    move v1, v3

    :cond_5
    invoke-static {p1, v2, v0, v1}, Lorg/qtproject/qt/android/QtNative;->keyDown(IIIZ)V

    .line 1126
    return v3

    .line 1098
    :cond_6
    :goto_1
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1131
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_started:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_isPluginRunning:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1134
    :cond_0
    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5b

    if-ne p1, v0, :cond_2

    .line 1137
    :cond_1
    const-string v0, "QT_ANDROID_VOLUME_KEYS"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1138
    return v1

    .line 1141
    :cond_2
    const/4 v0, 0x4

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_backKeyPressedSent:Z

    if-nez v0, :cond_3

    .line 1142
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->hideSoftwareKeyboard()V

    .line 1143
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    invoke-virtual {p0, v1, p1, p2}, Lorg/qtproject/qt/android/QtActivityDelegate;->setKeyboardVisibility(ZJ)Z

    .line 1144
    return v2

    .line 1147
    :cond_3
    iget-wide v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_metaState:J

    invoke-static {v3, v4, p1, p2}, Landroid/text/method/MetaKeyKeyListener;->handleKeyUp(JILandroid/view/KeyEvent;)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_metaState:J

    .line 1148
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-lez p2, :cond_4

    move v1, v2

    :cond_4
    invoke-static {p1, v0, v3, v1}, Lorg/qtproject/qt/android/QtNative;->keyUp(IIIZ)V

    .line 1149
    return v2

    .line 1132
    :cond_5
    :goto_0
    return v1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1041
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onNewIntent(Landroid/content/Intent;)V

    .line 1042
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtNative;->onOptionsItemSelected(IZ)Z

    move-result p1

    return p1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .line 1195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_optionsMenuIsVisible:Z

    .line 1196
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1197
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1026
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1027
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    .line 1028
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_optionsMenuIsVisible:Z

    .line 1183
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 1184
    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->setActionBarVisibility(Z)V

    .line 1185
    return v1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1417
    invoke-static {p1, p2, p3}, Lorg/qtproject/qt/android/QtNative;->sendRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1418
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1086
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onRestoreInstanceState:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    goto :goto_0

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1090
    :goto_0
    const-string v0, "Started"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_started:Z

    .line 1093
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1032
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    .line 1033
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_started:Z

    if-eqz v0, :cond_0

    .line 1034
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->updateWindow()V

    .line 1035
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->updateFullScreen()V

    .line 1037
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 4

    .line 1064
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onRetainNonConfigurationInstance:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    goto :goto_0

    .line 1065
    :catch_0
    move-exception v1

    .line 1066
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1068
    :goto_0
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_quitApp:Z

    .line 1069
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1074
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onSaveInstanceState:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    goto :goto_0

    .line 1075
    :catch_0
    move-exception v0

    .line 1076
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1078
    :goto_0
    iget v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_systemUiVisibility:I

    const-string v1, "SystemUiVisibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1079
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_started:Z

    const-string v1, "Started"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1081
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1058
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    .line 1059
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 782
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->terminateQt()V

    .line 783
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtThread;->exit()V

    .line 784
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .line 964
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onWindowFocusChanged:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    goto :goto_0

    .line 965
    :catch_0
    move-exception v0

    .line 966
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 968
    :goto_0
    if-eqz p1, :cond_0

    .line 969
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->updateFullScreen()V

    .line 970
    :cond_0
    return-void
.end method

.method public openContextMenu(IIII)V
    .locals 8

    .line 1236
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    new-instance v7, Lorg/qtproject/qt/android/QtActivityDelegate$8;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move v4, p4

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/qtproject/qt/android/QtActivityDelegate$8;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;IIII)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v7, p1, p2}, Lorg/qtproject/qt/android/QtLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1257
    return-void
.end method

.method public resetOptionsMenu()V
    .locals 1

    .line 1201
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1202
    return-void
.end method

.method public resetSoftwareKeyboard()V
    .locals 4

    .line 242
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 243
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    new-instance v1, Lorg/qtproject/qt/android/QtActivityDelegate$1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$1;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lorg/qtproject/qt/android/QtEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    return-void
.end method

.method public setKeyboardVisibility(ZJ)Z
    .locals 2

    .line 226
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_showHideTimeStamp:J

    cmp-long v0, v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 227
    return v1

    .line 228
    :cond_0
    iput-wide p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_showHideTimeStamp:J

    .line 230
    iget-boolean p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_keyboardIsVisible:Z

    if-ne p2, p1, :cond_1

    .line 231
    return v1

    .line 232
    :cond_1
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_keyboardIsVisible:Z

    .line 233
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->keyboardVisibilityUpdated(Z)V

    .line 235
    if-nez p1, :cond_2

    .line 236
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->updateFullScreen()V

    .line 238
    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public setSurfaceGeometry(IIIII)V
    .locals 2

    .line 1332
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/qtproject/qt/android/QtSurface;

    .line 1334
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {v0, p4, p5, p2, p3}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/QtSurface;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1335
    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1336
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 1337
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {v0, p4, p5, p2, p3}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1338
    nop

    .line 1342
    :goto_0
    return-void

    .line 1339
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Surface "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Qt JAVA"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 3

    .line 132
    iget v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_systemUiVisibility:I

    if-ne v0, p1, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    iput p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_systemUiVisibility:I

    .line 137
    nop

    .line 138
    const/16 v0, 0x800

    const/16 v1, 0x400

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 156
    :pswitch_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0xc000800

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 159
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 160
    goto :goto_0

    .line 145
    :pswitch_1
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 146
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 147
    const/16 v2, 0x1706

    .line 154
    goto :goto_0

    .line 140
    :pswitch_2
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 141
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 142
    nop

    .line 143
    nop

    .line 164
    :goto_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 166
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtLayout;->requestLayout()V

    .line 167
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showSoftwareKeyboard(IIIIII)V
    .locals 15

    .line 255
    move-object v8, p0

    move/from16 v5, p4

    move/from16 v6, p5

    iget-object v0, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 256
    return-void

    .line 258
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 259
    iget-object v1, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 264
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x5

    const/4 v4, 0x3

    if-ge v1, v2, :cond_2

    .line 265
    iget v1, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_portraitKeyboardHeight:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v4

    div-int/lit8 v1, v0, 0x5

    goto :goto_0

    .line 267
    :cond_2
    iget v1, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_landscapeKeyboardHeight:I

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v0, v4

    move v1, v0

    .line 269
    :goto_0
    iget v0, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_softInputMode:I

    const/16 v2, 0x11

    const/16 v7, 0x21

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eqz v0, :cond_6

    .line 270
    iget-object v0, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_softInputMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 271
    iget v0, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_softInputMode:I

    and-int/2addr v0, v11

    if-eqz v0, :cond_4

    move v0, v10

    goto :goto_1

    :cond_4
    move v0, v9

    .line 272
    :goto_1
    if-eqz v0, :cond_5

    .line 273
    return-void

    .line 274
    :cond_5
    goto :goto_2

    .line 275
    :cond_6
    if-le v5, v1, :cond_7

    .line 276
    iget-object v0, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_2

    .line 278
    :cond_7
    iget-object v0, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 281
    :goto_2
    nop

    .line 283
    nop

    .line 285
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x6

    const/4 v12, 0x4

    packed-switch p6, :pswitch_data_0

    :pswitch_0
    move v3, v1

    goto :goto_3

    .line 302
    :pswitch_1
    const/4 v3, 0x7

    goto :goto_3

    .line 299
    :pswitch_2
    nop

    .line 300
    goto :goto_3

    .line 296
    :pswitch_3
    nop

    .line 297
    move v3, v4

    goto :goto_3

    .line 293
    :pswitch_4
    nop

    .line 294
    move v3, v12

    goto :goto_3

    .line 290
    :pswitch_5
    nop

    .line 291
    move v3, v11

    goto :goto_3

    .line 287
    :pswitch_6
    nop

    .line 288
    move v3, v0

    .line 306
    :goto_3
    nop

    .line 308
    const v13, 0x30008

    and-int/2addr v13, v6

    const/high16 v14, 0x20000

    if-eqz v13, :cond_a

    .line 309
    nop

    .line 310
    and-int v1, v6, v14

    if-eqz v1, :cond_8

    .line 311
    const/16 v1, 0x3002

    move v4, v1

    goto :goto_4

    .line 310
    :cond_8
    move v4, v11

    .line 315
    :goto_4
    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_9

    .line 316
    or-int/lit8 v4, v4, 0x10

    move v2, v9

    goto/16 :goto_8

    .line 315
    :cond_9
    move v2, v9

    goto/16 :goto_8

    .line 317
    :cond_a
    const/high16 v13, 0x100000

    and-int/2addr v13, v6

    if-eqz v13, :cond_b

    .line 318
    move v2, v9

    goto/16 :goto_8

    .line 319
    :cond_b
    and-int/lit16 v4, v6, 0x180

    if-eqz v4, :cond_e

    .line 320
    nop

    .line 321
    const/16 v1, 0x180

    if-eq v4, v1, :cond_d

    .line 322
    and-int/lit16 v1, v6, 0x80

    if-eqz v1, :cond_c

    .line 323
    const/16 v4, 0x14

    move v2, v9

    goto/16 :goto_8

    .line 325
    :cond_c
    const/16 v4, 0x24

    move v2, v9

    goto/16 :goto_8

    .line 321
    :cond_d
    move v2, v9

    move v4, v12

    goto/16 :goto_8

    .line 328
    :cond_e
    and-int/lit8 v4, v6, 0x1

    if-eqz v4, :cond_f

    .line 329
    const/16 v2, 0x81

    move v11, v3

    goto :goto_6

    .line 330
    :cond_f
    and-int/lit8 v4, v6, 0x2

    if-nez v4, :cond_14

    and-int/lit8 v4, v6, 0x40

    if-eqz v4, :cond_10

    .line 332
    const-string v4, "QT_ANDROID_ENABLE_WORKAROUND_TO_DISABLE_PREDICTIVE_TEXT"

    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    goto :goto_5

    .line 334
    :cond_10
    const/high16 v4, 0x400000

    and-int/2addr v4, v6

    if-eqz v4, :cond_12

    .line 335
    nop

    .line 336
    if-nez p6, :cond_11

    .line 337
    goto :goto_6

    .line 336
    :cond_11
    move v11, v3

    goto :goto_6

    .line 338
    :cond_12
    const/high16 v2, 0x200000

    and-int/2addr v2, v6

    if-eqz v2, :cond_13

    .line 339
    move v11, v3

    move v2, v7

    goto :goto_6

    .line 338
    :cond_13
    move v11, v3

    move v2, v10

    goto :goto_6

    .line 333
    :cond_14
    :goto_5
    const/16 v2, 0x91

    move v11, v3

    .line 342
    :goto_6
    and-int/lit16 v3, v6, 0x400

    if-eqz v3, :cond_15

    .line 343
    or-int/2addr v2, v14

    .line 346
    goto :goto_7

    .line 342
    :cond_15
    move v1, v11

    .line 348
    :goto_7
    and-int/lit8 v3, v6, 0x43

    const/high16 v4, 0x80000

    if-eqz v3, :cond_16

    .line 349
    or-int/2addr v2, v4

    .line 351
    :cond_16
    const/high16 v3, 0x40000

    and-int/2addr v3, v6

    if-eqz v3, :cond_17

    .line 352
    nop

    .line 353
    or-int/lit16 v4, v2, 0x1000

    const/16 v2, 0x1000

    move v3, v1

    goto :goto_8

    .line 354
    :cond_17
    and-int v3, v6, v4

    if-nez v3, :cond_18

    and-int/lit8 v3, v6, 0x4

    if-nez v3, :cond_18

    .line 355
    nop

    .line 356
    or-int/lit16 v4, v2, 0x4000

    const/16 v2, 0x4000

    move v3, v1

    goto :goto_8

    .line 360
    :cond_18
    move v3, v1

    move v4, v2

    move v2, v9

    :goto_8
    if-nez p6, :cond_19

    and-int/lit16 v1, v6, 0x400

    if-eqz v1, :cond_19

    .line 361
    goto :goto_9

    .line 363
    :cond_19
    move v0, v3

    :goto_9
    iget-object v1, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v1, v2}, Lorg/qtproject/qt/android/QtEditText;->setInitialCapsMode(I)V

    .line 364
    iget-object v1, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v1, v0}, Lorg/qtproject/qt/android/QtEditText;->setImeOptions(I)V

    .line 365
    iget-object v0, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v0, v4}, Lorg/qtproject/qt/android/QtEditText;->setInputType(I)V

    .line 367
    iget-object v0, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    iget-object v1, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    new-instance v2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v7, p3

    invoke-direct {v2, v7, v5, v3, v4}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1, v2, v9}, Lorg/qtproject/qt/android/QtLayout;->setLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V

    .line 368
    iget-object v0, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtEditText;->requestFocus()Z

    .line 369
    iget-object v9, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    new-instance v10, Lorg/qtproject/qt/android/QtActivityDelegate$2;

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/qtproject/qt/android/QtActivityDelegate$2;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;IIIIII)V

    const-wide/16 v0, 0xf

    invoke-virtual {v9, v10, v0, v1}, Lorg/qtproject/qt/android/QtEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 427
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public startApplication()Z
    .locals 7

    .line 739
    const-string v0, "extraappparams"

    const-string v1, "extraenvvars"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 740
    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 742
    :try_start_1
    iget-object v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v2

    .line 743
    :goto_0
    if-eqz v5, :cond_3

    .line 746
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v6, "UTF-8"

    if-eqz v5, :cond_1

    .line 748
    :try_start_2
    new-instance v5, Ljava/lang/String;

    .line 749
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 748
    invoke-static {v5}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariables(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 753
    goto :goto_1

    .line 751
    :catch_0
    move-exception v1

    .line 752
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 756
    :cond_1
    :goto_1
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v1, :cond_2

    .line 758
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/qtproject/qt/android/QtActivityDelegate;->m_applicationParameters:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_applicationParameters:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 761
    goto :goto_2

    .line 759
    :catch_1
    move-exception v0

    .line 760
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 768
    :cond_2
    :goto_2
    goto :goto_3

    .line 744
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 763
    :catch_2
    move-exception v0

    .line 764
    :try_start_6
    const-string v0, "Qt JAVA"

    const-string v1, "Not in debug mode! It is not allowed to use extra arguments in non-debug mode."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_4
    :goto_3
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 772
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->onCreate(Landroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 773
    :cond_5
    return v4

    .line 774
    :catch_3
    move-exception v0

    .line 775
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 776
    return v2
.end method

.method public updateActivity(Landroid/app/Activity;)Z
    .locals 2

    .line 602
    :try_start_0
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->loadActivity(Landroid/app/Activity;)V

    .line 605
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 606
    if-eqz p1, :cond_0

    .line 607
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 609
    :cond_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 612
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->updateNativeActivity()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 613
    :catch_0
    move-exception p1

    .line 614
    const-string v0, "Qt JAVA"

    const-string v1, "Failed to update the activity."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 616
    const/4 p1, 0x0

    return p1
.end method

.method public updateFullScreen()V
    .locals 2

    .line 171
    iget v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_systemUiVisibility:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_systemUiVisibility:I

    .line 173
    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->setSystemUiVisibility(I)V

    .line 175
    :cond_0
    return-void
.end method

.method public updateHandles(IIIIIIIIZ)V
    .locals 17

    .line 498
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, p6

    and-int/lit16 v4, v1, 0xff

    const/4 v10, 0x0

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 530
    :pswitch_0
    iget-object v4, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-nez v4, :cond_2

    .line 531
    new-instance v11, Lorg/qtproject/qt/android/CursorHandle;

    iget-object v5, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v6, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    const/4 v7, 0x2

    .line 532
    const v12, 0x10102c5

    const v13, 0x10102c6

    if-nez p9, :cond_0

    move v8, v12

    goto :goto_0

    .line 533
    :cond_0
    move v8, v13

    :goto_0
    move-object v4, v11

    move/from16 v9, p9

    invoke-direct/range {v4 .. v9}, Lorg/qtproject/qt/android/CursorHandle;-><init>(Landroid/app/Activity;Landroid/view/View;IIZ)V

    iput-object v11, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 535
    new-instance v11, Lorg/qtproject/qt/android/CursorHandle;

    iget-object v5, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v6, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    const/4 v7, 0x3

    .line 536
    if-nez p9, :cond_1

    move v8, v13

    goto :goto_1

    .line 537
    :cond_1
    move v8, v12

    :goto_1
    move-object v4, v11

    move/from16 v9, p9

    invoke-direct/range {v4 .. v9}, Lorg/qtproject/qt/android/CursorHandle;-><init>(Landroid/app/Activity;Landroid/view/View;IIZ)V

    iput-object v11, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 540
    :cond_2
    iget-object v4, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v4, v2, v3}, Lorg/qtproject/qt/android/CursorHandle;->setPosition(II)V

    .line 541
    iget-object v2, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    move/from16 v3, p7

    move/from16 v4, p8

    invoke-virtual {v2, v3, v4}, Lorg/qtproject/qt/android/CursorHandle;->setPosition(II)V

    .line 542
    iget-object v2, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v2, :cond_3

    .line 543
    invoke-virtual {v2}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 544
    iput-object v10, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 546
    :cond_3
    or-int/lit16 v1, v1, 0x100

    goto :goto_2

    .line 516
    :pswitch_1
    iget-object v4, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-nez v4, :cond_4

    .line 517
    new-instance v4, Lorg/qtproject/qt/android/CursorHandle;

    iget-object v12, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v13, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    const/4 v14, 0x1

    const v15, 0x10102c7

    const/16 v16, 0x0

    move-object v11, v4

    invoke-direct/range {v11 .. v16}, Lorg/qtproject/qt/android/CursorHandle;-><init>(Landroid/app/Activity;Landroid/view/View;IIZ)V

    iput-object v4, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 520
    :cond_4
    iget-object v4, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v4, v2, v3}, Lorg/qtproject/qt/android/CursorHandle;->setPosition(II)V

    .line 521
    iget-object v2, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v2, :cond_7

    .line 522
    invoke-virtual {v2}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 523
    iget-object v2, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v2}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 524
    iput-object v10, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 525
    iput-object v10, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    goto :goto_2

    .line 501
    :pswitch_2
    iget-object v2, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v2, :cond_5

    .line 502
    invoke-virtual {v2}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 503
    iput-object v10, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 505
    :cond_5
    iget-object v2, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v2, :cond_6

    .line 506
    invoke-virtual {v2}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 507
    iget-object v2, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v2}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 508
    iput-object v10, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 509
    iput-object v10, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 511
    :cond_6
    iget-object v2, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editPopupMenu:Lorg/qtproject/qt/android/EditPopupMenu;

    if-eqz v2, :cond_7

    .line 512
    invoke-virtual {v2}, Lorg/qtproject/qt/android/EditPopupMenu;->hide()V

    .line 550
    :cond_7
    :goto_2
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->hasClipboardText()Z

    move-result v2

    if-nez v2, :cond_8

    .line 551
    and-int/lit8 v2, p4, -0x5

    move v6, v2

    goto :goto_3

    .line 550
    :cond_8
    move/from16 v6, p4

    .line 553
    :goto_3
    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    if-eqz v6, :cond_9

    .line 554
    iget-object v3, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editPopupMenu:Lorg/qtproject/qt/android/EditPopupMenu;

    iget-object v7, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    iget-object v8, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    iget-object v9, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v3 .. v9}, Lorg/qtproject/qt/android/EditPopupMenu;->setPosition(IIILorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;)V

    goto :goto_4

    .line 557
    :cond_9
    iget-object v1, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editPopupMenu:Lorg/qtproject/qt/android/EditPopupMenu;

    if-eqz v1, :cond_a

    .line 558
    invoke-virtual {v1}, Lorg/qtproject/qt/android/EditPopupMenu;->hide()V

    .line 560
    :cond_a
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateSelection(IIII)V
    .locals 6

    .line 469
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 470
    return-void

    .line 472
    :cond_0
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 473
    return-void
.end method
