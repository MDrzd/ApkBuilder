.class public final Lb/a/v;
.super Ljava/lang/Object;


# instance fields
.field private a:Lb/a/a/a;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lb/a/a/a;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/v;->b:I

    iput-object p1, p0, Lb/a/v;->a:Lb/a/a/a;

    iput p2, p0, Lb/a/v;->b:I

    return-void
.end method

.method public constructor <init>(Lb/a/u;I)V
    .registers 3

    invoke-virtual {p1}, Lb/a/u;->a()Lb/a/a/a;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lb/a/v;-><init>(Lb/a/a/a;I)V

    return-void
.end method

.method private a(I)V
    .registers 5

    invoke-virtual {p0}, Lb/a/v;->a()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {p0}, Lb/a/v;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "Expected %x but was %x"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget v0, p0, Lb/a/v;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/a/v;->a:Lb/a/a/a;

    invoke-interface {v0}, Lb/a/a/a;->a()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, v0, 0x1f

    iput v1, p0, Lb/a/v;->b:I

    and-int/lit16 v0, v0, 0xe0

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lb/a/v;->d:I

    :cond_0
    iget v0, p0, Lb/a/v;->b:I

    return v0
.end method

.method public final b()I
    .registers 2

    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lb/a/v;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/v;->b:I

    iget-object v0, p0, Lb/a/v;->a:Lb/a/a/a;

    invoke-static {v0}, La/a/a;->a(Lb/a/a/a;)I

    move-result v0

    return v0
.end method

.method public final c()I
    .registers 2

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lb/a/v;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/v;->b:I

    iget-object v0, p0, Lb/a/v;->a:Lb/a/a/a;

    invoke-static {v0}, La/a/a;->a(Lb/a/a/a;)I

    move-result v0

    iput v0, p0, Lb/a/v;->c:I

    iget-object v0, p0, Lb/a/v;->a:Lb/a/a/a;

    invoke-static {v0}, La/a/a;->a(Lb/a/a/a;)I

    move-result v0

    return v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lb/a/v;->c:I

    return v0
.end method

.method public final e()I
    .registers 2

    iget-object v0, p0, Lb/a/v;->a:Lb/a/a/a;

    invoke-static {v0}, La/a/a;->a(Lb/a/a/a;)I

    move-result v0

    return v0
.end method

