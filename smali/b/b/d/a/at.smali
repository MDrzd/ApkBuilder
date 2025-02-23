.class public final Lb/b/d/a/at;
.super Lb/b/d/a/e;


# instance fields
.field private final a:I

.field private final b:[I


# direct methods
.method public constructor <init>(Lb/b/d/a/i;IIII[I)V
    .registers 15

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lb/b/d/a/e;-><init>(Lb/b/d/a/i;IIIIJ)V

    int-to-short p1, p5

    if-ne p5, p1, :cond_0

    iput p5, p0, Lb/b/d/a/at;->a:I

    iput-object p6, p0, Lb/b/d/a/at;->b:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "protoIndex doesn\'t fit in a short: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(II)Lb/b/d/a/e;
    .registers 11

    new-instance v7, Lb/b/d/a/at;

    invoke-virtual {p0}, Lb/b/d/a/at;->a()Lb/b/d/a/i;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/d/a/at;->b()I

    move-result v2

    invoke-virtual {p0}, Lb/b/d/a/at;->f()I

    move-result v4

    iget-object v6, p0, Lb/b/d/a/at;->b:[I

    move-object v0, v7

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lb/b/d/a/at;-><init>(Lb/b/d/a/i;IIII[I)V

    return-object v7
.end method

.method public final d(I)Lb/b/d/a/e;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "use withProtoIndex to update both the method and proto indices for invoke-polymorphic"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m()I
    .registers 2

    iget-object v0, p0, Lb/b/d/a/at;->b:[I

    array-length v0, v0

    return v0
.end method

.method public final p()I
    .registers 3

    iget-object v0, p0, Lb/b/d/a/at;->b:[I

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lb/b/d/a/at;->b:[I

    aget v0, v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public final q()I
    .registers 3

    iget-object v0, p0, Lb/b/d/a/at;->b:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lb/b/d/a/at;->b:[I

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()I
    .registers 3

    iget-object v0, p0, Lb/b/d/a/at;->b:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lb/b/d/a/at;->b:[I

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final u()S
    .registers 2

    iget v0, p0, Lb/b/d/a/at;->a:I

    int-to-short v0, v0

    return v0
.end method

.method public final v()I
    .registers 3

    iget-object v0, p0, Lb/b/d/a/at;->b:[I

    array-length v0, v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lb/b/d/a/at;->b:[I

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()I
    .registers 3

    iget-object v0, p0, Lb/b/d/a/at;->b:[I

    array-length v0, v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lb/b/d/a/at;->b:[I

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
