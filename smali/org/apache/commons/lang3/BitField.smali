.class public Lorg/apache/commons/lang3/BitField;
.super Ljava/lang/Object;


# instance fields
.field private final _mask:I

.field private final _shift_count:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/apache/commons/lang3/BitField;->_shift_count:I

    return-void
.end method


# virtual methods
.method public clear(I)I
    .registers 3

    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    return p1
.end method

.method public clearByte(B)B
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clear(I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public clearShort(S)S
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clear(I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public getRawValue(I)I
    .registers 3

    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    and-int/2addr p1, v0

    return p1
.end method

.method public getShortRawValue(S)S
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->getRawValue(I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public getShortValue(S)S
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->getValue(I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public getValue(I)I
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->getRawValue(I)I

    move-result p1

    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_shift_count:I

    shr-int/2addr p1, v0

    return p1
.end method

.method public isAllSet(I)Z
    .registers 3

    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    and-int/2addr p1, v0

    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSet(I)Z
    .registers 3

    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public set(I)I
    .registers 3

    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    or-int/2addr p1, v0

    return p1
.end method

.method public setBoolean(IZ)I
    .registers 3

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->set(I)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clear(I)I

    move-result p1

    return p1
.end method

.method public setByte(B)B
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->set(I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public setByteBoolean(BZ)B
    .registers 3

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->setByte(B)B

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clearByte(B)B

    move-result p1

    return p1
.end method

.method public setShort(S)S
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->set(I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public setShortBoolean(SZ)S
    .registers 3

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->setShort(S)S

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clearShort(S)S

    move-result p1

    return p1
.end method

.method public setShortValue(SS)S
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/BitField;->setValue(II)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public setValue(II)I
    .registers 4

    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_shift_count:I

    shl-int/2addr p2, v0

    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    return p1
.end method
