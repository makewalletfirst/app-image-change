.class public Lorg/kamranzafar/jtar/TarUtils;
.super Ljava/lang/Object;
.source "TarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateTarSize(Ljava/io/File;)J
    .locals 4
    .param p0, "path"    # Ljava/io/File;

    .line 34
    invoke-static {p0}, Lorg/kamranzafar/jtar/TarUtils;->tarSize(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static entrySize(J)J
    .locals 8
    .param p0, "fileSize"    # J

    .line 63
    const-wide/16 v0, 0x0

    .line 64
    .local v0, "size":J
    const-wide/16 v2, 0x200

    add-long/2addr v0, v2

    .line 65
    add-long/2addr v0, p0

    .line 67
    rem-long v4, v0, v2

    .line 69
    .local v4, "extra":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 70
    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 73
    :cond_0
    return-wide v0
.end method

.method private static tarSize(Ljava/io/File;)J
    .locals 8
    .param p0, "dir"    # Ljava/io/File;

    .line 38
    const-wide/16 v0, 0x0

    .line 40
    .local v0, "size":J
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/kamranzafar/jtar/TarUtils;->entrySize(J)J

    move-result-wide v2

    return-wide v2

    .line 43
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 45
    .local v2, "subFiles":[Ljava/io/File;
    if-eqz v2, :cond_3

    array-length v3, v2

    if-lez v3, :cond_3

    .line 46
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 47
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 48
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/kamranzafar/jtar/TarUtils;->entrySize(J)J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_1

    .line 50
    :cond_1
    invoke-static {v5}, Lorg/kamranzafar/jtar/TarUtils;->tarSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 46
    .end local v5    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 59
    .end local v2    # "subFiles":[Ljava/io/File;
    :cond_2
    return-wide v0

    .line 55
    .restart local v2    # "subFiles":[Ljava/io/File;
    :cond_3
    const-wide/16 v3, 0x200

    return-wide v3
.end method

.method public static trim(Ljava/lang/String;C)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "c"    # C

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "tmp":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-eq v2, p1, :cond_0

    .line 80
    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_3

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-eq v2, p1, :cond_2

    .line 88
    goto :goto_3

    .line 90
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 86
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 94
    .end local v1    # "i":I
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
