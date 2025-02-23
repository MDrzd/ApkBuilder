.class final Lb/b/e/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/a/a/b;

.field private synthetic b:Lb/b/e/o;


# direct methods
.method public constructor <init>(Lb/b/e/o;Lb/a/a/b;)V
    .registers 3

    iput-object p1, p0, Lb/b/e/p;->b:Lb/b/e/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/e/p;->a:Lb/a/a/b;

    return-void
.end method

.method private a(II)V
    .registers 4

    iget-object v0, p0, Lb/b/e/p;->a:Lb/a/a/b;

    shl-int/lit8 p2, p2, 0x5

    or-int/2addr p1, p2

    invoke-interface {v0, p1}, Lb/a/a/b;->d(I)V

    return-void
.end method

.method private a(Lb/a/v;)V
    .registers 7

    invoke-virtual {p1}, Lb/a/v;->a()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    new-instance v0, Lb/a/s;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/v;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Lb/a/v;->u()Z

    move-result p1

    const/16 v0, 0x1f

    invoke-direct {p0, v0, p1}, Lb/b/e/p;->a(II)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Lb/a/v;->t()V

    const/16 p1, 0x1e

    invoke-direct {p0, p1, v1}, Lb/b/e/p;->a(II)V

    return-void

    :pswitch_2
    const/16 v0, 0x1d

    invoke-direct {p0, v0, v1}, Lb/b/e/p;->a(II)V

    invoke-direct {p0, p1}, Lb/b/e/p;->b(Lb/a/v;)V

    return-void

    :pswitch_3
    const/16 v0, 0x1c

    invoke-direct {p0, v0, v1}, Lb/b/e/p;->a(II)V

    invoke-direct {p0, p1}, Lb/b/e/p;->c(Lb/a/v;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lb/b/e/p;->a:Lb/a/a/b;

    const/16 v1, 0x1b

    iget-object v2, p0, Lb/b/e/p;->b:Lb/b/e/o;

    invoke-virtual {p1}, Lb/a/v;->r()I

    move-result p1

    invoke-virtual {v2, p1}, Lb/b/e/o;->d(I)I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, La/a/a;->b(Lb/a/a/b;IJ)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lb/b/e/p;->a:Lb/a/a/b;

    const/16 v1, 0x1a

    iget-object v2, p0, Lb/b/e/p;->b:Lb/b/e/o;

    invoke-virtual {p1}, Lb/a/v;->s()I

    move-result p1

    invoke-virtual {v2, p1}, Lb/b/e/o;->e(I)I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, La/a/a;->b(Lb/a/a/b;IJ)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lb/b/e/p;->a:Lb/a/a/b;

    const/16 v1, 0x19

    iget-object v2, p0, Lb/b/e/p;->b:Lb/b/e/o;

    invoke-virtual {p1}, Lb/a/v;->q()I

    move-result p1

    invoke-virtual {v2, p1}, Lb/b/e/o;->d(I)I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, La/a/a;->b(Lb/a/a/b;IJ)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lb/b/e/p;->a:Lb/a/a/b;

    const/16 v1, 0x18

    iget-object v2, p0, Lb/b/e/p;->b:Lb/b/e/o;

    invoke-virtual {p1}, Lb/a/v;->p()I

    move-result p1

    invoke-virtual {v2, p1}, Lb/b/e/o;->b(I)I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, La/a/a;->b(Lb/a/a/b;IJ)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lb/b/e/p;->a:Lb/a/a/b;

    const/16 v1, 0x17

    iget-object v2, p0, Lb/b/e/p;->b:Lb/b/e/o;

    invoke-virtual {p1}, Lb/a/v;->o()I

    move-result p1

    invoke-virtual {v2, p1}, Lb/b/e/o;->a(I)I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, La/a/a;->b(Lb/a/a/b;IJ)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lb/b/e/p;->a:Lb/a/a/b;

    const/16 v1, 0x16

    iget-object v2, p0, Lb/b/e/p;->b:Lb/b/e/o;

    invoke-virtual {p1}, Lb/a/v;->n()I

    move-result p1

    iget-object v2, v2, Lb/b/e/o;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, La/a/a;->b(Lb/a/a/b;IJ)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lb/b/e/p;->a:Lb/a/a/b;

    const/16 v1, 0x15

    iget-object v2, p0, Lb/b/e/p;->b:Lb/b/e/o;

    invoke-virtual {p1}, Lb/a/v;->m()I

    move-result p1

    invoke-virtual {v2, p1}, Lb/b/e/o;->c(I)I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, La/a/a;->b(Lb/a/a/b;IJ)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lb/b/e/p;->a:Lb/a/a/b;

    const/16 v1, 0x11

    invoke-virtual {p1}, Lb/a/v;->l()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, La/a/a;->c(Lb/a/a/b;IJ)V

    return-void

    :pswitch_c
    invoke-virtual {p1}, Lb/a/v;->k()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    iget-object p1, p0, Lb/b/e/p;->a:Lb/a/a/b;

    const/16 v2, 0x10

    invoke-static {p1, v2, v0, v1}, La/a/a;->c(Lb/a/a/b;IJ)V

    return-void

    :pswitch_d
    iget-object v0, p0, Lb/b/e/p;->a:Lb/a/a/b;

    const/4 v1, 0x4

    invoke-virtual {p1}, Lb/a/v;->i()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, La/a/a;->a(Lb/a/a/b;IJ)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lb/b/e/p;->a:Lb/a/a/b;

    const/4 v1, 0x3

    invoke-virtual {p1}, Lb/a/v;->h()C

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, La/a/a;->b(Lb/a/a/b;IJ)V

    return-void

    :pswitch_f
    iget-object v0, p0, Lb/b/e/p;->a:Lb/a/a/b;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lb/a/v;->g()S

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, La/a/a;->a(Lb/a/a/b;IJ)V

    return-void

    :cond_0
    iget-object v0, p0, Lb/b/e/p;->a:Lb/a/a/b;

    invoke-virtual {p1}, Lb/a/v;->j()J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, La/a/a;->a(Lb/a/a/b;IJ)V

    return-void

    :cond_1
    iget-object v0, p0, Lb/b/e/p;->a:Lb/a/a/b;

    invoke-virtual {p1}, Lb/a/v;->f()B

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, La/a/a;->a(Lb/a/a/b;IJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

.method static synthetic a(Lb/b/e/p;Lb/a/v;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/e/p;->c(Lb/a/v;)V

    return-void
.end method

.method private b(Lb/a/v;)V
    .registers 7

    invoke-virtual {p1}, Lb/a/v;->c()I

    move-result v0

    iget-object v1, p0, Lb/b/e/p;->a:Lb/a/a/b;

    iget-object v2, p0, Lb/b/e/p;->b:Lb/b/e/o;

    invoke-virtual {p1}, Lb/a/v;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Lb/b/e/o;->b(I)I

    move-result v2

    invoke-static {v1, v2}, La/a/a;->a(Lb/a/a/b;I)V

    iget-object v1, p0, Lb/b/e/p;->a:Lb/a/a/b;

    invoke-static {v1, v0}, La/a/a;->a(Lb/a/a/b;I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lb/b/e/p;->a:Lb/a/a/b;

    iget-object v3, p0, Lb/b/e/p;->b:Lb/b/e/o;

    invoke-virtual {p1}, Lb/a/v;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Lb/b/e/o;->a(I)I

    move-result v3

    invoke-static {v2, v3}, La/a/a;->a(Lb/a/a/b;I)V

    invoke-direct {p0, p1}, Lb/b/e/p;->a(Lb/a/v;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lb/b/e/p;Lb/a/v;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/e/p;->b(Lb/a/v;)V

    return-void
.end method

.method private c(Lb/a/v;)V
    .registers 4

    invoke-virtual {p1}, Lb/a/v;->b()I

    move-result v0

    iget-object v1, p0, Lb/b/e/p;->a:Lb/a/a/b;

    invoke-static {v1, v0}, La/a/a;->a(Lb/a/a/b;I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-direct {p0, p1}, Lb/b/e/p;->a(Lb/a/v;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
