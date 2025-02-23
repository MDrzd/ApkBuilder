.class public Lorg/jf/util/SparseIntArray;
.super Ljava/lang/Object;


# instance fields
.field private mKeys:[I

.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/jf/util/SparseIntArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/jf/util/SparseIntArray;->mValues:[I

    const/4 p1, 0x0

    iput p1, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    return-void
.end method

.method private static binarySearch([IIII)I
    .registers 8

    add-int/2addr p2, p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    move v1, p1

    move p1, p2

    :goto_0
    sub-int v2, p1, v1

    if-le v2, v0, :cond_1

    add-int v2, p1, v1

    div-int/lit8 v2, v2, 0x2

    aget v3, p0, v2

    if-ge v3, p3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_0

    :cond_1
    if-ne p1, p2, :cond_2

    xor-int/lit8 p0, p2, -0x1

    return p0

    :cond_2
    aget p0, p0, p1

    if-ne p0, p3, :cond_3

    return p1

    :cond_3
    xor-int/lit8 p0, p1, -0x1

    return p0
.end method


# virtual methods
.method public append(II)V
    .registers 9

    iget v0, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/jf/util/SparseIntArray;->put(II)V

    return-void

    :cond_0
    iget v0, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    iget-object v1, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [I

    iget-object v3, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    iget-object v4, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/jf/util/SparseIntArray;->mValues:[I

    iget-object v4, p0, Lorg/jf/util/SparseIntArray;->mValues:[I

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    iput-object v1, p0, Lorg/jf/util/SparseIntArray;->mValues:[I

    :cond_1
    iget-object v1, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    aput p1, v1, v0

    iget-object p1, p0, Lorg/jf/util/SparseIntArray;->mValues:[I

    aput p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    return-void
.end method

.method public delete(I)V
    .registers 5

    iget-object v0, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lorg/jf/util/SparseIntArray;->binarySearch([IIII)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/jf/util/SparseIntArray;->removeAt(I)V

    :cond_0
    return-void
.end method

.method public get(I)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jf/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public get(II)I
    .registers 6

    iget-object v0, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lorg/jf/util/SparseIntArray;->binarySearch([IIII)I

    move-result p1

    if-gez p1, :cond_0

    return p2

    :cond_0
    iget-object p2, p0, Lorg/jf/util/SparseIntArray;->mValues:[I

    aget p1, p2, p1

    return p1
.end method

.method public getClosestSmaller(I)I
    .registers 5

    iget-object v0, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lorg/jf/util/SparseIntArray;->binarySearch([IIII)I

    move-result p1

    if-gez p1, :cond_1

    xor-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    iget-object v0, p0, Lorg/jf/util/SparseIntArray;->mValues:[I

    aget p1, v0, p1

    return p1

    :cond_1
    iget-object v0, p0, Lorg/jf/util/SparseIntArray;->mValues:[I

    aget p1, v0, p1

    return p1
.end method

.method public indexOfKey(I)I
    .registers 5

    iget-object v0, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lorg/jf/util/SparseIntArray;->binarySearch([IIII)I

    move-result p1

    return p1
.end method

.method public indexOfValue(I)I
    .registers 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jf/util/SparseIntArray;->mValues:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public keyAt(I)I
    .registers 3

    iget-object v0, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    aget p1, v0, p1

    return p1
.end method

.method public put(II)V
    .registers 9

    iget-object v0, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lorg/jf/util/SparseIntArray;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lorg/jf/util/SparseIntArray;->mValues:[I

    aput p2, p1, v0

    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    iget-object v3, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    array-length v3, v3

    if-lt v1, v3, :cond_1

    iget v1, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    array-length v3, v3

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v3, v1, [I

    new-array v1, v1, [I

    iget-object v4, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    iget-object v5, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/jf/util/SparseIntArray;->mValues:[I

    iget-object v5, p0, Lorg/jf/util/SparseIntArray;->mValues:[I

    array-length v5, v5

    invoke-static {v4, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    iput-object v1, p0, Lorg/jf/util/SparseIntArray;->mValues:[I

    :cond_1
    iget v1, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/jf/util/SparseIntArray;->mValues:[I

    iget v3, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v1, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    aput p1, v1, v0

    iget-object p1, p0, Lorg/jf/util/SparseIntArray;->mValues:[I

    aput p2, p1, v0

    iget p1, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    return-void
.end method

.method public removeAt(I)V
    .registers 6

    iget-object v0, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/jf/util/SparseIntArray;->mKeys:[I

    iget v3, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/jf/util/SparseIntArray;->mValues:[I

    iget-object v2, p0, Lorg/jf/util/SparseIntArray;->mValues:[I

    iget v3, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/jf/util/SparseIntArray;->mSize:I

    return v0
.end method

.method public valueAt(I)I
    .registers 3

    iget-object v0, p0, Lorg/jf/util/SparseIntArray;->mValues:[I

    aget p1, v0, p1

    return p1
.end method
