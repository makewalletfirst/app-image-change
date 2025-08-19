.class public final Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;
.super Ljava/lang/Object;
.source "ZxingCpp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/markusfisch/android/zxingcpp/ZxingCpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u00080\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u000b\u0012\u0006\u0010\u0012\u001a\u00020\u0007\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u000b\u0012\u0006\u0010\u0016\u001a\u00020\u0007\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0002\u0010\u001bJ\t\u00105\u001a\u00020\u0003H\u00c6\u0003J\t\u00106\u001a\u00020\u000bH\u00c6\u0003J\t\u00107\u001a\u00020\u0007H\u00c6\u0003J\t\u00108\u001a\u00020\u0014H\u00c6\u0003J\t\u00109\u001a\u00020\u000bH\u00c6\u0003J\t\u0010:\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0018H\u00c6\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u001aH\u00c6\u0003J\t\u0010=\u001a\u00020\u0005H\u00c6\u0003J\t\u0010>\u001a\u00020\u0007H\u00c6\u0003J\t\u0010?\u001a\u00020\tH\u00c6\u0003J\t\u0010@\u001a\u00020\u000bH\u00c6\u0003J\t\u0010A\u001a\u00020\rH\u00c6\u0003J\t\u0010B\u001a\u00020\u0007H\u00c6\u0003J\t\u0010C\u001a\u00020\u0007H\u00c6\u0003J\t\u0010D\u001a\u00020\u000bH\u00c6\u0003J\u00ad\u0001\u0010E\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00072\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00c6\u0001J\u0013\u0010F\u001a\u00020\u00142\u0008\u0010G\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010H\u001a\u00020\u000bH\u00d6\u0001J\t\u0010I\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u000e\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0011\u0010\u0015\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\'R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0011\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u0011\u0010\u0012\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\u001fR\u0011\u0010\u0011\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010\'R\u0011\u0010\u0010\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010\'R\u0011\u0010\u000f\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\u001fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010\u001fR\u0011\u0010\u0016\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\u001f\u00a8\u0006J"
    }
    d2 = {
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;",
        "",
        "format",
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;",
        "contentType",
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;",
        "text",
        "",
        "position",
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;",
        "orientation",
        "",
        "rawBytes",
        "",
        "ecLevel",
        "symbologyIdentifier",
        "sequenceSize",
        "sequenceIndex",
        "sequenceId",
        "readerInit",
        "",
        "lineCount",
        "version",
        "gtin",
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;",
        "error",
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;",
        "(Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;Ljava/lang/String;Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;I[BLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ZILjava/lang/String;Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;)V",
        "getContentType",
        "()Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;",
        "getEcLevel",
        "()Ljava/lang/String;",
        "getError",
        "()Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;",
        "getFormat",
        "()Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;",
        "getGtin",
        "()Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;",
        "getLineCount",
        "()I",
        "getOrientation",
        "getPosition",
        "()Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;",
        "getRawBytes",
        "()[B",
        "getReaderInit",
        "()Z",
        "getSequenceId",
        "getSequenceIndex",
        "getSequenceSize",
        "getSymbologyIdentifier",
        "getText",
        "getVersion",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private final contentType:Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;

.field private final ecLevel:Ljava/lang/String;

.field private final error:Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;

.field private final format:Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;

.field private final gtin:Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;

.field private final lineCount:I

.field private final orientation:I

.field private final position:Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;

.field private final rawBytes:[B

.field private final readerInit:Z

.field private final sequenceId:Ljava/lang/String;

.field private final sequenceIndex:I

.field private final sequenceSize:I

.field private final symbologyIdentifier:Ljava/lang/String;

.field private final text:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;Ljava/lang/String;Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;I[BLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ZILjava/lang/String;Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;)V
    .locals 16
    .param p1, "format"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;
    .param p2, "contentType"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "position"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;
    .param p5, "orientation"    # I
    .param p6, "rawBytes"    # [B
    .param p7, "ecLevel"    # Ljava/lang/String;
    .param p8, "symbologyIdentifier"    # Ljava/lang/String;
    .param p9, "sequenceSize"    # I
    .param p10, "sequenceIndex"    # I
    .param p11, "sequenceId"    # Ljava/lang/String;
    .param p12, "readerInit"    # Z
    .param p13, "lineCount"    # I
    .param p14, "version"    # Ljava/lang/String;
    .param p15, "gtin"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;
    .param p16, "error"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p14

    const-string v10, "format"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "contentType"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "text"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "position"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "rawBytes"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "ecLevel"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "symbologyIdentifier"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "sequenceId"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "version"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object v1, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->format:Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;

    .line 112
    iput-object v2, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->contentType:Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;

    .line 113
    iput-object v3, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->text:Ljava/lang/String;

    .line 114
    iput-object v4, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->position:Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;

    .line 115
    move/from16 v10, p5

    iput v10, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->orientation:I

    .line 116
    iput-object v5, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->rawBytes:[B

    .line 117
    iput-object v6, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->ecLevel:Ljava/lang/String;

    .line 118
    iput-object v7, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->symbologyIdentifier:Ljava/lang/String;

    .line 119
    move/from16 v11, p9

    iput v11, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceSize:I

    .line 120
    move/from16 v12, p10

    iput v12, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceIndex:I

    .line 121
    iput-object v8, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceId:Ljava/lang/String;

    .line 122
    move/from16 v13, p12

    iput-boolean v13, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->readerInit:Z

    .line 123
    move/from16 v14, p13

    iput v14, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->lineCount:I

    .line 124
    iput-object v9, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->version:Ljava/lang/String;

    .line 125
    move-object/from16 v15, p15

    iput-object v15, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->gtin:Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;

    .line 126
    move-object/from16 v1, p16

    iput-object v1, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->error:Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;

    .line 110
    return-void
.end method

.method public static synthetic copy$default(Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;Ljava/lang/String;Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;I[BLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ZILjava/lang/String;Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;ILjava/lang/Object;)Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->format:Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->contentType:Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->text:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->position:Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->orientation:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->rawBytes:[B

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->ecLevel:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->symbologyIdentifier:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceSize:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget v11, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceIndex:I

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceId:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-boolean v13, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->readerInit:Z

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget v14, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->lineCount:I

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->version:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->gtin:Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    iget-object v1, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->error:Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v1

    invoke-virtual/range {p0 .. p16}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->copy(Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;Ljava/lang/String;Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;I[BLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ZILjava/lang/String;Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;)Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;
    .locals 1

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->format:Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;

    return-object v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceIndex:I

    return v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->readerInit:Z

    return v0
.end method

.method public final component13()I
    .locals 1

    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->lineCount:I

    return v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;
    .locals 1

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->gtin:Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;

    return-object v0
.end method

.method public final component16()Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;
    .locals 1

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->error:Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;

    return-object v0
.end method

.method public final component2()Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;
    .locals 1

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->contentType:Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;
    .locals 1

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->position:Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->orientation:I

    return v0
.end method

.method public final component6()[B
    .locals 1

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->rawBytes:[B

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->ecLevel:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->symbologyIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceSize:I

    return v0
.end method

.method public final copy(Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;Ljava/lang/String;Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;I[BLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ZILjava/lang/String;Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;)Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;
    .locals 19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    const-string v0, "format"

    move-object/from16 v17, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawBytes"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ecLevel"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "symbologyIdentifier"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sequenceId"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v18, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v16}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;-><init>(Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;Ljava/lang/String;Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;I[BLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ZILjava/lang/String;Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;)V

    return-object v18
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;

    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->format:Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;

    iget-object v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->format:Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->contentType:Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;

    iget-object v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->contentType:Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->text:Ljava/lang/String;

    iget-object v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->text:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->position:Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;

    iget-object v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->position:Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->orientation:I

    iget v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->orientation:I

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->rawBytes:[B

    iget-object v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->rawBytes:[B

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->ecLevel:Ljava/lang/String;

    iget-object v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->ecLevel:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->symbologyIdentifier:Ljava/lang/String;

    iget-object v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->symbologyIdentifier:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceSize:I

    iget v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceSize:I

    if-eq v3, v4, :cond_a

    return v2

    :cond_a
    iget v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceIndex:I

    iget v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceIndex:I

    if-eq v3, v4, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceId:Ljava/lang/String;

    iget-object v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v2

    :cond_c
    iget-boolean v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->readerInit:Z

    iget-boolean v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->readerInit:Z

    if-eq v3, v4, :cond_d

    return v2

    :cond_d
    iget v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->lineCount:I

    iget v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->lineCount:I

    if-eq v3, v4, :cond_e

    return v2

    :cond_e
    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->version:Ljava/lang/String;

    iget-object v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->version:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    return v2

    :cond_f
    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->gtin:Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;

    iget-object v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->gtin:Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    return v2

    :cond_10
    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->error:Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;

    iget-object v1, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->error:Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public final getContentType()Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;
    .locals 1

    .line 112
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->contentType:Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;

    return-object v0
.end method

.method public final getEcLevel()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->ecLevel:Ljava/lang/String;

    return-object v0
.end method

.method public final getError()Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;
    .locals 1

    .line 126
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->error:Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;

    return-object v0
.end method

.method public final getFormat()Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;
    .locals 1

    .line 111
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->format:Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;

    return-object v0
.end method

.method public final getGtin()Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;
    .locals 1

    .line 125
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->gtin:Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;

    return-object v0
.end method

.method public final getLineCount()I
    .locals 1

    .line 123
    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->lineCount:I

    return v0
.end method

.method public final getOrientation()I
    .locals 1

    .line 115
    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->orientation:I

    return v0
.end method

.method public final getPosition()Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;
    .locals 1

    .line 114
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->position:Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;

    return-object v0
.end method

.method public final getRawBytes()[B
    .locals 1

    .line 116
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->rawBytes:[B

    return-object v0
.end method

.method public final getReaderInit()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->readerInit:Z

    return v0
.end method

.method public final getSequenceId()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSequenceIndex()I
    .locals 1

    .line 120
    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceIndex:I

    return v0
.end method

.method public final getSequenceSize()I
    .locals 1

    .line 119
    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceSize:I

    return v0
.end method

.method public final getSymbologyIdentifier()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->symbologyIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->format:Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;

    invoke-virtual {v0}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->contentType:Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;

    invoke-virtual {v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->position:Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;

    invoke-virtual {v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->orientation:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->rawBytes:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->ecLevel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->symbologyIdentifier:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceSize:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceIndex:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->readerInit:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->lineCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->version:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->gtin:Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->error:Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result(format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->format:Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->contentType:Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->position:Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rawBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->rawBytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ecLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->ecLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", symbologyIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->symbologyIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sequenceSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sequenceIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sequenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->sequenceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", readerInit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->readerInit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lineCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->lineCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gtin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->gtin:Lde/markusfisch/android/zxingcpp/ZxingCpp$GTIN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->error:Lde/markusfisch/android/zxingcpp/ZxingCpp$Error;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
