.class public abstract Lb/b/c/b/p;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lb/b/f/b/u;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lb/b/f/b/u;->a_()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/r;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Lb/b/f/c/v;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    instance-of v1, p0, Lb/b/f/c/s;

    if-eqz v1, :cond_0

    const-string p0, "null"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lb/b/f/c/v;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/b/f/c/v;->h()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Lb/b/f/c/v;I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v1, p0, Lb/b/f/c/u;

    if-eqz v1, :cond_0

    check-cast p0, Lb/b/f/c/u;

    invoke-virtual {p0}, Lb/b/f/c/u;->k()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lb/b/f/c/v;->j()I

    move-result p0

    int-to-long v1, p0

    :goto_0
    const/4 p0, 0x4

    if-eq p1, p0, :cond_5

    const/16 p0, 0x8

    if-eq p1, p0, :cond_4

    const/16 p0, 0x10

    if-eq p1, p0, :cond_3

    const/16 p0, 0x20

    if-eq p1, p0, :cond_2

    const/16 p0, 0x40

    if-ne p1, p0, :cond_1

    invoke-static {v1, v2}, La/a/a;->a(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    long-to-int p0, v1

    invoke-static {p0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    long-to-int p0, v1

    invoke-static {p0}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    long-to-int p0, v1

    invoke-static {p0}, La/a/a;->r(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    long-to-int p0, v1

    invoke-static {p0}, La/a/a;->s(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static a(II)S
    .registers 3

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_1

    and-int/lit16 v0, p1, 0xff

    if-ne v0, p1, :cond_0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "high out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "low out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static a(IIII)S
    .registers 5

    and-int/lit8 v0, p0, 0xf

    if-ne v0, p0, :cond_3

    and-int/lit8 v0, p1, 0xf

    if-ne v0, p1, :cond_2

    and-int/lit8 v0, p2, 0xf

    if-ne v0, p2, :cond_1

    and-int/lit8 v0, p3, 0xf

    if-ne v0, p3, :cond_0

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0xc

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n3 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n2 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n1 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n0 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static a(Lb/b/c/b/k;I)S
    .registers 3

    and-int/lit16 v0, p1, 0xff

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lb/b/c/b/k;->i()Lcom/gmail/heagoo/neweditor/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/x;->a()I

    move-result p0

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "opcode out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "arg out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static a(Lb/b/h/r;SI)V
    .registers 4

    int-to-short v0, p2

    shr-int/lit8 p2, p2, 0x10

    int-to-short p2, p2

    invoke-static {p0, p1, v0, p2}, Lb/b/c/b/p;->a(Lb/b/h/r;SSS)V

    return-void
.end method

.method protected static a(Lb/b/h/r;SJ)V
    .registers 8

    long-to-int v0, p2

    int-to-short v0, v0

    const/16 v1, 0x10

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-short v1, v1

    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v2, v2

    int-to-short v2, v2

    const/16 v3, 0x30

    shr-long/2addr p2, v3

    long-to-int p2, p2

    int-to-short p2, p2

    invoke-interface {p0, p1}, Lb/b/h/r;->b(I)V

    invoke-interface {p0, v0}, Lb/b/h/r;->b(I)V

    invoke-interface {p0, v1}, Lb/b/h/r;->b(I)V

    invoke-interface {p0, v2}, Lb/b/h/r;->b(I)V

    invoke-interface {p0, p2}, Lb/b/h/r;->b(I)V

    return-void
.end method

.method protected static a(Lb/b/h/r;SS)V
    .registers 3

    invoke-interface {p0, p1}, Lb/b/h/r;->b(I)V

    invoke-interface {p0, p2}, Lb/b/h/r;->b(I)V

    return-void
.end method

.method protected static a(Lb/b/h/r;SSS)V
    .registers 4

    invoke-interface {p0, p1}, Lb/b/h/r;->b(I)V

    invoke-interface {p0, p2}, Lb/b/h/r;->b(I)V

    invoke-interface {p0, p3}, Lb/b/h/r;->b(I)V

    return-void
.end method

.method protected static a(Lb/b/h/r;SSSS)V
    .registers 5

    invoke-interface {p0, p1}, Lb/b/h/r;->b(I)V

    invoke-interface {p0, p2}, Lb/b/h/r;->b(I)V

    invoke-interface {p0, p3}, Lb/b/h/r;->b(I)V

    invoke-interface {p0, p4}, Lb/b/h/r;->b(I)V

    return-void
.end method

.method protected static a(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0xf

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static b(II)I
    .registers 3

    and-int/lit8 v0, p0, 0xf

    if-ne v0, p0, :cond_1

    and-int/lit8 v0, p1, 0xf

    if-ne v0, p1, :cond_0

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "high out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "low out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static b(Lb/b/f/b/u;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lb/b/f/b/u;->a_()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->k()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, v3}, Lb/b/f/b/r;->b(I)Lb/b/f/b/r;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p0

    invoke-virtual {p0}, Lb/b/f/b/r;->m()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p0

    invoke-virtual {p0}, Lb/b/f/b/r;->m()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lb/b/f/b/r;->m()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_2
    :pswitch_1
    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static b(I)Z
    .registers 2

    int-to-byte v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static c(I)Z
    .registers 2

    and-int/lit16 v0, p0, 0xff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static c(Lb/b/f/b/u;)Z
    .registers 8

    invoke-virtual {p0}, Lb/b/f/b/u;->a_()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/r;->f()I

    move-result v3

    move v4, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/f/b/r;->f()I

    move-result v6

    if-eq v6, v4, :cond_1

    return v2

    :cond_1
    invoke-virtual {v5}, Lb/b/f/b/r;->k()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method protected static d(Lb/b/c/b/k;)Ljava/lang/String;
    .registers 2

    check-cast p0, Lb/b/c/b/aj;

    invoke-virtual {p0}, Lb/b/c/b/aj;->d()I

    move-result p0

    int-to-char v0, p0

    if-ne p0, v0, :cond_0

    invoke-static {p0}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static d(I)Z
    .registers 2

    int-to-short v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static e(Lb/b/c/b/k;)Ljava/lang/String;
    .registers 2

    check-cast p0, Lb/b/c/b/aj;

    invoke-virtual {p0}, Lb/b/c/b/aj;->o()I

    move-result p0

    int-to-short v0, p0

    if-ne p0, v0, :cond_0

    invoke-static {p0}, La/a/a;->u(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, La/a/a;->t(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static e(I)Z
    .registers 2

    const v0, 0xffff

    and-int/2addr v0, p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Lb/b/c/b/k;)Ljava/lang/String;
.end method

.method public abstract a(Lb/b/c/b/k;Z)Ljava/lang/String;
.end method

.method public abstract a(Lb/b/h/r;Lb/b/c/b/k;)V
.end method

.method public a(Lb/b/c/b/aj;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public abstract b(Lb/b/c/b/k;)Z
.end method

.method public c(Lb/b/c/b/k;)Ljava/util/BitSet;
    .registers 2

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    return-object p1
.end method
