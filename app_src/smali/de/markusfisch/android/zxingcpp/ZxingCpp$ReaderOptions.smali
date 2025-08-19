.class public final Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;
.super Ljava/lang/Object;
.source "ZxingCpp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/markusfisch/android/zxingcpp/ZxingCpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReaderOptions"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008G\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00bf\u0001\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0002\u0010\u001bJ\u000f\u0010K\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010L\u001a\u00020\u000eH\u00c6\u0003J\t\u0010M\u001a\u00020\u000eH\u00c6\u0003J\t\u0010N\u001a\u00020\u0006H\u00c6\u0003J\t\u0010O\u001a\u00020\u0006H\u00c6\u0003J\t\u0010P\u001a\u00020\u0006H\u00c6\u0003J\t\u0010Q\u001a\u00020\u0006H\u00c6\u0003J\t\u0010R\u001a\u00020\u0006H\u00c6\u0003J\t\u0010S\u001a\u00020\u0018H\u00c6\u0003J\t\u0010T\u001a\u00020\u001aH\u00c6\u0003J\t\u0010U\u001a\u00020\u0006H\u00c6\u0003J\t\u0010V\u001a\u00020\u0006H\u00c6\u0003J\t\u0010W\u001a\u00020\u0006H\u00c6\u0003J\t\u0010X\u001a\u00020\u0006H\u00c6\u0003J\t\u0010Y\u001a\u00020\u0006H\u00c6\u0003J\t\u0010Z\u001a\u00020\u000cH\u00c6\u0003J\t\u0010[\u001a\u00020\u000eH\u00c6\u0003J\t\u0010\\\u001a\u00020\u000eH\u00c6\u0003J\u00c3\u0001\u0010]\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001aH\u00c6\u0001J\u0013\u0010^\u001a\u00020\u00062\u0008\u0010_\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010`\u001a\u00020\u000eH\u00d6\u0001J\t\u0010a\u001a\u00020bH\u00d6\u0001R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010\u000f\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010!\"\u0004\u0008%\u0010#R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R \u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001a\u0010\n\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010.\"\u0004\u0008/\u00100R\u001a\u0010\u0011\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010!\"\u0004\u00082\u0010#R\u001a\u0010\u0010\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010!\"\u0004\u00084\u0010#R\u001a\u0010\u0015\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010.\"\u0004\u00086\u00100R\u001a\u0010\u0016\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010.\"\u0004\u00088\u00100R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u001a\u0010\u0012\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010.\"\u0004\u0008>\u00100R\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010.\"\u0004\u0008@\u00100R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010.\"\u0004\u0008B\u00100R\u001a\u0010\u0008\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010.\"\u0004\u0008D\u00100R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010.\"\u0004\u0008F\u00100R\u001a\u0010\u0013\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010.\"\u0004\u0008H\u00100R\u001a\u0010\u0014\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010.\"\u0004\u0008J\u00100\u00a8\u0006c"
    }
    d2 = {
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;",
        "",
        "formats",
        "",
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;",
        "tryHarder",
        "",
        "tryRotate",
        "tryInvert",
        "tryDownscale",
        "isPure",
        "binarizer",
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;",
        "downscaleFactor",
        "",
        "downscaleThreshold",
        "minLineCount",
        "maxNumberOfSymbols",
        "tryCode39ExtendedMode",
        "validateCode39CheckSum",
        "validateITFCheckSum",
        "returnCodabarStartEnd",
        "returnErrors",
        "eanAddOnSymbol",
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;",
        "textMode",
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;",
        "(Ljava/util/Set;ZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;IIIIZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;)V",
        "getBinarizer",
        "()Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;",
        "setBinarizer",
        "(Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;)V",
        "getDownscaleFactor",
        "()I",
        "setDownscaleFactor",
        "(I)V",
        "getDownscaleThreshold",
        "setDownscaleThreshold",
        "getEanAddOnSymbol",
        "()Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;",
        "setEanAddOnSymbol",
        "(Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;)V",
        "getFormats",
        "()Ljava/util/Set;",
        "setFormats",
        "(Ljava/util/Set;)V",
        "()Z",
        "setPure",
        "(Z)V",
        "getMaxNumberOfSymbols",
        "setMaxNumberOfSymbols",
        "getMinLineCount",
        "setMinLineCount",
        "getReturnCodabarStartEnd",
        "setReturnCodabarStartEnd",
        "getReturnErrors",
        "setReturnErrors",
        "getTextMode",
        "()Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;",
        "setTextMode",
        "(Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;)V",
        "getTryCode39ExtendedMode",
        "setTryCode39ExtendedMode",
        "getTryDownscale",
        "setTryDownscale",
        "getTryHarder",
        "setTryHarder",
        "getTryInvert",
        "setTryInvert",
        "getTryRotate",
        "setTryRotate",
        "getValidateCode39CheckSum",
        "setValidateCode39CheckSum",
        "getValidateITFCheckSum",
        "setValidateITFCheckSum",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
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
        "",
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
.field private binarizer:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

.field private downscaleFactor:I

.field private downscaleThreshold:I

.field private eanAddOnSymbol:Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;

.field private formats:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private isPure:Z

.field private maxNumberOfSymbols:I

.field private minLineCount:I

.field private returnCodabarStartEnd:Z

.field private returnErrors:Z

.field private textMode:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

.field private tryCode39ExtendedMode:Z

.field private tryDownscale:Z

.field private tryHarder:Z

.field private tryInvert:Z

.field private tryRotate:Z

.field private validateCode39CheckSum:Z

.field private validateITFCheckSum:Z


# direct methods
.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

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

    const v19, 0x3ffff

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v20}, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;-><init>(Ljava/util/Set;ZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;IIIIZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;ZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;IIIIZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;)V
    .locals 16
    .param p1, "formats"    # Ljava/util/Set;
    .param p2, "tryHarder"    # Z
    .param p3, "tryRotate"    # Z
    .param p4, "tryInvert"    # Z
    .param p5, "tryDownscale"    # Z
    .param p6, "isPure"    # Z
    .param p7, "binarizer"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;
    .param p8, "downscaleFactor"    # I
    .param p9, "downscaleThreshold"    # I
    .param p10, "minLineCount"    # I
    .param p11, "maxNumberOfSymbols"    # I
    .param p12, "tryCode39ExtendedMode"    # Z
    .param p13, "validateCode39CheckSum"    # Z
    .param p14, "validateITFCheckSum"    # Z
    .param p15, "returnCodabarStartEnd"    # Z
    .param p16, "returnErrors"    # Z
    .param p17, "eanAddOnSymbol"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;
    .param p18, "textMode"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;",
            ">;ZZZZZ",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;",
            "IIIIZZZZZ",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p17

    move-object/from16 v4, p18

    const-string v5, "formats"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "binarizer"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "eanAddOnSymbol"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "textMode"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v1, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->formats:Ljava/util/Set;

    .line 71
    move/from16 v5, p2

    iput-boolean v5, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryHarder:Z

    .line 72
    move/from16 v6, p3

    iput-boolean v6, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryRotate:Z

    .line 73
    move/from16 v7, p4

    iput-boolean v7, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryInvert:Z

    .line 74
    move/from16 v8, p5

    iput-boolean v8, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryDownscale:Z

    .line 75
    move/from16 v9, p6

    iput-boolean v9, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->isPure:Z

    .line 76
    iput-object v2, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->binarizer:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    .line 77
    move/from16 v10, p8

    iput v10, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->downscaleFactor:I

    .line 78
    move/from16 v11, p9

    iput v11, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->downscaleThreshold:I

    .line 79
    move/from16 v12, p10

    iput v12, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->minLineCount:I

    .line 80
    move/from16 v13, p11

    iput v13, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->maxNumberOfSymbols:I

    .line 81
    move/from16 v14, p12

    iput-boolean v14, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryCode39ExtendedMode:Z

    .line 82
    move/from16 v15, p13

    iput-boolean v15, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->validateCode39CheckSum:Z

    .line 83
    move/from16 v1, p14

    iput-boolean v1, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->validateITFCheckSum:Z

    .line 84
    move/from16 v1, p15

    iput-boolean v1, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->returnCodabarStartEnd:Z

    .line 85
    move/from16 v1, p16

    iput-boolean v1, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->returnErrors:Z

    .line 86
    iput-object v3, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->eanAddOnSymbol:Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;

    .line 87
    iput-object v4, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->textMode:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    .line 69
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;ZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;IIIIZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    .line 69
    move/from16 v0, p19

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 70
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    .line 69
    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 71
    move v2, v3

    goto :goto_1

    .line 69
    :cond_1
    move/from16 v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    .line 72
    move v4, v3

    goto :goto_2

    .line 69
    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    .line 73
    move v5, v3

    goto :goto_3

    .line 69
    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    .line 74
    goto :goto_4

    .line 69
    :cond_4
    move/from16 v3, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    .line 75
    const/4 v6, 0x0

    goto :goto_5

    .line 69
    :cond_5
    move/from16 v6, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    .line 76
    sget-object v8, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;->LOCAL_AVERAGE:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    goto :goto_6

    .line 69
    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    .line 77
    const/4 v9, 0x3

    goto :goto_7

    .line 69
    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    .line 78
    const/16 v10, 0x1f4

    goto :goto_8

    .line 69
    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    .line 79
    const/4 v11, 0x2

    goto :goto_9

    .line 69
    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    .line 80
    const/16 v12, 0xff

    goto :goto_a

    .line 69
    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    .line 81
    const/4 v13, 0x0

    goto :goto_b

    .line 69
    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    .line 82
    const/4 v14, 0x0

    goto :goto_c

    .line 69
    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    .line 83
    const/4 v15, 0x0

    goto :goto_d

    .line 69
    :cond_d
    move/from16 v15, p14

    :goto_d
    and-int/lit16 v7, v0, 0x4000

    if-eqz v7, :cond_e

    .line 84
    const/4 v7, 0x0

    goto :goto_e

    .line 69
    :cond_e
    move/from16 v7, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    .line 85
    const/16 v16, 0x0

    goto :goto_f

    .line 69
    :cond_f
    move/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    .line 86
    sget-object v17, Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;->IGNORE:Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;

    goto :goto_10

    .line 69
    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v0, v0, v18

    if-eqz v0, :cond_11

    .line 87
    sget-object v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;->HRI:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    goto :goto_11

    .line 69
    :cond_11
    move-object/from16 v0, p18

    :goto_11
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v3

    move/from16 p7, v6

    move-object/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move/from16 p12, v12

    move/from16 p13, v13

    move/from16 p14, v14

    move/from16 p15, v15

    move/from16 p16, v7

    move/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v0

    invoke-direct/range {p1 .. p19}, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;-><init>(Ljava/util/Set;ZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;IIIIZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;)V

    .line 88
    return-void
.end method

.method public static synthetic copy$default(Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;Ljava/util/Set;ZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;IIIIZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;ILjava/lang/Object;)Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p19

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->formats:Ljava/util/Set;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryHarder:Z

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryRotate:Z

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryInvert:Z

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryDownscale:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->isPure:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->binarizer:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->downscaleFactor:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->downscaleThreshold:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget v11, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->minLineCount:I

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget v12, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->maxNumberOfSymbols:I

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-boolean v13, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryCode39ExtendedMode:Z

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-boolean v14, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->validateCode39CheckSum:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-boolean v15, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->validateITFCheckSum:Z

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-boolean v15, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->returnCodabarStartEnd:Z

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p15, v15

    if-eqz v16, :cond_f

    iget-boolean v15, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->returnErrors:Z

    goto :goto_f

    :cond_f
    move/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->eanAddOnSymbol:Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v1, v1, v16

    if-eqz v1, :cond_11

    iget-object v1, v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->textMode:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    move-object/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p17, v15

    move-object/from16 p18, v1

    invoke-virtual/range {p0 .. p18}, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->copy(Ljava/util/Set;ZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;IIIIZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;)Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->formats:Ljava/util/Set;

    return-object v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->minLineCount:I

    return v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->maxNumberOfSymbols:I

    return v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryCode39ExtendedMode:Z

    return v0
.end method

.method public final component13()Z
    .locals 1

    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->validateCode39CheckSum:Z

    return v0
.end method

.method public final component14()Z
    .locals 1

    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->validateITFCheckSum:Z

    return v0
.end method

.method public final component15()Z
    .locals 1

    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->returnCodabarStartEnd:Z

    return v0
.end method

.method public final component16()Z
    .locals 1

    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->returnErrors:Z

    return v0
.end method

.method public final component17()Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;
    .locals 1

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->eanAddOnSymbol:Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;

    return-object v0
.end method

.method public final component18()Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;
    .locals 1

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->textMode:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryHarder:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryRotate:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryInvert:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryDownscale:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->isPure:Z

    return v0
.end method

.method public final component7()Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;
    .locals 1

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->binarizer:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    return-object v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->downscaleFactor:I

    return v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->downscaleThreshold:I

    return v0
.end method

.method public final copy(Ljava/util/Set;ZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;IIIIZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;)Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;",
            ">;ZZZZZ",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;",
            "IIIIZZZZZ",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;",
            ")",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;"
        }
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    const-string v0, "formats"

    move-object/from16 v19, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binarizer"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eanAddOnSymbol"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textMode"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v20, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct/range {v0 .. v18}, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;-><init>(Ljava/util/Set;ZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;IIIIZZZZZLde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;)V

    return-object v20
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;

    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->formats:Ljava/util/Set;

    iget-object v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->formats:Ljava/util/Set;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryHarder:Z

    iget-boolean v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryHarder:Z

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryRotate:Z

    iget-boolean v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryRotate:Z

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryInvert:Z

    iget-boolean v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryInvert:Z

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-boolean v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryDownscale:Z

    iget-boolean v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryDownscale:Z

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget-boolean v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->isPure:Z

    iget-boolean v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->isPure:Z

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->binarizer:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    iget-object v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->binarizer:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->downscaleFactor:I

    iget v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->downscaleFactor:I

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    iget v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->downscaleThreshold:I

    iget v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->downscaleThreshold:I

    if-eq v3, v4, :cond_a

    return v2

    :cond_a
    iget v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->minLineCount:I

    iget v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->minLineCount:I

    if-eq v3, v4, :cond_b

    return v2

    :cond_b
    iget v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->maxNumberOfSymbols:I

    iget v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->maxNumberOfSymbols:I

    if-eq v3, v4, :cond_c

    return v2

    :cond_c
    iget-boolean v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryCode39ExtendedMode:Z

    iget-boolean v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryCode39ExtendedMode:Z

    if-eq v3, v4, :cond_d

    return v2

    :cond_d
    iget-boolean v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->validateCode39CheckSum:Z

    iget-boolean v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->validateCode39CheckSum:Z

    if-eq v3, v4, :cond_e

    return v2

    :cond_e
    iget-boolean v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->validateITFCheckSum:Z

    iget-boolean v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->validateITFCheckSum:Z

    if-eq v3, v4, :cond_f

    return v2

    :cond_f
    iget-boolean v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->returnCodabarStartEnd:Z

    iget-boolean v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->returnCodabarStartEnd:Z

    if-eq v3, v4, :cond_10

    return v2

    :cond_10
    iget-boolean v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->returnErrors:Z

    iget-boolean v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->returnErrors:Z

    if-eq v3, v4, :cond_11

    return v2

    :cond_11
    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->eanAddOnSymbol:Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;

    iget-object v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->eanAddOnSymbol:Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;

    if-eq v3, v4, :cond_12

    return v2

    :cond_12
    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->textMode:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    iget-object v1, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->textMode:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    if-eq v3, v1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getBinarizer()Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;
    .locals 1

    .line 76
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->binarizer:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    return-object v0
.end method

.method public final getDownscaleFactor()I
    .locals 1

    .line 77
    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->downscaleFactor:I

    return v0
.end method

.method public final getDownscaleThreshold()I
    .locals 1

    .line 78
    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->downscaleThreshold:I

    return v0
.end method

.method public final getEanAddOnSymbol()Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;
    .locals 1

    .line 86
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->eanAddOnSymbol:Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;

    return-object v0
.end method

.method public final getFormats()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->formats:Ljava/util/Set;

    return-object v0
.end method

.method public final getMaxNumberOfSymbols()I
    .locals 1

    .line 80
    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->maxNumberOfSymbols:I

    return v0
.end method

.method public final getMinLineCount()I
    .locals 1

    .line 79
    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->minLineCount:I

    return v0
.end method

.method public final getReturnCodabarStartEnd()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->returnCodabarStartEnd:Z

    return v0
.end method

.method public final getReturnErrors()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->returnErrors:Z

    return v0
.end method

.method public final getTextMode()Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;
    .locals 1

    .line 87
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->textMode:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    return-object v0
.end method

.method public final getTryCode39ExtendedMode()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryCode39ExtendedMode:Z

    return v0
.end method

.method public final getTryDownscale()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryDownscale:Z

    return v0
.end method

.method public final getTryHarder()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryHarder:Z

    return v0
.end method

.method public final getTryInvert()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryInvert:Z

    return v0
.end method

.method public final getTryRotate()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryRotate:Z

    return v0
.end method

.method public final getValidateCode39CheckSum()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->validateCode39CheckSum:Z

    return v0
.end method

.method public final getValidateITFCheckSum()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->validateITFCheckSum:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->formats:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryHarder:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    :cond_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryRotate:Z

    if-eqz v2, :cond_1

    move v2, v3

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryInvert:Z

    if-eqz v2, :cond_2

    move v2, v3

    :cond_2
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryDownscale:Z

    if-eqz v2, :cond_3

    move v2, v3

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->isPure:Z

    if-eqz v2, :cond_4

    move v2, v3

    :cond_4
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->binarizer:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    invoke-virtual {v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->downscaleFactor:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->downscaleThreshold:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->minLineCount:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->maxNumberOfSymbols:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryCode39ExtendedMode:Z

    if-eqz v2, :cond_5

    move v2, v3

    :cond_5
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->validateCode39CheckSum:Z

    if-eqz v2, :cond_6

    move v2, v3

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->validateITFCheckSum:Z

    if-eqz v2, :cond_7

    move v2, v3

    :cond_7
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->returnCodabarStartEnd:Z

    if-eqz v2, :cond_8

    move v2, v3

    :cond_8
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->returnErrors:Z

    if-eqz v2, :cond_9

    goto :goto_0

    :cond_9
    move v3, v2

    :goto_0
    add-int/2addr v1, v3

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->eanAddOnSymbol:Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;

    invoke-virtual {v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->textMode:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    invoke-virtual {v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final isPure()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->isPure:Z

    return v0
.end method

.method public final setBinarizer(Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;)V
    .locals 1
    .param p1, "<set-?>"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->binarizer:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    return-void
.end method

.method public final setDownscaleFactor(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 77
    iput p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->downscaleFactor:I

    return-void
.end method

.method public final setDownscaleThreshold(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 78
    iput p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->downscaleThreshold:I

    return-void
.end method

.method public final setEanAddOnSymbol(Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;)V
    .locals 1
    .param p1, "<set-?>"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->eanAddOnSymbol:Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;

    return-void
.end method

.method public final setFormats(Ljava/util/Set;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lde/markusfisch/android/zxingcpp/ZxingCpp$BarcodeFormat;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->formats:Ljava/util/Set;

    return-void
.end method

.method public final setMaxNumberOfSymbols(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 80
    iput p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->maxNumberOfSymbols:I

    return-void
.end method

.method public final setMinLineCount(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 79
    iput p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->minLineCount:I

    return-void
.end method

.method public final setPure(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 75
    iput-boolean p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->isPure:Z

    return-void
.end method

.method public final setReturnCodabarStartEnd(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 84
    iput-boolean p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->returnCodabarStartEnd:Z

    return-void
.end method

.method public final setReturnErrors(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 85
    iput-boolean p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->returnErrors:Z

    return-void
.end method

.method public final setTextMode(Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;)V
    .locals 1
    .param p1, "<set-?>"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->textMode:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    return-void
.end method

.method public final setTryCode39ExtendedMode(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 81
    iput-boolean p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryCode39ExtendedMode:Z

    return-void
.end method

.method public final setTryDownscale(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 74
    iput-boolean p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryDownscale:Z

    return-void
.end method

.method public final setTryHarder(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 71
    iput-boolean p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryHarder:Z

    return-void
.end method

.method public final setTryInvert(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 73
    iput-boolean p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryInvert:Z

    return-void
.end method

.method public final setTryRotate(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 72
    iput-boolean p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryRotate:Z

    return-void
.end method

.method public final setValidateCode39CheckSum(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 82
    iput-boolean p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->validateCode39CheckSum:Z

    return-void
.end method

.method public final setValidateITFCheckSum(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 83
    iput-boolean p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->validateITFCheckSum:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReaderOptions(formats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->formats:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tryHarder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryHarder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tryRotate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryRotate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tryInvert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryInvert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tryDownscale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryDownscale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->isPure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", binarizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->binarizer:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", downscaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->downscaleFactor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downscaleThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->downscaleThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minLineCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->minLineCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxNumberOfSymbols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->maxNumberOfSymbols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tryCode39ExtendedMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->tryCode39ExtendedMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", validateCode39CheckSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->validateCode39CheckSum:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", validateITFCheckSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->validateITFCheckSum:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", returnCodabarStartEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->returnCodabarStartEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", returnErrors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->returnErrors:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", eanAddOnSymbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->eanAddOnSymbol:Lde/markusfisch/android/zxingcpp/ZxingCpp$EanAddOnSymbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$ReaderOptions;->textMode:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
