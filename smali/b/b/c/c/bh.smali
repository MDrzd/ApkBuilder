.class public final Lb/b/c/c/bh;
.super Lb/b/c/c/av;


# instance fields
.field private final a:Lb/b/f/d/e;


# direct methods
.method public constructor <init>(Lb/b/f/d/e;)V
    .registers 4

    invoke-interface {p1}, Lb/b/f/d/e;->a_()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    add-int/2addr v0, v1

    invoke-direct {p0, v1, v0}, Lb/b/c/c/av;-><init>(II)V

    iput-object p1, p0, Lb/b/c/c/bh;->a:Lb/b/f/d/e;

    return-void
.end method


# virtual methods
.method protected final a(Lb/b/c/c/av;)I
    .registers 3

    iget-object v0, p0, Lb/b/c/c/bh;->a:Lb/b/f/d/e;

    check-cast p1, Lb/b/c/c/bh;

    iget-object p1, p1, Lb/b/c/c/bh;->a:Lb/b/f/d/e;

    invoke-static {v0, p1}, Lb/b/f/d/b;->b(Lb/b/f/d/e;Lb/b/f/d/e;)I

    move-result p1

    return p1
.end method

.method public final a()Lb/b/c/c/ai;
    .registers 2

    sget-object v0, Lb/b/c/c/ai;->k:Lb/b/c/c/ai;

    return-object v0
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 5

    invoke-virtual {p1}, Lb/b/c/c/u;->k()Lb/b/c/c/bg;

    move-result-object p1

    iget-object v0, p0, Lb/b/c/c/bh;->a:Lb/b/f/d/e;

    invoke-interface {v0}, Lb/b/f/d/e;->a_()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lb/b/c/c/bh;->a:Lb/b/f/d/e;

    invoke-interface {v2, v1}, Lb/b/f/d/e;->a(I)Lb/b/f/d/c;

    move-result-object v2

    invoke-virtual {p1, v2}, Lb/b/c/c/bg;->a(Lb/b/f/d/c;)Lb/b/c/c/bf;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final a_(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 11

    invoke-virtual {p1}, Lb/b/c/c/u;->k()Lb/b/c/c/bg;

    move-result-object p1

    iget-object v0, p0, Lb/b/c/c/bh;->a:Lb/b/f/d/e;

    invoke-interface {v0}, Lb/b/f/d/e;->a_()I

    move-result v0

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/b/c/c/bh;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type_list"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    const/4 v1, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Lb/b/h/r;->a(ILjava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lb/b/c/c/bh;->a:Lb/b/f/d/e;

    invoke-interface {v3, v1}, Lb/b/f/d/e;->a(I)Lb/b/f/d/c;

    move-result-object v3

    invoke-virtual {p1, v3}, Lb/b/c/c/bg;->b(Lb/b/f/d/c;)I

    move-result v4

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " // "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v5, v3}, Lb/b/h/r;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Lb/b/h/r;->c(I)V

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v1, p0, Lb/b/c/c/bh;->a:Lb/b/f/d/e;

    invoke-interface {v1, v2}, Lb/b/f/d/e;->a(I)Lb/b/f/d/c;

    move-result-object v1

    invoke-virtual {p1, v1}, Lb/b/c/c/bg;->b(Lb/b/f/d/c;)I

    move-result v1

    invoke-interface {p2, v1}, Lb/b/h/r;->b(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Lb/b/f/d/e;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/bh;->a:Lb/b/f/d/e;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lb/b/c/c/bh;->a:Lb/b/f/d/e;

    invoke-static {v0}, Lb/b/f/d/b;->b(Lb/b/f/d/e;)I

    move-result v0

    return v0
.end method
