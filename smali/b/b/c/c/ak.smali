.class public abstract Lb/b/c/c/ak;
.super Lb/b/c/c/af;


# instance fields
.field private final a:Lb/b/f/c/x;


# direct methods
.method public constructor <init>(Lb/b/f/c/x;)V
    .registers 3

    invoke-virtual {p1}, Lb/b/f/c/x;->l()Lb/b/f/c/ae;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/b/c/c/af;-><init>(Lb/b/f/c/ae;)V

    iput-object p1, p0, Lb/b/c/c/ak;->a:Lb/b/f/c/x;

    return-void
.end method


# virtual methods
.method public a(Lb/b/c/c/u;)V
    .registers 3

    invoke-super {p0, p1}, Lb/b/c/c/af;->a(Lb/b/c/c/u;)V

    invoke-virtual {p1}, Lb/b/c/c/u;->h()Lb/b/c/c/be;

    move-result-object p1

    iget-object v0, p0, Lb/b/c/c/ak;->a:Lb/b/f/c/x;

    invoke-virtual {v0}, Lb/b/f/c/x;->m()Lb/b/f/c/aa;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/c/aa;->a()Lb/b/f/c/ad;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/b/c/c/be;->a(Lb/b/f/c/ad;)Lb/b/c/c/bd;

    return-void
.end method

.method public final a(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 11

    invoke-virtual {p1}, Lb/b/c/c/u;->k()Lb/b/c/c/bg;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/c/c/u;->h()Lb/b/c/c/be;

    move-result-object v1

    iget-object v2, p0, Lb/b/c/c/ak;->a:Lb/b/f/c/x;

    invoke-virtual {v2}, Lb/b/f/c/x;->m()Lb/b/f/c/aa;

    move-result-object v2

    invoke-virtual {p0}, Lb/b/c/c/ak;->d()Lb/b/f/c/ae;

    move-result-object v3

    invoke-virtual {v0, v3}, Lb/b/c/c/bg;->b(Lb/b/f/c/ae;)I

    move-result v0

    invoke-virtual {v2}, Lb/b/f/c/aa;->a()Lb/b/f/c/ad;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/b/c/c/be;->b(Lb/b/f/c/ad;)I

    move-result v1

    invoke-virtual {p0, p1}, Lb/b/c/c/ak;->b(Lb/b/c/c/u;)I

    move-result p1

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/b/c/c/ak;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/b/c/c/ak;->a:Lb/b/f/c/x;

    invoke-virtual {v3}, Lb/b/f/c/x;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p2, v3, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "  class_idx: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {p2, v4, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    const-string v2, "  %-10s %s"

    new-array v5, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/b/c/c/ak;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x1

    invoke-static {p1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  name_idx:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Lb/b/h/r;->b(I)V

    invoke-interface {p2, p1}, Lb/b/h/r;->b(I)V

    invoke-interface {p2, v1}, Lb/b/h/r;->c(I)V

    return-void
.end method

.method protected abstract b(Lb/b/c/c/u;)I
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public final c_()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public final e()Lb/b/f/c/x;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/ak;->a:Lb/b/f/c/x;

    return-object v0
.end method
