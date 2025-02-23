.class final Ljackpal/androidterm/a/n;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:[B


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljackpal/androidterm/a/n;->a:I

    iput p2, p0, Ljackpal/androidterm/a/n;->b:I

    return-void
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/a/n;->c:[B

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljackpal/androidterm/a/n;->b()V

    :cond_0
    return-void
.end method

.method private b()V
    .registers 3

    iget v0, p0, Ljackpal/androidterm/a/n;->b:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Ljackpal/androidterm/a/n;->c:[B

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljackpal/androidterm/a/n;->b:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Ljackpal/androidterm/a/n;->a:I

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/a/n;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(II)V
    .registers 6

    mul-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Ljackpal/androidterm/a/n;->c:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 p1, p1, 0x2

    shr-int/lit8 p2, p2, 0x10

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method


# virtual methods
.method final a(I)I
    .registers 5

    iget-object v0, p0, Ljackpal/androidterm/a/n;->c:[B

    if-nez v0, :cond_0

    iget p1, p0, Ljackpal/androidterm/a/n;->a:I

    return p1

    :cond_0
    mul-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Ljackpal/androidterm/a/n;->c:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x2

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v1

    return p1
.end method

.method final a(II)V
    .registers 4

    iget v0, p0, Ljackpal/androidterm/a/n;->a:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a/n;->c:[B

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Ljackpal/androidterm/a/n;->a()V

    invoke-direct {p0, p1, p2}, Ljackpal/androidterm/a/n;->b(II)V

    return-void
.end method

.method final a(ILjackpal/androidterm/a/n;II)V
    .registers 6

    iget-object v0, p0, Ljackpal/androidterm/a/n;->c:[B

    if-nez v0, :cond_0

    iget-object v0, p2, Ljackpal/androidterm/a/n;->c:[B

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p3, :cond_0

    iget v0, p0, Ljackpal/androidterm/a/n;->b:I

    if-ne p4, v0, :cond_0

    iget p1, p0, Ljackpal/androidterm/a/n;->a:I

    iput p1, p2, Ljackpal/androidterm/a/n;->a:I

    return-void

    :cond_0
    invoke-direct {p0}, Ljackpal/androidterm/a/n;->a()V

    invoke-direct {p2}, Ljackpal/androidterm/a/n;->a()V

    iget-object v0, p0, Ljackpal/androidterm/a/n;->c:[B

    mul-int/lit8 p1, p1, 0x3

    iget-object p2, p2, Ljackpal/androidterm/a/n;->c:[B

    mul-int/lit8 p3, p3, 0x3

    mul-int/lit8 p4, p4, 0x3

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
