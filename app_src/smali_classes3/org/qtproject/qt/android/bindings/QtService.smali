.class public Lorg/qtproject/qt/android/bindings/QtService;
.super Landroid/app/Service;
.source "QtService.java"


# instance fields
.field m_loader:Lorg/qtproject/qt/android/bindings/QtServiceLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    new-instance v0, Lorg/qtproject/qt/android/bindings/QtServiceLoader;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/bindings/QtServiceLoader;-><init>(Lorg/qtproject/qt/android/bindings/QtService;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtService;->m_loader:Lorg/qtproject/qt/android/bindings/QtServiceLoader;

    return-void
.end method


# virtual methods
.method public loadApplication(Landroid/app/Service;Ljava/lang/ClassLoader;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "service"    # Landroid/app/Service;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "loaderParams"    # Landroid/os/Bundle;

    .line 141
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->serviceDelegate()Lorg/qtproject/qt/android/QtServiceDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/qtproject/qt/android/QtServiceDelegate;->loadApplication(Landroid/app/Service;Ljava/lang/ClassLoader;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 58
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    return-object v1

    .line 61
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 69
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 42
    invoke-virtual {p0}, Lorg/qtproject/qt/android/bindings/QtService;->onCreateHook()V

    .line 43
    return-void
.end method

.method protected onCreateHook()V
    .locals 2

    .line 28
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtService;->m_loader:Lorg/qtproject/qt/android/bindings/QtServiceLoader;

    .line 30
    const-string v0, "Qt JAVA"

    const-string v1, "A QtService tried to start in the same process as an initiated QtActivity. That is not supported. This results in the service functioning as an Android Service detached from Qt."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtService;->m_loader:Lorg/qtproject/qt/android/bindings/QtServiceLoader;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/bindings/QtServiceLoader;->onCreate()V

    .line 37
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    .line 51
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 81
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 82
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 88
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 89
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 92
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 104
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 116
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 127
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 128
    .local v0, "res":Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 131
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public startApplication()Z
    .locals 1

    .line 146
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->serviceDelegate()Lorg/qtproject/qt/android/QtServiceDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtServiceDelegate;->startApplication()Z

    move-result v0

    return v0
.end method

.method public super_onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 73
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 74
    return-void
.end method

.method public super_onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public super_onTaskRemoved(Landroid/content/Intent;)V
    .locals 0
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .line 108
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 109
    return-void
.end method

.method public super_onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .line 120
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 121
    return-void
.end method

.method public super_onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 135
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
