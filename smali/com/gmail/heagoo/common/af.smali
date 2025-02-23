.class public Lcom/gmail/heagoo/common/af;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/h/c;

.field private final b:Lb/b/f/c/af;

.field private final c:[I

.field private d:I

.field private e:Lb/b/a/d/j;


# direct methods
.method public constructor <init>(Lb/b/h/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lb/b/h/c;->g(I)I

    move-result v0

    iput-object p1, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    new-instance p1, Lb/b/f/c/af;

    invoke-direct {p1, v0}, Lb/b/f/c/af;-><init>(I)V

    iput-object p1, p0, Lcom/gmail/heagoo/common/af;->b:Lb/b/f/c/af;

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/gmail/heagoo/common/af;->c:[I

    const/4 p1, -0x1

    iput p1, p0, Lcom/gmail/heagoo/common/af;->d:I

    return-void
.end method

.method private a(ILjava/util/BitSet;)Lb/b/f/c/a;
    .registers 7

    iget-object v0, p0, Lcom/gmail/heagoo/common/af;->b:Lb/b/f/c/af;

    invoke-virtual {v0, p1}, Lb/b/f/c/af;->c(I)Lb/b/f/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/common/af;->c:[I

    aget v0, v0, p1

    :try_start_0
    iget-object v1, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    invoke-virtual {v1, v0}, Lb/b/h/c;->f(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance p2, Lb/b/a/d/i;

    goto/16 :goto_7

    :pswitch_1
    iget-object v1, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lb/b/h/c;->g(I)I

    move-result v1

    iget-object v2, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {v2, v3}, Lb/b/h/c;->g(I)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/gmail/heagoo/common/af;->a(ILjava/util/BitSet;)Lb/b/f/c/a;

    move-result-object p2

    check-cast p2, Lb/b/f/c/aa;

    invoke-static {v1, p2}, Lb/b/f/c/r;->a(ILb/b/f/c/aa;)Lb/b/f/c/r;

    move-result-object p2

    goto/16 :goto_6

    :pswitch_2
    iget-object v1, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lb/b/h/c;->g(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/gmail/heagoo/common/af;->a(ILjava/util/BitSet;)Lb/b/f/c/a;

    move-result-object p2

    check-cast p2, Lb/b/f/c/ad;

    invoke-static {p2}, Lb/b/f/c/ab;->a(Lb/b/f/c/ad;)Lb/b/f/c/ab;

    move-result-object p2

    goto/16 :goto_6

    :pswitch_3
    iget-object v1, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lb/b/h/c;->f(I)I

    move-result v1

    iget-object v2, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3}, Lb/b/h/c;->g(I)I

    move-result v2

    packed-switch v1, :pswitch_data_1

    new-instance p2, Lb/b/a/d/i;

    goto/16 :goto_3

    :pswitch_4
    invoke-direct {p0, v2, p2}, Lcom/gmail/heagoo/common/af;->a(ILjava/util/BitSet;)Lb/b/f/c/a;

    move-result-object p2

    check-cast p2, Lb/b/f/c/q;

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v2, p2}, Lcom/gmail/heagoo/common/af;->a(ILjava/util/BitSet;)Lb/b/f/c/a;

    move-result-object p2

    instance-of v2, p2, Lb/b/f/c/z;

    if-nez v2, :cond_2

    instance-of v2, p2, Lb/b/f/c/q;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lb/b/a/d/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported ref constant type for MethodHandle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lb/b/a/d/i;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_6
    invoke-direct {p0, v2, p2}, Lcom/gmail/heagoo/common/af;->a(ILjava/util/BitSet;)Lb/b/f/c/a;

    move-result-object p2

    check-cast p2, Lb/b/f/c/z;

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, v2, p2}, Lcom/gmail/heagoo/common/af;->a(ILjava/util/BitSet;)Lb/b/f/c/a;

    move-result-object p2

    check-cast p2, Lb/b/f/c/n;

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_2

    new-instance p2, Ljava/lang/IllegalArgumentException;

    goto :goto_2

    :pswitch_8
    const/16 v1, 0x8

    goto :goto_1

    :pswitch_9
    const/4 v1, 0x6

    goto :goto_1

    :pswitch_a
    const/4 v1, 0x7

    goto :goto_1

    :pswitch_b
    const/4 v1, 0x4

    goto :goto_1

    :pswitch_c
    const/4 v1, 0x5

    goto :goto_1

    :pswitch_d
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_e
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_f
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_10
    const/4 v1, 0x3

    :goto_1
    invoke-static {v1, p2}, Lb/b/f/c/y;->a(ILb/b/f/c/a;)Lb/b/f/c/y;

    move-result-object p2

    goto/16 :goto_6

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid kind: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported MethodHandle kind: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lb/b/a/d/i;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_11
    iget-object v1, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lb/b/h/c;->g(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/gmail/heagoo/common/af;->a(ILjava/util/BitSet;)Lb/b/f/c/a;

    move-result-object v1

    check-cast v1, Lb/b/f/c/ad;

    iget-object v2, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {v2, v3}, Lb/b/h/c;->g(I)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/gmail/heagoo/common/af;->a(ILjava/util/BitSet;)Lb/b/f/c/a;

    move-result-object p2

    check-cast p2, Lb/b/f/c/ad;

    new-instance v2, Lb/b/f/c/aa;

    invoke-direct {v2, v1, p2}, Lb/b/f/c/aa;-><init>(Lb/b/f/c/ad;Lb/b/f/c/ad;)V

    goto :goto_4

    :pswitch_12
    iget-object v1, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lb/b/h/c;->g(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/gmail/heagoo/common/af;->a(ILjava/util/BitSet;)Lb/b/f/c/a;

    move-result-object v1

    check-cast v1, Lb/b/f/c/ae;

    iget-object v2, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {v2, v3}, Lb/b/h/c;->g(I)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/gmail/heagoo/common/af;->a(ILjava/util/BitSet;)Lb/b/f/c/a;

    move-result-object p2

    check-cast p2, Lb/b/f/c/aa;

    new-instance v2, Lb/b/f/c/q;

    invoke-direct {v2, v1, p2}, Lb/b/f/c/q;-><init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V

    goto :goto_4

    :pswitch_13
    iget-object v1, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lb/b/h/c;->g(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/gmail/heagoo/common/af;->a(ILjava/util/BitSet;)Lb/b/f/c/a;

    move-result-object v1

    check-cast v1, Lb/b/f/c/ae;

    iget-object v2, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {v2, v3}, Lb/b/h/c;->g(I)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/gmail/heagoo/common/af;->a(ILjava/util/BitSet;)Lb/b/f/c/a;

    move-result-object p2

    check-cast p2, Lb/b/f/c/aa;

    new-instance v2, Lb/b/f/c/z;

    invoke-direct {v2, v1, p2}, Lb/b/f/c/z;-><init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V

    goto :goto_4

    :pswitch_14
    iget-object v1, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lb/b/h/c;->g(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/gmail/heagoo/common/af;->a(ILjava/util/BitSet;)Lb/b/f/c/a;

    move-result-object v1

    check-cast v1, Lb/b/f/c/ae;

    iget-object v2, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {v2, v3}, Lb/b/h/c;->g(I)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/gmail/heagoo/common/af;->a(ILjava/util/BitSet;)Lb/b/f/c/a;

    move-result-object p2

    check-cast p2, Lb/b/f/c/aa;

    new-instance v2, Lb/b/f/c/n;

    invoke-direct {v2, v1, p2}, Lb/b/f/c/n;-><init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V

    :goto_4
    move-object p2, v2

    goto :goto_6

    :pswitch_15
    iget-object v1, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lb/b/h/c;->g(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/gmail/heagoo/common/af;->a(ILjava/util/BitSet;)Lb/b/f/c/a;

    move-result-object p2

    goto :goto_6

    :pswitch_16
    iget-object v1, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lb/b/h/c;->g(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/gmail/heagoo/common/af;->a(ILjava/util/BitSet;)Lb/b/f/c/a;

    move-result-object p2

    check-cast p2, Lb/b/f/c/ad;

    new-instance v1, Lb/b/f/c/ae;

    invoke-virtual {p2}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lb/b/f/d/c;->c(Ljava/lang/String;)Lb/b/f/d/c;

    move-result-object p2

    invoke-direct {v1, p2}, Lb/b/f/c/ae;-><init>(Lb/b/f/d/c;)V

    goto :goto_5

    :pswitch_17
    iget-object p2, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Lb/b/h/c;->e(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Lb/b/f/c/l;->a(J)Lb/b/f/c/l;

    move-result-object p2

    goto :goto_6

    :pswitch_18
    iget-object p2, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Lb/b/h/c;->e(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Lb/b/f/c/w;->a(J)Lb/b/f/c/w;

    move-result-object p2

    goto :goto_6

    :pswitch_19
    iget-object p2, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Lb/b/h/c;->d(I)I

    move-result p2

    invoke-static {p2}, Lb/b/f/c/o;->a(I)Lb/b/f/c/o;

    move-result-object p2

    goto :goto_6

    :pswitch_1a
    iget-object p2, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Lb/b/h/c;->d(I)I

    move-result p2

    invoke-static {p2}, Lb/b/f/c/p;->a(I)Lb/b/f/c/p;

    move-result-object p2

    goto :goto_6

    :pswitch_1b
    invoke-direct {p0, v0}, Lcom/gmail/heagoo/common/af;->a(I)Lb/b/f/c/ad;

    move-result-object v1

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V
    :try_end_0
    .catch Lb/b/a/d/i; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    move-object p2, v1

    :goto_6
    iget-object v0, p0, Lcom/gmail/heagoo/common/af;->b:Lb/b/f/c/af;

    invoke-virtual {v0, p1, p2}, Lb/b/f/c/af;->a(ILb/b/f/c/a;)V

    return-object p2

    :goto_7
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown tag byte: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, La/a/a;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lb/b/a/d/i;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Lb/b/a/d/i; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    new-instance v1, Lb/b/a/d/i;

    invoke-direct {v1, p2}, Lb/b/a/d/i;-><init>(Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "...while parsing cst "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at offset "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lb/b/a/d/i;->a(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while parsing cst "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at offset "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lb/b/a/d/i;->a(Ljava/lang/String;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method private a(I)Lb/b/f/c/ad;
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lb/b/h/c;->g(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x3

    iget-object v1, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/2addr v0, p1

    invoke-virtual {v1, p1, v0}, Lb/b/h/c;->a(II)Lb/b/h/c;

    move-result-object p1

    :try_start_0
    new-instance v0, Lb/b/f/c/ad;

    invoke-direct {v0, p1}, Lb/b/f/c/ad;-><init>(Lb/b/h/c;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lb/b/a/d/i;

    invoke-direct {v0, p1}, Lb/b/a/d/i;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;)Z
    .registers 4

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private c()V
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/common/af;->d:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/gmail/heagoo/common/af;->d()V

    :cond_0
    return-void
.end method

.method private d()V
    .registers 9

    invoke-direct {p0}, Lcom/gmail/heagoo/common/af;->e()V

    iget-object v0, p0, Lcom/gmail/heagoo/common/af;->e:Lb/b/a/d/j;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/common/af;->e:Lb/b/a/d/j;

    iget-object v3, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    const/16 v4, 0x8

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "constant_pool_count: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/gmail/heagoo/common/af;->c:[I

    array-length v7, v7

    invoke-static {v7}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v4, v5, v6}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/gmail/heagoo/common/af;->e:Lb/b/a/d/j;

    iget-object v3, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    const/16 v4, 0xa

    const-string v5, "\nconstant_pool:"

    invoke-interface {v0, v3, v4, v1, v5}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/gmail/heagoo/common/af;->e:Lb/b/a/d/j;

    invoke-interface {v0, v2}, Lb/b/a/d/j;->a(I)V

    :cond_0
    new-instance v0, Ljava/util/BitSet;

    iget-object v3, p0, Lcom/gmail/heagoo/common/af;->c:[I

    array-length v3, v3

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/gmail/heagoo/common/af;->c:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/gmail/heagoo/common/af;->c:[I

    aget v4, v4, v3

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/gmail/heagoo/common/af;->b:Lb/b/f/c/af;

    invoke-virtual {v4, v3}, Lb/b/f/c/af;->c(I)Lb/b/f/c/a;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3, v0}, Lcom/gmail/heagoo/common/af;->a(ILjava/util/BitSet;)Lb/b/f/c/a;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/gmail/heagoo/common/af;->e:Lb/b/a/d/j;

    if-eqz v3, :cond_8

    :goto_1
    iget-object v3, p0, Lcom/gmail/heagoo/common/af;->c:[I

    array-length v3, v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/gmail/heagoo/common/af;->b:Lb/b/f/c/af;

    invoke-virtual {v3, v2}, Lb/b/f/c/af;->c(I)Lb/b/f/c/a;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/gmail/heagoo/common/af;->c:[I

    aget v4, v4, v2

    iget v5, p0, Lcom/gmail/heagoo/common/af;->d:I

    add-int/lit8 v6, v2, 0x1

    :goto_2
    iget-object v7, p0, Lcom/gmail/heagoo/common/af;->c:[I

    array-length v7, v7

    if-ge v6, v7, :cond_4

    iget-object v7, p0, Lcom/gmail/heagoo/common/af;->c:[I

    aget v7, v7, v6

    if-eqz v7, :cond_3

    move v5, v7

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": utf8{\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lb/b/f/c/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    :goto_4
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :goto_5
    iget-object v6, p0, Lcom/gmail/heagoo/common/af;->e:Lb/b/a/d/j;

    iget-object v7, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    sub-int/2addr v5, v4

    invoke-interface {v6, v7, v4, v5, v3}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/gmail/heagoo/common/af;->e:Lb/b/a/d/j;

    const/4 v2, -0x1

    invoke-interface {v0, v2}, Lb/b/a/d/j;->a(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/common/af;->e:Lb/b/a/d/j;

    iget-object v2, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    iget v3, p0, Lcom/gmail/heagoo/common/af;->d:I

    const-string v4, "end constant_pool"

    invoke-interface {v0, v2, v3, v1, v4}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_8
    return-void
.end method

.method private e()V
    .registers 7

    const/4 v0, 0x1

    const/16 v1, 0xa

    const/4 v1, 0x1

    const/16 v2, 0xa

    :goto_0
    iget-object v3, p0, Lcom/gmail/heagoo/common/af;->c:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/gmail/heagoo/common/af;->c:[I

    aput v2, v3, v1

    iget-object v3, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    invoke-virtual {v3, v2}, Lb/b/h/c;->f(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    :try_start_0
    new-instance v0, Lb/b/a/d/i;

    goto :goto_3

    :pswitch_1
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :pswitch_2
    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    :pswitch_3
    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x9

    goto :goto_2

    :pswitch_4
    add-int/lit8 v2, v2, 0x5

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :pswitch_5
    iget-object v3, p0, Lcom/gmail/heagoo/common/af;->a:Lb/b/h/c;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lb/b/h/c;->g(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    goto :goto_1

    :goto_2
    add-int/2addr v1, v3

    goto :goto_0

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unknown tag byte: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, La/a/a;->r(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lb/b/a/d/i;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lb/b/a/d/i; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "...while preparsing cst "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at offset "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/b/a/d/i;->a(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v2, p0, Lcom/gmail/heagoo/common/af;->d:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    invoke-direct {p0}, Lcom/gmail/heagoo/common/af;->c()V

    iget v0, p0, Lcom/gmail/heagoo/common/af;->d:I

    return v0
.end method

.method public a(Lb/b/a/d/j;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/common/af;->e:Lb/b/a/d/j;

    return-void
.end method

.method public b()Lb/b/f/c/af;
    .registers 2

    invoke-direct {p0}, Lcom/gmail/heagoo/common/af;->c()V

    iget-object v0, p0, Lcom/gmail/heagoo/common/af;->b:Lb/b/f/c/af;

    return-object v0
.end method
