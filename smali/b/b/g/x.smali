.class public final Lb/b/g/x;
.super Lb/b/g/aj;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Lb/b/f/b/i;


# direct methods
.method constructor <init>(Lb/b/f/b/i;Lb/b/g/af;)V
    .registers 4

    invoke-virtual {p1}, Lb/b/f/b/i;->g()Lb/b/f/b/r;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lb/b/g/aj;-><init>(Lb/b/f/b/r;Lb/b/g/af;)V

    iput-object p1, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    return-void
.end method


# virtual methods
.method public final a()Lb/b/f/b/u;
    .registers 2

    iget-object v0, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {v0}, Lb/b/f/b/i;->j()Lb/b/f/b/u;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILb/b/f/b/r;)V
    .registers 8

    iget-object v0, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {v0}, Lb/b/f/b/i;->j()Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result v1

    new-instance v2, Lb/b/f/b/u;

    invoke-direct {v2, v1}, Lb/b/f/b/u;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    if-ne v3, p1, :cond_0

    move-object v4, p2

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v4

    :goto_1
    invoke-virtual {v2, v3, v4}, Lb/b/f/b/u;->a(ILb/b/f/b/r;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lb/b/f/b/u;->b_()V

    invoke-virtual {v0, p1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-virtual {p2}, Lb/b/f/b/r;->f()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lb/b/g/x;->o()Lb/b/g/af;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/g/af;->n()Lb/b/g/al;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lb/b/g/al;->a(Lb/b/g/aj;Lb/b/f/b/r;Lb/b/f/b/r;)V

    :cond_2
    iget-object p1, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {p0}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lb/b/f/b/i;->a(Lb/b/f/b/r;Lb/b/f/b/u;)Lb/b/f/b/i;

    move-result-object p1

    iput-object p1, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    return-void
.end method

.method public final a(Lb/b/f/b/u;)V
    .registers 4

    iget-object v0, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {v0}, Lb/b/f/b/i;->j()Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result v0

    invoke-virtual {p1}, Lb/b/f/b/u;->a_()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {p0}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lb/b/f/b/i;->a(Lb/b/f/b/r;Lb/b/f/b/u;)Lb/b/f/b/i;

    move-result-object p1

    iput-object p1, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Sources counts don\'t match"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/g/ad;)V
    .registers 5

    iget-object v0, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {v0}, Lb/b/f/b/i;->j()Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/b/g/ad;->a(Lb/b/f/b/u;)Lb/b/f/b/u;

    move-result-object p1

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {p0}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lb/b/f/b/i;->a(Lb/b/f/b/r;Lb/b/f/b/u;)Lb/b/f/b/i;

    move-result-object p1

    iput-object p1, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {p0}, Lb/b/g/x;->o()Lb/b/g/af;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/g/af;->n()Lb/b/g/al;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lb/b/g/al;->a(Lb/b/g/aj;Lb/b/f/b/u;)V

    :cond_0
    return-void
.end method

.method public final a(Lb/b/g/ak;)V
    .registers 3

    invoke-virtual {p0}, Lb/b/g/x;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Lb/b/g/ak;->a(Lb/b/g/x;)V

    return-void

    :cond_0
    invoke-interface {p1, p0}, Lb/b/g/ak;->b(Lb/b/g/x;)V

    return-void
.end method

.method public final b()Lb/b/f/b/i;
    .registers 4

    iget-object v0, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {p0}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object v1

    iget-object v2, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {v2}, Lb/b/f/b/i;->j()Lb/b/f/b/u;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/b/f/b/i;->a(Lb/b/f/b/r;Lb/b/f/b/u;)Lb/b/f/b/i;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lb/b/f/b/x;
    .registers 2

    iget-object v0, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {v0}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Lb/b/g/aj;->m()Lb/b/g/aj;

    move-result-object v0

    check-cast v0, Lb/b/g/x;

    return-object v0
.end method

.method public final d()Lb/b/f/b/i;
    .registers 2

    iget-object v0, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    return-object v0
.end method

.method public final e()Lb/b/f/b/r;
    .registers 4

    iget-object v0, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {v0}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v0

    const/16 v1, 0x36

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {v0}, Lb/b/f/b/i;->j()Lb/b/f/b/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method public final f()V
    .registers 3

    iget-object v0, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {v0}, Lb/b/f/b/i;->j()Lb/b/f/b/u;

    move-result-object v0

    iget-object v1, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {v1}, Lb/b/f/b/i;->l()Lb/b/f/b/i;

    move-result-object v1

    iput-object v1, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {p0}, Lb/b/g/x;->o()Lb/b/g/af;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/g/af;->n()Lb/b/g/al;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lb/b/g/al;->a(Lb/b/g/aj;Lb/b/f/b/u;)V

    return-void
.end method

.method public final g()Z
    .registers 3

    iget-object v0, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {v0}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lb/b/g/x;->b()Lb/b/f/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/i;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .registers 3

    iget-object v0, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {v0}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .registers 2

    iget-object v0, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {v0}, Lb/b/f/b/i;->k()Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .registers 2

    invoke-virtual {p0}, Lb/b/g/x;->g()Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .registers 5

    iget-object v0, p0, Lb/b/g/x;->a:Lb/b/f/b/i;

    invoke-virtual {v0}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/x;->d()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lb/b/g/y;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lb/b/g/x;->e()Lb/b/f/b/r;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/16 v3, 0x37

    if-eq v0, v3, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final bridge synthetic m()Lb/b/g/aj;
    .registers 2

    invoke-super {p0}, Lb/b/g/aj;->m()Lb/b/g/aj;

    move-result-object v0

    check-cast v0, Lb/b/g/x;

    return-object v0
.end method
