.class public final Lb/b/g/ae;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/g/al;

.field private final b:I

.field private final c:[I

.field private final d:[Lb/b/f/c/a;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private final g:Ljava/util/BitSet;

.field private final h:Ljava/util/ArrayList;

.field private final i:Ljava/util/ArrayList;

.field private final j:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Lb/b/g/al;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/g/ae;->a:Lb/b/g/al;

    invoke-virtual {p1}, Lb/b/g/al;->g()I

    move-result v0

    iput v0, p0, Lb/b/g/ae;->b:I

    iget v0, p0, Lb/b/g/ae;->b:I

    new-array v0, v0, [I

    iput-object v0, p0, Lb/b/g/ae;->c:[I

    iget v0, p0, Lb/b/g/ae;->b:I

    new-array v0, v0, [Lb/b/f/c/a;

    iput-object v0, p0, Lb/b/g/ae;->d:[Lb/b/f/c/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/g/ae;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/g/ae;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lb/b/g/ae;->g:Ljava/util/BitSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/b/g/ae;->h:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/b/g/ae;->i:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/b/g/ae;->j:Ljava/util/ArrayList;

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lb/b/g/ae;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lb/b/g/ae;->c:[I

    aput p1, v1, v0

    iget-object v1, p0, Lb/b/g/ae;->d:[Lb/b/f/c/a;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lb/b/g/aj;I)Lb/b/f/c/a;
    .registers 10

    invoke-virtual {p1}, Lb/b/g/aj;->d()Lb/b/f/b/i;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/g/aj;->c()Lb/b/f/b/x;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/x;->a()I

    move-result v1

    invoke-virtual {p1}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/r;->f()I

    move-result v3

    iget-object v4, p0, Lb/b/g/ae;->c:[I

    aget v4, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_0

    move-object v3, v5

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lb/b/g/ae;->d:[Lb/b/f/c/a;

    aget-object v3, v4, v3

    :goto_0
    invoke-virtual {p1}, Lb/b/f/b/u;->a_()I

    move-result v4

    if-ne v4, v6, :cond_1

    check-cast v0, Lb/b/f/b/e;

    invoke-virtual {v0}, Lb/b/f/b/e;->e_()Lb/b/f/c/a;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v6}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    iget-object v4, p0, Lb/b/g/ae;->c:[I

    aget v4, v4, v0

    if-eq v4, v6, :cond_2

    move-object v0, v5

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lb/b/g/ae;->d:[Lb/b/f/c/a;

    aget-object v0, v4, v0

    :goto_1
    if-eqz v3, :cond_9

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    const/4 v4, 0x6

    if-eq p2, v4, :cond_4

    return-object v5

    :cond_4
    check-cast v3, Lb/b/f/c/p;

    invoke-virtual {v3}, Lb/b/f/c/p;->j()I

    move-result p2

    check-cast v0, Lb/b/f/c/p;

    invoke-virtual {v0}, Lb/b/f/c/p;->j()I

    move-result v0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected op"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    ushr-int p1, p2, v0

    goto :goto_3

    :pswitch_2
    shr-int p1, p2, v0

    goto :goto_3

    :pswitch_3
    shl-int p1, p2, v0

    goto :goto_3

    :pswitch_4
    xor-int p1, p2, v0

    goto :goto_3

    :pswitch_5
    or-int p1, p2, v0

    goto :goto_3

    :pswitch_6
    and-int p1, p2, v0

    goto :goto_3

    :pswitch_7
    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    rem-int p1, p2, v0

    goto :goto_3

    :pswitch_8
    if-nez v0, :cond_6

    :goto_2
    const/4 p1, 0x0

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    div-int p1, p2, v0

    goto :goto_3

    :pswitch_9
    mul-int p1, p2, v0

    goto :goto_3

    :pswitch_a
    invoke-virtual {p1}, Lb/b/f/b/u;->a_()I

    move-result p1

    if-ne p1, v6, :cond_7

    sub-int p1, v0, p2

    goto :goto_3

    :cond_7
    sub-int p1, p2, v0

    goto :goto_3

    :pswitch_b
    add-int p1, p2, v0

    :goto_3
    if-eqz v2, :cond_8

    return-object v5

    :cond_8
    invoke-static {p1}, Lb/b/f/c/p;->a(I)Lb/b/f/c/p;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_4
    return-object v5

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private a(II)V
    .registers 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lb/b/g/ae;->a:Lb/b/g/al;

    invoke-virtual {p2, p1}, Lb/b/g/al;->d(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/b/g/aj;

    iget-object v0, p0, Lb/b/g/ae;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    iget-object p2, p0, Lb/b/g/ae;->a:Lb/b/g/al;

    invoke-virtual {p2, p1}, Lb/b/g/al;->d(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/b/g/aj;

    iget-object v0, p0, Lb/b/g/ae;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(Lb/b/g/aa;)V
    .registers 13

    invoke-virtual {p1}, Lb/b/g/aa;->n()Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    iget-object v1, p0, Lb/b/g/ae;->c:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lb/b/g/aa;->a()Lb/b/f/b/u;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1}, Lb/b/f/b/u;->a_()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    invoke-virtual {p1, v5}, Lb/b/g/aa;->a(I)I

    move-result v7

    invoke-virtual {v1, v5}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v8

    invoke-virtual {v8}, Lb/b/f/b/r;->f()I

    move-result v8

    iget-object v9, p0, Lb/b/g/ae;->c:[I

    aget v9, v9, v8

    iget-object v10, p0, Lb/b/g/ae;->g:Ljava/util/BitSet;

    invoke-virtual {v10, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    const/4 v10, 0x1

    if-eqz v7, :cond_3

    if-ne v9, v10, :cond_2

    if-nez v3, :cond_1

    iget-object v3, p0, Lb/b/g/ae;->d:[Lb/b/f/c/a;

    aget-object v3, v3, v8

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lb/b/g/ae;->d:[Lb/b/f/c/a;

    aget-object v7, v7, v8

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_2
    move v2, v9

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v2, v6

    :goto_2
    invoke-direct {p0, v0, v2, v3}, Lb/b/g/ae;->a(IILb/b/f/c/a;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, v0, v2}, Lb/b/g/ae;->a(II)V

    :cond_5
    return-void
.end method

.method private a(Lb/b/g/af;)V
    .registers 4

    iget-object v0, p0, Lb/b/g/ae;->g:Ljava/util/BitSet;

    invoke-virtual {p1}, Lb/b/g/af;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/g/ae;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/b/g/ae;->g:Ljava/util/BitSet;

    invoke-virtual {p1}, Lb/b/g/af;->e()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lb/b/g/ae;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lb/b/g/aj;)V
    .registers 11

    invoke-virtual {p1}, Lb/b/g/aj;->c()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v1

    invoke-virtual {v0}, Lb/b/f/b/x;->d()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-ne v2, v5, :cond_6

    invoke-virtual {v1, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->f()I

    move-result v5

    iget-object v6, p0, Lb/b/g/ae;->a:Lb/b/g/al;

    invoke-virtual {v6, v2}, Lb/b/g/al;->a(Lb/b/f/b/r;)Z

    move-result v2

    const/4 v6, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lb/b/g/ae;->c:[I

    aget v2, v2, v5

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lb/b/g/ae;->d:[Lb/b/f/c/a;

    aget-object v2, v2, v5

    goto :goto_0

    :cond_0
    move-object v2, v6

    :goto_0
    invoke-virtual {v1}, Lb/b/f/b/u;->a_()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    invoke-virtual {v1, v4}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/f/b/r;->f()I

    move-result v7

    iget-object v8, p0, Lb/b/g/ae;->a:Lb/b/g/al;

    invoke-virtual {v8, v5}, Lb/b/g/al;->a(Lb/b/f/b/r;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lb/b/g/ae;->c:[I

    aget v5, v5, v7

    if-ne v5, v4, :cond_1

    iget-object v5, p0, Lb/b/g/ae;->d:[Lb/b/f/c/a;

    aget-object v6, v5, v7

    :cond_1
    const/4 v5, 0x6

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lb/b/f/b/u;->a_()I

    move-result v1

    if-ne v1, v4, :cond_4

    move-object v1, v2

    check-cast v1, Lb/b/f/c/ag;

    invoke-virtual {v1}, Lb/b/f/c/ag;->c()I

    move-result v1

    if-eq v1, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    check-cast v2, Lb/b/f/c/p;

    invoke-virtual {v2}, Lb/b/f/c/p;->j()I

    move-result v1

    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected op"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-lez v1, :cond_3

    goto :goto_1

    :pswitch_1
    if-gtz v1, :cond_3

    goto :goto_1

    :pswitch_2
    if-ltz v1, :cond_3

    goto :goto_1

    :pswitch_3
    if-gez v1, :cond_3

    goto :goto_1

    :pswitch_4
    if-eqz v1, :cond_3

    goto :goto_1

    :pswitch_5
    if-nez v1, :cond_3

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    move v1, v0

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_6

    if-eqz v6, :cond_6

    move-object v1, v2

    check-cast v1, Lb/b/f/c/ag;

    invoke-virtual {v1}, Lb/b/f/c/ag;->c()I

    move-result v1

    if-eq v1, v5, :cond_5

    goto :goto_3

    :cond_5
    check-cast v2, Lb/b/f/c/p;

    invoke-virtual {v2}, Lb/b/f/c/p;->j()I

    move-result v1

    check-cast v6, Lb/b/f/c/p;

    invoke-virtual {v6}, Lb/b/f/c/p;->j()I

    move-result v2

    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected op"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6
    if-le v1, v2, :cond_3

    goto :goto_1

    :pswitch_7
    if-gt v1, v2, :cond_3

    goto :goto_1

    :pswitch_8
    if-lt v1, v2, :cond_3

    goto :goto_1

    :pswitch_9
    if-ge v1, v2, :cond_3

    goto :goto_1

    :pswitch_a
    if-eq v1, v2, :cond_3

    goto :goto_1

    :pswitch_b
    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_6
    :goto_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p1}, Lb/b/g/aj;->o()Lb/b/g/af;

    move-result-object v2

    if-eqz v0, :cond_8

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Lb/b/g/af;->i()Lb/b/h/k;

    move-result-object v0

    invoke-virtual {v0, v4}, Lb/b/h/k;->b(I)I

    move-result v0

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Lb/b/g/af;->i()Lb/b/h/k;

    move-result-object v0

    invoke-virtual {v0, v3}, Lb/b/h/k;->b(I)I

    move-result v0

    :goto_5
    iget-object v1, p0, Lb/b/g/ae;->a:Lb/b/g/al;

    invoke-virtual {v1}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/g/af;

    invoke-direct {p0, v0}, Lb/b/g/ae;->a(Lb/b/g/af;)V

    iget-object v0, p0, Lb/b/g/ae;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_8
    :goto_6
    invoke-virtual {v2}, Lb/b/g/af;->i()Lb/b/h/k;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/h/k;->f()I

    move-result p1

    if-ge v3, p1, :cond_9

    invoke-virtual {v2}, Lb/b/g/af;->i()Lb/b/h/k;

    move-result-object p1

    invoke-virtual {p1, v3}, Lb/b/h/k;->b(I)I

    move-result p1

    iget-object v0, p0, Lb/b/g/ae;->a:Lb/b/g/al;

    invoke-virtual {v0}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/g/af;

    invoke-direct {p0, p1}, Lb/b/g/ae;->a(Lb/b/g/af;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Lb/b/g/al;)V
    .registers 11

    new-instance v0, Lb/b/g/ae;

    invoke-direct {v0, p0}, Lb/b/g/ae;-><init>(Lb/b/g/al;)V

    iget-object p0, v0, Lb/b/g/ae;->a:Lb/b/g/al;

    invoke-virtual {p0}, Lb/b/g/al;->d()Lb/b/g/af;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/b/g/ae;->a(Lb/b/g/af;)V

    :cond_0
    iget-object p0, v0, Lb/b/g/ae;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_9

    iget-object p0, v0, Lb/b/g/ae;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    iget-object p0, v0, Lb/b/g/ae;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    iget-object p0, v0, Lb/b/g/ae;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 p0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lb/b/g/ae;->b:I

    if-ge v2, v3, :cond_4

    iget-object v3, v0, Lb/b/g/ae;->c:[I

    aget v3, v3, v2

    if-ne v3, v1, :cond_3

    iget-object v3, v0, Lb/b/g/ae;->d:[Lb/b/f/c/a;

    aget-object v3, v3, v2

    instance-of v3, v3, Lb/b/f/c/ag;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lb/b/g/ae;->a:Lb/b/g/al;

    invoke-virtual {v3, v2}, Lb/b/g/al;->c(I)Lb/b/g/aj;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v4

    invoke-interface {v4}, Lb/b/f/d/d;->e()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v4

    iget-object v5, v0, Lb/b/g/ae;->d:[Lb/b/f/c/a;

    aget-object v5, v5, v2

    check-cast v5, Lb/b/f/c/ag;

    invoke-virtual {v4, v5}, Lb/b/f/b/r;->a(Lb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/b/g/aj;->b(Lb/b/f/b/r;)V

    iget-object v3, v0, Lb/b/g/ae;->a:Lb/b/g/al;

    invoke-virtual {v3, v2}, Lb/b/g/al;->d(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/g/aj;

    invoke-virtual {v4}, Lb/b/g/aj;->k()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v4

    check-cast v5, Lb/b/g/x;

    invoke-virtual {v4}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v4

    invoke-virtual {v4, v2}, Lb/b/f/b/u;->c(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v4

    iget-object v7, v0, Lb/b/g/ae;->d:[Lb/b/f/c/a;

    aget-object v7, v7, v2

    check-cast v7, Lb/b/f/c/ag;

    invoke-virtual {v4, v7}, Lb/b/f/b/r;->a(Lb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lb/b/g/x;->a(ILb/b/f/b/r;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lb/b/g/ae;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/aj;

    invoke-virtual {v2}, Lb/b/g/aj;->o()Lb/b/g/af;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/g/af;->i()Lb/b/h/k;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/h/k;->f()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_3
    if-ge v6, v4, :cond_7

    invoke-virtual {v3}, Lb/b/g/af;->i()Lb/b/h/k;

    move-result-object v8

    invoke-virtual {v8, v6}, Lb/b/h/k;->b(I)I

    move-result v8

    iget-object v9, v0, Lb/b/g/ae;->g:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_6

    move v7, v8

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    if-eq v7, v5, :cond_5

    invoke-virtual {v2}, Lb/b/g/aj;->d()Lb/b/f/b/i;

    move-result-object v2

    new-instance v4, Lb/b/f/b/q;

    sget-object v5, Lb/b/f/b/y;->s:Lb/b/f/b/x;

    invoke-virtual {v2}, Lb/b/f/b/i;->f()Lb/b/f/b/z;

    move-result-object v2

    const/4 v6, 0x0

    sget-object v8, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    invoke-direct {v4, v5, v2, v6, v8}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-virtual {v3, v4}, Lb/b/g/af;->b(Lb/b/f/b/i;)V

    invoke-virtual {v3, v7}, Lb/b/g/af;->b(I)V

    goto :goto_2

    :cond_8
    return-void

    :cond_9
    :goto_4
    iget-object p0, v0, Lb/b/g/ae;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_b

    iget-object p0, v0, Lb/b/g/ae;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v1

    iget-object v2, v0, Lb/b/g/ae;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/b/g/af;

    invoke-virtual {p0}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/aj;

    instance-of v3, v2, Lb/b/g/aa;

    if-eqz v3, :cond_a

    check-cast v2, Lb/b/g/aa;

    invoke-direct {v0, v2}, Lb/b/g/ae;->a(Lb/b/g/aa;)V

    goto :goto_5

    :cond_a
    invoke-direct {v0, v2}, Lb/b/g/ae;->b(Lb/b/g/aj;)V

    goto :goto_5

    :cond_b
    iget-object p0, v0, Lb/b/g/ae;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    iget-object p0, v0, Lb/b/g/ae;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v1

    iget-object v2, v0, Lb/b/g/ae;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/b/g/af;

    invoke-virtual {p0}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/aj;

    instance-of v3, v2, Lb/b/g/aa;

    if-eqz v3, :cond_b

    check-cast v2, Lb/b/g/aa;

    invoke-direct {v0, v2}, Lb/b/g/ae;->a(Lb/b/g/aa;)V

    goto :goto_6

    :cond_c
    :goto_7
    iget-object p0, v0, Lb/b/g/ae;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_e

    iget-object p0, v0, Lb/b/g/ae;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v1

    iget-object v2, v0, Lb/b/g/ae;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/b/g/aj;

    iget-object v2, v0, Lb/b/g/ae;->g:Ljava/util/BitSet;

    invoke-virtual {p0}, Lb/b/g/aj;->o()Lb/b/g/af;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/g/af;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_c

    instance-of v2, p0, Lb/b/g/aa;

    if-eqz v2, :cond_d

    check-cast p0, Lb/b/g/aa;

    invoke-direct {v0, p0}, Lb/b/g/ae;->a(Lb/b/g/aa;)V

    goto :goto_7

    :cond_d
    invoke-direct {v0, p0}, Lb/b/g/ae;->b(Lb/b/g/aj;)V

    goto :goto_7

    :cond_e
    :goto_8
    iget-object p0, v0, Lb/b/g/ae;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, v0, Lb/b/g/ae;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v1

    iget-object v2, v0, Lb/b/g/ae;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/b/g/aj;

    iget-object v2, v0, Lb/b/g/ae;->g:Ljava/util/BitSet;

    invoke-virtual {p0}, Lb/b/g/aj;->o()Lb/b/g/af;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/g/af;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_e

    instance-of v2, p0, Lb/b/g/aa;

    if-eqz v2, :cond_f

    check-cast p0, Lb/b/g/aa;

    invoke-direct {v0, p0}, Lb/b/g/ae;->a(Lb/b/g/aa;)V

    goto :goto_8

    :cond_f
    invoke-direct {v0, p0}, Lb/b/g/ae;->b(Lb/b/g/aj;)V

    goto :goto_8
.end method

.method private a(IILb/b/f/c/a;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    iget-object p3, p0, Lb/b/g/ae;->c:[I

    aget p3, p3, p1

    if-eq p3, p2, :cond_0

    iget-object p3, p0, Lb/b/g/ae;->c:[I

    aput p2, p3, p1

    return v1

    :cond_0
    return v0

    :cond_1
    iget-object v2, p0, Lb/b/g/ae;->c:[I

    aget v2, v2, p1

    if-ne v2, p2, :cond_3

    iget-object v2, p0, Lb/b/g/ae;->d:[Lb/b/f/c/a;

    aget-object v2, v2, p1

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lb/b/g/ae;->c:[I

    aput p2, v0, p1

    iget-object p2, p0, Lb/b/g/ae;->d:[Lb/b/f/c/a;

    aput-object p3, p2, p1

    return v1
.end method

.method private b(Lb/b/g/aj;)V
    .registers 10

    invoke-virtual {p1}, Lb/b/g/aj;->d()Lb/b/f/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/x;->d()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/x;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lb/b/g/ae;->a(Lb/b/g/aj;)V

    :cond_1
    invoke-virtual {p1}, Lb/b/g/aj;->c()Lb/b/f/b/x;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/x;->a()I

    move-result v1

    invoke-virtual {p1}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    const/16 v3, 0x11

    if-eq v1, v3, :cond_3

    const/16 v3, 0x12

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lb/b/g/aj;->o()Lb/b/g/af;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/g/af;->l()Lb/b/g/af;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/g/aj;

    invoke-virtual {v3}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v3

    :cond_4
    invoke-virtual {v3}, Lb/b/f/b/r;->f()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eq v1, v7, :cond_7

    const/4 v4, 0x5

    if-eq v1, v4, :cond_6

    const/16 v0, 0x38

    if-eq v1, v0, :cond_5

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    invoke-virtual {v3}, Lb/b/f/b/r;->c()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lb/b/g/ae;->a(Lb/b/g/aj;I)Lb/b/f/c/a;

    move-result-object v6

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lb/b/g/ae;->c:[I

    aget p1, p1, v5

    if-ne p1, v2, :cond_8

    iget-object p1, p0, Lb/b/g/ae;->c:[I

    aget v2, p1, v5

    iget-object p1, p0, Lb/b/g/ae;->d:[Lb/b/f/c/a;

    aget-object v6, p1, v5

    goto :goto_2

    :cond_6
    check-cast v0, Lb/b/f/b/e;

    invoke-virtual {v0}, Lb/b/f/b/e;->e_()Lb/b/f/c/a;

    move-result-object v6

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result v0

    if-ne v0, v2, :cond_8

    invoke-virtual {p1}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object p1

    invoke-virtual {p1, v4}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result p1

    iget-object v0, p0, Lb/b/g/ae;->c:[I

    aget v2, v0, p1

    iget-object v0, p0, Lb/b/g/ae;->d:[Lb/b/f/c/a;

    aget-object v6, v0, p1

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v2, 0x2

    :goto_2
    invoke-direct {p0, v5, v2, v6}, Lb/b/g/ae;->a(IILb/b/f/c/a;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-direct {p0, v5, v2}, Lb/b/g/ae;->a(II)V

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
