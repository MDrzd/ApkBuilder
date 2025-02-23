.class public Lorg/jf/dexlib2/writer/DexDataWriter;
.super Ljava/io/BufferedOutputStream;


# instance fields
.field private filePosition:I

.field private tempBuf:[B

.field private zeroBuf:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 4
    .param p1    # Ljava/io/OutputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/high16 v0, 0x40000

    invoke-direct {p0, p1, p2, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;-><init>(Ljava/io/OutputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;II)V
    .registers 4
    .param p1    # Ljava/io/OutputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/16 p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->tempBuf:[B

    const/4 p1, 0x3

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->zeroBuf:[B

    iput p2, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->filePosition:I

    return-void
.end method

.method public static writeInt(Ljava/io/OutputStream;I)V
    .registers 3

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeSleb128(Ljava/io/OutputStream;I)V
    .registers 3

    if-ltz p1, :cond_1

    :goto_0
    const/16 v0, 0x3f

    if-le p1, v0, :cond_0

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x7f

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_1
    :goto_1
    const/16 v0, -0x40

    if-ge p1, v0, :cond_0

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x7

    goto :goto_1
.end method

.method public static writeUleb128(Ljava/io/OutputStream;I)V
    .registers 3

    :goto_0
    const/16 v0, 0x7f

    if-le p1, v0, :cond_0

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public align()V
    .registers 4

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    neg-int v0, v0

    and-int/lit8 v0, v0, 0x3

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->zeroBuf:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->write([BII)V

    :cond_0
    return-void
.end method

.method public getPosition()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->filePosition:I

    return v0
.end method

.method public write(I)V
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->filePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->filePosition:I

    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget v0, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->filePosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->filePosition:I

    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    return-void
.end method

.method public writeEncodedDouble(ID)V
    .registers 4

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeRightZeroExtendedLong(IJ)V

    return-void
.end method

.method public writeEncodedFloat(IF)V
    .registers 3

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeRightZeroExtendedInt(II)V

    return-void
.end method

.method public writeEncodedInt(II)V
    .registers 8

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x7f

    if-le p2, v2, :cond_1

    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->tempBuf:[B

    add-int/lit8 v3, v1, 0x1

    int-to-byte v4, p2

    aput-byte v4, v2, v1

    shr-int/lit8 p2, p2, 0x8

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v2, -0x80

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->tempBuf:[B

    add-int/lit8 v3, v1, 0x1

    int-to-byte v4, p2

    aput-byte v4, v2, v1

    shr-int/lit8 p2, p2, 0x8

    move v1, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->tempBuf:[B

    add-int/lit8 v3, v1, 0x1

    int-to-byte p2, p2

    aput-byte p2, v2, v1

    add-int/lit8 p2, v3, -0x1

    invoke-virtual {p0, p1, p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedValueHeader(II)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->tempBuf:[B

    invoke-virtual {p0, p1, v0, v3}, Lorg/jf/dexlib2/writer/DexDataWriter;->write([BII)V

    return-void
.end method

.method public writeEncodedLong(IJ)V
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-ltz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x7f

    cmp-long v5, p2, v3

    if-lez v5, :cond_1

    iget-object v3, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->tempBuf:[B

    add-int/lit8 v4, v2, 0x1

    long-to-int v5, p2

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    shr-long/2addr p2, v0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-wide/16 v3, -0x80

    cmp-long v5, p2, v3

    if-gez v5, :cond_1

    iget-object v3, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->tempBuf:[B

    add-int/lit8 v4, v2, 0x1

    long-to-int v5, p2

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    shr-long/2addr p2, v0

    move v2, v4

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->tempBuf:[B

    add-int/lit8 v3, v2, 0x1

    long-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, v0, v2

    add-int/lit8 p2, v3, -0x1

    invoke-virtual {p0, p1, p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedValueHeader(II)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->tempBuf:[B

    invoke-virtual {p0, p1, v1, v3}, Lorg/jf/dexlib2/writer/DexDataWriter;->write([BII)V

    return-void
.end method

.method public writeEncodedUint(II)V
    .registers 8

    const/4 v0, 0x0

    move v1, p2

    const/4 p2, 0x0

    :goto_0
    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->tempBuf:[B

    add-int/lit8 v3, p2, 0x1

    int-to-byte v4, v1

    aput-byte v4, v2, p2

    ushr-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    add-int/lit8 p2, v3, -0x1

    invoke-virtual {p0, p1, p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedValueHeader(II)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->tempBuf:[B

    invoke-virtual {p0, p1, v0, v3}, Lorg/jf/dexlib2/writer/DexDataWriter;->write([BII)V

    return-void

    :cond_0
    move p2, v3

    goto :goto_0
.end method

.method public writeEncodedValueHeader(II)V
    .registers 3

    shl-int/lit8 p2, p2, 0x5

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    return-void
.end method

.method public writeInt(I)V
    .registers 2

    invoke-static {p0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public writeLong(J)V
    .registers 4

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    const/16 v0, 0x20

    shr-long/2addr p1, v0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    return-void
.end method

.method protected writeRightZeroExtendedInt(II)V
    .registers 7

    const/4 v0, 0x3

    :goto_0
    iget-object v1, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->tempBuf:[B

    add-int/lit8 v2, v0, -0x1

    const/high16 v3, -0x1000000

    and-int/2addr v3, p2

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    shl-int/lit8 p2, p2, 0x8

    if-nez p2, :cond_0

    add-int/lit8 v2, v2, 0x1

    rsub-int/lit8 p2, v2, 0x4

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedValueHeader(II)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->tempBuf:[B

    invoke-virtual {p0, p1, v2, p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->write([BII)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected writeRightZeroExtendedLong(IJ)V
    .registers 10

    const/4 v0, 0x7

    :goto_0
    iget-object v1, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->tempBuf:[B

    add-int/lit8 v2, v0, -0x1

    const-wide/high16 v3, -0x100000000000000L

    and-long/2addr v3, p2

    const/16 v5, 0x38

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    const/16 v0, 0x8

    shl-long/2addr p2, v0

    const-wide/16 v3, 0x0

    cmp-long v1, p2, v3

    if-nez v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 p2, v0, -0x1

    invoke-virtual {p0, p1, p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedValueHeader(II)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->tempBuf:[B

    invoke-virtual {p0, p1, v2, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->write([BII)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public writeShort(I)V
    .registers 5

    const/16 v0, -0x8000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    shr-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    return-void

    :cond_0
    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Short value out of range: %d"

    invoke-direct {v0, p1, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public writeSleb128(I)V
    .registers 2

    invoke-static {p0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeSleb128(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->tempBuf:[B

    array-length v1, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    if-gt v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->tempBuf:[B

    :cond_0
    iget-object v1, p0, Lorg/jf/dexlib2/writer/DexDataWriter;->tempBuf:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-eqz v5, :cond_1

    if-ge v5, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    move v4, v6

    goto :goto_1

    :cond_1
    const/16 v7, 0x800

    if-ge v5, v7, :cond_2

    add-int/lit8 v7, v4, 0x1

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x1f

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    add-int/lit8 v4, v7, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v7

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v4, 0x1

    shr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0xf

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    add-int/lit8 v4, v7, 0x1

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v6

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    add-int/lit8 v7, v4, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    move v4, v7

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1, v2, v4}, Lorg/jf/dexlib2/writer/DexDataWriter;->write([BII)V

    return-void
.end method

.method public writeUbyte(I)V
    .registers 5

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    return-void

    :cond_0
    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Unsigned byte value out of range: %d"

    invoke-direct {v0, p1, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public writeUleb128(I)V
    .registers 2

    invoke-static {p0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public writeUshort(I)V
    .registers 5

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    shr-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    return-void

    :cond_0
    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Unsigned short value out of range: %d"

    invoke-direct {v0, p1, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