.method public final f()B
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/v;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/v;->b:I

    iget-object v0, p0, Lb/a/v;->a:Lb/a/a/a;

    iget v1, p0, Lb/a/v;->d:I

    invoke-static {v0, v1}, La/a/a;->a(Lb/a/a/a;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public final g()S
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lb/a/v;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/v;->b:I

    iget-object v0, p0, Lb/a/v;->a:Lb/a/a/a;

    iget v1, p0, Lb/a/v;->d:I

    invoke-static {v0, v1}, La/a/a;->a(Lb/a/a/a;I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public final h()C
    .registers 4

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lb/a/v;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/v;->b:I

    iget-object v0, p0, Lb/a/v;->a:Lb/a/a/a;

    iget v1, p0, Lb/a/v;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, La/a/a;->a(Lb/a/a/a;IZ)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final i()I
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lb/a/v;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/v;->b:I

    iget-object v0, p0, Lb/a/v;->a:Lb/a/a/a;

    iget v1, p0, Lb/a/v;->d:I

    invoke-static {v0, v1}, La/a/a;->a(Lb/a/a/a;I)I

    move-result v0

    return v0
.end method

.method public final j()J
    .registers 10

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lb/a/v;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/v;->b:I

    iget-object v0, p0, Lb/a/v;->a:Lb/a/a/a;

    iget v1, p0, Lb/a/v;->d:I

    const-wide/16 v2, 0x0

    move-wide v3, v2

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    const/16 v5, 0x8

    ushr-long/2addr v3, v5

    invoke-interface {v0}, Lb/a/a/a;->a()B

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    const/16 v7, 0x38

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v0, v1, 0x7

    shl-int/lit8 v0, v0, 0x3

    shr-long v0, v3, v0

    return-wide v0
.end method

.method public final k()F
    .registers 4

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lb/a/v;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/v;->b:I

    iget-object v0, p0, Lb/a/v;->a:Lb/a/a/a;

    iget v1, p0, Lb/a/v;->d:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, La/a/a;->a(Lb/a/a/a;IZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final l()D
    .registers 9

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lb/a/v;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/v;->b:I

    iget-object v0, p0, Lb/a/v;->a:Lb/a/a/a;

    iget v1, p0, Lb/a/v;->d:I

    const-wide/16 v2, 0x0

    :goto_0
    if-ltz v1, :cond_0

    const/16 v4, 0x8

    ushr-long/2addr v2, v4

    invoke-interface {v0}, Lb/a/a/a;->a()B

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final m()I
    .registers 4

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lb/a/v;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/v;->b:I

    iget-object v0, p0, Lb/a/v;->a:Lb/a/a/a;

    iget v1, p0, Lb/a/v;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, La/a/a;->a(Lb/a/a/a;IZ)I

    move-result v0

    return v0
.end method

.method public final n()I
    .registers 4

    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lb/a/v;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/v;->b:I

    iget-object v0, p0, Lb/a/v;->a:Lb/a/a/a;

    iget v1, p0, Lb/a/v;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, La/a/a;->a(Lb/a/a/a;IZ)I

    move-result v0

    return v0
.end method

.method public final o()I
    .registers 4

    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lb/a/v;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/v;->b:I

    iget-object v0, p0, Lb/a/v;->a:Lb/a/a/a;

    iget v1, p0, Lb/a/v;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, La/a/a;->a(Lb/a/a/a;IZ)I

    move-result v0

    return v0
.end method

.method public final p()I
    .registers 4

    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lb/a/v;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/v;->b:I

    iget-object v0, p0, Lb/a/v;->a:Lb/a/a/a;

    iget v1, p0, Lb/a/v;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, La/a/a;->a(Lb/a/a/a;IZ)I

    move-result v0

    return v0
.end method

.method public final q()I
    .registers 4

    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lb/a/v;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/v;->b:I

    iget-object v0, p0, Lb/a/v;->a:Lb/a/a/a;

    iget v1, p0, Lb/a/v;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, La/a/a;->a(Lb/a/a/a;IZ)I

    move-result v0

    return v0
.end method

.method public final r()I
    .registers 4

    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lb/a/v;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/v;->b:I

    iget-object v0, p0, Lb/a/v;->a:Lb/a/a/a;

    iget v1, p0, Lb/a/v;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, La/a/a;->a(Lb/a/a/a;IZ)I

    move-result v0

    return v0
.end method

.method public final s()I
    .registers 4

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lb/a/v;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/v;->b:I

    iget-object v0, p0, Lb/a/v;->a:Lb/a/a/a;

    iget v1, p0, Lb/a/v;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, La/a/a;->a(Lb/a/a/a;IZ)I

    move-result v0

    return v0
.end method

.method public final t()V
    .registers 2

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lb/a/v;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/v;->b:I

    return-void
.end method

.method public final u()Z
    .registers 2

    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lb/a/v;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/v;->b:I

    iget v0, p0, Lb/a/v;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v()V
    .registers 4

    invoke-virtual {p0}, Lb/a/v;->a()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_2

    new-instance v0, Lb/a/s;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lb/a/v;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lb/a/v;->u()Z

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lb/a/v;->t()V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lb/a/v;->c()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lb/a/v;->a:Lb/a/a/a;

    invoke-static {v2}, La/a/a;->a(Lb/a/a/a;)I

    invoke-virtual {p0}, Lb/a/v;->v()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_3
    invoke-virtual {p0}, Lb/a/v;->b()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lb/a/v;->v()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    :pswitch_4
    invoke-virtual {p0}, Lb/a/v;->r()I

    return-void

    :pswitch_5
    invoke-virtual {p0}, Lb/a/v;->s()I

    return-void

    :pswitch_6
    invoke-virtual {p0}, Lb/a/v;->q()I

    return-void

    :pswitch_7
    invoke-virtual {p0}, Lb/a/v;->p()I

    return-void

    :pswitch_8
    invoke-virtual {p0}, Lb/a/v;->o()I

    return-void

    :pswitch_9
    invoke-virtual {p0}, Lb/a/v;->n()I

    return-void

    :pswitch_a
    invoke-virtual {p0}, Lb/a/v;->m()I

    return-void

    :pswitch_b
    invoke-virtual {p0}, Lb/a/v;->l()D

    return-void

    :pswitch_c
    invoke-virtual {p0}, Lb/a/v;->k()F

    return-void

    :pswitch_d
    invoke-virtual {p0}, Lb/a/v;->i()I

    return-void

    :pswitch_e
    invoke-virtual {p0}, Lb/a/v;->h()C

    return-void

    :pswitch_f
    invoke-virtual {p0}, Lb/a/v;->g()S

    return-void

    :cond_2
    invoke-virtual {p0}, Lb/a/v;->j()J

    return-void

    :cond_3
    invoke-virtual {p0}, Lb/a/v;->f()B

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
