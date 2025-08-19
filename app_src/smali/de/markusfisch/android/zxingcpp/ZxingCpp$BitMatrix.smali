.class public final Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;
.super Ljava/lang/Object;
.source "ZxingCpp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/markusfisch/android/zxingcpp/ZxingCpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BitMatrix"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u0016\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u001a"
    }
    d2 = {
        "Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;",
        "",
        "width",
        "",
        "height",
        "data",
        "",
        "(II[B)V",
        "getData",
        "()[B",
        "getHeight",
        "()I",
        "getWidth",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "get",
        "x",
        "y",
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
.field private final data:[B

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "data"    # [B

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->width:I

    .line 200
    iput p2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->height:I

    .line 201
    iput-object p3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->data:[B

    .line 198
    return-void
.end method

.method public static synthetic copy$default(Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;II[BILjava/lang/Object;)Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->width:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->height:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->data:[B

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->copy(II[B)Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->width:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->height:I

    return v0
.end method

.method public final component3()[B
    .locals 1

    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->data:[B

    return-object v0
.end method

.method public final copy(II[B)Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;
    .locals 1

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;

    invoke-direct {v0, p1, p2, p3}, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;-><init>(II[B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;

    iget v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->width:I

    iget v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->width:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->height:I

    iget v4, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->height:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->data:[B

    iget-object v1, v1, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->data:[B

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final get(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 203
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->data:[B

    iget v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->width:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getData()[B
    .locals 1

    .line 201
    iget-object v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->data:[B

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 200
    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 199
    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->width:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->height:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->data:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BitMatrix(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/markusfisch/android/zxingcpp/ZxingCpp$BitMatrix;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
