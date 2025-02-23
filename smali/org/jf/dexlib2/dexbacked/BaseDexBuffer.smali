.class public Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;
.super Ljava/lang/Object;


# instance fields
.field final baseOffset:I

.field final buf:[B
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .param p1    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3
    .param p1    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    return-void
.end method


# virtual methods
.method protected getBaseOffset()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    return v0
.end method

.method protected getBuf()[B
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    return-object v0
.end method

.method public readByte(I)I
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public readInt(I)I
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    add-int/2addr p1, v1

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, v0, p1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v1

    return p1
.end method

.method public readLong(I)J
    .registers 10

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    add-int/2addr p1, v1

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    int-to-long v1, v1

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, v0, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v7, 0x18

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x4

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x20

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x5

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x28

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x6

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v5, 0x30

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    add-int/lit8 p1, p1, 0x7

    aget-byte p1, v0, p1

    int-to-long v3, p1

    const/16 p1, 0x38

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public readLongAsSmallUint(I)I
    .registers 10

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    add-int/2addr p1, v1

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    int-to-long v1, v1

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, v0, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v7, 0x18

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x4

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x20

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x5

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x28

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x6

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v5, 0x30

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x7

    aget-byte v0, v0, v3

    int-to-long v3, v0

    const/16 v0, 0x38

    shl-long/2addr v3, v0

    or-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v1, v3

    if-gtz v0, :cond_0

    long-to-int p1, v1

    return p1

    :cond_0
    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Encountered out-of-range ulong at offset 0x%x"

    invoke-direct {v0, p1, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public readOptionalUint(I)I
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    add-int/2addr p1, v1

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    const/4 v1, -0x1

    if-lt v0, v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Encountered optional uint that is out of range at offset 0x%x"

    invoke-direct {v0, p1, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public readShort(I)I
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    add-int/2addr p1, v1

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v1

    return p1
.end method

.method public readSmallUint(I)I
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    add-int/2addr p1, v1

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Encountered small uint that is out of range at offset 0x%x"

    invoke-direct {v0, p1, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public readUbyte(I)I
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    add-int/2addr p1, v1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public readUshort(I)I
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    add-int/2addr p1, v1

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v1

    return p1
.end method

.method public readerAt(I)Lorg/jf/dexlib2/dexbacked/BaseDexReader;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/dexbacked/BaseDexReader;-><init>(Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;I)V

    return-object v0
.end method
