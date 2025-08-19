.class public Lorg/kivy/android/PythonActivity;
.super Lorg/qtproject/qt/android/bindings/QtActivity;
.source "PythonActivity.java"

# interfaces
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kivy/android/PythonActivity$PermissionsCallback;,
        Lorg/kivy/android/PythonActivity$NewIntentListener;,
        Lorg/kivy/android/PythonActivity$ActivityResultListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PythonActivity"

.field public static mActivity:Lorg/kivy/android/PythonActivity;

.field public static mBrokenLibraries:Z

.field protected static mLayout:Landroid/view/ViewGroup;


# instance fields
.field private activityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/kivy/android/PythonActivity$ActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private havePermissionsCallback:Z

.field private newIntentListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/kivy/android/PythonActivity$NewIntentListener;",
            ">;"
        }
    .end annotation
.end field

.field private permissionCallback:Lorg/kivy/android/PythonActivity$PermissionsCallback;

.field private resourceManager:Lorg/renpy/android/ResourceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lorg/qtproject/qt/android/bindings/QtActivity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->resourceManager:Lorg/renpy/android/ResourceManager;

    .line 156
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/kivy/android/PythonActivity;->havePermissionsCallback:Z

    .line 223
    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    .line 261
    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    return-void
.end method

.method public static initialize()V
    .locals 1

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lorg/kivy/android/PythonActivity;->mLayout:Landroid/view/ViewGroup;

    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lorg/kivy/android/PythonActivity;->mBrokenLibraries:Z

    .line 83
    return-void
.end method

.method private loadNativeLib()V
    .locals 4

    .line 86
    const-string v0, "PythonActivity"

    const-string v1, "loading native lib"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :try_start_0
    const-string v1, "main"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "loading native lib (alt)"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/lib"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "libPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/libmain.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 96
    .end local v0    # "libPath":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public static native nativeSetenv(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public addPermissionsCallback(Lorg/kivy/android/PythonActivity$PermissionsCallback;)V
    .locals 2
    .param p1, "callback"    # Lorg/kivy/android/PythonActivity$PermissionsCallback;

    .line 159
    iput-object p1, p0, Lorg/kivy/android/PythonActivity;->permissionCallback:Lorg/kivy/android/PythonActivity$PermissionsCallback;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/kivy/android/PythonActivity;->havePermissionsCallback:Z

    .line 161
    const-string v0, "PythonActivity"

    const-string v1, "addPermissionsCallback(): Added callback for onRequestPermissionsResult"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public checkCurrentPermission(Ljava/lang/String;)Z
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 179
    return v1

    .line 182
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-class v2, Landroid/app/Activity;

    const-string v3, "checkSelfPermission"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    .line 183
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 184
    .local v2, "methodCheckPermission":Ljava/lang/reflect/Method;
    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 185
    .local v3, "resultObj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .local v4, "result":I
    if-nez v4, :cond_1

    .line 187
    return v1

    .line 190
    .end local v2    # "methodCheckPermission":Ljava/lang/reflect/Method;
    .end local v3    # "resultObj":Ljava/lang/Object;
    .end local v4    # "result":I
    :cond_1
    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 191
    :goto_0
    return v0
.end method

