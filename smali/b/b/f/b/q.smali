.class public final Lb/b/f/b/q;
.super Lb/b/f/b/i;


# direct methods
.method public constructor <init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/r;)V
    .registers 5

    invoke-static {p4}, Lb/b/f/b/u;->a(Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    return-void
.end method

.method public constructor <init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lb/b/f/b/i;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-virtual {p1}, Lb/b/f/b/x;->d()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lb/b/f/b/x;->d()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :pswitch_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "opcode with invalid branchingness: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/b/f/b/x;->d()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can\'t mix branchingness with result"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lb/b/f/b/r;Lb/b/f/b/u;)Lb/b/f/b/i;
    .registers 6

    new-instance v0, Lb/b/f/b/q;

    invoke-virtual {p0}, Lb/b/f/b/q;->e()Lb/b/f/b/x;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/f/b/q;->f()Lb/b/f/b/z;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    return-object v0
.end method

.method public final a(Lb/b/f/d/c;)Lb/b/f/b/i;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/f/b/k;)V
    .registers 2

    invoke-interface {p1, p0}, Lb/b/f/b/k;->a(Lb/b/f/b/q;)V

    return-void
.end method

.method public final b()Lb/b/f/d/e;
    .registers 2

    sget-object v0, Lb/b/f/d/b;->a:Lb/b/f/d/b;

    return-object v0
.end method

.method public final l()Lb/b/f/b/i;
    .registers 10

    invoke-virtual {p0}, Lb/b/f/b/q;->j()Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v2

    invoke-interface {v2}, Lb/b/f/d/d;->e()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    invoke-interface {v2}, Lb/b/f/d/d;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v8, v2

    check-cast v8, Lb/b/f/c/a;

    invoke-virtual {v0}, Lb/b/f/b/u;->g()Lb/b/f/b/u;

    move-result-object v7

    invoke-virtual {p0}, Lb/b/f/b/q;->e()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v0

    invoke-virtual {p0}, Lb/b/f/b/q;->g()Lb/b/f/b/r;

    move-result-object v1

    invoke-static {v0, v1, v7, v8}, Lb/b/f/b/y;->a(ILb/b/f/d/d;Lb/b/f/d/e;Lb/b/f/c/a;)Lb/b/f/b/x;

    move-result-object v4

    new-instance v0, Lb/b/f/b/p;

    invoke-virtual {p0}, Lb/b/f/b/q;->f()Lb/b/f/b/z;

    move-result-object v5

    invoke-virtual {p0}, Lb/b/f/b/q;->g()Lb/b/f/b/r;

    move-result-object v6

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lb/b/f/b/p;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;Lb/b/f/c/a;)V

    return-object v0

    :cond_1
    return-object p0

    :cond_2
    check-cast v2, Lb/b/f/c/a;

    invoke-virtual {v0}, Lb/b/f/b/u;->i()Lb/b/f/b/u;

    move-result-object v7

    :try_start_0
    invoke-virtual {p0}, Lb/b/f/b/q;->e()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    instance-of v1, v2, Lb/b/f/c/p;

    if-eqz v1, :cond_3

    const/16 v0, 0xe

    check-cast v2, Lb/b/f/c/p;

    invoke-virtual {v2}, Lb/b/f/c/p;->j()I

    move-result v1

    neg-int v1, v1

    invoke-static {v1}, Lb/b/f/c/p;->a(I)Lb/b/f/c/p;

    move-result-object v2

    :cond_3
    move-object v8, v2

    invoke-virtual {p0}, Lb/b/f/b/q;->g()Lb/b/f/b/r;

    move-result-object v1

    invoke-static {v0, v1, v7, v8}, Lb/b/f/b/y;->a(ILb/b/f/d/d;Lb/b/f/d/e;Lb/b/f/c/a;)Lb/b/f/b/x;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lb/b/f/b/p;

    invoke-virtual {p0}, Lb/b/f/b/q;->f()Lb/b/f/b/z;

    move-result-object v5

    invoke-virtual {p0}, Lb/b/f/b/q;->g()Lb/b/f/b/r;

    move-result-object v6

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lb/b/f/b/p;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;Lb/b/f/c/a;)V

    return-object v0

    :catch_0
    return-object p0
.end method
