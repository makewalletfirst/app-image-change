.class public Lorg/kamranzafar/jtar/TarInputStream;
.super Ljava/io/FilterInputStream;
.source "TarInputStream.java"


# static fields
.field private static final SKIP_BUFFER_SIZE:I = 0x800


# instance fields
.field private bytesRead:J

.field private currentEntry:Lorg/kamranzafar/jtar/TarEntry;

.field private currentFileSize:J

.field private defaultSkip:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 37
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->defaultSkip:Z

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    .line 39
    iput-wide v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->bytesRead:J

    .line 40
    return-void
.end method


# virtual methods
.method protected closeCurrentEntry()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    if-eqz v0, :cond_3

    .line 168
    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x0

    if-lez v0, :cond_2

    .line 170
    const-wide/16 v3, 0x0

    .line 171
    .local v3, "bs":J
    :goto_0
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v5

    iget-wide v7, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    sub-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 172
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v5

    iget-wide v7, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    sub-long/2addr v5, v7

    sub-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lorg/kamranzafar/jtar/TarInputStream;->skip(J)J

    move-result-wide v5

    .line 174
    .local v5, "res":J
    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    sub-long/2addr v7, v9

    cmp-long v0, v7, v1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Possible tar file corruption"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    :goto_1
    add-long/2addr v3, v5

    .line 180
    .end local v5    # "res":J
    goto :goto_0

    .line 183
    .end local v3    # "bs":J
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    .line 184
    iput-wide v1, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    .line 185
    invoke-virtual {p0}, Lorg/kamranzafar/jtar/TarInputStream;->skipPad()V

    .line 187
    :cond_3
    return-void
.end method

.method public getCurrentOffset()J
    .locals 2

    .line 158
    iget-wide v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->bytesRead:J

    return-wide v0
.end method

.method public getNextEntry()Lorg/kamranzafar/jtar/TarEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lorg/kamranzafar/jtar/TarInputStream;->closeCurrentEntry()V

    .line 121
    const/16 v0, 0x200

    new-array v1, v0, [B

    .line 122
    .local v1, "header":[B
    new-array v2, v0, [B

    .line 123
    .local v2, "theader":[B
    const/4 v3, 0x0

    .line 126
    .local v3, "tr":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_1

    .line 127
    rsub-int v5, v3, 0x200

    invoke-virtual {p0, v2, v4, v5}, Lorg/kamranzafar/jtar/TarInputStream;->read([BII)I

    move-result v5

    .line 129
    .local v5, "res":I
    if-gez v5, :cond_0

    .line 130
    goto :goto_1

    .line 133
    :cond_0
    invoke-static {v2, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    add-int/2addr v3, v5

    .line 135
    .end local v5    # "res":I
    goto :goto_0

    .line 138
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 139
    .local v0, "eof":Z
    array-length v5, v1

    :goto_2
    if-ge v4, v5, :cond_3

    aget-byte v6, v1, v4

    .line 140
    .local v6, "b":B
    if-eqz v6, :cond_2

    .line 141
    const/4 v0, 0x0

    .line 142
    goto :goto_3

    .line 139
    .end local v6    # "b":B
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 146
    :cond_3
    :goto_3
    if-nez v0, :cond_4

    .line 147
    new-instance v4, Lorg/kamranzafar/jtar/TarEntry;

    invoke-direct {v4, v1}, Lorg/kamranzafar/jtar/TarEntry;-><init>([B)V

    iput-object v4, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    .line 150
    :cond_4
    iget-object v4, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    return-object v4
.end method

.method public isDefaultSkip()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->defaultSkip:Z

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 53
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 73
    .local v1, "buf":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/kamranzafar/jtar/TarInputStream;->read([BII)I

    move-result v0

    .line 75
    .local v0, "res":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 76
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    return v2

    .line 79
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 92
    iget-wide v2, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 93
    return v1

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    sub-long/2addr v2, v4

    int-to-long v4, p3

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 95
    iget-object v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    invoke-virtual {v0}, Lorg/kamranzafar/jtar/TarEntry;->getSize()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    sub-long/2addr v2, v4

    long-to-int p3, v2

    .line 99
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 101
    .local v0, "br":I
    if-eq v0, v1, :cond_3

    .line 102
    iget-object v1, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentEntry:Lorg/kamranzafar/jtar/TarEntry;

    if-eqz v1, :cond_2

    .line 103
    iget-wide v1, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/kamranzafar/jtar/TarInputStream;->currentFileSize:J

    .line 106
    :cond_2
    iget-wide v1, p0, Lorg/kamranzafar/jtar/TarInputStream;->bytesRead:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/kamranzafar/jtar/TarInputStream;->bytesRead:J

    .line 109
    :cond_3
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 61
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local p0    # "this":Lorg/kamranzafar/jtar/TarInputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultSkip(Z)V
    .locals 0
    .param p1, "defaultSkip"    # Z

    .line 247
    iput-boolean p1, p0, Lorg/kamranzafar/jtar/TarInputStream;->defaultSkip:Z

    .line 248
    return-void
.end method

.method public skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-boolean v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->defaultSkip:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 219
    .local v0, "bs":J
    iget-wide v2, p0, Lorg/kamranzafar/jtar/TarInputStream;->bytesRead:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/kamranzafar/jtar/TarInputStream;->bytesRead:J

    .line 221
    return-wide v0

    .line 224
    .end local v0    # "bs":J
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 225
    return-wide v0

    .line 228
    :cond_1
    move-wide v2, p1

    .line 229
    .local v2, "left":J
    const/16 v4, 0x800

    new-array v4, v4, [B

    .line 231
    .local v4, "sBuff":[B
    :goto_0
    cmp-long v5, v2, v0

    if-lez v5, :cond_4

    .line 232
    const/4 v5, 0x0

    const-wide/16 v6, 0x800

    cmp-long v8, v2, v6

    if-gez v8, :cond_2

    move-wide v6, v2

    :cond_2
    long-to-int v6, v6

    invoke-virtual {p0, v4, v5, v6}, Lorg/kamranzafar/jtar/TarInputStream;->read([BII)I

    move-result v5

    .line 233
    .local v5, "res":I
    if-gez v5, :cond_3

    .line 234
    goto :goto_1

    .line 236
    :cond_3
    int-to-long v6, v5

    sub-long/2addr v2, v6

    .line 237
    .end local v5    # "res":I
    goto :goto_0

    .line 239
    :cond_4
    :goto_1
    sub-long v0, p1, v2

    return-wide v0
.end method

.method protected skipPad()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-wide v0, p0, Lorg/kamranzafar/jtar/TarInputStream;->bytesRead:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 196
    const-wide/16 v2, 0x200

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 198
    .local v0, "extra":I
    if-lez v0, :cond_0

    .line 199
    const-wide/16 v1, 0x0

    .line 200
    .local v1, "bs":J
    :goto_0
    rsub-int v3, v0, 0x200

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 201
    rsub-int v3, v0, 0x200

    int-to-long v3, v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Lorg/kamranzafar/jtar/TarInputStream;->skip(J)J

    move-result-wide v3

    .line 202
    .local v3, "res":J
    add-long/2addr v1, v3

    .line 203
    .end local v3    # "res":J
    goto :goto_0

    .line 206
    .end local v0    # "extra":I
    .end local v1    # "bs":J
    :cond_0
    return-void
.end method
