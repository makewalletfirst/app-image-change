.class public Lorg/kivy/android/PythonService;
.super Landroid/app/Service;
.source "PythonService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static mService:Lorg/kivy/android/PythonService;


# instance fields
.field private androidArgument:Ljava/lang/String;

.field private androidPrivate:Ljava/lang/String;

.field private autoRestartService:Z

.field private pythonHome:Ljava/lang/String;

.field private pythonName:Ljava/lang/String;

.field private pythonPath:Ljava/lang/String;

.field private pythonServiceArgument:Ljava/lang/String;

.field private pythonThread:Ljava/lang/Thread;

.field private serviceEntrypoint:Ljava/lang/String;

.field private startIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lorg/kivy/android/PythonService;->mService:Lorg/kivy/android/PythonService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kivy/android/PythonService;->pythonThread:Ljava/lang/Thread;

    .line 39
    iput-object v0, p0, Lorg/kivy/android/PythonService;->startIntent:Landroid/content/Intent;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/kivy/android/PythonService;->autoRestartService:Z

    return-void
.end method

.method public static native nativeStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method protected doStartForeground(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 104
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "serviceTitle"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "serviceTitle":Ljava/lang/String;
    const-string v0, "smallIconName"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "smallIconName":Ljava/lang/String;
    const-string v0, "contentTitle"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "contentTitle":Ljava/lang/String;
    const-string v0, "contentText"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "contentText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/kivy/android/PythonService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 110
    .local v7, "context":Landroid/content/Context;
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lorg/kivy/android/PythonActivity;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v8, v0

    .line 111
    .local v8, "contextIntent":Landroid/content/Intent;
    const/4 v0, 0x0

    const/high16 v9, 0xc000000

    invoke-static {v7, v0, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 115
    .local v9, "pIntent":Landroid/app/PendingIntent;
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 116
    .local v10, "smallIconId":I
    if-eqz v4, :cond_1

    .line 117
    const-string v11, ""

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 118
    invoke-virtual/range {p0 .. p0}, Lorg/kivy/android/PythonService;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 119
    invoke-virtual/range {p0 .. p0}, Lorg/kivy/android/PythonService;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 118
    const-string v13, "mipmap"

    invoke-virtual {v11, v4, v13, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 120
    .local v11, "resId":I
    if-nez v11, :cond_0

    .line 121
    invoke-virtual/range {p0 .. p0}, Lorg/kivy/android/PythonService;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 122
    invoke-virtual/range {p0 .. p0}, Lorg/kivy/android/PythonService;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 121
    const-string v14, "drawable"

    invoke-virtual {v12, v4, v14, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 124
    :cond_0
    if-eqz v11, :cond_1

    .line 125
    move v10, v11

    .line 130
    .end local v11    # "resId":I
    :cond_1
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-ge v11, v12, :cond_2

    .line 132
    new-instance v11, Landroid/app/Notification;

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v11, v10, v3, v12, v13}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 136
    .local v11, "notification":Landroid/app/Notification;
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "setLatestEventInfo"

    const/4 v14, 0x4

    new-array v15, v14, [Ljava/lang/Class;

    const-class v16, Landroid/content/Context;

    aput-object v16, v15, v0

    const-class v16, Ljava/lang/CharSequence;

    const/16 v17, 0x1

    aput-object v16, v15, v17

    const-class v16, Ljava/lang/CharSequence;

    const/16 v18, 0x2

    aput-object v16, v15, v18

    const-class v16, Landroid/app/PendingIntent;

    const/16 v19, 0x3

    aput-object v16, v15, v19

    invoke-virtual {v12, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 139
    .local v12, "func":Ljava/lang/reflect/Method;
    new-array v13, v14, [Ljava/lang/Object;

    aput-object v7, v13, v0

    aput-object v5, v13, v17

    aput-object v6, v13, v18

    aput-object v9, v13, v19

    invoke-virtual {v12, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    nop

    .end local v12    # "func":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 142
    :goto_0
    goto :goto_1

    .line 146
    .end local v11    # "notification":Landroid/app/Notification;
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "org.kivy.p4a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/kivy/android/PythonService;->getServiceId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 147
    .local v11, "NOTIFICATION_CHANNEL_ID":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Background Service"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/kivy/android/PythonService;->getServiceId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 148
    .local v12, "channelName":Ljava/lang/String;
    new-instance v13, Landroid/app/NotificationChannel;

    invoke-direct {v13, v11, v12, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 150
    .local v13, "chan":Landroid/app/NotificationChannel;
    const v14, -0xffff01

    invoke-virtual {v13, v14}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 151
    invoke-virtual {v13, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 152
    const-string v0, "notification"

    invoke-virtual {v1, v0}, Lorg/kivy/android/PythonService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 153
    .local v0, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v0, v13}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 155
    new-instance v14, Landroid/app/Notification$Builder;

    invoke-direct {v14, v7, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    .local v14, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v14, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 157
    invoke-virtual {v14, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 158
    invoke-virtual {v14, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 159
    invoke-virtual {v14, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 160
    invoke-virtual {v14}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v15

    move-object v11, v15

    .line 162
    .end local v0    # "manager":Landroid/app/NotificationManager;
    .end local v12    # "channelName":Ljava/lang/String;
    .end local v13    # "chan":Landroid/app/NotificationChannel;
    .end local v14    # "builder":Landroid/app/Notification$Builder;
    .local v11, "notification":Landroid/app/Notification;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/kivy/android/PythonService;->getServiceId()I

    move-result v0

    invoke-virtual {v1, v0, v11}, Lorg/kivy/android/PythonService;->startForeground(ILandroid/app/Notification;)V

    .line 163
    return-void
.end method

.method protected getServiceId()I
    .locals 1

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method protected getThisDefaultIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pythonServiceArgument"    # Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 58
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 167
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kivy/android/PythonService;->pythonThread:Ljava/lang/Thread;

    .line 169
    iget-boolean v0, p0, Lorg/kivy/android/PythonService;->autoRestartService:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/kivy/android/PythonService;->startIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "python service"

    const-string v1, "service restart requested"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lorg/kivy/android/PythonService;->startIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/kivy/android/PythonService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 173
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 174
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 63
    iget-object v0, p0, Lorg/kivy/android/PythonService;->pythonThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "python service"

    const-string v1, "service exists, do not start again"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->startType()I

    move-result v0

    return v0

    .line 68
    :cond_0
    if-nez p1, :cond_1

    .line 69
    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    .local v0, "context":Landroid/content/Context;
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/kivy/android/PythonService;->getThisDefaultIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 73
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iput-object p1, p0, Lorg/kivy/android/PythonService;->startIntent:Landroid/content/Intent;

    .line 74
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "androidPrivate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kivy/android/PythonService;->androidPrivate:Ljava/lang/String;

    .line 76
    const-string v1, "androidArgument"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kivy/android/PythonService;->androidArgument:Ljava/lang/String;

    .line 77
    const-string v1, "serviceEntrypoint"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kivy/android/PythonService;->serviceEntrypoint:Ljava/lang/String;

    .line 78
    const-string v1, "pythonName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kivy/android/PythonService;->pythonName:Ljava/lang/String;

    .line 79
    const-string v1, "pythonHome"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kivy/android/PythonService;->pythonHome:Ljava/lang/String;

    .line 80
    const-string v1, "pythonPath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kivy/android/PythonService;->pythonPath:Ljava/lang/String;

    .line 81
    nop

    .line 82
    const-string v1, "serviceStartAsForeground"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 84
    .local v1, "serviceStartAsForeground":Z
    const-string v2, "pythonServiceArgument"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/kivy/android/PythonService;->pythonServiceArgument:Ljava/lang/String;

    .line 85
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/kivy/android/PythonService;->pythonThread:Ljava/lang/Thread;

    .line 86
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 88
    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {p0, v0}, Lorg/kivy/android/PythonService;->doStartForeground(Landroid/os/Bundle;)V

    .line 92
    :cond_2
    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->startType()I

    move-result v2

    return v2
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .line 182
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 184
    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->startType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->stopSelf()V

    .line 187
    :cond_0
    return-void
.end method

.method public run()V
    .locals 11

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "app_root":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v1, "app_root_file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    .line 194
    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-static {v1, v2}, Lorg/kivy/android/PythonUtil;->loadLibraries(Ljava/io/File;Ljava/io/File;)V

    .line 195
    sput-object p0, Lorg/kivy/android/PythonService;->mService:Lorg/kivy/android/PythonService;

    .line 196
    iget-object v4, p0, Lorg/kivy/android/PythonService;->androidPrivate:Ljava/lang/String;

    iget-object v5, p0, Lorg/kivy/android/PythonService;->androidArgument:Ljava/lang/String;

    iget-object v6, p0, Lorg/kivy/android/PythonService;->serviceEntrypoint:Ljava/lang/String;

    iget-object v7, p0, Lorg/kivy/android/PythonService;->pythonName:Ljava/lang/String;

    iget-object v8, p0, Lorg/kivy/android/PythonService;->pythonHome:Ljava/lang/String;

    iget-object v9, p0, Lorg/kivy/android/PythonService;->pythonPath:Ljava/lang/String;

    iget-object v10, p0, Lorg/kivy/android/PythonService;->pythonServiceArgument:Ljava/lang/String;

    invoke-static/range {v4 .. v10}, Lorg/kivy/android/PythonService;->nativeStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lorg/kivy/android/PythonService;->stopSelf()V

    .line 202
    return-void
.end method

.method public setAutoRestartService(Z)V
    .locals 0
    .param p1, "restart"    # Z

    .line 44
    iput-boolean p1, p0, Lorg/kivy/android/PythonService;->autoRestartService:Z

    .line 45
    return-void
.end method

.method public startType()I
    .locals 1

    .line 48
    const/4 v0, 0x2

    return v0
.end method
