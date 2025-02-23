.class public abstract Lb/b/c/c/bi;
.super Lb/b/c/c/az;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lb/b/c/c/u;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lb/b/c/c/az;-><init>(Ljava/lang/String;Lb/b/c/c/u;I)V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/c/c/ah;)I
    .registers 3

    check-cast p1, Lb/b/c/c/ag;

    invoke-virtual {p1}, Lb/b/c/c/ag;->i()I

    move-result v0

    invoke-virtual {p1}, Lb/b/c/c/ag;->c_()I

    move-result p1

    mul-int v0, v0, p1

    invoke-virtual {p0, v0}, Lb/b/c/c/bi;->c(I)I

    move-result p1

    return p1
.end method

.method protected abstract a()V
.end method

.method protected final a_(Lb/b/h/r;)V
    .registers 6

    invoke-virtual {p0}, Lb/b/c/c/bi;->e()Lb/b/c/c/u;

    move-result-object v0

    invoke-virtual {p0}, Lb/b/c/c/bi;->f()I

    move-result v1

    invoke-virtual {p0}, Lb/b/c/c/bi;->b()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/c/c/ah;

    invoke-virtual {v3, v0, p1}, Lb/b/c/c/ah;->a(Lb/b/c/c/u;Lb/b/h/r;)V

    invoke-interface {p1, v1}, Lb/b/h/r;->h(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final c()V
    .registers 4

    invoke-virtual {p0}, Lb/b/c/c/bi;->e()Lb/b/c/c/u;

    move-result-object v0

    invoke-virtual {p0}, Lb/b/c/c/bi;->a()V

    invoke-virtual {p0}, Lb/b/c/c/bi;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/c/c/ah;

    invoke-virtual {v2, v0}, Lb/b/c/c/ah;->a(Lb/b/c/c/u;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d_()I
    .registers 3

    invoke-virtual {p0}, Lb/b/c/c/bi;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/c/c/ah;

    invoke-virtual {v0}, Lb/b/c/c/ah;->c_()I

    move-result v0

    mul-int v1, v1, v0

    return v1
.end method
