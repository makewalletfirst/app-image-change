.class public abstract Lorg/qtproject/qt/android/bindings/QtLoader;
.super Ljava/lang/Object;
.source "QtLoader.java"


# static fields
.field public static final APPLICATION_PARAMETERS_KEY:Ljava/lang/String; = "application.parameters"

.field public static final BUNDLED_LIBRARIES_KEY:Ljava/lang/String; = "bundled.libraries"

.field public static final DEX_PATH_KEY:Ljava/lang/String; = "dex.path"

.field public static final ENVIRONMENT_VARIABLES_KEY:Ljava/lang/String; = "environment.variables"

.field public static final ERROR_CODE_KEY:Ljava/lang/String; = "error.code"

.field public static final ERROR_MESSAGE_KEY:Ljava/lang/String; = "error.message"

.field public static final EXTRACT_STYLE_KEY:Ljava/lang/String; = "extract.android.style"

.field private static final EXTRACT_STYLE_MINIMAL_KEY:Ljava/lang/String; = "extract.android.style.option"

.field public static final LIB_PATH_KEY:Ljava/lang/String; = "lib.path"

.field public static final LOADER_CLASS_NAME_KEY:Ljava/lang/String; = "loader.class.name"

.field public static final MAIN_LIBRARY_KEY:Ljava/lang/String; = "main.library"

.field public static final NATIVE_LIBRARIES_KEY:Ljava/lang/String; = "native.libraries"

.field public static final STATIC_INIT_CLASSES_KEY:Ljava/lang/String; = "static.init.classes"

.field public static final SYSTEM_LIB_PATH:Ljava/lang/String; = "/system/lib/"

.field private static m_fileOutputStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/FileOutputStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public APPLICATION_PARAMETERS:Ljava/lang/String;

.field public ENVIRONMENT_VARIABLES:Ljava/lang/String;

.field public QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

