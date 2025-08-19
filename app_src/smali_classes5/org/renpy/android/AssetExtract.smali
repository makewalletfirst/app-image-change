.class public Lorg/renpy/android/AssetExtract;
.super Ljava/lang/Object;
.source "AssetExtract.java"


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/renpy/android/AssetExtract;->mAssetManager:Landroid/content/res/AssetManager;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lorg/renpy/android/AssetExtract;->mAssetManager:Landroid/content/res/AssetManager;

    .line 30
    return-void
.end method


# virtual methods
.method public extractTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "asset"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;

    .line 34
    const-string v0, "python"

    const/high16 v1, 0x100000

    new-array v1, v1, [B

    .line 36
    .local v1, "buf":[B
    const/4 v2, 0x0

    .line 37
    .local v2, "assetStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 40
    .local v3, "tis":Lorg/kamranzafar/jtar/TarInputStream;
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "private"

    if-ne p3, v5, :cond_0

    .line 41
    iget-object v5, p0, Lorg/renpy/android/AssetExtract;->mAssetManager:Landroid/content/res/AssetManager;

    const/4 v6, 0x2

    invoke-virtual {v5, p1, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v5

    goto :goto_0

    .line 42
    :cond_0
    const-string v5, "pybundle"

    if-ne p3, v5, :cond_1

    .line 43
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 46
    :cond_1
    :goto_0
    new-instance v5, Lorg/kamranzafar/jtar/TarInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/util/zip/GZIPInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    const/16 v9, 0x2000

    invoke-direct {v8, v2, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v7, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v5, v6}, Lorg/kamranzafar/jtar/TarInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    move-object v3, v5

    .line 50
    nop

    .line 53
    :goto_1
    const/4 v5, 0x0

    .line 56
    .local v5, "entry":Lorg/kamranzafar/jtar/TarEntry;
    :try_start_1
    invoke-virtual {v3}, Lorg/kamranzafar/jtar/TarInputStream;->getNextEntry()Lorg/kamranzafar/jtar/TarEntry;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-object v5, v6

    .line 60
    nop

    .line 62
    if-nez v5, :cond_2

    .line 63
    nop

    .line 109
    .end local v5    # "entry":Lorg/kamranzafar/jtar/TarEntry;
    :try_start_2
    invoke-virtual {v3}, Lorg/kamranzafar/jtar/TarInputStream;->close()V

    .line 110
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    goto :goto_2

    .line 111
    :catch_0
    move-exception v0

    .line 115
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 66
    .restart local v5    # "entry":Lorg/kamranzafar/jtar/TarEntry;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extracting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/kamranzafar/jtar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {v5}, Lorg/kamranzafar/jtar/TarEntry;->isDirectory()Z

    move-result v6

    const-string v7, "/"

    if-eqz v6, :cond_3

    .line 71
    :try_start_3
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/kamranzafar/jtar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 72
    goto :goto_1

    :catch_1
    move-exception v6

    .line 74
    goto :goto_1

    .line 77
    :cond_3
    const/4 v6, 0x0

    .line 78
    .local v6, "out":Ljava/io/OutputStream;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/kamranzafar/jtar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, "path":Ljava/lang/String;
    :try_start_4
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v10, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v6, v8

    goto :goto_3

    .line 82
    :catch_2
    move-exception v8

    goto :goto_3

    :catch_3
    move-exception v8

    :goto_3
    nop

    .line 84
    if-nez v6, :cond_4

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "could not open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v4

    .line 91
    :cond_4
    :goto_4
    :try_start_5
    invoke-virtual {v3, v1}, Lorg/kamranzafar/jtar/TarInputStream;->read([B)I

    move-result v8

    .line 93
    .local v8, "len":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_5

    .line 94
    nop

    .line 100
    .end local v8    # "len":I
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 101
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 105
    nop

    .line 106
    .end local v5    # "entry":Lorg/kamranzafar/jtar/TarEntry;
    .end local v6    # "out":Ljava/io/OutputStream;
    .end local v7    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 97
    .restart local v5    # "entry":Lorg/kamranzafar/jtar/TarEntry;
    .restart local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "len":I
    :cond_5
    invoke-virtual {v6, v1, v4, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 98
    .end local v8    # "len":I
    goto :goto_4

    .line 102
    :catch_4
    move-exception v8

    .line 103
    .local v8, "e":Ljava/io/IOException;
    const-string v9, "extracting zip"

    invoke-static {v0, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    return v4

    .line 57
    .end local v6    # "out":Ljava/io/OutputStream;
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 58
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "extracting tar"

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    return v4

    .line 47
    .end local v5    # "entry":Lorg/kamranzafar/jtar/TarEntry;
    .end local v6    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 48
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "opening up extract tar"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    return v4
.end method
