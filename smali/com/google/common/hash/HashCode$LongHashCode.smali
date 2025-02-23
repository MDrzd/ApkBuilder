.class final Lcom/google/common/hash/HashCode$LongHashCode;
.super Lcom/google/common/hash/HashCode;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final hash:J


# direct methods
.method constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/hash/HashCode;-><init>()V

    iput-wide p1, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    return-void
.end method


# virtual methods
.method public final asBytes()[B
    .registers 5

    const/16 v0, 0x8

    new-array v1, v0, [B

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, v1, v2

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    const/16 v0, 0x10

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x2

    aput-byte v0, v1, v2

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    const/16 v0, 0x18

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x3

    aput-byte v0, v1, v2

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    const/16 v0, 0x20

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x4

    aput-byte v0, v1, v2

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    const/16 v0, 0x28

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x5

    aput-byte v0, v1, v2

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    const/16 v0, 0x30

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    const/16 v0, 0x38

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x7

    aput-byte v0, v1, v2

    return-object v1
.end method

.method public final asInt()I
    .registers 3

    iget-wide v0, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    long-to-int v0, v0

    return v0
.end method

.method public final asLong()J
    .registers 3

    iget-wide v0, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    return-wide v0
.end method

.method public final bits()I
    .registers 2

    const/16 v0, 0x40

    return v0
.end method

.method final equalsSameBits(Lcom/google/common/hash/HashCode;)Z
    .registers 6

    iget-wide v0, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final padToLong()J
    .registers 3

    iget-wide v0, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    return-wide v0
.end method

.method final writeBytesToImpl([BII)V
    .registers 9

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    shl-int/lit8 v4, v0, 0x3

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
