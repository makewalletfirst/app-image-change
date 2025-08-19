.class public final enum Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;
.super Ljava/lang/Enum;
.source "ZxingCpp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/markusfisch/android/zxingcpp/ZxingCpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;",
        "",
        "(Ljava/lang/String;I)V",
        "PLAIN",
        "ECI",
        "HRI",
        "HEX",
        "ESCAPED",
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
.field private static final synthetic $VALUES:[Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

.field public static final enum ECI:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

.field public static final enum ESCAPED:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

.field public static final enum HEX:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

.field public static final enum HRI:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

.field public static final enum PLAIN:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;


# direct methods
.method private static final synthetic $values()[Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    sget-object v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;->PLAIN:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;->ECI:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;->HRI:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;->HEX:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;->ESCAPED:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 66
    new-instance v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;->PLAIN:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    new-instance v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    const-string v1, "ECI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;->ECI:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    new-instance v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    const-string v1, "HRI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;->HRI:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    new-instance v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    const-string v1, "HEX"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;->HEX:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    new-instance v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    const-string v1, "ESCAPED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;->ESCAPED:Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    invoke-static {}, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;->$values()[Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    move-result-object v0

    sput-object v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;->$VALUES:[Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

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

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;
    .locals 1

    const-class v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    return-object v0
.end method

.method public static values()[Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;
    .locals 1

    sget-object v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;->$VALUES:[Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/markusfisch/android/zxingcpp/ZxingCpp$TextMode;

    return-object v0
.end method
