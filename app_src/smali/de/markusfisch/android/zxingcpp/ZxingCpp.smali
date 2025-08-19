.class public final Lde/markusfisch/android/zxingcpp/ZxingCpp;
.super Ljava/lang/Object;
.source "ZxingCpp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;,
        Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;,
        Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;,
        Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;,
        Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;,
        Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;,
        Lde/markusfisch/android/zxingcpp/ZxingCpp$ErrorType;,
        Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;,
        Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;,
        Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;,
        Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;,
        Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u000c456789:;<=>?B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J]\u0010\u0003\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u00052\u0006\u0010\u0006\u001a\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\n\u00a2\u0006\u0002\u0010\u0010J5\u0010\u0011\u001a\u00020\u0012\"\u0004\u0008\u0000\u0010\u00052\u0006\u0010\u0006\u001a\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\n\u00a2\u0006\u0002\u0010\u0013J?\u0010\u0014\u001a\u00020\u0012\"\u0004\u0008\u0000\u0010\u00052\u0006\u0010\u0006\u001a\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0002\u0010\u0017JA\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0007\u001a\u00020\u00122\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\nH\u0082 JA\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00122\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\nH\u0082 J2\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020#2\u0008\u0008\u0002\u0010$\u001a\u00020\n2\u0008\u0008\u0002\u0010%\u001a\u00020&JI\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020\n2\u0006\u0010(\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010$\u001a\u00020\n2\u0006\u0010%\u001a\u00020&H\u0086 J:\u0010)\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f2\u0006\u0010*\u001a\u00020\u001b2\u0006\u0010+\u001a\u00020\n2\u0006\u0010\"\u001a\u00020#2\u0008\u0008\u0002\u0010$\u001a\u00020\n2\u0008\u0008\u0002\u0010%\u001a\u00020&JQ\u0010)\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f2\u0006\u0010*\u001a\u00020\u001b2\u0006\u0010+\u001a\u00020\n2\u0006\u0010\'\u001a\u00020\n2\u0006\u0010(\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010$\u001a\u00020\n2\u0006\u0010%\u001a\u00020&H\u0086 J:\u0010,\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f2\u0006\u0010-\u001a\u00020.2\u0006\u0010+\u001a\u00020\n2\u0006\u0010\"\u001a\u00020#2\u0008\u0008\u0002\u0010$\u001a\u00020\n2\u0008\u0008\u0002\u0010%\u001a\u00020&JQ\u0010,\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f2\u0006\u0010-\u001a\u00020.2\u0006\u0010+\u001a\u00020\n2\u0006\u0010\'\u001a\u00020\n2\u0006\u0010(\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010$\u001a\u00020\n2\u0006\u0010%\u001a\u00020&H\u0086 JE\u0010/\u001a\u00020\u0019\"\u0004\u0008\u0000\u0010\u0005*\u0002H\u00052\u0006\u0010\u0007\u001a\u00020\u00122\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\n\u00a2\u0006\u0002\u00100J\u001e\u00101\u001a\u00020\u0004*\u00020\u00192\u0008\u0008\u0002\u0010\u000e\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\nJ\n\u00102\u001a\u00020\u0012*\u00020\u0019J\u0014\u00103\u001a\u00020\u0012*\u00020\u00192\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016\u00a8\u0006@"
    }
    d2 = {
        "Lde/markusfisch/android/zxingcpp/ZxingCpp;",
        "",
        "()V",
        "encodeAsBitmap",
        "Landroid/graphics/Bitmap;",
        "T",
        "content",
        "format",
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;",
        "width",
        "",
        "height",
        "margin",
        "ecLevel",
        "setColor",
        "unsetColor",
        "(Ljava/lang/Object;Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;IIIIII)Landroid/graphics/Bitmap;",
        "encodeAsSvg",
        "",
        "(Ljava/lang/Object;Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;II)Ljava/lang/String;",
        "encodeAsText",
        "inverted",
        "",
        "(Ljava/lang/Object;Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;IIZ)Ljava/lang/String;",
        "encodeByteArray",
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;",
        "bytes",
        "",
        "encodeString",
        "text",
        "readBitmap",
        "",
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;",
        "bitmap",
        "cropRect",
        "Landroid/graphics/Rect;",
        "rotation",
        "options",
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;",
        "left",
        "top",
        "readByteArray",
        "yuvData",
        "rowStride",
        "readYBuffer",
        "yBuffer",
        "Ljava/nio/ByteBuffer;",
        "encode",
        "(Ljava/lang/Object;Ljava/lang/String;IIII)Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;",
        "toBitmap",
        "toSvg",
        "toText",
        "BarcodeFormat",
        "Binarizer",
        "BitMatrix",
        "ContentType",
        "EanAddOnSymbol",
        "Error",
        "ErrorType",
        "GTIN",
        "Position",
        "ReaderOptions",
        "Result",
        "TextMode",
        "zxingcpp_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lde/markusfisch/android/zxingcpp/ZxingCpp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lde/markusfisch/android/zxingcpp/ZxingCpp;

    invoke-direct {v0}, Lde/markusfisch/android/zxingcpp/ZxingCpp;-><init>()V

    sput-object v0, Lde/markusfisch/android/zxingcpp/ZxingCpp;->INSTANCE:Lde/markusfisch/android/zxingcpp/ZxingCpp;

    .line 349
    nop

    .line 350
    const-string v0, "zxingcpp_android"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic encode$default(Lde/markusfisch/android/zxingcpp/ZxingCpp;Ljava/lang/Object;Ljava/lang/String;IIIIILjava/lang/Object;)Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;
    .locals 9

    .line 311
    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 313
    move v5, v1

    goto :goto_0

    .line 311
    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_1

    .line 314
    move v6, v1

    goto :goto_1

    .line 311
    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x8

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 315
    move v7, v1

    goto :goto_2

    .line 311
    :cond_2
    move v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_3

    .line 316
    move v8, v1

    goto :goto_3

    .line 311
    :cond_3
    move v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->encode(Ljava/lang/Object;Ljava/lang/String;IIII)Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic encodeAsBitmap$default(Lde/markusfisch/android/zxingcpp/ZxingCpp;Ljava/lang/Object;Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;IIIIIIILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 12

    .line 273
    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 276
    move v6, v2

    goto :goto_0

    .line 273
    :cond_0
    move v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 277
    move v7, v2

    goto :goto_1

    .line 273
    :cond_1
    move/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 278
    move v8, v2

    goto :goto_2

    .line 273
    :cond_2
    move/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 279
    move v9, v2

    goto :goto_3

    .line 273
    :cond_3
    move/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 280
    const/high16 v1, -0x1000000

    move v10, v1

    goto :goto_4

    .line 273
    :cond_4
    move/from16 v10, p7

    :goto_4
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    .line 281
    move v11, v2

    goto :goto_5

    .line 273
    :cond_5
    move/from16 v11, p8

    :goto_5
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v11}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->encodeAsBitmap(Ljava/lang/Object;Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;IIIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic encodeAsSvg$default(Lde/markusfisch/android/zxingcpp/ZxingCpp;Ljava/lang/Object;Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;IIILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 288
    and-int/lit8 p6, p5, 0x4

    const/4 v0, -0x1

    if-eqz p6, :cond_0

    .line 291
    move p3, v0

    .line 288
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 292
    move p4, v0

    .line 288
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->encodeAsSvg(Ljava/lang/Object;Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic encodeAsText$default(Lde/markusfisch/android/zxingcpp/ZxingCpp;Ljava/lang/Object;Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;IIZILjava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 299
    and-int/lit8 p7, p6, 0x4

    const/4 v0, -0x1

    if-eqz p7, :cond_0

    .line 302
    move v4, v0

    goto :goto_0

    .line 299
    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 303
    move v5, v0

    goto :goto_1

    .line 299
    :cond_1
    move v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 304
    const/4 p5, 0x0

    move v6, p5

    goto :goto_2

    .line 299
    :cond_2
    move v6, p5

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->encodeAsText(Ljava/lang/Object;Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final native encodeByteArray([BLjava/lang/String;IIII)Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;
.end method

.method static synthetic encodeByteArray$default(Lde/markusfisch/android/zxingcpp/ZxingCpp;[BLjava/lang/String;IIIIILjava/lang/Object;)Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;
    .locals 9

    .line 340
    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 343
    move v5, v1

    goto :goto_0

    .line 340
    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    .line 344
    move v6, v1

    goto :goto_1

    .line 340
    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 345
    move v7, v1

    goto :goto_2

    .line 340
    :cond_2
    move v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    .line 346
    move v8, v1

    goto :goto_3

    .line 340
    :cond_3
    move v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->encodeByteArray([BLjava/lang/String;IIII)Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method private final native encodeString(Ljava/lang/String;Ljava/lang/String;IIII)Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;
.end method

.method static synthetic encodeString$default(Lde/markusfisch/android/zxingcpp/ZxingCpp;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/Object;)Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;
    .locals 9

    .line 331
    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 334
    move v5, v1

    goto :goto_0

    .line 331
    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    .line 335
    move v6, v1

    goto :goto_1

    .line 331
    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 336
    move v7, v1

    goto :goto_2

    .line 331
    :cond_2
    move v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    .line 337
    move v8, v1

    goto :goto_3

    .line 331
    :cond_3
    move v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->encodeString(Ljava/lang/String;Ljava/lang/String;IIII)Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic readBitmap$default(Lde/markusfisch/android/zxingcpp/ZxingCpp;Landroid/graphics/Bitmap;Landroid/graphics/Rect;ILde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;ILjava/lang/Object;)Ljava/util/List;
    .locals 23

    .line 177
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x0

    goto :goto_0

    .line 177
    :cond_0
    move/from16 v0, p3

    :goto_0
    and-int/lit8 v1, p5, 0x8

    if-eqz v1, :cond_1

    .line 181
    new-instance v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;

    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v21, 0x3ffff

    const/16 v22, 0x0

    invoke-direct/range {v2 .. v22}, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;-><init>(Ljava/util/Set;ZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;IIIIZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    .line 177
    :cond_1
    move-object/from16 v1, p4

    :goto_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {v2, v3, v4, v0, v1}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->readBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ILde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic readByteArray$default(Lde/markusfisch/android/zxingcpp/ZxingCpp;[BILandroid/graphics/Rect;ILde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;ILjava/lang/Object;)Ljava/util/List;
    .locals 27

    .line 153
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    .line 153
    :cond_0
    move/from16 v5, p4

    :goto_0
    and-int/lit8 v0, p6, 0x10

    if-eqz v0, :cond_1

    .line 158
    new-instance v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v25, 0x3ffff

    const/16 v26, 0x0

    invoke-direct/range {v6 .. v26}, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;-><init>(Ljava/util/Set;ZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;IIIIZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    .line 153
    :cond_1
    move-object/from16 v6, p5

    :goto_1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->readByteArray([BILandroid/graphics/Rect;ILde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic readYBuffer$default(Lde/markusfisch/android/zxingcpp/ZxingCpp;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;ILde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;ILjava/lang/Object;)Ljava/util/List;
    .locals 27

    .line 129
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    .line 129
    :cond_0
    move/from16 v5, p4

    :goto_0
    and-int/lit8 v0, p6, 0x10

    if-eqz v0, :cond_1

    .line 134
    new-instance v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v25, 0x3ffff

    const/16 v26, 0x0

    invoke-direct/range {v6 .. v26}, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;-><init>(Ljava/util/Set;ZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;IIIIZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    .line 129
    :cond_1
    move-object/from16 v6, p5

    :goto_1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->readYBuffer(Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;ILde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic toBitmap$default(Lde/markusfisch/android/zxingcpp/ZxingCpp;Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;IIILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    .line 206
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 207
    const/high16 p2, -0x1000000

    .line 206
    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 208
    const/4 p3, -0x1

    .line 206
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->toBitmap(Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toText$default(Lde/markusfisch/android/zxingcpp/ZxingCpp;Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 246
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 247
    const/4 p2, 0x0

    .line 246
    :cond_0
    invoke-virtual {p0, p1, p2}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->toText(Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final toText$toInt(Z)I
    .locals 0
    .param p0, "$this$toText_u24toInt"    # Z

    .line 250
    return p0
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/String;IIII)Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;
    .locals 8
    .param p1, "$this$encode"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "margin"    # I
    .param p6, "ecLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "IIII)",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;"
        }
    .end annotation

    const-string v0, "format"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    nop

    .line 318
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 319
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 318
    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->encodeString(Ljava/lang/String;Ljava/lang/String;IIII)Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 323
    move-object v2, p1

    check-cast v2, [B

    .line 322
    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->encodeByteArray([BLjava/lang/String;IIII)Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;

    move-result-object v0

    .line 329
    :goto_0
    return-object v0

    .line 326
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 327
    nop

    .line 326
    const-string v1, "encode() is not implemented for this type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final encodeAsBitmap(Ljava/lang/Object;Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;IIIIII)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "content"    # Ljava/lang/Object;
    .param p2, "format"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "margin"    # I
    .param p6, "ecLevel"    # I
    .param p7, "setColor"    # I
    .param p8, "unsetColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;",
            "IIIIII)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const-string v0, "format"

    move-object v1, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    nop

    .line 282
    nop

    .line 283
    invoke-virtual {p2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v4

    .line 284
    nop

    .line 285
    nop

    .line 282
    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->encode(Ljava/lang/Object;Ljava/lang/String;IIII)Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;

    move-result-object v0

    .line 286
    move/from16 v3, p7

    move/from16 v4, p8

    invoke-virtual {p0, v0, v3, v4}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->toBitmap(Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final encodeAsSvg(Ljava/lang/Object;Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;II)Ljava/lang/String;
    .locals 8
    .param p1, "content"    # Ljava/lang/Object;
    .param p2, "format"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;
    .param p3, "margin"    # I
    .param p4, "ecLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;",
            "II)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "format"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    nop

    .line 293
    nop

    .line 294
    invoke-virtual {p2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v3

    .line 295
    nop

    .line 296
    nop

    .line 293
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->encode(Ljava/lang/Object;Ljava/lang/String;IIII)Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;

    move-result-object v0

    .line 297
    invoke-virtual {p0, v0}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->toSvg(Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final encodeAsText(Ljava/lang/Object;Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;IIZ)Ljava/lang/String;
    .locals 8
    .param p1, "content"    # Ljava/lang/Object;
    .param p2, "format"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;
    .param p3, "margin"    # I
    .param p4, "ecLevel"    # I
    .param p5, "inverted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;",
            "IIZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "format"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    nop

    .line 305
    nop

    .line 306
    invoke-virtual {p2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v3

    .line 307
    nop

    .line 308
    nop

    .line 305
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->encode(Ljava/lang/Object;Ljava/lang/String;IIII)Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;

    move-result-object v0

    .line 309
    invoke-virtual {p0, v0, p5}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->toText(Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final native readBitmap(Landroid/graphics/Bitmap;IIIIILde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "IIIII",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;",
            ")",
            "Ljava/util/List<",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;",
            ">;"
        }
    .end annotation
.end method

.method public final readBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ILde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;)Ljava/util/List;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "cropRect"    # Landroid/graphics/Rect;
    .param p3, "rotation"    # I
    .param p4, "options"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Rect;",
            "I",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;",
            ")",
            "Ljava/util/List<",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;",
            ">;"
        }
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cropRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    nop

    .line 183
    nop

    .line 184
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 185
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 186
    nop

    .line 187
    nop

    .line 182
    move-object v1, p0

    move-object v2, p1

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->readBitmap(Landroid/graphics/Bitmap;IIIIILde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;)Ljava/util/List;

    move-result-object v0

    .line 188
    return-object v0
.end method

.method public final native readByteArray([BIIIIIILde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIIIII",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;",
            ")",
            "Ljava/util/List<",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;",
            ">;"
        }
    .end annotation
.end method

.method public final readByteArray([BILandroid/graphics/Rect;ILde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;)Ljava/util/List;
    .locals 10
    .param p1, "yuvData"    # [B
    .param p2, "rowStride"    # I
    .param p3, "cropRect"    # Landroid/graphics/Rect;
    .param p4, "rotation"    # I
    .param p5, "options"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Landroid/graphics/Rect;",
            "I",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;",
            ")",
            "Ljava/util/List<",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;",
            ">;"
        }
    .end annotation

    const-string v0, "yuvData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cropRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    nop

    .line 160
    nop

    .line 161
    nop

    .line 162
    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget v5, p3, Landroid/graphics/Rect;->top:I

    .line 163
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 164
    nop

    .line 165
    nop

    .line 159
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v8, p4

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->readByteArray([BIIIIIILde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;)Ljava/util/List;

    move-result-object v0

    .line 166
    return-object v0
.end method

.method public final native readYBuffer(Ljava/nio/ByteBuffer;IIIIIILde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "IIIIII",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;",
            ")",
            "Ljava/util/List<",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;",
            ">;"
        }
    .end annotation
.end method

.method public final readYBuffer(Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;ILde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;)Ljava/util/List;
    .locals 10
    .param p1, "yBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "rowStride"    # I
    .param p3, "cropRect"    # Landroid/graphics/Rect;
    .param p4, "rotation"    # I
    .param p5, "options"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Landroid/graphics/Rect;",
            "I",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;",
            ")",
            "Ljava/util/List<",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;",
            ">;"
        }
    .end annotation

    const-string v0, "yBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cropRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    nop

    .line 136
    nop

    .line 137
    nop

    .line 138
    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget v5, p3, Landroid/graphics/Rect;->top:I

    .line 139
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 140
    nop

    .line 141
    nop

    .line 135
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v8, p4

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->readYBuffer(Ljava/nio/ByteBuffer;IIIIIILde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;)Ljava/util/List;

    move-result-object v0

    .line 142
    return-object v0
.end method

.method public final toBitmap(Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "$this$toBitmap"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;
    .param p2, "setColor"    # I
    .param p3, "unsetColor"    # I

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    .line 211
    .local v0, "pixels":[I
    const/4 v1, 0x0

    .line 212
    .local v1, "offset":I
    const/4 v2, 0x0

    .local v2, "y":I
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getHeight()I

    move-result v3

    move v9, v1

    .end local v1    # "offset":I
    .local v9, "offset":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 213
    const/4 v1, 0x0

    .local v1, "x":I
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getWidth()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_1

    .line 214
    add-int v5, v9, v1

    invoke-virtual {p1, v1, v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 215
    move v6, p2

    goto :goto_2

    .line 217
    :cond_0
    move v6, p3

    :goto_2
    aput v6, v0, v5

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    .end local v1    # "x":I
    :cond_1
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getWidth()I

    move-result v1

    add-int/2addr v9, v1

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v2    # "y":I
    :cond_2
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "createBitmap(width, heig\u2026 Bitmap.Config.ARGB_8888)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v1

    .line 223
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getHeight()I

    move-result v8

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 224
    return-object v10
.end method

.method public final toSvg(Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;)Ljava/lang/String;
    .locals 8
    .param p1, "$this$toSvg"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getWidth()I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    :cond_0
    move v1, v2

    .line 230
    .local v1, "moduleHeight":I
    const/4 v2, 0x0

    .local v2, "y":I
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getHeight()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    .line 231
    const/4 v4, 0x0

    .local v4, "x":I
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getWidth()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_2

    .line 232
    invoke-virtual {p1, v4, v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 233
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " M"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "h1v"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "h-1z"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 230
    .end local v4    # "x":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .end local v2    # "y":I
    :cond_3
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getHeight()I

    move-result v2

    mul-int/2addr v2, v1

    .line 238
    .local v2, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<svg width=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\" height=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\"\nviewBox=\"0 0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getWidth()I

    move-result v4

    .line 238
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    nop

    .line 238
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    nop

    .line 238
    const-string v4, "\"\nxmlns=\"http://www.w3.org/2000/svg\">\n<path d=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    nop

    .line 238
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    nop

    .line 238
    const-string v4, "\"/>\n</svg>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final toText(Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;Z)Ljava/lang/String;
    .locals 13
    .param p1, "$this$toText"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;
    .param p2, "inverted"    # Z

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getHeight()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 252
    if-eqz p2, :cond_0

    const-string v1, "\u2588 "

    goto :goto_0

    :cond_0
    const-string v1, " \u2588"

    .line 253
    .local v1, "map":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .local v3, "y":I
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getHeight()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_8

    .line 254
    const/4 v5, 0x0

    .local v5, "x":I
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getWidth()I

    move-result v6

    :goto_2
    if-ge v5, v6, :cond_1

    .line 255
    invoke-virtual {p1, v5, v3}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->get(II)Z

    move-result v7

    invoke-static {v7}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->toText$toInt(Z)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 257
    .end local v5    # "x":I
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 260
    .end local v1    # "map":Ljava/lang/String;
    .end local v3    # "y":I
    :cond_2
    if-eqz p2, :cond_3

    const-string v1, "\u2588\u2584\u2580 "

    goto :goto_3

    :cond_3
    const-string v1, " \u2580\u2584\u2588"

    .line 261
    .restart local v1    # "map":Ljava/lang/String;
    :goto_3
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    check-cast v4, Lkotlin/ranges/IntProgression;

    const/4 v6, 0x2

    invoke-static {v4, v6}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v6

    .local v6, "y":I
    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v7

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v4

    if-lez v4, :cond_4

    if-le v6, v7, :cond_5

    :cond_4
    if-gez v4, :cond_8

    if-gt v7, v6, :cond_8

    .line 262
    :cond_5
    :goto_4
    const/4 v8, 0x0

    .local v8, "x":I
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getWidth()I

    move-result v9

    :goto_5
    if-ge v8, v9, :cond_7

    .line 263
    invoke-virtual {p1, v8, v6}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->get(II)Z

    move-result v10

    invoke-static {v10}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->toText$toInt(Z)I

    move-result v10

    .line 264
    .local v10, "tp":I
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->getHeight()I

    move-result v12

    if-ge v11, v12, :cond_6

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {p1, v8, v11}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_6

    move v11, v3

    goto :goto_6

    :cond_6
    move v11, v5

    :goto_6
    invoke-static {v11}, Lde/markusfisch/android/zxingcpp/ZxingCpp;->toText$toInt(Z)I

    move-result v11

    .line 265
    .local v11, "bt":I
    shl-int/lit8 v12, v11, 0x1

    or-int/2addr v12, v10

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    .end local v10    # "tp":I
    .end local v11    # "bt":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 267
    .end local v8    # "x":I
    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    if-eq v6, v7, :cond_8

    add-int/2addr v6, v4

    goto :goto_4

    .line 270
    .end local v1    # "map":Ljava/lang/String;
    .end local v6    # "y":I
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sb.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