.field public QT_ANDROID_THEMES:[Ljava/lang/String;

.field private m_context:Landroid/content/ContextWrapper;

.field protected m_contextInfo:Landroid/content/pm/ComponentInfo;

.field private m_delegateClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public m_displayDensity:I

.field public m_qtLibs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preferredAbi:Ljava/lang/String;

.field private final supportedAbis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_fileOutputStreams:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroid/content/ContextWrapper;Ljava/lang/Class;)V
    .locals 2
    .param p1, "context"    # Landroid/content/ContextWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContextWrapper;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 83
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->APPLICATION_PARAMETERS:Ljava/lang/String;

    .line 53
    const-string v1, "QT_USE_ANDROID_NATIVE_DIALOGS=1"

    iput-object v1, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->QT_ANDROID_THEMES:[Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_qtLibs:Ljava/util/ArrayList;

    .line 75
    const/4 v1, -0x1

    iput v1, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_displayDensity:I

    .line 108
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->supportedAbis:Ljava/util/List;

    .line 109
    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->preferredAbi:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    .line 85
    iput-object p2, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_delegateClass:Ljava/lang/Class;

    .line 86
    return-void
.end method

.method private loadApplication(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "loaderParams"    # Landroid/os/Bundle;

    .line 142
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "lib.path"

    const-string v3, "android.app.lib_name"

    iget-object v4, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 143
    .local v4, "resources":Landroid/content/res/Resources;
    iget-object v5, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "packageName":Ljava/lang/String;
    const v6, 0x104000a

    const/4 v7, -0x1

    :try_start_0
    const-string v8, "error.code"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 146
    .local v8, "errorCode":I
    if-eqz v8, :cond_0

    .line 148
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 149
    .local v0, "errorDialog":Landroid/app/AlertDialog;
    const-string v3, "error.message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 150
    nop

    .line 151
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Lorg/qtproject/qt/android/bindings/QtLoader$1;

    invoke-direct {v9, v1}, Lorg/qtproject/qt/android/bindings/QtLoader$1;-><init>(Lorg/qtproject/qt/android/bindings/QtLoader;)V

    .line 150
    invoke-virtual {v0, v7, v3, v9}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 159
    return-void

    .line 163
    .end local v0    # "errorDialog":Landroid/app/AlertDialog;
    :cond_0
    const-string v9, "bundled_libs"

    const-string v10, "array"

    invoke-virtual {v4, v9, v10, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 164
    .local v9, "id":I
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 165
    .local v10, "bundledLibs":[Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v1, v10}, Lorg/qtproject/qt/android/bindings/QtLoader;->prefferedAbiLibs([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 167
    .local v11, "libs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 168
    .local v12, "libName":Ljava/lang/String;
    iget-object v13, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 169
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v14, v14, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v14, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->preferredAbi:Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    .line 170
    const-string v3, "main.library"

    invoke-virtual {v2, v3, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_1
    const-string v3, "bundled.libraries"

    invoke-virtual {v2, v3, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 176
    new-instance v3, Ldalvik/system/DexClassLoader;

    const-string v13, "dex.path"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    const-string v15, "outdex"

    .line 177
    const/4 v7, 0x0

    invoke-virtual {v14, v15, v7}, Landroid/content/ContextWrapper;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 178
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v15, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    .line 179
    invoke-virtual {v15}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-direct {v3, v13, v14, v0, v15}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    move-object v0, v3

    .line 181
    .local v0, "classLoader":Ldalvik/system/DexClassLoader;
    const-string v3, "loader.class.name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 182
    .local v3, "loaderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v13

    .line 183
    .local v13, "qtLoader":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "loadApplication"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    .line 184
    invoke-virtual/range {p0 .. p0}, Lorg/qtproject/qt/android/bindings/QtLoader;->contextClassName()Ljava/lang/Class;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v7, v16

    const-class v17, Ljava/lang/ClassLoader;

    const/16 v18, 0x1

    aput-object v17, v7, v18

    const-class v17, Landroid/os/Bundle;

    const/16 v19, 0x2

    aput-object v17, v7, v19

    .line 183
    invoke-virtual {v14, v15, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 187
    .local v7, "prepareAppMethod":Ljava/lang/reflect/Method;
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v14, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    const/4 v15, 0x0

    aput-object v14, v6, v15

    aput-object v0, v6, v18

    aput-object v2, v6, v19

    invoke-virtual {v7, v13, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, ""

    if-eqz v6, :cond_4

    .line 190
    :try_start_1
    iget-object v6, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_delegateClass:Ljava/lang/Class;

    invoke-static {v6, v13}, Lorg/qtproject/qt/android/bindings/QtApplication;->setQtContextDelegate(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 192
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v15, "startApplication"

    move-object/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    .local v17, "classLoader":Ldalvik/system/DexClassLoader;
    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v6, v15, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 193
    .local v2, "startAppMethod":Ljava/lang/reflect/Method;
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    .end local v2    # "startAppMethod":Ljava/lang/reflect/Method;
    .end local v3    # "loaderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "prepareAppMethod":Ljava/lang/reflect/Method;
    .end local v8    # "errorCode":I
    .end local v9    # "id":I
    .end local v10    # "bundledLibs":[Ljava/lang/String;
    .end local v11    # "libs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "libName":Ljava/lang/String;
    .end local v13    # "qtLoader":Ljava/lang/Object;
    .end local v17    # "classLoader":Ldalvik/system/DexClassLoader;
    goto :goto_1

    .line 194
    .restart local v2    # "startAppMethod":Ljava/lang/reflect/Method;
    .restart local v3    # "loaderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "prepareAppMethod":Ljava/lang/reflect/Method;
    .restart local v8    # "errorCode":I
    .restart local v9    # "id":I
    .restart local v10    # "bundledLibs":[Ljava/lang/String;
    .restart local v11    # "libs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "libName":Ljava/lang/String;
    .restart local v13    # "qtLoader":Ljava/lang/Object;
    .restart local v17    # "classLoader":Ldalvik/system/DexClassLoader;
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v4    # "resources":Landroid/content/res/Resources;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local p1    # "loaderParams":Landroid/os/Bundle;
    throw v0

    .line 188
    .end local v2    # "startAppMethod":Ljava/lang/reflect/Method;
    .end local v17    # "classLoader":Ldalvik/system/DexClassLoader;
    .restart local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    .restart local v4    # "resources":Landroid/content/res/Resources;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local p1    # "loaderParams":Landroid/os/Bundle;
    :cond_4
    move-object/from16 v17, v0

    .end local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    .restart local v17    # "classLoader":Ldalvik/system/DexClassLoader;
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v4    # "resources":Landroid/content/res/Resources;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local p1    # "loaderParams":Landroid/os/Bundle;
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    .end local v3    # "loaderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "prepareAppMethod":Ljava/lang/reflect/Method;
    .end local v8    # "errorCode":I
    .end local v9    # "id":I
    .end local v10    # "bundledLibs":[Ljava/lang/String;
    .end local v11    # "libs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "libName":Ljava/lang/String;
    .end local v13    # "qtLoader":Ljava/lang/Object;
    .end local v17    # "classLoader":Ldalvik/system/DexClassLoader;
    .restart local v4    # "resources":Landroid/content/res/Resources;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local p1    # "loaderParams":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 199
    .local v2, "errorDialog":Landroid/app/AlertDialog;
    const-string v3, "fatal_error_msg"

    const-string v6, "string"

    invoke-virtual {v4, v3, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 201
    .local v3, "id":I
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 202
    nop

    .line 203
    const v6, 0x104000a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/qtproject/qt/android/bindings/QtLoader$2;

    invoke-direct {v7, v1}, Lorg/qtproject/qt/android/bindings/QtLoader$2;-><init>(Lorg/qtproject/qt/android/bindings/QtLoader;)V

    .line 202
    const/4 v8, -0x1

    invoke-virtual {v2, v8, v6, v7}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 210
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "errorDialog":Landroid/app/AlertDialog;
    .end local v3    # "id":I
    :goto_1
    return-void
.end method

.method private prefferedAbiLibs([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "libs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v0, "abisLibs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 115
    .local v4, "lib":Ljava/lang/String;
    const/4 v5, 0x2

    const-string v6, ";"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "archLib":[Ljava/lang/String;
    iget-object v6, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->preferredAbi:Ljava/lang/String;

    if-eqz v6, :cond_0

    aget-object v7, v5, v2

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 117
    goto :goto_1

    .line 118
    :cond_0
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 119
    aget-object v6, v5, v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_1
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v4    # "lib":Ljava/lang/String;
    .end local v5    # "archLib":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_2
    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->preferredAbi:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 124
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->preferredAbi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    return-object v1

    .line 127
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 130
    :cond_4
    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->supportedAbis:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    .local v2, "abi":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 132
    iput-object v2, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->preferredAbi:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    return-object v1

    .line 135
    .end local v2    # "abi":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 136
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method


# virtual methods
.method protected abstract contextClassName()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method protected finish()V
    .locals 0

    .line 89
    return-void
.end method

.method getIntent()Landroid/content/Intent;
    .locals 1

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "Qt"

    return-object v0
.end method

.method protected abstract loaderClassName()Ljava/lang/String;
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "run"    # Ljava/lang/Runnable;

    .line 96
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 97
    return-void
.end method

.method public startApp(Z)V
    .locals 25
    .param p1, "firstStart"    # Z

    .line 217
    move-object/from16 v1, p0

    const-string v0, "android.app.arguments"

    const-string v2, "android.app.extract_android_style"

    const-string v3, "array"

    const-string v4, "android.app.system_libs_prefix"

    const-string v5, "default"

    const-string v6, "string"

    const-string v7, "Qt"

    :try_start_0
    iget-object v8, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 218
    .local v8, "resources":Landroid/content/res/Resources;
    iget-object v9, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 219
    .local v9, "packageName":Ljava/lang/String;
    const-string v10, "qt_libs"

    invoke-virtual {v8, v10, v3, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 220
    .local v10, "id":I
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lorg/qtproject/qt/android/bindings/QtLoader;->prefferedAbiLibs([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_qtLibs:Ljava/util/ArrayList;

    .line 222
    const-string v11, "use_local_qt_libs"

    invoke-virtual {v8, v11, v6, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    move v10, v11

    .line 223
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 225
    .local v11, "useLocalLibs":I
    const/4 v12, 0x1

    if-ne v11, v12, :cond_17

    .line 226
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v12, "libraryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 228
    .local v13, "libsDir":Ljava/lang/String;
    const/4 v14, 0x0

    .line 230
    .local v14, "bundledLibsDir":Ljava/lang/String;
    const-string v15, "bundle_local_qt_libs"

    invoke-virtual {v8, v15, v6, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move v10, v15

    .line 231
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .local v15, "bundleLocalLibs":I
    move/from16 v16, v10

    .end local v10    # "id":I
    .local v16, "id":I
    const-string v10, " does not exist or is empty."

    move/from16 v17, v11

    .end local v11    # "useLocalLibs":I
    .local v17, "useLocalLibs":I
    const-string v11, "/"

    if-nez v15, :cond_4

    .line 234
    move-object/from16 v18, v4

    .line 236
    .local v18, "systemLibsKey":Ljava/lang/String;
    move-object/from16 v19, v13

    .end local v13    # "libsDir":Ljava/lang/String;
    .local v19, "libsDir":Ljava/lang/String;
    :try_start_1
    iget-object v13, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v13, :cond_0

    iget-object v13, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 237
    invoke-virtual {v13, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 238
    iget-object v13, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "systemLibsPrefix":Ljava/lang/String;
    goto :goto_0

    .line 241
    .end local v4    # "systemLibsPrefix":Ljava/lang/String;
    :cond_0
    const-string v4, "system_libs_prefix"

    invoke-virtual {v8, v4, v6, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 243
    .end local v16    # "id":I
    .local v4, "id":I
    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v16, v4

    move-object v4, v13

    .line 245
    .local v4, "systemLibsPrefix":Ljava/lang/String;
    .restart local v16    # "id":I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 246
    const-string v13, "/system/lib/"

    move-object v4, v13

    .line 247
    const-string v13, "It looks like app deployed using Unbundled deployment. It may be necessary to specify path to directory where Qt libraries are installed using either android.app.system_libs_prefix metadata variable in your AndroidManifest.xml or QT_ANDROID_SYSTEM_LIBS_PATH in your CMakeLists.txt"

    invoke-static {v7, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v13, "Using /system/lib/ as default path"

    invoke-static {v7, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v13, "systemLibraryDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 258
    move-object/from16 v20, v14

    .end local v14    # "bundledLibsDir":Ljava/lang/String;
    .local v20, "bundledLibsDir":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    if-lez v14, :cond_3

    .line 259
    move-object v10, v4

    .line 260
    .end local v19    # "libsDir":Ljava/lang/String;
    .local v10, "libsDir":Ljava/lang/String;
    move-object v14, v4

    move-object v13, v10

    .end local v20    # "bundledLibsDir":Ljava/lang/String;
    .restart local v14    # "bundledLibsDir":Ljava/lang/String;
    goto :goto_1

    .line 257
    .end local v10    # "libsDir":Ljava/lang/String;
    .restart local v19    # "libsDir":Ljava/lang/String;
    :cond_2
    move-object/from16 v20, v14

    .line 262
    .end local v14    # "bundledLibsDir":Ljava/lang/String;
    .restart local v20    # "bundledLibsDir":Ljava/lang/String;
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v13

    .end local v13    # "systemLibraryDir":Ljava/io/File;
    .local v21, "systemLibraryDir":Ljava/io/File;
    const-string v13, "System library directory "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    .line 266
    .end local v4    # "systemLibsPrefix":Ljava/lang/String;
    .end local v18    # "systemLibsKey":Ljava/lang/String;
    .end local v19    # "libsDir":Ljava/lang/String;
    .end local v20    # "bundledLibsDir":Ljava/lang/String;
    .end local v21    # "systemLibraryDir":Ljava/io/File;
    .local v13, "libsDir":Ljava/lang/String;
    .restart local v14    # "bundledLibsDir":Ljava/lang/String;
    :goto_1
    move/from16 v10, v16

    goto :goto_2

    .line 267
    :cond_4
    move-object/from16 v19, v13

    move-object/from16 v20, v14

    .end local v13    # "libsDir":Ljava/lang/String;
    .end local v14    # "bundledLibsDir":Ljava/lang/String;
    .restart local v19    # "libsDir":Ljava/lang/String;
    .restart local v20    # "bundledLibsDir":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "nativeLibraryPrefix":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v13, "nativeLibraryDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v13}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    if-lez v14, :cond_5

    .line 270
    move-object v10, v4

    .line 271
    .end local v19    # "libsDir":Ljava/lang/String;
    .restart local v10    # "libsDir":Ljava/lang/String;
    move-object v14, v4

    move-object v13, v10

    move/from16 v10, v16

    .end local v20    # "bundledLibsDir":Ljava/lang/String;
    .restart local v14    # "bundledLibsDir":Ljava/lang/String;
    goto :goto_2

    .line 273
    .end local v10    # "libsDir":Ljava/lang/String;
    .end local v14    # "bundledLibsDir":Ljava/lang/String;
    .restart local v19    # "libsDir":Ljava/lang/String;
    .restart local v20    # "bundledLibsDir":Ljava/lang/String;
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v13

    .end local v13    # "nativeLibraryDir":Ljava/io/File;
    .local v18, "nativeLibraryDir":Ljava/io/File;
    const-string v13, "Native library directory "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v10, v16

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    .line 279
    .end local v4    # "nativeLibraryPrefix":Ljava/lang/String;
    .end local v16    # "id":I
    .end local v18    # "nativeLibraryDir":Ljava/io/File;
    .end local v19    # "libsDir":Ljava/lang/String;
    .end local v20    # "bundledLibsDir":Ljava/lang/String;
    .local v10, "id":I
    .local v13, "libsDir":Ljava/lang/String;
    .restart local v14    # "bundledLibsDir":Ljava/lang/String;
    :goto_2
    if-eqz v13, :cond_16

    .line 283
    iget-object v4, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_qtLibs:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v10

    .end local v10    # "id":I
    .restart local v16    # "id":I
    const-string v10, "lib"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "libPrefix":Ljava/lang/String;
    iget-object v10, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_qtLibs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v19, v18

    .line 286
    .local v19, "lib":Ljava/lang/String;
    move-object/from16 v18, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v4

    move-object/from16 v4, v19

    .end local v19    # "lib":Ljava/lang/String;
    .local v4, "lib":Ljava/lang/String;
    .local v20, "libPrefix":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v4

    .end local v4    # "lib":Ljava/lang/String;
    .restart local v19    # "lib":Ljava/lang/String;
    const-string v4, ".so"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v18

    move-object/from16 v4, v20

    goto :goto_3

    .line 285
    .end local v19    # "lib":Ljava/lang/String;
    .end local v20    # "libPrefix":Ljava/lang/String;
    .local v4, "libPrefix":Ljava/lang/String;
    :cond_6
    move-object/from16 v20, v4

    .end local v4    # "libPrefix":Ljava/lang/String;
    .restart local v20    # "libPrefix":Ljava/lang/String;
    goto :goto_4

    .line 283
    .end local v16    # "id":I
    .end local v20    # "libPrefix":Ljava/lang/String;
    .restart local v10    # "id":I
    :cond_7
    move/from16 v16, v10

    .line 289
    .end local v10    # "id":I
    .restart local v16    # "id":I
    :goto_4
    const-string v4, "load_local_libs"

    invoke-virtual {v8, v4, v3, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 290
    .end local v16    # "id":I
    .local v3, "id":I
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/qtproject/qt/android/bindings/QtLoader;->prefferedAbiLibs([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 291
    .local v4, "localLibs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v18, v3

    .end local v3    # "id":I
    .local v18, "id":I
    const-string v3, ":"

    if-eqz v16, :cond_a

    :try_start_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v20, v16

    .line 292
    .local v20, "libs":Ljava/lang/String;
    move-object/from16 v16, v4

    move-object/from16 v4, v20

    .end local v20    # "libs":Ljava/lang/String;
    .local v4, "libs":Ljava/lang/String;
    .local v16, "localLibs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v4

    .end local v4    # "libs":Ljava/lang/String;
    .restart local v20    # "libs":Ljava/lang/String;
    array-length v4, v3

    move-object/from16 v21, v10

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v4, :cond_9

    aget-object v19, v3, v10

    move-object/from16 v22, v19

    .line 293
    .local v22, "lib":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_8

    .line 294
    move-object/from16 v23, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v24, v4

    move-object/from16 v4, v22

    .end local v22    # "lib":Ljava/lang/String;
    .local v4, "lib":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 293
    .end local v4    # "lib":Ljava/lang/String;
    .restart local v22    # "lib":Ljava/lang/String;
    :cond_8
    move-object/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v4, v22

    .line 292
    .end local v22    # "lib":Ljava/lang/String;
    :goto_7
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v23

    move/from16 v4, v24

    goto :goto_6

    .line 296
    .end local v20    # "libs":Ljava/lang/String;
    :cond_9
    move-object/from16 v4, v16

    move/from16 v3, v18

    move-object/from16 v10, v21

    goto :goto_5

    .line 297
    .end local v16    # "localLibs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "localLibs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    move-object/from16 v16, v4

    .end local v4    # "localLibs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "localLibs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_b

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\tQT_PLUGIN_PATH="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\tQML_PLUGIN_PATH="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    .line 302
    :cond_b
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 303
    .local v4, "loaderParams":Landroid/os/Bundle;
    const-string v10, "error.code"

    move-object/from16 v20, v13

    const/4 v13, 0x0

    .end local v13    # "libsDir":Ljava/lang/String;
    .local v20, "libsDir":Ljava/lang/String;
    invoke-virtual {v4, v10, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    const-string v10, "dex.path"

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13}, Ljava/lang/String;-><init>()V

    invoke-virtual {v4, v10, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v10, "loader.class.name"

    invoke-virtual/range {p0 .. p0}, Lorg/qtproject/qt/android/bindings/QtLoader;->loaderClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v10, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v10, "static_init_classes"

    invoke-virtual {v8, v10, v6, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 308
    .end local v18    # "id":I
    .local v6, "id":I
    const-string v10, "static.init.classes"

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 309
    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 308
    invoke-virtual {v4, v10, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 311
    const-string v3, "native.libraries"

    invoke-virtual {v4, v3, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/qt-reserved-files/android-style/"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "themePath":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_displayDensity:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 317
    .local v10, "stylePath":Ljava/lang/String;
    move-object v11, v5

    .line 318
    .local v11, "extractOption":Ljava/lang/String;
    iget-object v13, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v18, v3

    .end local v3    # "themePath":Ljava/lang/String;
    .local v18, "themePath":Ljava/lang/String;
    const-string v3, "minimal"

    move/from16 v19, v6

    .end local v6    # "id":I
    .local v19, "id":I
    const-string v6, "full"

    move-object/from16 v21, v8

    .end local v8    # "resources":Landroid/content/res/Resources;
    .local v21, "resources":Landroid/content/res/Resources;
    const-string v8, "none"

    if-eqz v13, :cond_c

    .line 319
    :try_start_3
    iget-object v13, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    .line 320
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid extract_android_style option \""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\", defaulting to \"default\""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    move-object v11, v5

    .line 329
    :cond_c
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 330
    iget-object v2, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 331
    .local v2, "targetSdkVersion":I
    const/16 v5, 0x1c

    if-ge v2, v5, :cond_d

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v13, v5, :cond_d

    .line 332
    const-string v5, "extract_android_style option set to \"none\" when targetSdkVersion is less then 28"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    move-object v11, v8

    .line 337
    .end local v2    # "targetSdkVersion":I
    :cond_d
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 338
    const-string v2, "extract.android.style"

    invoke-virtual {v4, v2, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v2, "extract.android.style.option"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 342
    :cond_e
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\tQT_USE_ANDROID_NATIVE_STYLE=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    .line 345
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\tANDROID_STYLE_PATH="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    .line 347
    const-string v3, "environment.variables"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const/4 v2, 0x0

    .line 350
    .local v2, "appParams":Ljava/lang/String;
    iget-object v3, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->APPLICATION_PARAMETERS:Ljava/lang/String;

    if-eqz v3, :cond_10

    .line 351
    move-object v2, v3

    .line 353
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/qtproject/qt/android/bindings/QtLoader;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 354
    .local v3, "intent":Landroid/content/Intent;
    const/16 v5, 0x9

    if-eqz v3, :cond_12

    .line 355
    const-string v6, "applicationArguments"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 356
    .local v6, "parameters":Ljava/lang/String;
    if-eqz v6, :cond_12

    .line 357
    if-nez v2, :cond_11

    .line 358
    move-object v2, v6

    goto :goto_8

    .line 360
    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 363
    .end local v6    # "parameters":Ljava/lang/String;
    :cond_12
    :goto_8
    iget-object v6, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 364
    iget-object v6, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "parameters":Ljava/lang/String;
    if-nez v2, :cond_13

    .line 366
    move-object v2, v0

    goto :goto_9

    .line 368
    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 371
    .end local v0    # "parameters":Ljava/lang/String;
    :cond_14
    :goto_9
    if-eqz v2, :cond_15

    .line 372
    const-string v0, "application.parameters"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_15
    invoke-direct {v1, v4}, Lorg/qtproject/qt/android/bindings/QtLoader;->loadApplication(Landroid/os/Bundle;)V

    .line 375
    return-void

    .line 280
    .end local v2    # "appParams":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "loaderParams":Landroid/os/Bundle;
    .end local v11    # "extractOption":Ljava/lang/String;
    .end local v16    # "localLibs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "themePath":Ljava/lang/String;
    .end local v19    # "id":I
    .end local v20    # "libsDir":Ljava/lang/String;
    .end local v21    # "resources":Landroid/content/res/Resources;
    .restart local v8    # "resources":Landroid/content/res/Resources;
    .local v10, "id":I
    .restart local v13    # "libsDir":Ljava/lang/String;
    :cond_16
    move-object/from16 v21, v8

    move/from16 v16, v10

    move-object/from16 v20, v13

    .end local v8    # "resources":Landroid/content/res/Resources;
    .end local v10    # "id":I
    .end local v13    # "libsDir":Ljava/lang/String;
    .local v16, "id":I
    .restart local v20    # "libsDir":Ljava/lang/String;
    .restart local v21    # "resources":Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/Exception;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "firstStart":Z
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 225
    .end local v12    # "libraryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "bundledLibsDir":Ljava/lang/String;
    .end local v15    # "bundleLocalLibs":I
    .end local v16    # "id":I
    .end local v17    # "useLocalLibs":I
    .end local v20    # "libsDir":Ljava/lang/String;
    .end local v21    # "resources":Landroid/content/res/Resources;
    .restart local v8    # "resources":Landroid/content/res/Resources;
    .restart local v10    # "id":I
    .local v11, "useLocalLibs":I
    .restart local p1    # "firstStart":Z
    :cond_17
    move-object/from16 v21, v8

    move/from16 v17, v11

    .line 379
    .end local v8    # "resources":Landroid/content/res/Resources;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "id":I
    .end local v11    # "useLocalLibs":I
    goto :goto_a

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Can\'t create main activity"

    invoke-static {v7, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    return-void
.end method
