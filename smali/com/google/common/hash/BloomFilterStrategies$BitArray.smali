.class final Lcom/google/common/hash/BloomFilterStrategies$BitArray;
.super Ljava/lang/Object;


# instance fields
.field bitCount:J

.field final data:[J


# direct methods
.method constructor <init>(J)V
    .registers 6

    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    const-wide/16 v1, 0x40

    invoke-static {p1, p2, v1, v2, v0}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p1

    new-array p1, p1, [J

    invoke-direct {p0, p1}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;-><init>([J)V

    return-void
.end method

.method constructor <init>([J)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "data length is zero!"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    const-wide/16 v2, 0x0

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-wide v4, p1, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-wide v2, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    return-void
.end method


# virtual methods
.method final bitCount()J
    .registers 3

    iget-wide v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    return-wide v0
.end method

.method final bitSize()J
    .registers 4

    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v0, v0

    int-to-long v0, v0

    const/4 v2, 0x6

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method final copy()Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    .registers 3

    new-instance v0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-direct {v0, v1}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;-><init>([J)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    iget-object p1, p1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final get(J)Z
    .registers 8

    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    const/4 v1, 0x6

    ushr-long v1, p1, v1

    long-to-int v1, v1

    aget-wide v1, v0, v1

    long-to-int p1, p1

    const-wide/16 v3, 0x1

    shl-long p1, v3, p1

    and-long/2addr p1, v1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0
.end method

.method final putAll(Lcom/google/common/hash/BloomFilterStrategies$BitArray;)V
    .registers 9

    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v0, v0

    iget-object v1, p1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "BitArrays must be of equal length (%s != %s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v1, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    :goto_1
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v0, v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    aget-wide v3, v0, v2

    iget-object v1, p1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    aget-wide v5, v1, v2

    or-long/2addr v3, v5

    aput-wide v3, v0, v2

    iget-wide v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    iget-object v3, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    aget-wide v4, v3, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method final set(J)Z
    .registers 9

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->get(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    const/4 v1, 0x6

    ushr-long v1, p1, v1

    long-to-int v1, v1

    aget-wide v2, v0, v1

    long-to-int p1, p1

    const-wide/16 v4, 0x1

    shl-long p1, v4, p1

    or-long/2addr p1, v2

    aput-wide p1, v0, v1

    iget-wide p1, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    add-long/2addr p1, v4

    iput-wide p1, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
