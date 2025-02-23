.class final enum Lb/b/d/a/am;
.super Lb/b/d/a/i;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/16 p2, 0x23

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lb/b/d/a/i;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a(ILb/b/d/a/c;)Lb/b/d/a/e;
    .registers 10

    invoke-interface {p2}, Lb/b/d/a/c;->c()I

    move-result v0

    invoke-interface {p2}, Lb/b/d/a/c;->d()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lb/a/s;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "bogus element_width: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-array v0, v1, [S

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {p2}, Lb/b/d/a/c;->c()I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lb/b/d/a/f;

    invoke-direct {p2, p0, p1, v0}, Lb/b/d/a/f;-><init>(Lb/b/d/a/i;I[S)V

    return-object p2

    :pswitch_1
    new-array v0, v1, [B

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    if-eqz v4, :cond_1

    invoke-interface {p2}, Lb/b/d/a/c;->c()I

    move-result v5

    :cond_1
    int-to-byte v6, v5

    aput-byte v6, v0, v3

    shr-int/2addr v5, v2

    add-int/lit8 v3, v3, 0x1

    xor-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance p2, Lb/b/d/a/f;

    invoke-direct {p2, p0, p1, v0}, Lb/b/d/a/f;-><init>(Lb/b/d/a/i;I[B)V

    return-object p2

    :cond_3
    new-array v0, v1, [J

    :goto_2
    if-ge v3, v1, :cond_4

    invoke-interface {p2}, Lb/b/d/a/c;->e()J

    move-result-wide v4

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    new-instance p2, Lb/b/d/a/f;

    invoke-direct {p2, p0, p1, v0}, Lb/b/d/a/f;-><init>(Lb/b/d/a/i;I[J)V

    return-object p2

    :cond_5
    new-array v0, v1, [I

    :goto_3
    if-ge v3, v1, :cond_6

    invoke-interface {p2}, Lb/b/d/a/c;->d()I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    new-instance p2, Lb/b/d/a/f;

    invoke-direct {p2, p0, p1, v0}, Lb/b/d/a/f;-><init>(Lb/b/d/a/i;I[I)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lb/b/d/a/e;Lb/b/d/a/d;)V
    .registers 6

    check-cast p1, Lb/b/d/a/f;

    invoke-virtual {p1}, Lb/b/d/a/f;->v()S

    move-result v0

    invoke-virtual {p1}, Lb/b/d/a/f;->x()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lb/b/d/a/f;->c()S

    move-result v2

    invoke-interface {p2, v2}, Lb/b/d/a/d;->a(S)V

    invoke-interface {p2, v0}, Lb/b/d/a/d;->a(S)V

    invoke-virtual {p1}, Lb/b/d/a/f;->w()I

    move-result p1

    invoke-interface {p2, p1}, Lb/b/d/a/d;->a_(I)V

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/16 p1, 0x8

    if-eq v0, p1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lb/a/s;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "bogus element_width: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast v1, [S

    invoke-interface {p2, v1}, Lb/b/d/a/d;->a([S)V

    return-void

    :pswitch_1
    check-cast v1, [B

    invoke-interface {p2, v1}, Lb/b/d/a/d;->a([B)V

    return-void

    :cond_0
    check-cast v1, [J

    invoke-interface {p2, v1}, Lb/b/d/a/d;->a([J)V

    return-void

    :cond_1
    check-cast v1, [I

    invoke-interface {p2, v1}, Lb/b/d/a/d;->a([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
