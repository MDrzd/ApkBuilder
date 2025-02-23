.class public final Lb/b/a/b/am;
.super Lcom/gmail/heagoo/pngeditor/n;


# instance fields
.field private final a:Lb/b/h/k;

.field private final b:Lb/b/h/k;

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/gmail/heagoo/pngeditor/n;-><init>(Z)V

    new-instance v0, Lb/b/h/k;

    invoke-direct {v0, p1}, Lb/b/h/k;-><init>(I)V

    iput-object v0, p0, Lb/b/a/b/am;->a:Lb/b/h/k;

    new-instance v0, Lb/b/h/k;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Lb/b/h/k;-><init>(I)V

    iput-object v0, p0, Lb/b/a/b/am;->b:Lb/b/h/k;

    iput p1, p0, Lb/b/a/b/am;->c:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 3

    iget-object v0, p0, Lb/b/a/b/am;->a:Lb/b/h/k;

    invoke-virtual {v0, p1}, Lb/b/h/k;->b(I)I

    move-result p1

    return p1
.end method

.method public final a(II)V
    .registers 4

    invoke-virtual {p0}, Lb/b/a/b/am;->d()V

    if-ltz p2, :cond_0

    iget-object v0, p0, Lb/b/a/b/am;->a:Lb/b/h/k;

    invoke-virtual {v0, p1}, Lb/b/h/k;->c(I)V

    iget-object p1, p0, Lb/b/a/b/am;->b:Lb/b/h/k;

    invoke-virtual {p1, p2}, Lb/b/h/k;->c(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "target < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)I
    .registers 3

    iget-object v0, p0, Lb/b/a/b/am;->b:Lb/b/h/k;

    invoke-virtual {v0, p1}, Lb/b/h/k;->b(I)I

    move-result p1

    return p1
.end method

.method public final b_()V
    .registers 2

    iget-object v0, p0, Lb/b/a/b/am;->a:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->b_()V

    iget-object v0, p0, Lb/b/a/b/am;->b:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->b_()V

    invoke-super {p0}, Lcom/gmail/heagoo/pngeditor/n;->b_()V

    return-void
.end method

.method public final c(I)V
    .registers 4

    invoke-virtual {p0}, Lb/b/a/b/am;->d()V

    if-ltz p1, :cond_1

    iget-object v0, p0, Lb/b/a/b/am;->b:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->f()I

    move-result v0

    iget v1, p0, Lb/b/a/b/am;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/b/a/b/am;->b:Lb/b/h/k;

    invoke-virtual {v0, p1}, Lb/b/h/k;->c(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "non-default elements not all set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "target < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lb/b/a/b/am;->c:I

    return v0
.end method

.method public final g()I
    .registers 3

    iget-object v0, p0, Lb/b/a/b/am;->b:Lb/b/h/k;

    iget v1, p0, Lb/b/a/b/am;->c:I

    invoke-virtual {v0, v1}, Lb/b/h/k;->b(I)I

    move-result v0

    return v0
.end method

.method public final h()Lb/b/h/k;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/am;->b:Lb/b/h/k;

    return-object v0
.end method

.method public final i()Lb/b/h/k;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/am;->a:Lb/b/h/k;

    return-object v0
.end method

.method public final j()V
    .registers 7

    invoke-virtual {p0}, Lb/b/a/b/am;->d()V

    iget v0, p0, Lb/b/a/b/am;->c:I

    iget-object v1, p0, Lb/b/a/b/am;->b:Lb/b/h/k;

    invoke-virtual {v1}, Lb/b/h/k;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lb/b/a/b/am;->b:Lb/b/h/k;

    invoke-virtual {v1, v0}, Lb/b/h/k;->b(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lb/b/a/b/am;->b:Lb/b/h/k;

    invoke-virtual {v4, v2}, Lb/b/h/k;->b(I)I

    move-result v4

    if-eq v4, v1, :cond_1

    if-eq v2, v3, :cond_0

    iget-object v5, p0, Lb/b/a/b/am;->b:Lb/b/h/k;

    invoke-virtual {v5, v3, v4}, Lb/b/h/k;->b(II)V

    iget-object v4, p0, Lb/b/a/b/am;->a:Lb/b/h/k;

    invoke-virtual {v4, v2}, Lb/b/h/k;->b(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lb/b/h/k;->b(II)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eq v3, v0, :cond_3

    iget-object v0, p0, Lb/b/a/b/am;->a:Lb/b/h/k;

    invoke-virtual {v0, v3}, Lb/b/h/k;->e(I)V

    iget-object v0, p0, Lb/b/a/b/am;->b:Lb/b/h/k;

    invoke-virtual {v0, v3, v1}, Lb/b/h/k;->b(II)V

    iget-object v0, p0, Lb/b/a/b/am;->b:Lb/b/h/k;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lb/b/h/k;->e(I)V

    iput v3, p0, Lb/b/a/b/am;->c:I

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incomplete instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