.method public getAppRoot()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/kivy/android/PythonActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntryPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "search_dir"    # Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/main.pyc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "mainFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "main.pyc"

    return-object v1

    .line 75
    :cond_0
    const-string v1, "main.py"

    return-object v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 281
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 282
    return-void

    .line 284
    :cond_0
    monitor-enter v0

    .line 285
    :try_start_0
    iget-object v1, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 286
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/kivy/android/PythonActivity$ActivityResultListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/kivy/android/PythonActivity$ActivityResultListener;

    invoke-interface {v2, p1, p2, p3}, Lorg/kivy/android/PythonActivity$ActivityResultListener;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 288
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/kivy/android/PythonActivity$ActivityResultListener;>;"
    :cond_1
    monitor-exit v0

    .line 289
    return-void

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 100
    const-string v0, "PythonActivity"

    const-string v1, "My onCreate running"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Lorg/renpy/android/ResourceManager;

    invoke-direct {v0, p0}, Lorg/renpy/android/ResourceManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->resourceManager:Lorg/renpy/android/ResourceManager;

    .line 103
    sput-object p0, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    .line 105
    invoke-direct {p0}, Lorg/kivy/android/PythonActivity;->loadNativeLib()V

    .line 107
    invoke-super {p0, p1}, Lorg/qtproject/qt/android/bindings/QtActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 243
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 244
    return-void

    .line 245
    :cond_0
    monitor-enter v0

    .line 246
    :try_start_0
    iget-object v1, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 247
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/kivy/android/PythonActivity$NewIntentListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/kivy/android/PythonActivity$NewIntentListener;

    invoke-interface {v2, p1}, Lorg/kivy/android/PythonActivity$NewIntentListener;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 250
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/kivy/android/PythonActivity$NewIntentListener;>;"
    :cond_1
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 166
    const-string v0, "PythonActivity"

    const-string v1, "onRequestPermissionsResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-boolean v1, p0, Lorg/kivy/android/PythonActivity;->havePermissionsCallback:Z

    if-eqz v1, :cond_0

    .line 168
    const-string v1, "onRequestPermissionsResult passed to callback"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->permissionCallback:Lorg/kivy/android/PythonActivity$PermissionsCallback;

    invoke-interface {v0, p1, p2, p3}, Lorg/kivy/android/PythonActivity$PermissionsCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 171
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/qtproject/qt/android/bindings/QtActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 172
    return-void
.end method

.method public registerActivityResultListener(Lorg/kivy/android/PythonActivity$ActivityResultListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/kivy/android/PythonActivity$ActivityResultListener;

    .line 264
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    .line 266
    :cond_0
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    monitor-enter v0

    .line 267
    :try_start_0
    iget-object v1, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerNewIntentListener(Lorg/kivy/android/PythonActivity$NewIntentListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/kivy/android/PythonActivity$NewIntentListener;

    .line 226
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    monitor-exit v0

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestPermissions([Ljava/lang/String;)V
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/kivy/android/PythonActivity;->requestPermissionsWithRequestCode([Ljava/lang/String;I)V

    .line 212
    return-void
.end method

.method public requestPermissionsWithRequestCode([Ljava/lang/String;I)V
    .locals 7
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "requestPermissions"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 202
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 204
    .local v0, "methodRequestPermission":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    nop

    .end local v0    # "methodRequestPermission":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 208
    :goto_0
    return-void
.end method

.method public setSecureWindow(Z)V
    .locals 1
    .param p1, "secure"    # Z

    .line 111
    new-instance v0, Lorg/kivy/android/PythonActivity$1;

    invoke-direct {v0, p0}, Lorg/kivy/android/PythonActivity$1;-><init>(Lorg/kivy/android/PythonActivity;)V

    .line 144
    invoke-virtual {v0, p0, p1}, Lorg/kivy/android/PythonActivity$1;->_initialize(Landroid/app/Activity;Z)Ljava/lang/Runnable;

    move-result-object v0

    .line 111
    invoke-virtual {p0, v0}, Lorg/kivy/android/PythonActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public unregisterActivityResultListener(Lorg/kivy/android/PythonActivity$ActivityResultListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/kivy/android/PythonActivity$ActivityResultListener;

    .line 272
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 273
    return-void

    .line 274
    :cond_0
    monitor-enter v0

    .line 275
    :try_start_0
    iget-object v1, p0, Lorg/kivy/android/PythonActivity;->activityResultListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 276
    monitor-exit v0

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterNewIntentListener(Lorg/kivy/android/PythonActivity$NewIntentListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/kivy/android/PythonActivity$NewIntentListener;

    .line 234
    iget-object v0, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 235
    return-void

    .line 236
    :cond_0
    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Lorg/kivy/android/PythonActivity;->newIntentListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 238
    monitor-exit v0

    .line 239
    return-void

    .line 238
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
