.class public Lorg/qtproject/qt/android/QtNative;
.super Ljava/lang/Object;
.source "QtNative.java"


# static fields
.field private static final INVALID_OR_NULL_URI_ERROR_MESSAGE:Ljava/lang/String; = "Received invalid/null Uri"

.field public static final IdCursorHandle:I = 0x1

.field public static final IdLeftHandle:I = 0x2

.field public static final IdRightHandle:I = 0x3

.field private static final KEYBOARD_HEIGHT_THRESHOLD:I = 0x64

.field public static final QtTAG:Ljava/lang/String; = "Qt JAVA"

.field private static m_activity:Landroid/app/Activity;

.field private static m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

.field private static m_activityPaused:Z

.field private static m_checkSelfPermissionMethod:Ljava/lang/reflect/Method;

.field private static m_classLoader:Ljava/lang/ClassLoader;

.field private static m_clipboardManager:Landroid/content/ClipboardManager;

.field private static m_displayMetricsAvailableHeightPixels:I

.field private static m_displayMetricsAvailableLeftPixels:I

.field private static m_displayMetricsAvailableTopPixels:I

.field private static m_displayMetricsAvailableWidthPixels:I

.field private static m_displayMetricsDensity:D

.field private static m_displayMetricsRefreshRate:F

.field private static m_displayMetricsScaledDensity:D

.field private static m_displayMetricsScreenHeightPixels:I

.field private static m_displayMetricsScreenWidthPixels:I

.field private static m_displayMetricsXDpi:D

.field private static m_displayMetricsYDpi:D

.field private static m_isKeyboardHiding:Z

.field private static m_lostActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static m_mainActivityMutex:Ljava/lang/Object;

.field private static final m_moveThreshold:I

.field private static m_oldx:I

.field private static m_oldy:I

.field public static m_qtThread:Lorg/qtproject/qt/android/QtThread;

.field private static m_service:Landroid/app/Service;

.field private static m_serviceDelegate:Lorg/qtproject/qt/android/QtServiceDelegate;

.field private static m_started:Z

.field private static m_tabletEventSupported:Ljava/lang/Boolean;

.field private static m_usePrimaryClip:Z

.field private static final runPendingCppRunnablesRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    .line 54
    const/4 v1, 0x0

    sput-boolean v1, Lorg/qtproject/qt/android/QtNative;->m_activityPaused:Z

    .line 55
    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_service:Landroid/app/Service;

    .line 56
    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    .line 57
    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_serviceDelegate:Lorg/qtproject/qt/android/QtServiceDelegate;

    .line 58
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lorg/qtproject/qt/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    .line 62
    sput-boolean v1, Lorg/qtproject/qt/android/QtNative;->m_started:Z

    .line 63
    sput-boolean v1, Lorg/qtproject/qt/android/QtNative;->m_isKeyboardHiding:Z

    .line 64
    sput v1, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsScreenWidthPixels:I

    .line 65
    sput v1, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsScreenHeightPixels:I

    .line 66
    sput v1, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableLeftPixels:I

    .line 67
    sput v1, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableTopPixels:I

    .line 68
    sput v1, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableWidthPixels:I

    .line 69
    sput v1, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableHeightPixels:I

    .line 70
    const/high16 v2, 0x42700000    # 60.0f

    sput v2, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsRefreshRate:F

    .line 71
    const-wide/16 v2, 0x0

    sput-wide v2, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsXDpi:D

    .line 72
    sput-wide v2, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsYDpi:D

    .line 73
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sput-wide v2, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsScaledDensity:D

    .line 74
    sput-wide v2, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsDensity:D

    .line 77
    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    .line 78
    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_checkSelfPermissionMethod:Ljava/lang/reflect/Method;

    .line 79
    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_tabletEventSupported:Ljava/lang/Boolean;

    .line 80
    sput-boolean v1, Lorg/qtproject/qt/android/QtNative;->m_usePrimaryClip:Z

    .line 81
    new-instance v1, Lorg/qtproject/qt/android/QtThread;

    invoke-direct {v1}, Lorg/qtproject/qt/android/QtThread;-><init>()V

    sput-object v1, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    .line 86
    new-instance v1, Lorg/qtproject/qt/android/QtNative$1;

    invoke-direct {v1}, Lorg/qtproject/qt/android/QtNative$1;-><init>()V

    sput-object v1, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    .line 100
    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 51
    sget v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsScreenWidthPixels:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 51
    sget v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsScreenHeightPixels:I

    return v0
.end method

.method static synthetic access$1000()F
    .locals 1

    .line 51
    sget v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsRefreshRate:F

    return v0
.end method

.method static synthetic access$1100()Landroid/app/Activity;
    .locals 1

    .line 51
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/app/Service;
    .locals 1

    .line 51
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_service:Landroid/app/Service;

    return-object v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0

    .line 51
    sput-boolean p0, Lorg/qtproject/qt/android/QtNative;->m_started:Z

    return p0
