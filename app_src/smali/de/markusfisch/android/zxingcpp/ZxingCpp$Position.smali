.class public final Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;
.super Ljava/lang/Object;
.source "ZxingCpp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/markusfisch/android/zxingcpp/ZxingCpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Position"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0008H\u00c6\u0003J;\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;",
        "",
        "topLeft",
        "Landroid/graphics/Point;",
        "topRight",
        "bottomLeft",
        "bottomRight",
        "orientation",
        "",
        "(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;D)V",
        "getBottomLeft",
        "()Landroid/graphics/Point;",
        "getBottomRight",
        "getOrientation",
        "()D",
        "getTopLeft",
        "getTopRight",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field private final bottomLeft:Landroid/graphics/Point;

.field private final bottomRight:Landroid/graphics/Point;

.field private final orientation:D

.field private final topLeft:Landroid/graphics/Point;

.field private final topRight:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;D)V
    .locals 1
    .param p1, "topLeft"    # Landroid/graphics/Point;
    .param p2, "topRight"    # Landroid/graphics/Point;
    .param p3, "bottomLeft"    # Landroid/graphics/Point;
    .param p4, "bottomRight"    # Landroid/graphics/Point;
    .param p5, "orientation"    # D

    const-string v0, "topLeft"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topRight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomLeft"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomRight"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->topLeft:Landroid/graphics/Point;

    .line 104
    iput-object p2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->topRight:Landroid/graphics/Point;

    .line 105
    iput-object p3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->bottomLeft:Landroid/graphics/Point;

    .line 106
    iput-object p4, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->bottomRight:Landroid/graphics/Point;

    .line 107
    iput-wide p5, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->orientation:D

    .line 102
    return-void
.end method

.method public static synthetic copy$default(Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;DILjava/lang/Object;)Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->topLeft:Landroid/graphics/Point;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->topRight:Landroid/graphics/Point;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->bottomLeft:Landroid/graphics/Point;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->bottomRight:Landroid/graphics/Point;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-wide p5, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->orientation:D

    :cond_4
    move-wide v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-wide p7, v2

    invoke-virtual/range {p2 .. p8}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->copy(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;D)Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->topLeft:Landroid/graphics/Point;

    return-object v0
.end method

.method public final component2()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->topRight:Landroid/graphics/Point;

    return-object v0
.end method

.method public final component3()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->bottomLeft:Landroid/graphics/Point;

    return-object v0
.end method

.method public final component4()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->bottomRight:Landroid/graphics/Point;

    return-object v0
.end method

.method public final component5()D
    .locals 2

    iget-wide v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->orientation:D

    return-wide v0
.end method

.method public final copy(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;D)Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;
    .locals 8

    const-string v0, "topLeft"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topRight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomLeft"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomRight"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;D)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;

    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->topLeft:Landroid/graphics/Point;

    iget-object v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->topLeft:Landroid/graphics/Point;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->topRight:Landroid/graphics/Point;

    iget-object v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->topRight:Landroid/graphics/Point;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->bottomLeft:Landroid/graphics/Point;

    iget-object v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->bottomLeft:Landroid/graphics/Point;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->bottomRight:Landroid/graphics/Point;

    iget-object v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->bottomRight:Landroid/graphics/Point;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->orientation:D

    iget-wide v5, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->orientation:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getBottomLeft()Landroid/graphics/Point;
    .locals 1

    .line 105
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->bottomLeft:Landroid/graphics/Point;

    return-object v0
.end method

.method public final getBottomRight()Landroid/graphics/Point;
    .locals 1

    .line 106
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->bottomRight:Landroid/graphics/Point;

    return-object v0
.end method

.method public final getOrientation()D
    .locals 2

    .line 107
    iget-wide v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->orientation:D

    return-wide v0
.end method

.method public final getTopLeft()Landroid/graphics/Point;
    .locals 1

    .line 103
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->topLeft:Landroid/graphics/Point;

    return-object v0
.end method

.method public final getTopRight()Landroid/graphics/Point;
    .locals 1

    .line 104
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->topRight:Landroid/graphics/Point;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->topLeft:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Point;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->topRight:Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Point;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->bottomLeft:Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Point;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->bottomRight:Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Point;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->orientation:D

    invoke-static {v2, v3}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position$$ExternalSyntheticBackport0;->m(D)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Position(topLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->topLeft:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->topRight:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->bottomLeft:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->bottomRight:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$Position;->orientation:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
