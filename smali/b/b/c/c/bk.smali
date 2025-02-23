.class public final Lb/b/c/c/bk;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/c/c/u;

.field private final b:Lb/b/h/r;


# direct methods
.method public constructor <init>(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lb/b/c/c/bk;->a:Lb/b/c/c/u;

    iput-object p2, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lb/b/f/c/a;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lb/b/c/c/bk;->c(Lb/b/f/c/a;)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/b/f/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/b/f/c/a;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lb/b/c/c/u;Lb/b/f/a/a;)V
    .registers 5

    invoke-virtual {p0}, Lb/b/c/c/u;->k()Lb/b/c/c/bg;

    move-result-object v0

    invoke-virtual {p0}, Lb/b/c/c/u;->h()Lb/b/c/c/be;

    move-result-object v1

    invoke-virtual {p1}, Lb/b/f/a/a;->f()Lb/b/f/c/ae;

    move-result-object v2

    invoke-virtual {v0, v2}, Lb/b/c/c/bg;->a(Lb/b/f/c/ae;)Lb/b/c/c/bf;

    invoke-virtual {p1}, Lb/b/f/a/a;->i()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/f/a/e;

    invoke-virtual {v0}, Lb/b/f/a/e;->a()Lb/b/f/c/ad;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/b/c/c/be;->a(Lb/b/f/c/ad;)Lb/b/c/c/bd;

    invoke-virtual {v0}, Lb/b/f/a/e;->b()Lb/b/f/c/a;

    move-result-object v0

    invoke-static {p0, v0}, Lb/b/c/c/bk;->a(Lb/b/c/c/u;Lb/b/f/c/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lb/b/c/c/u;Lb/b/f/c/a;)V
    .registers 5

    instance-of v0, p1, Lb/b/f/c/c;

    if-eqz v0, :cond_0

    check-cast p1, Lb/b/f/c/c;

    invoke-virtual {p1}, Lb/b/f/c/c;->a()Lb/b/f/a/a;

    move-result-object p1

    invoke-static {p0, p1}, Lb/b/c/c/bk;->a(Lb/b/c/c/u;Lb/b/f/a/a;)V

    return-void

    :cond_0
    instance-of v0, p1, Lb/b/f/c/d;

    if-eqz v0, :cond_2

    check-cast p1, Lb/b/f/c/d;

    invoke-virtual {p1}, Lb/b/f/c/d;->a()Lb/b/f/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/c/e;->a_()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lb/b/f/c/e;->a(I)Lb/b/f/c/a;

    move-result-object v2

    invoke-static {p0, v2}, Lb/b/c/c/bk;->a(Lb/b/c/c/u;Lb/b/f/c/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lb/b/c/c/u;->a(Lb/b/f/c/a;)V

    return-void
.end method

.method private b(Lb/b/f/c/a;)V
    .registers 6

    invoke-static {p1}, Lb/b/c/c/bk;->c(Lb/b/f/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_2

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast p1, Lb/b/f/c/g;

    invoke-virtual {p1}, Lb/b/f/c/g;->j()I

    move-result p1

    iget-object v1, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p1, v0

    invoke-interface {v1, p1}, Lb/b/h/r;->d(I)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    invoke-interface {p1, v0}, Lb/b/h/r;->d(I)V

    return-void

    :pswitch_2
    iget-object v2, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    invoke-interface {v2, v0}, Lb/b/h/r;->d(I)V

    check-cast p1, Lb/b/f/c/c;

    invoke-virtual {p1}, Lb/b/f/c/c;->a()Lb/b/f/a/a;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lb/b/c/c/bk;->a(Lb/b/f/a/a;Z)V

    return-void

    :pswitch_3
    iget-object v2, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    invoke-interface {v2, v0}, Lb/b/h/r;->d(I)V

    check-cast p1, Lb/b/f/c/d;

    invoke-virtual {p0, p1, v1}, Lb/b/c/c/bk;->a(Lb/b/f/c/d;Z)V

    return-void

    :pswitch_4
    check-cast p1, Lb/b/f/c/m;

    invoke-virtual {p1}, Lb/b/f/c/m;->i()Lb/b/f/c/n;

    move-result-object p1

    iget-object v1, p0, Lb/b/c/c/bk;->a:Lb/b/c/c/u;

    invoke-virtual {v1}, Lb/b/c/c/u;->m()Lb/b/c/c/ac;

    move-result-object v1

    invoke-virtual {v1, p1}, Lb/b/c/c/ac;->b(Lb/b/f/c/n;)I

    move-result p1

    iget-object v1, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, La/a/a;->b(Lb/a/a/b;IJ)V

    return-void

    :pswitch_5
    iget-object v1, p0, Lb/b/c/c/bk;->a:Lb/b/c/c/u;

    invoke-virtual {v1}, Lb/b/c/c/u;->n()Lb/b/c/c/aq;

    move-result-object v1

    check-cast p1, Lb/b/f/c/z;

    invoke-virtual {v1, p1}, Lb/b/c/c/aq;->b(Lb/b/f/c/f;)I

    move-result p1

    iget-object v1, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, La/a/a;->b(Lb/a/a/b;IJ)V

    return-void

    :pswitch_6
    iget-object v1, p0, Lb/b/c/c/bk;->a:Lb/b/c/c/u;

    invoke-virtual {v1}, Lb/b/c/c/u;->m()Lb/b/c/c/ac;

    move-result-object v1

    check-cast p1, Lb/b/f/c/n;

    invoke-virtual {v1, p1}, Lb/b/c/c/ac;->b(Lb/b/f/c/n;)I

    move-result p1

    iget-object v1, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, La/a/a;->b(Lb/a/a/b;IJ)V

    return-void

    :pswitch_7
    iget-object v1, p0, Lb/b/c/c/bk;->a:Lb/b/c/c/u;

    invoke-virtual {v1}, Lb/b/c/c/u;->k()Lb/b/c/c/bg;

    move-result-object v1

    check-cast p1, Lb/b/f/c/ae;

    invoke-virtual {v1, p1}, Lb/b/c/c/bg;->b(Lb/b/f/c/ae;)I

    move-result p1

    iget-object v1, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, La/a/a;->b(Lb/a/a/b;IJ)V

    return-void

    :pswitch_8
    iget-object v1, p0, Lb/b/c/c/bk;->a:Lb/b/c/c/u;

    invoke-virtual {v1}, Lb/b/c/c/u;->h()Lb/b/c/c/be;

    move-result-object v1

    check-cast p1, Lb/b/f/c/ad;

    invoke-virtual {v1, p1}, Lb/b/c/c/be;->b(Lb/b/f/c/ad;)I

    move-result p1

    iget-object v1, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, La/a/a;->b(Lb/a/a/b;IJ)V

    return-void

    :pswitch_9
    iget-object v1, p0, Lb/b/c/c/bk;->a:Lb/b/c/c/u;

    invoke-virtual {v1}, Lb/b/c/c/u;->o()Lb/b/c/c/ao;

    move-result-object v1

    check-cast p1, Lb/b/f/c/y;

    invoke-virtual {v1, p1}, Lb/b/c/c/ao;->b(Lb/b/f/c/y;)I

    move-result p1

    iget-object v1, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, La/a/a;->b(Lb/a/a/b;IJ)V

    return-void

    :pswitch_a
    iget-object v1, p0, Lb/b/c/c/bk;->a:Lb/b/c/c/u;

    invoke-virtual {v1}, Lb/b/c/c/u;->l()Lb/b/c/c/ay;

    move-result-object v1

    check-cast p1, Lb/b/f/c/ab;

    invoke-virtual {p1}, Lb/b/f/c/ab;->i()Lb/b/f/d/a;

    move-result-object p1

    invoke-virtual {v1, p1}, Lb/b/c/c/ay;->b(Lb/b/f/d/a;)I

    move-result p1

    iget-object v1, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, La/a/a;->b(Lb/a/a/b;IJ)V

    return-void

    :pswitch_b
    check-cast p1, Lb/b/f/c/l;

    invoke-virtual {p1}, Lb/b/f/c/l;->k()J

    move-result-wide v1

    iget-object p1, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    invoke-static {p1, v0, v1, v2}, La/a/a;->c(Lb/a/a/b;IJ)V

    return-void

    :pswitch_c
    check-cast p1, Lb/b/f/c/o;

    invoke-virtual {p1}, Lb/b/f/c/o;->k()J

    move-result-wide v1

    const/16 p1, 0x20

    shl-long/2addr v1, p1

    iget-object p1, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    invoke-static {p1, v0, v1, v2}, La/a/a;->c(Lb/a/a/b;IJ)V

    return-void

    :pswitch_d
    check-cast p1, Lb/b/f/c/v;

    invoke-virtual {p1}, Lb/b/f/c/v;->k()J

    move-result-wide v1

    iget-object p1, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    invoke-static {p1, v0, v1, v2}, La/a/a;->b(Lb/a/a/b;IJ)V

    return-void

    :cond_0
    :pswitch_e
    check-cast p1, Lb/b/f/c/v;

    invoke-virtual {p1}, Lb/b/f/c/v;->k()J

    move-result-wide v1

    iget-object p1, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    invoke-static {p1, v0, v1, v2}, La/a/a;->a(Lb/a/a/b;IJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x15
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static c(Lb/b/f/c/a;)I
    .registers 2

    instance-of v0, p0, Lb/b/f/c/h;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lb/b/f/c/ac;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    instance-of v0, p0, Lb/b/f/c/k;

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    instance-of v0, p0, Lb/b/f/c/p;

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    instance-of v0, p0, Lb/b/f/c/w;

    if-eqz v0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    instance-of v0, p0, Lb/b/f/c/o;

    if-eqz v0, :cond_5

    const/16 p0, 0x10

    return p0

    :cond_5
    instance-of v0, p0, Lb/b/f/c/l;

    if-eqz v0, :cond_6

    const/16 p0, 0x11

    return p0

    :cond_6
    instance-of v0, p0, Lb/b/f/c/ab;

    if-eqz v0, :cond_7

    const/16 p0, 0x15

    return p0

    :cond_7
    instance-of v0, p0, Lb/b/f/c/y;

    if-eqz v0, :cond_8

    const/16 p0, 0x16

    return p0

    :cond_8
    instance-of v0, p0, Lb/b/f/c/ad;

    if-eqz v0, :cond_9

    const/16 p0, 0x17

    return p0

    :cond_9
    instance-of v0, p0, Lb/b/f/c/ae;

    if-eqz v0, :cond_a

    const/16 p0, 0x18

    return p0

    :cond_a
    instance-of v0, p0, Lb/b/f/c/n;

    if-eqz v0, :cond_b

    const/16 p0, 0x19

    return p0

    :cond_b
    instance-of v0, p0, Lb/b/f/c/z;

    if-eqz v0, :cond_c

    const/16 p0, 0x1a

    return p0

    :cond_c
    instance-of v0, p0, Lb/b/f/c/m;

    if-eqz v0, :cond_d

    const/16 p0, 0x1b

    return p0

    :cond_d
    instance-of v0, p0, Lb/b/f/c/d;

    if-eqz v0, :cond_e

    const/16 p0, 0x1c

    return p0

    :cond_e
    instance-of v0, p0, Lb/b/f/c/c;

    if-eqz v0, :cond_f

    const/16 p0, 0x1d

    return p0

    :cond_f
    instance-of v0, p0, Lb/b/f/c/s;

    if-eqz v0, :cond_10

    const/16 p0, 0x1e

    return p0

    :cond_10
    instance-of p0, p0, Lb/b/f/c/g;

    if-eqz p0, :cond_11

    const/16 p0, 0x1f

    return p0

    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Shouldn\'t happen"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lb/b/f/a/a;Z)V
    .registers 12

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v1, p0, Lb/b/c/c/bk;->a:Lb/b/c/c/u;

    invoke-virtual {v1}, Lb/b/c/c/u;->h()Lb/b/c/c/be;

    move-result-object v1

    iget-object v2, p0, Lb/b/c/c/bk;->a:Lb/b/c/c/u;

    invoke-virtual {v2}, Lb/b/c/c/u;->k()Lb/b/c/c/bg;

    move-result-object v2

    invoke-virtual {p1}, Lb/b/f/a/a;->f()Lb/b/f/c/ae;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb/b/c/c/bg;->b(Lb/b/f/c/ae;)I

    move-result v4

    if-eqz p2, :cond_1

    iget-object v5, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  type_idx: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " // "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lb/b/f/c/ae;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lb/b/h/r;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    invoke-virtual {p1}, Lb/b/f/a/a;->f()Lb/b/f/c/ae;

    move-result-object v4

    invoke-virtual {v2, v4}, Lb/b/c/c/bg;->b(Lb/b/f/c/ae;)I

    move-result v2

    invoke-interface {v3, v2}, Lb/b/h/r;->e(I)I

    invoke-virtual {p1}, Lb/b/f/a/a;->i()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz p2, :cond_2

    iget-object v3, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lb/b/h/r;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    invoke-interface {v3, v2}, Lb/b/h/r;->e(I)I

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/f/a/e;

    invoke-virtual {v3}, Lb/b/f/a/e;->a()Lb/b/f/c/ad;

    move-result-object v4

    invoke-virtual {v1, v4}, Lb/b/c/c/be;->b(Lb/b/f/c/ad;)I

    move-result v5

    invoke-virtual {v3}, Lb/b/f/a/e;->b()Lb/b/f/c/a;

    move-result-object v3

    if-eqz p2, :cond_3

    iget-object v6, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  elements["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lb/b/h/r;->a(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    iget-object v6, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "    name_idx: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " // "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Lb/b/h/r;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    invoke-interface {v4, v5}, Lb/b/h/r;->e(I)I

    if-eqz p2, :cond_4

    iget-object v4, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "    value: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lb/b/c/c/bk;->a(Lb/b/f/c/a;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lb/b/h/r;->a(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, v3}, Lb/b/c/c/bk;->b(Lb/b/f/c/a;)V

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    iget-object p1, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    invoke-interface {p1}, Lb/b/h/r;->f()V

    :cond_6
    return-void
.end method

.method public final a(Lb/b/f/c/d;Z)V
    .registers 9

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lb/b/f/c/d;->a()Lb/b/f/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/c/e;->a_()I

    move-result v1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lb/b/h/r;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    invoke-interface {v2, v1}, Lb/b/h/r;->e(I)I

    :goto_1
    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lb/b/f/c/e;->a(I)Lb/b/f/c/a;

    move-result-object v2

    if-eqz p2, :cond_2

    iget-object v3, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lb/b/c/c/bk;->a(Lb/b/f/c/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lb/b/h/r;->a(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v2}, Lb/b/c/c/bk;->b(Lb/b/f/c/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lb/b/c/c/bk;->b:Lb/b/h/r;

    invoke-interface {p1}, Lb/b/h/r;->f()V

    :cond_4
    return-void
.end method
