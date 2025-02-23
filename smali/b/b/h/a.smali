.class public final Lb/b/h/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/h/l;


# instance fields
.field a:[I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, La/a/a;->n(I)[I

    move-result-object p1

    iput-object p1, p0, Lb/b/h/a;->a:[I

    return-void
.end method

.method private c(I)V
    .registers 5

    iget-object v0, p0, Lb/b/h/a;->a:[I

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x5

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lb/b/h/a;->a:[I

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, La/a/a;->n(I)[I

    move-result-object p1

    iget-object v0, p0, Lb/b/h/a;->a:[I

    iget-object v1, p0, Lb/b/h/a;->a:[I

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lb/b/h/a;->a:[I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 6

    iget-object v0, p0, Lb/b/h/a;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final a(I)V
    .registers 4

    invoke-direct {p0, p1}, Lb/b/h/a;->c(I)V

    iget-object v0, p0, Lb/b/h/a;->a:[I

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, La/a/a;->a([IIZ)V

    return-void
.end method

.method public final a(Lb/b/h/l;)V
    .registers 6

    instance-of v0, p1, Lb/b/h/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Lb/b/h/a;

    iget-object v0, p1, Lb/b/h/a;->a:[I

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x5

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lb/b/h/a;->c(I)V

    iget-object v0, p0, Lb/b/h/a;->a:[I

    iget-object p1, p1, Lb/b/h/a;->a:[I

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, v0, v1

    aget v3, p1, v1

    or-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    instance-of v0, p1, Lb/b/h/o;

    if-eqz v0, :cond_4

    check-cast p1, Lb/b/h/o;

    iget-object v0, p1, Lb/b/h/o;->a:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->f()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v3, p1, Lb/b/h/o;->a:Lb/b/h/k;

    sub-int/2addr v0, v2

    invoke-virtual {v3, v0}, Lb/b/h/k;->b(I)I

    move-result v0

    invoke-direct {p0, v0}, Lb/b/h/a;->c(I)V

    :cond_2
    :goto_1
    iget-object v0, p1, Lb/b/h/o;->a:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->f()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lb/b/h/a;->a:[I

    iget-object v3, p1, Lb/b/h/o;->a:Lb/b/h/k;

    invoke-virtual {v3, v1}, Lb/b/h/k;->b(I)I

    move-result v3

    invoke-static {v0, v3, v2}, La/a/a;->a([IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    invoke-interface {p1}, Lb/b/h/l;->b()Lb/b/h/j;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Lb/b/h/j;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lb/b/h/j;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/b/h/a;->a(I)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final b()Lb/b/h/j;
    .registers 2

    new-instance v0, Lb/b/h/b;

    invoke-direct {v0, p0}, Lb/b/h/b;-><init>(Lb/b/h/a;)V

    return-object v0
.end method

.method public final b(I)Z
    .registers 3

    iget-object v0, p0, Lb/b/h/a;->a:[I

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x5

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lb/b/h/a;->a:[I

    invoke-static {v0, p1}, La/a/a;->a([II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/h/a;->a:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, La/a/a;->d([II)I

    move-result v1

    const/4 v3, 0x1

    :goto_0
    if-ltz v1, :cond_1

    if-nez v3, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/b/h/a;->a:[I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v1}, La/a/a;->d([II)I

    move-result v1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