.end method

.method static synthetic access$1400()Lorg/qtproject/qt/android/QtActivityDelegate;
    .locals 1

    .line 51
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/content/ClipboardManager;
    .locals 1

    .line 51
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/content/ClipboardManager;)Landroid/content/ClipboardManager;
    .locals 0

    .line 51
    sput-object p0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    return-object p0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 51
    sget v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableLeftPixels:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 51
    sget v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableTopPixels:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 51
    sget v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableWidthPixels:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 51
    sget v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableHeightPixels:I

    return v0
.end method

.method static synthetic access$600()D
    .locals 2

    .line 51
    sget-wide v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsXDpi:D

    return-wide v0
.end method

.method static synthetic access$700()D
    .locals 2

    .line 51
    sget-wide v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsYDpi:D

    return-wide v0
.end method

.method static synthetic access$800()D
    .locals 2

    .line 51
    sget-wide v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsScaledDensity:D

    return-wide v0
.end method

.method static synthetic access$900()D
    .locals 2

    .line 51
    sget-wide v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsDensity:D

    return-wide v0
.end method

.method public static activity()Landroid/app/Activity;
    .locals 2

    .line 113
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    monitor-exit v0

    return-object v1

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;
    .locals 2

    .line 128
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    monitor-exit v0

    return-object v1

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static bringChildToBack(I)V
    .locals 1

    .line 1088
    new-instance v0, Lorg/qtproject/qt/android/QtNative$29;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtNative$29;-><init>(I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 1095
    return-void
.end method

.method private static bringChildToFront(I)V
    .locals 1

    .line 1077
    new-instance v0, Lorg/qtproject/qt/android/QtNative$28;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtNative$28;-><init>(I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 1084
    return-void
.end method

.method public static checkSelfPermission(Ljava/lang/String;)I
    .locals 3

    .line 630
    nop

    .line 631
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 632
    :try_start_0
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 633
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 634
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 635
    monitor-exit v0

    .line 637
    return p0

    .line 635
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static classLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 103
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private static clearClipData()V
    .locals 4

    .line 828
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1

    .line 829
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 830
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->clearPrimaryClip()V

    goto :goto_0

    .line 832
    :cond_0
    const-string v0, "application/octet-stream"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 833
    new-instance v1, Landroid/content/ClipData;

    new-instance v2, Landroid/content/ClipData$Item;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-direct {v2, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    const-string v3, ""

    invoke-direct {v1, v3, v0, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 834
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 837
    :cond_1
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lorg/qtproject/qt/android/QtNative;->m_usePrimaryClip:Z

    .line 838
    return-void
.end method

.method private static closeContextMenu()V
    .locals 1

    .line 984
    new-instance v0, Lorg/qtproject/qt/android/QtNative$22;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$22;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 991
    return-void
.end method

.method private static createSurface(IZIIIII)V
    .locals 9

    .line 1044
    new-instance v8, Lorg/qtproject/qt/android/QtNative$25;

    move-object v0, v8

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/qtproject/qt/android/QtNative$25;-><init>(IZIIIII)V

    invoke-static {v8}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 1051
    return-void
.end method

.method private static destroySurface(I)V
    .locals 1

    .line 1099
    new-instance v0, Lorg/qtproject/qt/android/QtNative$30;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtNative$30;-><init>(I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 1106
    return-void
.end method

.method public static native dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public static native dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public static native fillContextMenu(Landroid/view/Menu;)V
.end method

.method private static getAction(ILandroid/view/MotionEvent;)I
    .locals 7

    .line 490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 491
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4

    .line 492
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 493
    if-lez v0, :cond_3

    .line 494
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 495
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 496
    nop

    :goto_0
    if-ge v1, v0, :cond_2

    .line 497
    invoke-virtual {p1, p0, v1}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    cmpl-float v6, v6, v4

    if-nez v6, :cond_1

    .line 498
    invoke-virtual {p1, p0, v1}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v6

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_0

    goto :goto_1

    .line 496
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    :cond_1
    :goto_1
    return v3

    .line 501
    :cond_2
    return v2

    .line 503
    :cond_3
    return v3

    .line 505
    :cond_4
    if-eqz v0, :cond_8

    const/4 v4, 0x5

    if-ne v0, v4, :cond_5

    .line 506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-ne p0, v4, :cond_5

    goto :goto_3

    .line 508
    :cond_5
    if-eq v0, v3, :cond_7

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    if-ne p0, p1, :cond_6

    goto :goto_2

    .line 512
    :cond_6
    return v2

    .line 510
    :cond_7
    :goto_2
    const/4 p0, 0x3

    return p0

    .line 507
    :cond_8
    :goto_3
    return v1
.end method

.method private static getClipboardHtml()Ljava/lang/String;
    .locals 3

    .line 919
    :try_start_0
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 920
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 921
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 922
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 923
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 921
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 927
    :cond_1
    goto :goto_1

    .line 925
    :catch_0
    move-exception v0

    .line 926
    const-string v1, "Qt JAVA"

    const-string v2, "Failed to get clipboard data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 928
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method private static getClipboardText()Ljava/lang/String;
    .locals 3

    .line 863
    :try_start_0
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 864
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 865
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 866
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 867
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 865
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 871
    :cond_1
    goto :goto_1

    .line 869
    :catch_0
    move-exception v0

    .line 870
    const-string v1, "Qt JAVA"

    const-string v2, "Failed to get clipboard data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 872
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method private static getClipboardUris()[Ljava/lang/String;
    .locals 4

    .line 955
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 957
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 958
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    .line 959
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 960
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 961
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 965
    :cond_1
    goto :goto_1

    .line 963
    :catch_0
    move-exception v1

    .line 964
    const-string v2, "Qt JAVA"

    const-string v3, "Failed to get clipboard data"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 966
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 967
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 968
    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 623
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 624
    return-object v0

    .line 625
    :cond_0
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_service:Landroid/app/Service;

    return-object v0
.end method

.method private static getCurrentMethodNameLog()Ljava/lang/String;
    .locals 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSSLCertificates()[[B
    .locals 9

    .line 1017
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1020
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 1021
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1023
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 1024
    instance-of v6, v5, Ljavax/net/ssl/X509TrustManager;

    if-eqz v6, :cond_0

    .line 1025
    check-cast v5, Ljavax/net/ssl/X509TrustManager;

    .line 1027
    invoke-interface {v5}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v5

    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 1028
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v8

    .line 1029
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1023
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1035
    :cond_1
    goto :goto_2

    .line 1033
    :catch_0
    move-exception v1

    .line 1034
    const-string v2, "Qt JAVA"

    const-string v3, "Failed to get certificates"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1037
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [[B

    .line 1038
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 1039
    return-object v0
.end method

.method private static getSelectHandleWidth()I
    .locals 1

    .line 656
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->getSelectHandleWidth()I

    move-result v0

    return v0
.end method

.method public static getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 142
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUriWithValidPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5

    .line 154
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    nop

    .line 161
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 164
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    return-object p1

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object p0

    .line 168
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 170
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 171
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UriPermission;

    invoke-virtual {v2}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 172
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriPermission;

    invoke-virtual {v3}, Landroid/content/UriPermission;->isReadPermission()Z

    move-result v3

    .line 174
    const-string v4, "r"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriPermission;

    invoke-virtual {v3}, Landroid/content/UriPermission;->isWritePermission()Z

    move-result v3

    .line 177
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 178
    return-object v2

    .line 170
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_3
    return-object p1

    .line 185
    :catch_0
    move-exception p0

    .line 186
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Qt JAVA"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-object p1

    .line 155
    :catch_1
    move-exception p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 157
    const/4 p0, 0x0

    return-object p0
.end method

.method public static native handleLocationChanged(III)V
.end method

.method public static native handleOrientationChanged(II)V
.end method

.method public static native handleRefreshRateChanged(F)V
.end method

.method public static native handleUiDarkModeChanged(I)V
.end method

.method public static hasClipboardHtml()Z
    .locals 3

    .line 906
    :try_start_0
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 908
    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 912
    :cond_0
    goto :goto_0

    .line 910
    :catch_0
    move-exception v0

    .line 911
    const-string v1, "Qt JAVA"

    const-string v2, "Failed to get clipboard data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hasClipboardText()Z
    .locals 3

    .line 850
    :try_start_0
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 852
    const-string v1, "text/*"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 856
    :cond_0
    goto :goto_0

    .line 854
    :catch_0
    move-exception v0

    .line 855
    const-string v1, "Qt JAVA"

    const-string v2, "Failed to get clipboard data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 857
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hasClipboardUri()Z
    .locals 3

    .line 943
    :try_start_0
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 945
    const-string v1, "text/uri-list"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 949
    :cond_0
    goto :goto_0

    .line 947
    :catch_0
    move-exception v0

    .line 948
    const-string v1, "Qt JAVA"

    const-string v2, "Failed to get clipboard data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 950
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static hideSoftwareKeyboard()V
    .locals 1

    .line 706
    const/4 v0, 0x1

    sput-boolean v0, Lorg/qtproject/qt/android/QtNative;->m_isKeyboardHiding:Z

    .line 707
    new-instance v0, Lorg/qtproject/qt/android/QtNative$13;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$13;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 714
    return-void
.end method

.method private static hideSplashScreen(I)V
    .locals 1

    .line 1120
    new-instance v0, Lorg/qtproject/qt/android/QtNative$32;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtNative$32;-><init>(I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 1127
    return-void
.end method

.method private static initializeAccessibility()V
    .locals 1

    .line 1110
    new-instance v0, Lorg/qtproject/qt/android/QtNative$31;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$31;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 1116
    return-void
.end method

.method private static insertNativeView(ILandroid/view/View;IIII)V
    .locals 8

    .line 1055
    new-instance v7, Lorg/qtproject/qt/android/QtNative$26;

    move-object v0, v7

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/qtproject/qt/android/QtNative$26;-><init>(ILandroid/view/View;IIII)V

    invoke-static {v7}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 1062
    return-void
.end method

.method public static isSoftwareKeyboardVisible()Z
    .locals 1

    .line 731
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/qtproject/qt/android/QtNative;->m_isKeyboardHiding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStarted()Z
    .locals 5

    .line 95
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 96
    :goto_0
    sget-object v3, Lorg/qtproject/qt/android/QtNative;->m_service:Landroid/app/Service;

    if-eqz v3, :cond_1

    sget-object v3, Lorg/qtproject/qt/android/QtNative;->m_serviceDelegate:Lorg/qtproject/qt/android/QtServiceDelegate;

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 97
    :goto_1
    sget-boolean v4, Lorg/qtproject/qt/android/QtNative;->m_started:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public static native isTabletEventSupported()Z
.end method

.method public static native keyDown(IIIZ)V
.end method

.method public static native keyUp(IIIZ)V
.end method

.method public static native keyboardGeometryChanged(IIII)V
.end method

.method public static native keyboardVisibilityChanged(Z)V
.end method

.method public static keyboardVisibilityUpdated(Z)V
    .locals 1

    .line 1131
    const/4 v0, 0x0

    sput-boolean v0, Lorg/qtproject/qt/android/QtNative;->m_isKeyboardHiding:Z

    .line 1132
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->keyboardVisibilityChanged(Z)V

    .line 1133
    return-void
.end method

.method private static listAssetContent(Landroid/content/res/AssetManager;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 1137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1139
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1140
    array-length v2, v1

    if-lez v2, :cond_2

    .line 1141
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1143
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "/"

    if-lez v5, :cond_0

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v4

    :goto_1
    invoke-virtual {p0, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1144
    if-eqz v5, :cond_1

    array-length v5, v5

    if-lez v5, :cond_1

    .line 1145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1146
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1149
    goto :goto_2

    .line 1147
    :catch_0
    move-exception v4

    .line 1148
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1141
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1154
    :cond_2
    goto :goto_3

    .line 1152
    :catch_1
    move-exception p0

    .line 1153
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1155
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static loadBundledLibraries(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 242
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    new-instance v1, Lorg/qtproject/qt/android/QtNative$3;

    invoke-direct {v1, p0, p1}, Lorg/qtproject/qt/android/QtNative$3;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtThread;->run(Ljava/lang/Runnable;)V

    .line 275
    return-void
.end method

.method public static loadMainLibrary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 279
    nop

    .line 280
    const/4 v0, 0x0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 281
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    new-instance v2, Lorg/qtproject/qt/android/QtNative$4;

    invoke-direct {v2, p0, p1, v0}, Lorg/qtproject/qt/android/QtNative$4;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/qtproject/qt/android/QtThread;->run(Ljava/lang/Runnable;)V

    .line 309
    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static loadQtLibraries(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 217
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    new-instance v1, Lorg/qtproject/qt/android/QtNative$2;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtNative$2;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtThread;->run(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method public static native longPress(III)V
.end method

.method public static native mouseDown(III)V
.end method

.method public static native mouseMove(III)V
.end method

.method public static native mouseUp(III)V
.end method

.method public static native mouseWheel(IIIFF)V
.end method

.method private static notifyAccessibilityLocationChange(I)V
    .locals 1

    .line 736
    new-instance v0, Lorg/qtproject/qt/android/QtNative$15;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtNative$15;-><init>(I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 744
    return-void
.end method

.method private static notifyObjectFocus(I)V
    .locals 1

    .line 760
    new-instance v0, Lorg/qtproject/qt/android/QtNative$17;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtNative$17;-><init>(I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 768
    return-void
.end method

.method private static notifyObjectHide(II)V
    .locals 1

    .line 748
    new-instance v0, Lorg/qtproject/qt/android/QtNative$16;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtNative$16;-><init>(II)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 756
    return-void
.end method

.method public static notifyQtAndroidPluginRunning(Z)V
    .locals 1

    .line 796
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0, p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->notifyQtAndroidPluginRunning(Z)V

    .line 797
    return-void
.end method

.method private static notifyScrolledEvent(I)V
    .locals 1

    .line 784
    new-instance v0, Lorg/qtproject/qt/android/QtNative$19;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtNative$19;-><init>(I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 792
    return-void
.end method

.method private static notifyValueChanged(ILjava/lang/String;)V
    .locals 1

    .line 772
    new-instance v0, Lorg/qtproject/qt/android/QtNative$18;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtNative$18;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 780
    return-void
.end method

.method public static native onActivityResult(IILandroid/content/Intent;)V
.end method

.method public static native onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public static native onClipboardDataChanged()V
.end method

.method public static native onContextItemSelected(IZ)Z
.end method

.method public static native onContextMenuClosed(Landroid/view/Menu;)V
.end method

.method public static native onCreateContextMenu(Landroid/view/ContextMenu;)V
.end method

.method public static native onNewIntent(Landroid/content/Intent;)V
.end method

.method public static native onOptionsItemSelected(IZ)Z
.end method

.method public static native onOptionsMenuClosed(Landroid/view/Menu;)V
.end method

.method public static native onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method private static openContextMenu(IIII)V
    .locals 1

    .line 973
    new-instance v0, Lorg/qtproject/qt/android/QtNative$21;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/qtproject/qt/android/QtNative$21;-><init>(IIII)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 980
    return-void
.end method

.method private static openOptionsMenu()V
    .locals 1

    .line 1006
    new-instance v0, Lorg/qtproject/qt/android/QtNative$24;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$24;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 1013
    return-void
.end method

.method public static openURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 193
    const-string v0, "r"

    invoke-static {p0, p1, v0}, Lorg/qtproject/qt/android/QtNative;->getUriWithValidPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 194
    const/4 p1, 0x0

    const-string v0, "Qt JAVA"

    if-nez p0, :cond_0

    .line 195
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Received invalid/null Uri"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return p1

    .line 200
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 201
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 202
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 203
    invoke-virtual {v1, p0, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    :cond_1
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    return v2

    .line 208
    :catch_0
    move-exception p0

    .line 209
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return p1
.end method

.method public static quitApp()V
    .locals 1

    .line 473
    new-instance v0, Lorg/qtproject/qt/android/QtNative$8;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$8;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 485
    return-void
.end method

.method public static native quitQtAndroidPlugin()V
.end method

.method public static native quitQtCoreApplication()V
.end method

.method private static registerClipboardManager()V
    .locals 2

    .line 801
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_service:Landroid/app/Service;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 802
    :cond_0
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 803
    new-instance v1, Lorg/qtproject/qt/android/QtNative$20;

    invoke-direct {v1, v0}, Lorg/qtproject/qt/android/QtNative$20;-><init>(Ljava/util/concurrent/Semaphore;)V

    invoke-static {v1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 819
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    goto :goto_0

    .line 820
    :catch_0
    move-exception v0

    .line 821
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 824
    :cond_1
    :goto_0
    return-void
.end method

.method private static resetOptionsMenu()V
    .locals 1

    .line 995
    new-instance v0, Lorg/qtproject/qt/android/QtNative$23;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$23;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 1002
    return-void
.end method

.method private static resetSoftwareKeyboard()V
    .locals 1

    .line 695
    new-instance v0, Lorg/qtproject/qt/android/QtNative$12;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$12;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 702
    return-void
.end method

.method private static runAction(Ljava/lang/Runnable;)V
    .locals 4

    .line 349
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 351
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 352
    sget-object v3, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    sget-boolean v3, Lorg/qtproject/qt/android/QtNative;->m_activityPaused:Z

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Lorg/qtproject/qt/android/QtNative;->m_service:Landroid/app/Service;

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 353
    :goto_0
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 354
    :cond_3
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_4
    monitor-exit v0

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static native runPendingCppRunnables()V
.end method

.method private static runPendingCppRunnablesOnAndroidThread()V
    .locals 4

    .line 360
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 362
    sget-boolean v2, Lorg/qtproject/qt/android/QtNative;->m_activityPaused:Z

    if-nez v2, :cond_0

    .line 363
    sget-object v2, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 365
    :cond_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 367
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 368
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    .line 369
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 370
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 372
    :cond_2
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 373
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    :goto_0
    monitor-exit v0

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static sendGenericMotionEvent(Landroid/view/MotionEvent;I)Z
    .locals 2

    .line 578
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_1

    .line 579
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    invoke-static {p0, p1}, Lorg/qtproject/qt/android/QtNative;->sendMouseEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0

    .line 580
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static sendMouseEvent(Landroid/view/MotionEvent;I)Z
    .locals 4

    .line 588
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 617
    :pswitch_0
    return v1

    .line 613
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/16 v2, 0xa

    .line 614
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    .line 613
    invoke-static {p1, v0, v1, v2, p0}, Lorg/qtproject/qt/android/QtNative;->mouseWheel(IIIFF)V

    .line 615
    goto/16 :goto_0

    .line 600
    :pswitch_2
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 601
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    float-to-int p0, p0

    invoke-static {p1, v0, p0}, Lorg/qtproject/qt/android/QtNative;->mouseMove(III)V

    goto :goto_0

    .line 603
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget v1, Lorg/qtproject/qt/android/QtNative;->m_oldx:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 604
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sget v2, Lorg/qtproject/qt/android/QtNative;->m_oldy:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 605
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x5

    if-gt v0, v2, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_2

    .line 606
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1, v0, v1}, Lorg/qtproject/qt/android/QtNative;->mouseMove(III)V

    .line 607
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    sput p1, Lorg/qtproject/qt/android/QtNative;->m_oldx:I

    .line 608
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    float-to-int p0, p0

    sput p0, Lorg/qtproject/qt/android/QtNative;->m_oldy:I

    .line 611
    :cond_2
    goto :goto_0

    .line 590
    :pswitch_3
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    float-to-int p0, p0

    invoke-static {p1, v0, p0}, Lorg/qtproject/qt/android/QtNative;->mouseUp(III)V

    .line 591
    goto :goto_0

    .line 594
    :pswitch_4
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1, v0, v1}, Lorg/qtproject/qt/android/QtNative;->mouseDown(III)V

    .line 595
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    sput p1, Lorg/qtproject/qt/android/QtNative;->m_oldx:I

    .line 596
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    float-to-int p0, p0

    sput p0, Lorg/qtproject/qt/android/QtNative;->m_oldy:I

    .line 597
    nop

    .line 619
    :goto_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static native sendRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method public static sendTouchEvent(Landroid/view/MotionEvent;I)V
    .locals 14

    .line 518
    nop

    .line 520
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_tabletEventSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 521
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->isTabletEventSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_tabletEventSupported:Ljava/lang/Boolean;

    .line 523
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v9, v0

    goto :goto_0

    .line 528
    :pswitch_1
    move v9, v2

    goto :goto_0

    .line 525
    :pswitch_2
    nop

    .line 526
    move v9, v3

    .line 532
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 533
    invoke-static {p0, p1}, Lorg/qtproject/qt/android/QtNative;->sendMouseEvent(Landroid/view/MotionEvent;I)Z

    goto/16 :goto_3

    .line 534
    :cond_1
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_tabletEventSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v9, :cond_2

    .line 535
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 536
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPressure()F

    move-result v13

    .line 535
    move v4, p1

    invoke-static/range {v4 .. v13}, Lorg/qtproject/qt/android/QtNative;->tabletEvent(IIJIIIFFF)V

    goto :goto_3

    .line 538
    :cond_2
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->touchBegin(I)V

    .line 539
    move v1, v0

    :goto_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 540
    nop

    .line 541
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 542
    invoke-static {v1, p0}, Lorg/qtproject/qt/android/QtNative;->getAction(ILandroid/view/MotionEvent;)I

    move-result v6

    if-nez v1, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v0

    .line 544
    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v8, v2

    .line 545
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v9, v2

    .line 546
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v10

    .line 547
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v11

    .line 548
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v12

    .line 549
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v13

    .line 540
    move v4, p1

    invoke-static/range {v4 .. v13}, Lorg/qtproject/qt/android/QtNative;->touchAdd(IIIZIIFFFF)V

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 552
    :cond_4
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    packed-switch p0, :pswitch_data_1

    .line 566
    :pswitch_3
    invoke-static {p1, v3}, Lorg/qtproject/qt/android/QtNative;->touchEnd(II)V

    goto :goto_3

    .line 562
    :pswitch_4
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->touchCancel(I)V

    .line 563
    goto :goto_3

    .line 558
    :pswitch_5
    const/4 p0, 0x2

    invoke-static {p1, p0}, Lorg/qtproject/qt/android/QtNative;->touchEnd(II)V

    .line 559
    goto :goto_3

    .line 554
    :pswitch_6
    invoke-static {p1, v0}, Lorg/qtproject/qt/android/QtNative;->touchEnd(II)V

    .line 555
    nop

    .line 569
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static sendTrackballEvent(Landroid/view/MotionEvent;I)V
    .locals 0

    .line 573
    invoke-static {p0, p1}, Lorg/qtproject/qt/android/QtNative;->sendMouseEvent(Landroid/view/MotionEvent;I)Z

    .line 574
    return-void
.end method

.method public static service()Landroid/app/Service;
    .locals 2

    .line 120
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_service:Landroid/app/Service;

    monitor-exit v0

    return-object v1

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static serviceDelegate()Lorg/qtproject/qt/android/QtServiceDelegate;
    .locals 2

    .line 135
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_serviceDelegate:Lorg/qtproject/qt/android/QtServiceDelegate;

    monitor-exit v0

    return-object v1

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setActivity(Landroid/app/Activity;Lorg/qtproject/qt/android/QtActivityDelegate;)V
    .locals 1

    .line 314
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    sput-object p0, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    .line 316
    sput-object p1, Lorg/qtproject/qt/android/QtNative;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    .line 317
    monitor-exit v0

    .line 318
    return-void

    .line 317
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setApplicationDisplayMetrics(IIIIIIDDDDF)V
    .locals 18

    .line 433
    const-wide/high16 v0, 0x405e000000000000L    # 120.0

    cmpg-double v2, p6, v0

    if-gez v2, :cond_0

    .line 434
    move-wide v9, v0

    goto :goto_0

    .line 433
    :cond_0
    move-wide/from16 v9, p6

    .line 435
    :goto_0
    cmpg-double v2, p8, v0

    if-gez v2, :cond_1

    .line 436
    move-wide v11, v0

    goto :goto_1

    .line 435
    :cond_1
    move-wide/from16 v11, p8

    .line 438
    :goto_1
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    :try_start_0
    sget-boolean v0, Lorg/qtproject/qt/android/QtNative;->m_started:Z

    if-eqz v0, :cond_2

    .line 440
    move/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v13, p10

    move-wide/from16 v15, p12

    move/from16 v17, p14

    invoke-static/range {v3 .. v17}, Lorg/qtproject/qt/android/QtNative;->setDisplayMetrics(IIIIIIDDDDF)V

    goto :goto_2

    .line 444
    :cond_2
    sput p0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsScreenWidthPixels:I

    .line 445
    sput p1, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsScreenHeightPixels:I

    .line 446
    sput p2, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableLeftPixels:I

    .line 447
    sput p3, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableTopPixels:I

    .line 448
    sput p4, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableWidthPixels:I

    .line 449
    sput p5, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableHeightPixels:I

    .line 450
    sput-wide v9, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsXDpi:D

    .line 451
    sput-wide v11, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsYDpi:D

    .line 452
    sput-wide p10, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsScaledDensity:D

    .line 453
    sput-wide p12, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsDensity:D

    .line 454
    sput p14, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsRefreshRate:F

    .line 456
    :goto_2
    monitor-exit v1

    .line 457
    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setApplicationState(I)V
    .locals 3

    .line 330
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    packed-switch p0, :pswitch_data_0

    .line 340
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lorg/qtproject/qt/android/QtNative;->m_activityPaused:Z

    goto :goto_1

    .line 333
    :pswitch_0
    const/4 v1, 0x0

    sput-boolean v1, Lorg/qtproject/qt/android/QtNative;->m_activityPaused:Z

    .line 334
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 335
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 337
    :cond_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 338
    goto :goto_1

    .line 343
    :catchall_0
    move-exception p0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->updateApplicationState(I)V

    .line 345
    return-void

    .line 343
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 108
    sput-object p0, Lorg/qtproject/qt/android/QtNative;->m_classLoader:Ljava/lang/ClassLoader;

    .line 109
    return-void
.end method

.method private static setClipboardHtml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 897
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 898
    const-string v0, "text/html"

    invoke-static {v0, p0, p1}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object p0

    .line 899
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->updatePrimaryClip(Landroid/content/ClipData;)V

    .line 901
    :cond_0
    return-void
.end method

.method private static setClipboardText(Ljava/lang/String;)V
    .locals 1

    .line 841
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 842
    const-string v0, "text/plain"

    invoke-static {v0, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    .line 843
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->updatePrimaryClip(Landroid/content/ClipData;)V

    .line 845
    :cond_0
    return-void
.end method

.method private static setClipboardUri(Ljava/lang/String;)V
    .locals 2

    .line 933
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 934
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 935
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 934
    const-string v1, "text/uri-list"

    invoke-static {v0, v1, p0}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p0

    .line 936
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->updatePrimaryClip(Landroid/content/ClipData;)V

    .line 938
    :cond_0
    return-void
.end method

.method public static native setDisplayMetrics(IIIIIIDDDDF)V
.end method

.method public static setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1167
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, p1, v0}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1171
    goto :goto_0

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set environment variable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Qt JAVA"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1172
    :goto_0
    return-void
.end method

.method public static setEnvironmentVariables(Ljava/lang/String;)V
    .locals 6

    .line 1183
    const-string v0, "\t"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 1184
    const-string v4, "="

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 1185
    array-length v4, v3

    if-lt v4, v5, :cond_1

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1186
    goto :goto_1

    .line 1188
    :cond_0
    aget-object v4, v3, v1

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v4, v3}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1190
    :cond_2
    return-void
.end method

.method public static setService(Landroid/app/Service;Lorg/qtproject/qt/android/QtServiceDelegate;)V
    .locals 1

    .line 322
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_0
    sput-object p0, Lorg/qtproject/qt/android/QtNative;->m_service:Landroid/app/Service;

    .line 324
    sput-object p1, Lorg/qtproject/qt/android/QtNative;->m_serviceDelegate:Lorg/qtproject/qt/android/QtServiceDelegate;

    .line 325
    monitor-exit v0

    .line 326
    return-void

    .line 325
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static native setSurface(ILjava/lang/Object;II)V
.end method

.method private static setSurfaceGeometry(IIIII)V
    .locals 7

    .line 1066
    new-instance v6, Lorg/qtproject/qt/android/QtNative$27;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/qtproject/qt/android/QtNative$27;-><init>(IIIII)V

    invoke-static {v6}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 1073
    return-void
.end method

.method private static setSystemUiVisibility(I)V
    .locals 1

    .line 718
    new-instance v0, Lorg/qtproject/qt/android/QtNative$14;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtNative$14;-><init>(I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 727
    return-void
.end method

.method private static setViewVisibility(Landroid/view/View;Z)V
    .locals 1

    .line 381
    new-instance v0, Lorg/qtproject/qt/android/QtNative$5;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtNative$5;-><init>(Landroid/view/View;Z)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 387
    return-void
.end method

.method private static showSoftwareKeyboard(IIIIII)V
    .locals 8

    .line 684
    new-instance v7, Lorg/qtproject/qt/android/QtNative$11;

    move-object v0, v7

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/qtproject/qt/android/QtNative$11;-><init>(IIIIII)V

    invoke-static {v7}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 691
    return-void
.end method

.method public static startApplication(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 391
    if-nez p0, :cond_0

    .line 392
    const-string p0, "-platform\tandroid"

    .line 394
    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Z

    .line 395
    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 396
    sget-object v3, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 397
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "\t"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 399
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 400
    sget-object p1, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    new-instance v4, Lorg/qtproject/qt/android/QtNative$6;

    invoke-direct {v4, v1, p0}, Lorg/qtproject/qt/android/QtNative$6;-><init>([ZLjava/lang/String;)V

    invoke-virtual {p1, v4}, Lorg/qtproject/qt/android/QtThread;->run(Ljava/lang/Runnable;)V

    .line 413
    sget-object p0, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    new-instance p1, Lorg/qtproject/qt/android/QtNative$7;

    invoke-direct {p1}, Lorg/qtproject/qt/android/QtNative$7;-><init>()V

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtThread;->post(Ljava/lang/Runnable;)V

    .line 419
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->waitForServiceSetup()V

    .line 420
    sput-boolean v0, Lorg/qtproject/qt/android/QtNative;->m_started:Z

    .line 421
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    aget-boolean p0, v1, v2

    return p0

    .line 421
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static native startQtAndroidPlugin(Ljava/lang/String;)Z
.end method

.method public static native startQtApplication()V
.end method

.method public static native tabletEvent(IIJIIIFFF)V
.end method

.method public static native terminateQt()V
.end method

.method public static native touchAdd(IIIZIIFFFF)V
.end method

.method public static native touchBegin(I)V
.end method

.method public static native touchCancel(I)V
.end method

.method public static native touchEnd(II)V
.end method

.method public static native updateApplicationState(I)V
.end method

.method private static updateHandles(IIIIIIIIZ)V
    .locals 11

    .line 669
    new-instance v10, Lorg/qtproject/qt/android/QtNative$10;

    move-object v0, v10

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/qtproject/qt/android/QtNative$10;-><init>(IIIIIIIIZ)V

    invoke-static {v10}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 675
    return-void
.end method

.method public static native updateNativeActivity()Z
.end method

.method private static updatePrimaryClip(Landroid/content/ClipData;)V
    .locals 4

    .line 878
    :try_start_0
    sget-boolean v0, Lorg/qtproject/qt/android/QtNative;->m_usePrimaryClip:Z

    if-eqz v0, :cond_1

    .line 879
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 880
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 881
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/ClipData;

    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ClipData;->addItem(Landroid/content/ContentResolver;Landroid/content/ClipData$Item;)V

    goto :goto_0

    .line 883
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/ClipData;

    invoke-virtual {p0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 885
    :goto_0
    sget-object p0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p0, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 886
    goto :goto_1

    .line 887
    :cond_1
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 888
    const/4 p0, 0x1

    sput-boolean p0, Lorg/qtproject/qt/android/QtNative;->m_usePrimaryClip:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :goto_1
    goto :goto_2

    .line 890
    :catch_0
    move-exception p0

    .line 891
    const-string v0, "Qt JAVA"

    const-string v1, "Failed to set clipboard data"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 893
    :goto_2
    return-void
.end method

.method private static updateSelection(IIII)V
    .locals 1

    .line 645
    new-instance v0, Lorg/qtproject/qt/android/QtNative$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/qtproject/qt/android/QtNative$9;-><init>(IIII)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 652
    return-void
.end method

.method public static native updateWindow()V
.end method

.method public static native waitForServiceSetup()V
.end method
