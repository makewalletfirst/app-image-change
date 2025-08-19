.class public Lorg/kivy/android/PythonActivityInit;
.super Ljava/lang/Object;
.source "PythonActivityInit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PythonActivityInit"


# instance fields
.field private mActivity:Lorg/kivy/android/PythonActivity;

.field private mLoader:Lorg/qtproject/qt/android/QtActivityDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setActivity(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "o"    # Ljava/lang/Object;

    .line 29
    const-string v0, "PythonActivityInit"

    const-string v1, "PythonActivityInit setActivity running"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    move-object v1, p1

    check-cast v1, Lorg/kivy/android/PythonActivity;

    iput-object v1, p0, Lorg/kivy/android/PythonActivityInit;->mActivity:Lorg/kivy/android/PythonActivity;

    .line 32
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    move-object v0, p2

    check-cast v0, Lorg/qtproject/qt/android/QtActivityDelegate;

    iput-object v0, p0, Lorg/kivy/android/PythonActivityInit;->mLoader:Lorg/qtproject/qt/android/QtActivityDelegate;

    .line 38
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    const-string v0, "PythonActivityInit"

    const-string v1, "PythonActivityInit setContext running"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity env = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/kivy/android/PythonActivityInit;->mActivity:Lorg/kivy/android/PythonActivity;

    iget-object v2, v2, Lorg/kivy/android/PythonActivity;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v1, p0, Lorg/kivy/android/PythonActivityInit;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v1}, Lorg/kivy/android/PythonActivity;->getAppRoot()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "app_root_dir":Ljava/lang/String;
    const-string v2, "Ready to unpack"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v2, p0, Lorg/kivy/android/PythonActivityInit;->mActivity:Lorg/kivy/android/PythonActivity;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "private"

    const/4 v5, 0x1

    invoke-static {v2, v4, v3, v5}, Lorg/kivy/android/PythonUtil;->unpackAsset(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Z)V

    .line 50
    iget-object v2, p0, Lorg/kivy/android/PythonActivityInit;->mActivity:Lorg/kivy/android/PythonActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/kivy/android/PythonActivityInit;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v4}, Lorg/kivy/android/PythonActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/libpybundle"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6}, Lorg/kivy/android/PythonUtil;->unpackPyBundle(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Z)V

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {}, Lorg/kivy/android/PythonActivity;->initialize()V

    .line 56
    iget-object v2, p0, Lorg/kivy/android/PythonActivityInit;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v2}, Lorg/kivy/android/PythonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ANDROID_APP_PATH"

    const-string v4, "ANDROID_ARGUMENT"

    const-string v7, "ANDROID_ENTRYPOINT"

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/kivy/android/PythonActivityInit;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v2}, Lorg/kivy/android/PythonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/kivy/android/PythonActivityInit;->mActivity:Lorg/kivy/android/PythonActivity;

    .line 57
    invoke-virtual {v2}, Lorg/kivy/android/PythonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v8, "org.kivy.LAUNCH"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lorg/kivy/android/PythonActivityInit;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v8}, Lorg/kivy/android/PythonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, "path":Ljava/io/File;
    invoke-static {v2}, Lorg/kivy/android/launcher/Project;->scanDirectory(Ljava/io/File;)Lorg/kivy/android/launcher/Project;

    move-result-object v8

    .line 61
    .local v8, "p":Lorg/kivy/android/launcher/Project;
    iget-object v9, p0, Lorg/kivy/android/PythonActivityInit;->mActivity:Lorg/kivy/android/PythonActivity;

    iget-object v10, v8, Lorg/kivy/android/launcher/Project;->dir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/kivy/android/PythonActivity;->getEntryPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "entry_point":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v8, Lorg/kivy/android/launcher/Project;->dir:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lorg/kivy/android/PythonActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v7, v8, Lorg/kivy/android/launcher/Project;->dir:Ljava/lang/String;

    invoke-static {v4, v7}, Lorg/kivy/android/PythonActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v4, v8, Lorg/kivy/android/launcher/Project;->dir:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/kivy/android/PythonActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-eqz v8, :cond_1

    .line 67
    iget-boolean v3, v8, Lorg/kivy/android/launcher/Project;->landscape:Z

    if-eqz v3, :cond_0

    .line 68
    iget-object v3, p0, Lorg/kivy/android/PythonActivityInit;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v3, v6}, Lorg/kivy/android/PythonActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v3, p0, Lorg/kivy/android/PythonActivityInit;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v3, v5}, Lorg/kivy/android/PythonActivity;->setRequestedOrientation(I)V

    .line 73
    .end local v2    # "path":Ljava/io/File;
    .end local v8    # "p":Lorg/kivy/android/launcher/Project;
    .end local v9    # "entry_point":Ljava/lang/String;
    :cond_1
    :goto_0
    goto :goto_1

    .line 74
    :cond_2
    iget-object v2, p0, Lorg/kivy/android/PythonActivityInit;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v2, v1}, Lorg/kivy/android/PythonActivity;->getEntryPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "entry_point":Ljava/lang/String;
    invoke-static {v7, v2}, Lorg/kivy/android/PythonActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {v4, v1}, Lorg/kivy/android/PythonActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {v3, v1}, Lorg/kivy/android/PythonActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v2    # "entry_point":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lorg/kivy/android/PythonActivityInit;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v2}, Lorg/kivy/android/PythonActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "mFilesDirectory":Ljava/lang/String;
    const-string v3, "Setting env vars for start.c and Python to use"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v3, "ANDROID_PRIVATE"

    invoke-static {v3, v2}, Lorg/kivy/android/PythonActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v3, "ANDROID_UNPACK"

    invoke-static {v3, v1}, Lorg/kivy/android/PythonActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v3, "PYTHONHOME"

    invoke-static {v3, v1}, Lorg/kivy/android/PythonActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PYTHONPATH"

    invoke-static {v4, v3}, Lorg/kivy/android/PythonActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v3, "PYTHONOPTIMIZE"

    const-string v4, "2"

    invoke-static {v3, v4}, Lorg/kivy/android/PythonActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v3, "Setting env vars for Qt"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v0, "QT_QUICK_CONTROLS_STYLE"

    const-string v3, "Material"

    invoke-static {v0, v3}, Lorg/kivy/android/PythonActivity;->nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method
