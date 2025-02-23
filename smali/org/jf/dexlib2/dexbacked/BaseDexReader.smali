.class public Lorg/jf/dexlib2/dexbacked/BaseDexReader;
.super Ljava/lang/Object;


# instance fields
.field public final dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private offset:I


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;I)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return-void
.end method

.method private readUleb128(Z)I
    .registers 9

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v0, v0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x7f

    if-le v0, v3, :cond_4

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v0, v0, 0x7f

    and-int/lit8 v5, v2, 0x7f

    const/4 v6, 0x7

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    if-le v2, v3, :cond_3

    add-int/lit8 v2, v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v4, 0x7f

    shl-int/lit8 v5, v5, 0xe

    or-int/2addr v0, v5

    if-le v4, v3, :cond_4

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0x15

    or-int/2addr v0, v5

    if-le v2, v3, :cond_3

    add-int/lit8 v2, v4, 0x1

    aget-byte v1, v1, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v1, :cond_2

    and-int/lit8 v5, v1, 0xf

    if-le v5, v6, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/jf/util/ExceptionWithContext;

    new-array v0, v4, [Ljava/lang/Object;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Encountered valid uleb128 that is out of range at offset 0x%x"

    invoke-direct {p1, v1, v0}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    shl-int/lit8 p1, v1, 0x1c

    or-int/2addr v0, p1

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/jf/util/ExceptionWithContext;

    new-array v0, v4, [Ljava/lang/Object;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Invalid uleb128 integer encountered at offset 0x%x"

    invoke-direct {p1, v1, v0}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_3
    move v2, v4

    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget p1, p1, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    sub-int/2addr v2, p1

    iput v2, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return v0
.end method


# virtual methods
.method public getOffset()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return v0
.end method

.method public moveRelative(I)V
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return-void
.end method

.method public peekUbyte()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->readUbyte(I)I

    move-result v0

    return v0
.end method

.method public peekUshort()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->readUshort(I)I

    move-result v0

    return v0
.end method

.method public readBigUleb128()I
    .registers 7

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v0, v0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x7f

    if-le v0, v3, :cond_2

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v0, v0, 0x7f

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0x7

    or-int/2addr v0, v5

    if-le v2, v3, :cond_1

    add-int/lit8 v2, v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v4, 0x7f

    shl-int/lit8 v5, v5, 0xe

    or-int/2addr v0, v5

    if-le v4, v3, :cond_2

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0x15

    or-int/2addr v0, v5

    if-le v2, v3, :cond_1

    add-int/lit8 v2, v4, 0x1

    aget-byte v1, v1, v4

    if-ltz v1, :cond_0

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Invalid uleb128 integer encountered at offset 0x%x"

    invoke-direct {v0, v2, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    move v2, v4

    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v1, v1, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return v0
.end method

.method public readByte()I
    .registers 4

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->readByte(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return v1
.end method

.method public readByte(I)I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->readByte(I)I

    move-result p1

    return p1
.end method

.method public readInt()I
    .registers 4

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->readInt(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return v1
.end method

.method public readInt(I)I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->readInt(I)I

    move-result p1

    return p1
.end method

.method public readLargeUleb128()I
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->readUleb128(Z)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .registers 4

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->readLong(I)J

    move-result-wide v1

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return-wide v1
.end method

.method public readLong(I)J
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->readLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public readOptionalUint()I
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->readOptionalUint(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return v1
.end method

.method public readShort()I
    .registers 4

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->readShort(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return v1
.end method

.method public readShort(I)I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->readShort(I)I

    move-result p1

    return p1
.end method

.method public readSizedInt(I)I
    .registers 6

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v0, v0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iget p1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "Invalid size %d for sized int at offset 0x%x"

    invoke-direct {v0, p1, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x18

    goto :goto_0

    :pswitch_1
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x10

    goto :goto_0

    :pswitch_2
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x8

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :pswitch_3
    aget-byte v1, v1, v0

    :goto_1
    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget p1, p1, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readSizedLong(I)J
    .registers 14

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v0, v0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    const/16 v2, 0x30

    const/16 v3, 0x28

    const/16 v4, 0x20

    const/16 v5, 0x18

    const-wide/16 v6, 0xff

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iget p1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "Invalid size %d for sized long at offset 0x%x"

    invoke-direct {v0, p1, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    aget-byte v8, v1, v0

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v0, 0x1

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    add-int/lit8 v9, v0, 0x2

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    int-to-long v8, v8

    add-int/lit8 v10, v0, 0x3

    aget-byte v10, v1, v10

    int-to-long v10, v10

    and-long/2addr v10, v6

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    add-int/lit8 v5, v0, 0x4

    aget-byte v5, v1, v5

    int-to-long v10, v5

    and-long/2addr v10, v6

    shl-long v4, v10, v4

    or-long/2addr v4, v8

    add-int/lit8 v8, v0, 0x5

    aget-byte v8, v1, v8

    int-to-long v8, v8

    and-long/2addr v8, v6

    shl-long/2addr v8, v3

    or-long/2addr v4, v8

    add-int/lit8 v3, v0, 0x6

    aget-byte v3, v1, v3

    int-to-long v8, v3

    and-long/2addr v6, v8

    shl-long v2, v6, v2

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x7

    aget-byte v1, v1, v4

    int-to-long v4, v1

    const/16 v1, 0x38

    shl-long/2addr v4, v1

    goto/16 :goto_1

    :pswitch_1
    aget-byte v8, v1, v0

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v0, 0x1

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    add-int/lit8 v9, v0, 0x2

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    int-to-long v8, v8

    add-int/lit8 v10, v0, 0x3

    aget-byte v10, v1, v10

    int-to-long v10, v10

    and-long/2addr v10, v6

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    add-int/lit8 v5, v0, 0x4

    aget-byte v5, v1, v5

    int-to-long v10, v5

    and-long/2addr v10, v6

    shl-long v4, v10, v4

    or-long/2addr v4, v8

    add-int/lit8 v8, v0, 0x5

    aget-byte v8, v1, v8

    int-to-long v8, v8

    and-long/2addr v6, v8

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    add-int/lit8 v3, v0, 0x6

    aget-byte v1, v1, v3

    int-to-long v6, v1

    shl-long v1, v6, v2

    goto :goto_0

    :pswitch_2
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v8, v0, 0x1

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v2, v8

    add-int/lit8 v8, v0, 0x2

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v2, v8

    int-to-long v8, v2

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    int-to-long v10, v2

    and-long/2addr v10, v6

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    add-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    int-to-long v10, v2

    and-long/2addr v6, v10

    shl-long v4, v6, v4

    or-long/2addr v4, v8

    add-int/lit8 v2, v0, 0x5

    aget-byte v1, v1, v2

    int-to-long v1, v1

    shl-long/2addr v1, v3

    :goto_0
    or-long/2addr v1, v4

    move-wide v2, v1

    goto :goto_4

    :pswitch_3
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    int-to-long v2, v2

    add-int/lit8 v8, v0, 0x3

    aget-byte v8, v1, v8

    int-to-long v8, v8

    and-long/2addr v6, v8

    shl-long v5, v6, v5

    or-long/2addr v2, v5

    add-int/lit8 v5, v0, 0x4

    aget-byte v1, v1, v5

    int-to-long v5, v1

    shl-long v4, v5, v4

    goto :goto_1

    :pswitch_4
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    int-to-long v2, v2

    add-int/lit8 v4, v0, 0x3

    aget-byte v1, v1, v4

    int-to-long v6, v1

    shl-long v4, v6, v5

    :goto_1
    or-long/2addr v2, v4

    goto :goto_4

    :pswitch_5
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x10

    goto :goto_2

    :pswitch_6
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x8

    :goto_2
    or-int/2addr v1, v2

    goto :goto_3

    :pswitch_7
    aget-byte v1, v1, v0

    :goto_3
    int-to-long v2, v1

    :goto_4
    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget p1, p1, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return-wide v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readSizedRightExtendedInt(I)I
    .registers 6

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v0, v0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iget p1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "Invalid size %d for sized, right extended int at offset 0x%x"

    invoke-direct {v0, p1, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v1, v1, v3

    goto :goto_0

    :pswitch_1
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v1, v1, v3

    goto :goto_0

    :pswitch_2
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v0, 0x1

    aget-byte v1, v1, v3

    :goto_0
    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v2

    goto :goto_1

    :pswitch_3
    aget-byte v1, v1, v0

    shl-int/lit8 v1, v1, 0x18

    :goto_1
    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget p1, p1, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readSizedRightExtendedLong(I)J
    .registers 15

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v0, v0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    const/16 v2, 0x18

    const/16 v3, 0x20

    const/16 v4, 0x28

    const/16 v5, 0x30

    const/16 v6, 0x38

    const-wide/16 v7, 0xff

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iget p1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "Invalid size %d for sized, right extended long at offset 0x%x"

    invoke-direct {v0, p1, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    aget-byte v9, v1, v0

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v0, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    add-int/lit8 v10, v0, 0x2

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    int-to-long v9, v9

    add-int/lit8 v11, v0, 0x3

    aget-byte v11, v1, v11

    int-to-long v11, v11

    and-long/2addr v11, v7

    shl-long/2addr v11, v2

    or-long/2addr v9, v11

    add-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    int-to-long v11, v2

    and-long/2addr v11, v7

    shl-long v2, v11, v3

    or-long/2addr v2, v9

    add-int/lit8 v9, v0, 0x5

    aget-byte v9, v1, v9

    int-to-long v9, v9

    and-long/2addr v9, v7

    shl-long/2addr v9, v4

    or-long/2addr v2, v9

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v9, v4

    and-long/2addr v7, v9

    shl-long v4, v7, v5

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x7

    aget-byte v1, v1, v4

    goto/16 :goto_0

    :pswitch_1
    aget-byte v9, v1, v0

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v10, v0, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    int-to-long v9, v9

    add-int/lit8 v11, v0, 0x2

    aget-byte v11, v1, v11

    int-to-long v11, v11

    and-long/2addr v11, v7

    shl-long/2addr v11, v2

    or-long/2addr v9, v11

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    int-to-long v11, v2

    and-long/2addr v11, v7

    shl-long v2, v11, v3

    or-long/2addr v2, v9

    add-int/lit8 v9, v0, 0x4

    aget-byte v9, v1, v9

    int-to-long v9, v9

    and-long/2addr v9, v7

    shl-long/2addr v9, v4

    or-long/2addr v2, v9

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v9, v4

    and-long/2addr v7, v9

    shl-long v4, v7, v5

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v1, v1, v4

    goto/16 :goto_0

    :pswitch_2
    aget-byte v9, v1, v0

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    int-to-long v9, v9

    add-int/lit8 v11, v0, 0x1

    aget-byte v11, v1, v11

    int-to-long v11, v11

    and-long/2addr v11, v7

    shl-long/2addr v11, v2

    or-long/2addr v9, v11

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    int-to-long v11, v2

    and-long/2addr v11, v7

    shl-long v2, v11, v3

    or-long/2addr v2, v9

    add-int/lit8 v9, v0, 0x3

    aget-byte v9, v1, v9

    int-to-long v9, v9

    and-long/2addr v9, v7

    shl-long/2addr v9, v4

    or-long/2addr v2, v9

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v9, v4

    and-long/2addr v7, v9

    shl-long v4, v7, v5

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x5

    aget-byte v1, v1, v4

    goto :goto_0

    :pswitch_3
    aget-byte v9, v1, v0

    int-to-long v9, v9

    and-long/2addr v9, v7

    shl-long/2addr v9, v2

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    int-to-long v11, v2

    and-long/2addr v11, v7

    shl-long v2, v11, v3

    or-long/2addr v2, v9

    add-int/lit8 v9, v0, 0x2

    aget-byte v9, v1, v9

    int-to-long v9, v9

    and-long/2addr v9, v7

    shl-long/2addr v9, v4

    or-long/2addr v2, v9

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v9, v4

    and-long/2addr v7, v9

    shl-long v4, v7, v5

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x4

    aget-byte v1, v1, v4

    goto :goto_0

    :pswitch_4
    aget-byte v2, v1, v0

    int-to-long v9, v2

    and-long/2addr v9, v7

    shl-long v2, v9, v3

    add-int/lit8 v9, v0, 0x1

    aget-byte v9, v1, v9

    int-to-long v9, v9

    and-long/2addr v9, v7

    shl-long/2addr v9, v4

    or-long/2addr v2, v9

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v9, v4

    and-long/2addr v7, v9

    shl-long v4, v7, v5

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v1, v1, v4

    goto :goto_0

    :pswitch_5
    aget-byte v2, v1, v0

    int-to-long v2, v2

    and-long/2addr v2, v7

    shl-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    int-to-long v9, v4

    and-long/2addr v7, v9

    shl-long v4, v7, v5

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v1, v1, v4

    goto :goto_0

    :pswitch_6
    aget-byte v2, v1, v0

    int-to-long v2, v2

    and-long/2addr v2, v7

    shl-long/2addr v2, v5

    add-int/lit8 v4, v0, 0x1

    aget-byte v1, v1, v4

    :goto_0
    int-to-long v4, v1

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    goto :goto_1

    :pswitch_7
    aget-byte v1, v1, v0

    int-to-long v1, v1

    shl-long v2, v1, v6

    :goto_1
    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget p1, p1, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return-wide v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readSizedSmallUint(I)I
    .registers 7

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v0, v0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    iget p1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Invalid size %d for sized uint at offset 0x%x"

    invoke-direct {v0, p1, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    if-ltz v4, :cond_0

    shl-int/lit8 v3, v4, 0x18

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/jf/util/ExceptionWithContext;

    new-array v0, v2, [Ljava/lang/Object;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Encountered valid sized uint that is out of range at offset 0x%x"

    invoke-direct {p1, v1, v0}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :goto_0
    :pswitch_1
    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v3, v2

    :pswitch_2
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v3, v2

    :pswitch_3
    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v3

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget p1, p1, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readSleb128()I
    .registers 7

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v0, v0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_0

    shl-int/lit8 v0, v0, 0x19

    shr-int/lit8 v0, v0, 0x19

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/2addr v0, v3

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0x7

    or-int/2addr v0, v5

    if-gt v2, v3, :cond_1

    shl-int/lit8 v0, v0, 0x12

    shr-int/lit8 v0, v0, 0x12

    :goto_0
    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v4, 0x7f

    shl-int/lit8 v5, v5, 0xe

    or-int/2addr v0, v5

    if-gt v4, v3, :cond_2

    shl-int/lit8 v0, v0, 0xb

    shr-int/lit8 v0, v0, 0xb

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0x15

    or-int/2addr v0, v5

    if-gt v2, v3, :cond_3

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v4, 0x1

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    if-gt v1, v3, :cond_4

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v0, v1

    :goto_1
    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v1, v1, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return v0

    :cond_4
    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Invalid sleb128 integer encountered at offset 0x%x"

    invoke-direct {v0, v2, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public readSmallUint()I
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->readSmallUint(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return v1
.end method

.method public readSmallUint(I)I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->readSmallUint(I)I

    move-result p1

    return p1
.end method

.method public readSmallUleb128()I
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->readUleb128(Z)I

    move-result v0

    return v0
.end method

.method public readString(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v2, v2, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    iget v3, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    add-int/2addr v2, v3

    invoke-static {v1, v2, p1, v0}, Lorg/jf/util/Utf8Utils;->utf8BytesWithUtf16LengthToString([BII[I)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    const/4 v2, 0x0

    aget v0, v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return-object p1
.end method

.method public readUbyte()I
    .registers 4

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->readUbyte(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return v1
.end method

.method public readUbyte(I)I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->readUbyte(I)I

    move-result p1

    return p1
.end method

.method public readUshort()I
    .registers 4

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->readUshort(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return v1
.end method

.method public readUshort(I)I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->readUshort(I)I

    move-result p1

    return p1
.end method

.method public setOffset(I)V
    .registers 2

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return-void
.end method

.method public skipByte()V
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return-void
.end method

.method public skipUleb128()V
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v0, v0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-gez v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v1, v2

    if-gez v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-gez v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v1, v2

    if-gez v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Invalid uleb128 integer encountered at offset 0x%x"

    invoke-direct {v0, v2, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    move v2, v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget v0, v0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/jf/dexlib2/dexbacked/BaseDexReader;->offset:I

    return-void
.end method
