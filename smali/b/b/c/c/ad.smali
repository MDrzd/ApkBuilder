.class public final Lb/b/c/c/ad;
.super Lb/b/c/c/ag;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/b/c/c/ag;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lb/b/c/c/ai;
    .registers 2

    sget-object v0, Lb/b/c/c/ai;->a:Lb/b/c/c/ai;

    return-object v0
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 2

    return-void
.end method

.method public final a(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 13

    invoke-virtual {p1}, Lb/b/c/c/u;->g()Lb/b/c/c/ar;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/c/c/ar;->g()I

    move-result v0

    invoke-virtual {p1}, Lb/b/c/c/u;->r()Lb/b/c/c/az;

    move-result-object v1

    invoke-virtual {p1}, Lb/b/c/c/u;->s()Lb/b/c/c/az;

    move-result-object v2

    invoke-virtual {v1}, Lb/b/c/c/az;->g()I

    move-result v1

    invoke-virtual {v2}, Lb/b/c/c/az;->g()I

    move-result v3

    invoke-virtual {v2}, Lb/b/c/c/az;->d_()I

    move-result v2

    add-int/2addr v3, v2

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Lb/b/c/c/u;->b()Lcom/gmail/heagoo/b/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gmail/heagoo/b/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v4

    const v5, 0x12345678

    const/16 v6, 0x70

    const/16 v7, 0x8

    const/4 v8, 0x4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "magic: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Lb/b/f/c/ad;

    invoke-direct {v9, v2}, Lb/b/f/c/ad;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lb/b/f/c/ad;->i()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v7, v4}, Lb/b/h/r;->a(ILjava/lang/String;)V

    const-string v4, "checksum"

    invoke-interface {p2, v8, v4}, Lb/b/h/r;->a(ILjava/lang/String;)V

    const/16 v4, 0x14

    const-string v9, "signature"

    invoke-interface {p2, v4, v9}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "file_size:       "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/b/c/c/u;->c()I

    move-result v9

    invoke-static {v9}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "header_size:     "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "endian_tag:      "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4}, Lb/b/h/r;->a(ILjava/lang/String;)V

    const-string v4, "link_size:       0"

    invoke-interface {p2, v8, v4}, Lb/b/h/r;->a(ILjava/lang/String;)V

    const-string v4, "link_off:        0"

    invoke-interface {p2, v8, v4}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "map_off:         "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-interface {p2, v9}, Lb/b/h/r;->d(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x18

    invoke-interface {p2, v2}, Lb/b/h/r;->g(I)V

    invoke-virtual {p1}, Lb/b/c/c/u;->c()I

    move-result v2

    invoke-interface {p2, v2}, Lb/b/h/r;->c(I)V

    invoke-interface {p2, v6}, Lb/b/h/r;->c(I)V

    invoke-interface {p2, v5}, Lb/b/h/r;->c(I)V

    invoke-interface {p2, v7}, Lb/b/h/r;->g(I)V

    invoke-interface {p2, v0}, Lb/b/h/r;->c(I)V

    invoke-virtual {p1}, Lb/b/c/c/u;->h()Lb/b/c/c/be;

    move-result-object v0

    invoke-virtual {v0, p2}, Lb/b/c/c/be;->b(Lb/b/h/r;)V

    invoke-virtual {p1}, Lb/b/c/c/u;->k()Lb/b/c/c/bg;

    move-result-object v0

    invoke-virtual {v0, p2}, Lb/b/c/c/bg;->b(Lb/b/h/r;)V

    invoke-virtual {p1}, Lb/b/c/c/u;->l()Lb/b/c/c/ay;

    move-result-object v0

    invoke-virtual {v0, p2}, Lb/b/c/c/ay;->b(Lb/b/h/r;)V

    invoke-virtual {p1}, Lb/b/c/c/u;->m()Lb/b/c/c/ac;

    move-result-object v0

    invoke-virtual {v0, p2}, Lb/b/c/c/ac;->a(Lb/b/h/r;)V

    invoke-virtual {p1}, Lb/b/c/c/u;->n()Lb/b/c/c/aq;

    move-result-object v0

    invoke-virtual {v0, p2}, Lb/b/c/c/aq;->a(Lb/b/h/r;)V

    invoke-virtual {p1}, Lb/b/c/c/u;->i()Lb/b/c/c/n;

    move-result-object p1

    invoke-virtual {p1, p2}, Lb/b/c/c/n;->a(Lb/b/h/r;)V

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "data_size:       "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v8, p1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "data_off:        "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v8, p1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_2
    invoke-interface {p2, v3}, Lb/b/h/r;->c(I)V

    invoke-interface {p2, v1}, Lb/b/h/r;->c(I)V

    return-void
.end method

.method public final c_()I
    .registers 2

    const/16 v0, 0x70

    return v0
.end method
