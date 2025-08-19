.class public Lorg/qtproject/qt/android/bindings/QtApplication;
.super Landroid/app/Application;
.source "QtApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    }
.end annotation


# static fields
.field public static final QtTAG:Ljava/lang/String; = "Qt"

.field private static activityClassName:Ljava/lang/String;

.field public static dispatchGenericMotionEvent:Ljava/lang/reflect/Method;

.field public static dispatchKeyEvent:Ljava/lang/reflect/Method;

.field public static dispatchKeyShortcutEvent:Ljava/lang/reflect/Method;

.field public static dispatchPopulateAccessibilityEvent:Ljava/lang/reflect/Method;

.field public static dispatchTouchEvent:Ljava/lang/reflect/Method;

.field public static dispatchTrackballEvent:Ljava/lang/reflect/Method;

.field public static m_delegateMethods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field public static m_delegateObject:Ljava/lang/Object;

.field public static onActivityResult:Ljava/lang/reflect/Method;

.field public static onCreate:Ljava/lang/reflect/Method;

.field public static onGenericMotionEvent:Ljava/lang/reflect/Method;

.field public static onKeyDown:Ljava/lang/reflect/Method;

.field public static onKeyLongPress:Ljava/lang/reflect/Method;

.field public static onKeyMultiple:Ljava/lang/reflect/Method;

.field public static onKeyShortcut:Ljava/lang/reflect/Method;

.field public static onKeyUp:Ljava/lang/reflect/Method;

.field public static onRequestPermissionsResult:Ljava/lang/reflect/Method;

.field public static onTouchEvent:Ljava/lang/reflect/Method;

.field public static onTrackballEvent:Ljava/lang/reflect/Method;

.field private static stackDeep:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    .line 18
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    .line 19
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchKeyEvent:Ljava/lang/reflect/Method;

    .line 20
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchPopulateAccessibilityEvent:Ljava/lang/reflect/Method;

    .line 21
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchTouchEvent:Ljava/lang/reflect/Method;

    .line 22
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchTrackballEvent:Ljava/lang/reflect/Method;

    .line 23
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyDown:Ljava/lang/reflect/Method;

    .line 24
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyMultiple:Ljava/lang/reflect/Method;

    .line 25
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyUp:Ljava/lang/reflect/Method;

    .line 26
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onTouchEvent:Ljava/lang/reflect/Method;

    .line 27
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onTrackballEvent:Ljava/lang/reflect/Method;

    .line 28
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onActivityResult:Ljava/lang/reflect/Method;

    .line 29
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onCreate:Ljava/lang/reflect/Method;

    .line 30
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyLongPress:Ljava/lang/reflect/Method;

    .line 31
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchKeyShortcutEvent:Ljava/lang/reflect/Method;

    .line 32
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyShortcut:Ljava/lang/reflect/Method;

    .line 33
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchGenericMotionEvent:Ljava/lang/reflect/Method;

    .line 34
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onGenericMotionEvent:Ljava/lang/reflect/Method;

    .line 35
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onRequestPermissionsResult:Ljava/lang/reflect/Method;

    .line 90
    const/4 v0, -0x1

    sput v0, Lorg/qtproject/qt/android/bindings/QtApplication;->stackDeep:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static varargs invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    .locals 7
    .param p0, "args"    # [Ljava/lang/Object;

    .line 93
    new-instance v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    invoke-direct {v0}, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;-><init>()V

    .line 94
    .local v0, "result":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    sget-object v1, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 95
    return-object v0

    .line 96
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 97
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    sget v2, Lorg/qtproject/qt/android/bindings/QtApplication;->stackDeep:I

    const/4 v3, -0x1

    if-ne v3, v2, :cond_2

    .line 98
    const/4 v2, 0x0

    .local v2, "it":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 99
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/qtproject/qt/android/bindings/QtApplication;->activityClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    sput v2, Lorg/qtproject/qt/android/bindings/QtApplication;->stackDeep:I

    .line 101
    goto :goto_1

    .line 98
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "it":I
    :cond_2
    :goto_1
    sget v2, Lorg/qtproject/qt/android/bindings/QtApplication;->stackDeep:I

    if-ne v3, v2, :cond_3

    .line 105
    return-object v0

    .line 107
    :cond_3
    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "methodName":Ljava/lang/String;
    sget-object v3, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 109
    return-object v0

    .line 111
    :cond_4
    sget-object v3, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 112
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    array-length v6, p0

    if-ne v5, v6, :cond_5

    .line 113
    invoke-static {v4, p0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    .line 114
    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    .line 115
    return-object v0

    .line 117
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_5
    goto :goto_2

    .line 118
    :cond_6
    return-object v0
.end method

.method public static varargs invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "m"    # Ljava/lang/reflect/Method;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 124
    :try_start_0
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setQtContextDelegate(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 9
    .param p1, "listener"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 39
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lorg/qtproject/qt/android/bindings/QtApplication;

    sput-object p1, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/qtproject/qt/android/bindings/QtApplication;->activityClassName:Ljava/lang/String;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "delegateMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 44
    .local v6, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "org.qtproject.qt.android"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 45
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .end local v6    # "m":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 48
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v2, "applicationFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v6, v3, v4

    .line 50
    .local v6, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 51
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v6    # "f":Ljava/lang/reflect/Field;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 56
    .local v3, "delegateMethod":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    sget-object v4, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 58
    sget-object v4, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 60
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v4, "delegateSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v5, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v4    # "delegateSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    .line 65
    .local v5, "applicationField":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_5

    .line 67
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v6, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    goto :goto_5

    .line 68
    :catch_0
    move-exception v6

    .line 69
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 72
    .end local v5    # "applicationField":Ljava/lang/reflect/Field;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_5
    goto :goto_4

    .line 73
    :catch_1
    move-exception v4

    :cond_6
    nop

    .line 74
    .end local v3    # "delegateMethod":Ljava/lang/reflect/Method;
    goto :goto_2

    .line 75
    :cond_7
    return-void
.end method


# virtual methods
.method public onTerminate()V
    .locals 2

    .line 79
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    const-string v1, "onTerminate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 82
    return-void
.end method
