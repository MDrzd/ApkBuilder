.class public final Lb/b/h/o;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/h/l;


# instance fields
.field final a:Lb/b/h/k;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/b/h/k;

    invoke-direct {v0}, Lb/b/h/k;-><init>()V

    iput-object v0, p0, Lb/b/h/o;->a:Lb/b/h/k;

    iget-object v0, p0, Lb/b/h/o;->a:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->j()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lb/b/h/o;->a:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->f()I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lb/b/h/o;->a:Lb/b/h/k;

    invoke-virtual {v0, p1}, Lb/b/h/k;->g(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v1, p0, Lb/b/h/o;->a:Lb/b/h/k;

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    invoke-virtual {v1, v0, p1}, Lb/b/h/k;->c(II)V

    :cond_0
    return-void
.end method

.method public final a(Lb/b/h/l;)V
    .registers 8

    instance-of v0, p1, Lb/b/h/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p1, Lb/b/h/o;

    iget-object v0, p0, Lb/b/h/o;->a:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->f()I

    move-result v0

    iget-object v2, p1, Lb/b/h/o;->a:Lb/b/h/k;

    invoke-virtual {v2}, Lb/b/h/k;->f()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    if-ge v1, v2, :cond_2

    if-ge v3, v0, :cond_2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v4, p1, Lb/b/h/o;->a:Lb/b/h/k;

    invoke-virtual {v4, v1}, Lb/b/h/k;->b(I)I

    move-result v4

    iget-object v5, p0, Lb/b/h/o;->a:Lb/b/h/k;

    invoke-virtual {v5, v3}, Lb/b/h/k;->b(I)I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v4, p1, Lb/b/h/o;->a:Lb/b/h/k;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v1}, Lb/b/h/k;->b(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lb/b/h/o;->a(I)V

    move v1, v5

    goto :goto_0

    :cond_1
    if-eq v1, v2, :cond_2

    :goto_1
    if-ge v3, v0, :cond_0

    iget-object v4, p1, Lb/b/h/o;->a:Lb/b/h/k;

    invoke-virtual {v4, v1}, Lb/b/h/k;->b(I)I

    move-result v4

    iget-object v5, p0, Lb/b/h/o;->a:Lb/b/h/k;

    invoke-virtual {v5, v3}, Lb/b/h/k;->b(I)I

    move-result v5

    if-lt v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v2, :cond_3

    iget-object v0, p1, Lb/b/h/o;->a:Lb/b/h/k;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v1}, Lb/b/h/k;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lb/b/h/o;->a(I)V

    move v1, v3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lb/b/h/o;->a:Lb/b/h/k;

    invoke-virtual {p1}, Lb/b/h/k;->j()V

    return-void

    :cond_4
    instance-of v0, p1, Lb/b/h/a;

    if-eqz v0, :cond_5

    check-cast p1, Lb/b/h/a;

    :goto_3
    if-ltz v1, :cond_3

    iget-object v0, p0, Lb/b/h/o;->a:Lb/b/h/k;

    invoke-virtual {v0, v1}, Lb/b/h/k;->c(I)V

    iget-object v0, p1, Lb/b/h/a;->a:[I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, La/a/a;->d([II)I

    move-result v1

    goto :goto_3

    :cond_5
    invoke-interface {p1}, Lb/b/h/l;->b()Lb/b/h/j;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Lb/b/h/j;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lb/b/h/j;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/b/h/o;->a(I)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public final b()Lb/b/h/j;
    .registers 2

    new-instance v0, Lb/b/h/p;

    invoke-direct {v0, p0}, Lb/b/h/p;-><init>(Lb/b/h/o;)V

    return-object v0
.end method

.method public final b(I)Z
    .registers 3

    iget-object v0, p0, Lb/b/h/o;->a:Lb/b/h/k;

    invoke-virtual {v0, p1}, Lb/b/h/k;->f(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/h/o;->a:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
