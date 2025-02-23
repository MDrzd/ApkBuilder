.class final enum Lb/b/d/a/ai;
.super Lb/b/d/a/i;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/16 p2, 0x1f

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lb/b/d/a/i;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a(ILb/b/d/a/c;)Lb/b/d/a/e;
    .registers 13

    invoke-static {p1}, Lb/b/d/a/i;->a(I)I

    move-result v2

    const/16 v0, 0xfa

    if-ne v2, v0, :cond_1

    invoke-static {p1}, Lb/b/d/a/i;->c(I)I

    move-result v0

    invoke-static {p1}, Lb/b/d/a/i;->d(I)I

    move-result p1

    invoke-interface {p2}, Lb/b/d/a/c;->c()I

    move-result v3

    invoke-interface {p2}, Lb/b/d/a/c;->c()I

    move-result v1

    invoke-static {v1}, Lb/b/d/a/i;->g(I)I

    move-result v4

    invoke-static {v1}, Lb/b/d/a/i;->h(I)I

    move-result v5

    invoke-static {v1}, Lb/b/d/a/i;->c(I)I

    move-result v6

    invoke-static {v1}, Lb/b/d/a/i;->d(I)I

    move-result v1

    invoke-interface {p2}, Lb/b/d/a/c;->c()I

    move-result p2

    invoke-static {v2}, Lb/b/d/e;->c(I)I

    move-result v7

    if-lez p1, :cond_0

    const/4 v8, 0x5

    if-gt p1, v8, :cond_0

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v4, v8, v9

    const/4 v4, 0x1

    aput v5, v8, v4

    const/4 v4, 0x2

    aput v6, v8, v4

    const/4 v4, 0x3

    aput v1, v8, v4

    const/4 v1, 0x4

    aput v0, v8, v1

    invoke-static {v8, v9, p1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v6

    new-instance p1, Lb/b/d/a/at;

    move-object v0, p1

    move-object v1, p0

    move v4, v7

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lb/b/d/a/at;-><init>(Lb/b/d/a/i;IIII[I)V

    return-object p1

    :cond_0
    new-instance p2, Lb/a/s;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bogus registerCount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a;->s(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/d/a/e;Lb/b/d/a/d;)V
    .registers 9

    check-cast p1, Lb/b/d/a/at;

    invoke-virtual {p1}, Lb/b/d/a/at;->b()I

    move-result v0

    invoke-virtual {p1}, Lb/b/d/a/at;->w()I

    move-result v1

    invoke-virtual {p1}, Lb/b/d/a/at;->m()I

    move-result v2

    invoke-static {v1, v2}, Lb/b/d/a/i;->a(II)I

    move-result v1

    invoke-static {v0, v1}, Lb/b/d/a/i;->b(II)S

    move-result v0

    invoke-virtual {p1}, Lb/b/d/a/at;->e()S

    move-result v1

    invoke-virtual {p1}, Lb/b/d/a/at;->p()I

    move-result v2

    invoke-virtual {p1}, Lb/b/d/a/at;->q()I

    move-result v3

    invoke-virtual {p1}, Lb/b/d/a/at;->r()I

    move-result v4

    invoke-virtual {p1}, Lb/b/d/a/at;->v()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lb/b/d/a/i;->a(IIII)S

    move-result v2

    invoke-virtual {p1}, Lb/b/d/a/at;->u()S

    move-result p1

    invoke-interface {p2, v0, v1, v2, p1}, Lb/b/d/a/d;->a(SSSS)V

    return-void
.end method
