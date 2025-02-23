.class public final Lb/b/h/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>([B)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lb/b/h/c;-><init>([BII)V

    return-void
.end method

.method private constructor <init>([BII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-ltz p3, :cond_1

    array-length p2, p1

    if-gt p3, p2, :cond_0

    iput-object p1, p0, Lb/b/h/c;->a:[B

    const/4 p1, 0x0

    iput p1, p0, Lb/b/h/c;->b:I

    iput p3, p0, Lb/b/h/c;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end > bytes.length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end < start"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bytes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lb/b/h/c;)I
    .registers 1

    iget p0, p0, Lb/b/h/c;->c:I

    return p0
.end method

.method static synthetic a(Lb/b/h/c;I)I
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/c;->i(I)I

    move-result p0

    return p0
.end method

.method private b(II)V
    .registers 6

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    iget v0, p0, Lb/b/h/c;->c:I

    if-gt p2, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; actual size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lb/b/h/c;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lb/b/h/c;)[B
    .registers 1

    iget-object p0, p0, Lb/b/h/c;->a:[B

    return-object p0
.end method

.method static synthetic c(Lb/b/h/c;)I
    .registers 1

    iget p0, p0, Lb/b/h/c;->b:I

    return p0
.end method

.method private c()Lb/b/h/e;
    .registers 2

    new-instance v0, Lb/b/h/e;

    invoke-direct {v0, p0}, Lb/b/h/e;-><init>(Lb/b/h/c;)V

    return-object v0
.end method

.method private h(I)I
    .registers 4

    iget-object v0, p0, Lb/b/h/c;->a:[B

    iget v1, p0, Lb/b/h/c;->b:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method private i(I)I
    .registers 4

    iget-object v0, p0, Lb/b/h/c;->a:[B

    iget v1, p0, Lb/b/h/c;->b:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/b/h/c;->c:I

    return v0
.end method

.method public final a(I)I
    .registers 3

    iget v0, p0, Lb/b/h/c;->b:I

    add-int/2addr v0, p1

    return v0
.end method

.method public final a(II)Lb/b/h/c;
    .registers 4

    invoke-direct {p0, p1, p2}, Lb/b/h/c;->b(II)V

    iget-object v0, p0, Lb/b/h/c;->a:[B

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    new-instance p2, Lb/b/h/c;

    invoke-direct {p2, p1}, Lb/b/h/c;-><init>([B)V

    return-object p2
.end method

.method public final a([BI)V
    .registers 6

    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lb/b/h/c;->c:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lb/b/h/c;->a:[B

    iget v1, p0, Lb/b/h/c;->b:I

    iget v2, p0, Lb/b/h/c;->c:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "(out.length - offset) < size()"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)I
    .registers 3

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0}, Lb/b/h/c;->b(II)V

    invoke-direct {p0, p1}, Lb/b/h/c;->h(I)I

    move-result p1

    return p1
.end method

.method public final b()Lb/b/h/d;
    .registers 3

    new-instance v0, Lb/b/h/d;

    invoke-direct {p0}, Lb/b/h/c;->c()Lb/b/h/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/b/h/d;-><init>(Lb/b/h/e;)V

    return-object v0
.end method

.method public final c(I)I
    .registers 3

    add-int/lit8 v0, p1, 0x2

    invoke-direct {p0, p1, v0}, Lb/b/h/c;->b(II)V

    invoke-direct {p0, p1}, Lb/b/h/c;->h(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lb/b/h/c;->i(I)I

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public final d(I)I
    .registers 4

    add-int/lit8 v0, p1, 0x4

    invoke-direct {p0, p1, v0}, Lb/b/h/c;->b(II)V

    invoke-direct {p0, p1}, Lb/b/h/c;->h(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lb/b/h/c;->i(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-direct {p0, v1}, Lb/b/h/c;->i(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    invoke-direct {p0, p1}, Lb/b/h/c;->i(I)I

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public final e(I)J
    .registers 7

    add-int/lit8 v0, p1, 0x8

    invoke-direct {p0, p1, v0}, Lb/b/h/c;->b(II)V

    invoke-direct {p0, p1}, Lb/b/h/c;->h(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lb/b/h/c;->i(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-direct {p0, v1}, Lb/b/h/c;->i(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    invoke-direct {p0, v1}, Lb/b/h/c;->i(I)I

    move-result v1

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x4

    invoke-direct {p0, v1}, Lb/b/h/c;->h(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x5

    invoke-direct {p0, v2}, Lb/b/h/c;->i(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x6

    invoke-direct {p0, v2}, Lb/b/h/c;->i(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x7

    invoke-direct {p0, p1}, Lb/b/h/c;->i(I)I

    move-result p1

    or-int/2addr p1, v1

    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v3, v0

    const/16 p1, 0x20

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public final f(I)I
    .registers 3

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0}, Lb/b/h/c;->b(II)V

    invoke-direct {p0, p1}, Lb/b/h/c;->i(I)I

    move-result p1

    return p1
.end method

.method public final g(I)I
    .registers 3

    add-int/lit8 v0, p1, 0x2

    invoke-direct {p0, p1, v0}, Lb/b/h/c;->b(II)V

    invoke-direct {p0, p1}, Lb/b/h/c;->i(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lb/b/h/c;->i(I)I

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method
