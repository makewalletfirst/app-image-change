.class public Lorg/qtproject/qt/android/bindings/QtActivityLoader;
.super Lorg/qtproject/qt/android/bindings/QtLoader;
.source "QtActivityLoader.java"


# instance fields
.field m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/bindings/QtActivity;)V
    .locals 1
    .param p1, "activity"    # Lorg/qtproject/qt/android/bindings/QtActivity;

    .line 27
    const-class v0, Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-direct {p0, p1, v0}, Lorg/qtproject/qt/android/bindings/QtLoader;-><init>(Landroid/content/ContextWrapper;Ljava/lang/Class;)V

    .line 28
    iput-object p1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    .line 29
    return-void
.end method


# virtual methods
.method protected contextClassName()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 38
    const-class v0, Landroid/app/Activity;

    return-object v0
.end method

.method protected finish()V
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/bindings/QtActivity;->finish()V

    .line 44
    return-void
.end method

.method getIntent()Landroid/content/Intent;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/bindings/QtActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/bindings/QtActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected loaderClassName()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "org.qtproject.qt.android.QtActivityDelegate"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    const-string v0, "android.R$style"

    :try_start_0
    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/bindings/QtActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-virtual {v2}, Lorg/qtproject/qt/android/bindings/QtActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    .line 64
    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    check-cast v1, Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v1

    .line 65
    .local v1, "theme":I
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v5, v3, :cond_1

    aget-object v8, v2, v5

    .line 66
    .local v8, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    if-ne v9, v1, :cond_0

    .line 67
    new-array v2, v7, [Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iput-object v2, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->QT_ANDROID_THEMES:[Ljava/lang/String;

    .line 68
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    goto :goto_1

    .line 65
    .end local v8    # "f":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "theme":I
    :cond_1
    :goto_1
    nop

    .line 79
    :try_start_1
    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/qtproject/qt/android/bindings/QtActivity;->setTheme(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    goto :goto_2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/bindings/QtActivity;->requestWindowFeature(I)Z

    .line 85
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->updateActivity(Landroid/app/Activity;)Z

    move-result v0

    .line 87
    .local v0, "updated":Z
    if-nez v0, :cond_2

    .line 89
    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/bindings/QtActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 90
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-virtual {v2, v1}, Lorg/qtproject/qt/android/bindings/QtActivity;->startActivity(Landroid/content/Intent;)V

    .line 91
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->quitApp()V

    .line 92
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exit(I)V

    .line 96
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    sget-object v1, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v1, :cond_3

    sget-object v1, Lorg/qtproject/qt/android/bindings/QtApplication;->onCreate:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3

    .line 97
    sget-object v1, Lorg/qtproject/qt/android/bindings/QtApplication;->onCreate:Ljava/lang/reflect/Method;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_3
    return-void

    .line 102
    .end local v0    # "updated":Z
    :cond_4
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/bindings/QtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_displayDensity:I

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tQT_ANDROID_THEME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/\tQT_ANDROID_THEME_DISPLAY_DPI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_displayDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "android.app.background_running"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    .line 108
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "QT_BLOCK_EVENT_LOOPS_WHEN_SUSPENDED=0\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    goto :goto_3

    .line 111
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "QT_BLOCK_EVENT_LOOPS_WHEN_SUSPENDED=1\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    .line 114
    :goto_3
    invoke-virtual {p0, v7}, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->startApp(Z)V

    .line 116
    return-void

    .line 72
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    invoke-virtual {p0}, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->finish()V

    .line 75
    return-void
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .line 53
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method
