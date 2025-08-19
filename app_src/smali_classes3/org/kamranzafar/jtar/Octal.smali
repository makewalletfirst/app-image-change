.class public Lorg/kamranzafar/jtar/Octal;
.super Ljava/lang/Object;
.source "Octal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCheckSumOctalBytes(J[BII)I
    .locals 2
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 115
    invoke-static {p0, p1, p2, p3, p4}, Lorg/kamranzafar/jtar/Octal;->getOctalBytes(J[BII)I

    .line 116
    add-int v0, p3, p4

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x20

    aput-byte v1, p2, v0

    .line 117
    add-int v0, p3, p4

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    aput-byte v1, p2, v0

    .line 118
    add-int v0, p3, p4

    return v0
.end method

.method public static getLongOctalBytes(J[BII)I
    .locals 3
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 135
    add-int/lit8 v0, p4, 0x1

    new-array v0, v0, [B

    .line 136
    .local v0, "temp":[B
    add-int/lit8 v1, p4, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2, v1}, Lorg/kamranzafar/jtar/Octal;->getOctalBytes(J[BII)I

    .line 137
    invoke-static {v0, v2, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    add-int v1, p3, p4

    return v1
.end method

.method public static getOctalBytes(J[BII)I
    .locals 10
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 78
    add-int/lit8 v0, p4, -0x1

    .line 80
    .local v0, "idx":I
    add-int v1, p3, v0

    const/4 v2, 0x0

    aput-byte v2, p2, v1

    .line 81
    add-int/lit8 v0, v0, -0x1

    .line 82
    add-int v1, p3, v0

    const/16 v2, 0x20

    aput-byte v2, p2, v1

    .line 83
    add-int/lit8 v0, v0, -0x1

    .line 85
    const-wide/16 v3, 0x0

    cmp-long v1, p0, v3

    const/16 v5, 0x30

    if-nez v1, :cond_0

    .line 86
    add-int v1, p3, v0

    aput-byte v5, p2, v1

    .line 87
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 89
    :cond_0
    move-wide v6, p0

    .local v6, "val":J
    :goto_0
    if-ltz v0, :cond_1

    cmp-long v1, v6, v3

    if-lez v1, :cond_1

    .line 90
    add-int v1, p3, v0

    const-wide/16 v8, 0x7

    and-long/2addr v8, v6

    long-to-int v8, v8

    int-to-byte v8, v8

    add-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, p2, v1

    .line 91
    const/4 v1, 0x3

    shr-long/2addr v6, v1

    .line 89
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 95
    .end local v6    # "val":J
    :cond_1
    :goto_1
    if-ltz v0, :cond_2

    .line 96
    add-int v1, p3, v0

    aput-byte v2, p2, v1

    .line 95
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 99
    :cond_2
    add-int v1, p3, p4

    return v1
.end method

.method public static parseOctal([BII)J
    .locals 9
    .param p0, "header"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 40
    const-wide/16 v0, 0x0

    .line 41
    .local v0, "result":J
    const/4 v2, 0x1

    .line 43
    .local v2, "stillPadding":Z
    add-int v3, p1, p2

    .line 44
    .local v3, "end":I
    move v4, p1

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 45
    aget-byte v5, p0, v4

    if-nez v5, :cond_0

    .line 46
    goto :goto_2

    .line 48
    :cond_0
    aget-byte v5, p0, v4

    const/16 v6, 0x30

    const/16 v7, 0x20

    if-eq v5, v7, :cond_1

    aget-byte v5, p0, v4

    if-ne v5, v6, :cond_3

    .line 49
    :cond_1
    if-eqz v2, :cond_2

    .line 50
    goto :goto_1

    .line 52
    :cond_2
    aget-byte v5, p0, v4

    if-ne v5, v7, :cond_3

    .line 53
    goto :goto_2

    .line 56
    :cond_3
    const/4 v2, 0x0

    .line 58
    const/4 v5, 0x3

    shl-long v7, v0, v5

    aget-byte v5, p0, v4

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v7, v5

    move-wide v0, v7

    .line 44
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 61
    .end local v4    # "i":I
    :cond_4
    :goto_2
    return-wide v0
.end method
