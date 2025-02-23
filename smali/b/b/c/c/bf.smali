.class public final Lb/b/c/c/bf;
.super Lb/b/c/c/af;


# direct methods
.method public constructor <init>(Lb/b/f/c/ae;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/c/c/af;-><init>(Lb/b/f/c/ae;)V

    return-void
.end method


# virtual methods
.method public final a()Lb/b/c/c/ai;
    .registers 2

    sget-object v0, Lb/b/c/c/ai;->c:Lb/b/c/c/ai;

    return-object v0
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 3

    invoke-virtual {p1}, Lb/b/c/c/u;->h()Lb/b/c/c/be;

    move-result-object p1

    invoke-virtual {p0}, Lb/b/c/c/bf;->d()Lb/b/f/c/ae;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/c/ae;->j()Lb/b/f/c/ad;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/b/c/c/be;->a(Lb/b/f/c/ad;)Lb/b/c/c/bd;

    return-void
.end method

.method public final a(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 7

    invoke-virtual {p0}, Lb/b/c/c/bf;->d()Lb/b/f/c/ae;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/c/ae;->j()Lb/b/f/c/ad;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/c/c/u;->h()Lb/b/c/c/be;

    move-result-object p1

    invoke-virtual {p1, v0}, Lb/b/c/c/be;->b(Lb/b/f/c/ad;)I

    move-result p1

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/b/c/c/bf;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lb/b/h/r;->a(ILjava/lang/String;)V

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  descriptor_idx: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p1}, Lb/b/h/r;->c(I)V

    return-void
.end method

.method public final c_()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method
