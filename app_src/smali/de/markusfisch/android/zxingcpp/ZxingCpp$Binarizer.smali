.class public final enum Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;
.super Ljava/lang/Enum;
.source "ZxingCpp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/markusfisch/android/zxingcpp/ZxingCpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Binarizer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;",
        "",
        "(Ljava/lang/String;I)V",
        "LOCAL_AVERAGE",
        "GLOBAL_HISTOGRAM",
        "FIXED_THRESHOLD",
        "BOOL_CAST",
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
.field private static final synthetic $VALUES:[Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

.field public static final enum BOOL_CAST:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

.field public static final enum FIXED_THRESHOLD:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

.field public static final enum GLOBAL_HISTOGRAM:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

.field public static final enum LOCAL_AVERAGE:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;


# direct methods
.method private static final synthetic $values()[Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    sget-object v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;->LOCAL_AVERAGE:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;->GLOBAL_HISTOGRAM:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;->FIXED_THRESHOLD:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;->BOOL_CAST:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    const-string v1, "LOCAL_AVERAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;->LOCAL_AVERAGE:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    new-instance v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    const-string v1, "GLOBAL_HISTOGRAM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;->GLOBAL_HISTOGRAM:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    new-instance v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    const-string v1, "FIXED_THRESHOLD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;->FIXED_THRESHOLD:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    new-instance v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    const-string v1, "BOOL_CAST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;->BOOL_CAST:Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    invoke-static {}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;->$values()[Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    move-result-object v0

    sput-object v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;->$VALUES:[Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;
    .locals 1

    const-class v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    return-object v0
.end method

.method public static values()[Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;
    .locals 1

    sget-object v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;->$VALUES:[Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/markusfisch/android/zxingcpp/ZxingCpp$Binarizer;

    return-object v0
.end method
