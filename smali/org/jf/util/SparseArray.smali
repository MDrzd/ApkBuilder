.class public Lorg/jf/util/SparseArray;
.super Ljava/lang/Object;


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jf/util/SparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/jf/util/SparseArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jf/util/SparseArray;->mGarbage:Z

    new-array v1, p1, [I

    iput-object v1, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    iput v0, p0, Lorg/jf/util/SparseArray;->mSize:I

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

.method private gc()V
    .registers 9

    iget v0, p0, Lorg/jf/util/SparseArray;->mSize:I

    iget-object v1, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    iget-object v2, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v6, v2, v4

    sget-object v7, Lorg/jf/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    aget v7, v1, v4

    aput v7, v1, v5

    aput-object v6, v2, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lorg/jf/util/SparseArray;->mGarbage:Z

    iput v5, p0, Lorg/jf/util/SparseArray;->mSize:I

    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .registers 9

    iget v0, p0, Lorg/jf/util/SparseArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    iget v1, p0, Lorg/jf/util/SparseArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/jf/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/jf/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/jf/util/SparseArray;->mSize:I

    iget-object v1, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/jf/util/SparseArray;->gc()V

    :cond_1
    iget v0, p0, Lorg/jf/util/SparseArray;->mSize:I

    iget-object v1, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    iget-object v4, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    iput-object v1, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    aput p1, v1, v0

    iget-object p1, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jf/util/SparseArray;->mSize:I

    return-void
.end method

.method public clear()V
    .registers 6

    iget v0, p0, Lorg/jf/util/SparseArray;->mSize:I

    iget-object v1, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, 0x0

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lorg/jf/util/SparseArray;->mSize:I

    iput-boolean v2, p0, Lorg/jf/util/SparseArray;->mGarbage:Z

    return-void
.end method

.method public delete(I)V
    .registers 5

    iget-object v0, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    iget v1, p0, Lorg/jf/util/SparseArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lorg/jf/util/SparseArray;->binarySearch([IIII)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lorg/jf/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Lorg/jf/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/jf/util/SparseArray;->mGarbage:Z

    :cond_0
    return-void
.end method

.method public ensureCapacity(I)V
    .registers 6

    iget-boolean v0, p0, Lorg/jf/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jf/util/SparseArray;->mSize:I

    iget-object v1, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/jf/util/SparseArray;->gc()V

    :cond_0
    iget-object v0, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    new-array v0, p1, [I

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    iget-object v2, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    iput-object p1, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jf/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    iget v1, p0, Lorg/jf/util/SparseArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lorg/jf/util/SparseArray;->binarySearch([IIII)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lorg/jf/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public getValues()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public indexOfKey(I)I
    .registers 5

    iget-boolean v0, p0, Lorg/jf/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jf/util/SparseArray;->gc()V

    :cond_0
    iget-object v0, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/jf/util/SparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Lorg/jf/util/SparseArray;->binarySearch([IIII)I

    move-result p1

    return p1
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4

    iget-boolean v0, p0, Lorg/jf/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jf/util/SparseArray;->gc()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/jf/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public keyAt(I)I
    .registers 3

    iget-boolean v0, p0, Lorg/jf/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jf/util/SparseArray;->gc()V

    :cond_0
    iget-object v0, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    aget p1, v0, p1

    return p1
.end method

.method public put(ILjava/lang/Object;)V
    .registers 9

    iget-object v0, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    iget v1, p0, Lorg/jf/util/SparseArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lorg/jf/util/SparseArray;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/jf/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v3, Lorg/jf/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    aput p1, v1, v0

    iget-object p1, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    return-void

    :cond_1
    iget-boolean v1, p0, Lorg/jf/util/SparseArray;->mGarbage:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/jf/util/SparseArray;->mSize:I

    iget-object v3, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    invoke-direct {p0}, Lorg/jf/util/SparseArray;->gc()V

    iget-object v0, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    iget v1, p0, Lorg/jf/util/SparseArray;->mSize:I

    invoke-static {v0, v2, v1, p1}, Lorg/jf/util/SparseArray;->binarySearch([IIII)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :cond_2
    iget v1, p0, Lorg/jf/util/SparseArray;->mSize:I

    iget-object v3, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    array-length v3, v3

    if-lt v1, v3, :cond_3

    iget v1, p0, Lorg/jf/util/SparseArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    array-length v3, v3

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v3, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    iget-object v5, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    iput-object v1, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    :cond_3
    iget v1, p0, Lorg/jf/util/SparseArray;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lorg/jf/util/SparseArray;->mSize:I

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget v3, p0, Lorg/jf/util/SparseArray;->mSize:I

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v1, p0, Lorg/jf/util/SparseArray;->mKeys:[I

    aput p1, v1, v0

    iget-object p1, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    iget p1, p0, Lorg/jf/util/SparseArray;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jf/util/SparseArray;->mSize:I

    return-void
.end method

.method public remove(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/jf/util/SparseArray;->delete(I)V

    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4

    iget-boolean v0, p0, Lorg/jf/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jf/util/SparseArray;->gc()V

    :cond_0
    iget-object v0, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public size()I
    .registers 2

    iget-boolean v0, p0, Lorg/jf/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jf/util/SparseArray;->gc()V

    :cond_0
    iget v0, p0, Lorg/jf/util/SparseArray;->mSize:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Lorg/jf/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jf/util/SparseArray;->gc()V

    :cond_0
    iget-object v0, p0, Lorg/jf/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
