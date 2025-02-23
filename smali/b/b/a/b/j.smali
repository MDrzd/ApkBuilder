.class public final Lb/b/a/b/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Lb/b/a/b/m;


# instance fields
.field private final b:Lb/b/h/c;

.field private final c:Lb/b/f/c/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/b/a/b/k;

    invoke-direct {v0}, Lb/b/a/b/k;-><init>()V

    sput-object v0, Lb/b/a/b/j;->a:Lb/b/a/b/m;

    return-void
.end method

.method public constructor <init>(Lb/b/h/c;Lb/b/f/c/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lb/b/a/b/j;->b:Lb/b/h/c;

    iput-object p2, p0, Lb/b/a/b/j;->c:Lb/b/f/c/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "pool == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bytes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(ILb/b/a/b/m;)I
    .registers 19

    move-object/from16 v1, p0

    move/from16 v9, p1

    if-nez p2, :cond_0

    sget-object v2, Lb/b/a/b/j;->a:Lb/b/a/b/m;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    :goto_0
    :try_start_0
    iget-object v3, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    invoke-virtual {v3, v9}, Lb/b/h/c;->f(I)I

    move-result v3

    invoke-static {v3}, Lb/b/a/b/i;->b(I)I

    const/4 v8, 0x5

    const/16 v4, 0xac

    const/16 v5, 0x2e

    const/16 v7, 0x4f

    const/4 v10, 0x3

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    packed-switch v3, :pswitch_data_0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v9, v4}, Lb/b/a/b/m;->a(III)V

    goto/16 :goto_f

    :pswitch_0
    iget-object v4, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v4, v5}, Lb/b/h/c;->d(I)I

    move-result v4

    add-int/2addr v4, v9

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_1

    const/16 v3, 0xa7

    goto :goto_1

    :cond_1
    const/16 v3, 0xa8

    :goto_1
    invoke-interface {v2, v3, v9, v8, v4}, Lb/b/a/b/m;->a(IIII)V

    return v8

    :pswitch_1
    iget-object v4, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v4, v5}, Lb/b/h/c;->g(I)I

    move-result v4

    iget-object v5, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v6, v9, 0x3

    invoke-virtual {v5, v6}, Lb/b/h/c;->f(I)I

    move-result v7

    iget-object v5, v1, Lb/b/a/b/j;->c:Lb/b/f/c/b;

    invoke-interface {v5, v4}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v6

    const/4 v5, 0x4

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    return v11

    :pswitch_2
    iget-object v3, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lb/b/h/c;->f(I)I

    move-result v3

    iget-object v4, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v5, v9, 0x2

    invoke-virtual {v4, v5}, Lb/b/h/c;->g(I)I

    move-result v6

    const/16 v4, 0x84

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa9

    if-eq v3, v4, :cond_2

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    const/16 v3, 0xc4

    invoke-interface {v2, v3, v9, v13}, Lb/b/a/b/m;->a(III)V

    return v13

    :pswitch_3
    const/16 v3, 0x36

    const/4 v5, 0x4

    sget-object v7, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v11

    :pswitch_4
    const/16 v3, 0x36

    const/4 v5, 0x4

    sget-object v7, Lb/b/f/d/c;->d:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v11

    :pswitch_5
    const/16 v3, 0x36

    const/4 v5, 0x4

    sget-object v7, Lb/b/f/d/c;->e:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v11

    :pswitch_6
    const/16 v3, 0x36

    const/4 v5, 0x4

    sget-object v7, Lb/b/f/d/c;->g:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v11

    :pswitch_7
    const/16 v3, 0x36

    const/4 v5, 0x4

    sget-object v7, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v11

    :pswitch_8
    const/16 v3, 0x15

    const/4 v5, 0x4

    sget-object v7, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v11

    :pswitch_9
    const/16 v3, 0x15

    const/4 v5, 0x4

    sget-object v7, Lb/b/f/d/c;->d:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v11

    :pswitch_a
    const/16 v3, 0x15

    const/4 v5, 0x4

    sget-object v7, Lb/b/f/d/c;->e:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v11

    :pswitch_b
    const/16 v3, 0x15

    const/4 v5, 0x4

    sget-object v7, Lb/b/f/d/c;->g:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v11

    :pswitch_c
    const/16 v3, 0x15

    const/4 v5, 0x4

    sget-object v7, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v11

    :cond_2
    const/4 v5, 0x4

    sget-object v7, Lb/b/f/d/c;->k:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v11

    :cond_3
    iget-object v4, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v5, v9, 0x4

    invoke-virtual {v4, v5}, Lb/b/h/c;->c(I)I

    move-result v8

    const/4 v5, 0x6

    sget-object v7, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    const/4 v2, 0x6

    return v2

    :pswitch_d
    iget-object v3, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lb/b/h/c;->f(I)I

    move-result v3

    packed-switch v3, :pswitch_data_3

    new-instance v2, Lb/b/a/b/aj;

    goto/16 :goto_8

    :pswitch_e
    sget-object v4, Lb/b/f/c/ae;->g:Lb/b/f/c/ae;

    goto :goto_2

    :pswitch_f
    sget-object v4, Lb/b/f/c/ae;->h:Lb/b/f/c/ae;

    goto :goto_2

    :pswitch_10
    sget-object v4, Lb/b/f/c/ae;->i:Lb/b/f/c/ae;

    goto :goto_2

    :pswitch_11
    sget-object v4, Lb/b/f/c/ae;->c:Lb/b/f/c/ae;

    goto :goto_2

    :pswitch_12
    sget-object v4, Lb/b/f/c/ae;->e:Lb/b/f/c/ae;

    goto :goto_2

    :pswitch_13
    sget-object v4, Lb/b/f/c/ae;->f:Lb/b/f/c/ae;

    goto :goto_2

    :pswitch_14
    sget-object v4, Lb/b/f/c/ae;->d:Lb/b/f/c/ae;

    goto :goto_2

    :pswitch_15
    sget-object v4, Lb/b/f/c/ae;->b:Lb/b/f/c/ae;

    :goto_2
    invoke-interface {v2}, Lb/b/a/b/m;->a()I

    move-result v5

    new-instance v8, Lb/b/a/b/l;

    invoke-direct {v8, v1}, Lb/b/a/b/l;-><init>(Lb/b/a/b/j;)V

    if-ltz v5, :cond_4

    invoke-virtual {v1, v5, v8}, Lb/b/a/b/j;->a(ILb/b/a/b/m;)I

    iget-object v10, v8, Lb/b/a/b/l;->a:Lb/b/f/c/a;

    instance-of v10, v10, Lb/b/f/c/p;

    if-eqz v10, :cond_4

    iget v10, v8, Lb/b/a/b/l;->b:I

    add-int/2addr v10, v5

    if-ne v10, v9, :cond_4

    iget v5, v8, Lb/b/a/b/l;->c:I

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    add-int/lit8 v10, v9, 0x2

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_6

    const/4 v14, 0x0

    :goto_4
    iget-object v15, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v6, v10, 0x1

    invoke-virtual {v15, v10}, Lb/b/h/c;->f(I)I

    move-result v15

    const/16 v13, 0x59

    if-ne v15, v13, :cond_7

    invoke-virtual {v1, v6, v8}, Lb/b/a/b/j;->a(ILb/b/a/b/m;)I

    iget v13, v8, Lb/b/a/b/l;->b:I

    if-eqz v13, :cond_7

    iget-object v13, v8, Lb/b/a/b/l;->a:Lb/b/f/c/a;

    instance-of v13, v13, Lb/b/f/c/p;

    if-eqz v13, :cond_7

    iget v13, v8, Lb/b/a/b/l;->c:I

    if-ne v13, v14, :cond_7

    iget v13, v8, Lb/b/a/b/l;->b:I

    add-int/2addr v6, v13

    invoke-virtual {v1, v6, v8}, Lb/b/a/b/j;->a(ILb/b/a/b/m;)I

    iget v13, v8, Lb/b/a/b/l;->b:I

    if-eqz v13, :cond_7

    iget-object v13, v8, Lb/b/a/b/l;->a:Lb/b/f/c/a;

    instance-of v13, v13, Lb/b/f/c/v;

    if-eqz v13, :cond_7

    iget v13, v8, Lb/b/a/b/l;->b:I

    add-int/2addr v6, v13

    iget-object v13, v8, Lb/b/a/b/l;->a:Lb/b/f/c/a;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v15, v6, 0x1

    invoke-virtual {v13, v6}, Lb/b/h/c;->f(I)I

    move-result v6

    packed-switch v3, :pswitch_data_4

    goto :goto_5

    :pswitch_16
    const/16 v13, 0x50

    if-eq v6, v13, :cond_5

    goto :goto_5

    :pswitch_17
    if-eq v6, v7, :cond_5

    goto :goto_5

    :pswitch_18
    const/16 v13, 0x56

    if-eq v6, v13, :cond_5

    goto :goto_5

    :pswitch_19
    const/16 v13, 0x52

    if-eq v6, v13, :cond_5

    goto :goto_5

    :pswitch_1a
    const/16 v13, 0x51

    if-eq v6, v13, :cond_5

    goto :goto_5

    :pswitch_1b
    const/16 v13, 0x55

    if-eq v6, v13, :cond_5

    goto :goto_5

    :pswitch_1c
    const/16 v13, 0x54

    if-eq v6, v13, :cond_5

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    goto :goto_6

    :goto_5
    const/4 v6, 0x1

    :goto_6
    if-nez v6, :cond_7

    add-int/lit8 v14, v14, 0x1

    move v10, v15

    const/4 v13, 0x1

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    :cond_7
    if-lt v14, v12, :cond_9

    if-eq v14, v5, :cond_8

    goto :goto_7

    :cond_8
    sub-int/2addr v10, v9

    invoke-interface {v2, v9, v10, v4, v11}, Lb/b/a/b/m;->a(IILb/b/f/c/ae;Ljava/util/ArrayList;)V

    return v10

    :cond_9
    :goto_7
    const/4 v3, 0x0

    invoke-interface {v2, v9, v12, v4, v3}, Lb/b/a/b/m;->a(IILb/b/f/c/ae;Ljava/util/ArrayList;)V

    return v12

    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bad newarray code "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, La/a/a;->r(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1d
    iget-object v4, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v4, v5}, Lb/b/h/c;->g(I)I

    move-result v4

    iget-object v5, v1, Lb/b/a/b/j;->c:Lb/b/f/c/b;

    invoke-interface {v5, v4}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lb/b/f/c/r;

    const/4 v5, 0x5

    const/4 v7, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    return v8

    :pswitch_1e
    iget-object v4, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v4, v5}, Lb/b/h/c;->g(I)I

    move-result v4

    iget-object v5, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v6, v9, 0x3

    invoke-virtual {v5, v6}, Lb/b/h/c;->f(I)I

    move-result v5

    iget-object v6, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v7, v9, 0x4

    invoke-virtual {v6, v7}, Lb/b/h/c;->f(I)I

    move-result v6

    iget-object v7, v1, Lb/b/a/b/j;->c:Lb/b/f/c/b;

    invoke-interface {v7, v4}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v7

    const/4 v10, 0x5

    shl-int/lit8 v4, v6, 0x8

    or-int v11, v5, v4

    move/from16 v4, p1

    move v5, v10

    move-object v6, v7

    move v7, v11

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    return v8

    :pswitch_1f
    iget-object v4, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v4, v5}, Lb/b/h/c;->g(I)I

    move-result v4

    iget-object v5, v1, Lb/b/a/b/j;->c:Lb/b/f/c/b;

    invoke-interface {v5, v4}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v6

    const/4 v5, 0x3

    const/4 v7, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    return v10

    :pswitch_20
    sget-object v4, Lb/b/f/d/c;->i:Lb/b/f/d/c;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v9, v5, v4}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_21
    const/4 v5, 0x1

    sget-object v3, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    invoke-interface {v2, v4, v9, v5, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_22
    const/4 v5, 0x1

    sget-object v3, Lb/b/f/d/c;->d:Lb/b/f/d/c;

    invoke-interface {v2, v4, v9, v5, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_23
    const/4 v5, 0x1

    sget-object v3, Lb/b/f/d/c;->e:Lb/b/f/d/c;

    invoke-interface {v2, v4, v9, v5, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_24
    const/4 v5, 0x1

    sget-object v3, Lb/b/f/d/c;->g:Lb/b/f/d/c;

    invoke-interface {v2, v4, v9, v5, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_25
    const/4 v5, 0x1

    sget-object v3, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    invoke-interface {v2, v4, v9, v5, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_26
    add-int/lit8 v3, v9, 0x4

    and-int/lit8 v3, v3, -0x4

    add-int/lit8 v4, v9, 0x1

    const/4 v7, 0x0

    :goto_9
    if-ge v4, v3, :cond_a

    shl-int/lit8 v5, v7, 0x8

    iget-object v6, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    invoke-virtual {v6, v4}, Lb/b/h/c;->f(I)I

    move-result v6

    or-int v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_a
    iget-object v4, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    invoke-virtual {v4, v3}, Lb/b/h/c;->d(I)I

    move-result v4

    add-int/2addr v4, v9

    iget-object v5, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v6, v3, 0x4

    invoke-virtual {v5, v6}, Lb/b/h/c;->d(I)I

    move-result v5

    add-int/lit8 v3, v3, 0x8

    new-instance v6, Lb/b/a/b/am;

    invoke-direct {v6, v5}, Lb/b/a/b/am;-><init>(I)V

    move v8, v3

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v5, :cond_b

    iget-object v10, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    invoke-virtual {v10, v8}, Lb/b/h/c;->d(I)I

    move-result v10

    iget-object v11, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v12, v8, 0x4

    invoke-virtual {v11, v12}, Lb/b/h/c;->d(I)I

    move-result v11

    add-int/2addr v11, v9

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v6, v10, v11}, Lb/b/a/b/am;->a(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_b
    invoke-virtual {v6, v4}, Lb/b/a/b/am;->c(I)V

    invoke-virtual {v6}, Lb/b/a/b/am;->j()V

    invoke-virtual {v6}, Lb/b/a/b/am;->b_()V

    sub-int/2addr v8, v9

    const/16 v3, 0xab

    move/from16 v4, p1

    move v5, v8

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/a/b/am;I)V

    return v8

    :pswitch_27
    add-int/lit8 v3, v9, 0x4

    and-int/lit8 v3, v3, -0x4

    add-int/lit8 v4, v9, 0x1

    const/4 v7, 0x0

    :goto_b
    if-ge v4, v3, :cond_c

    shl-int/lit8 v5, v7, 0x8

    iget-object v6, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    invoke-virtual {v6, v4}, Lb/b/h/c;->f(I)I

    move-result v6

    or-int v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_c
    iget-object v4, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    invoke-virtual {v4, v3}, Lb/b/h/c;->d(I)I

    move-result v4

    add-int/2addr v4, v9

    iget-object v5, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v6, v3, 0x4

    invoke-virtual {v5, v6}, Lb/b/h/c;->d(I)I

    move-result v5

    iget-object v6, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v8, v3, 0x8

    invoke-virtual {v6, v8}, Lb/b/h/c;->d(I)I

    move-result v6

    sub-int v8, v6, v5

    const/4 v10, 0x1

    add-int/2addr v8, v10

    add-int/lit8 v3, v3, 0xc

    if-gt v5, v6, :cond_e

    new-instance v6, Lb/b/a/b/am;

    invoke-direct {v6, v8}, Lb/b/a/b/am;-><init>(I)V

    move v10, v3

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v8, :cond_d

    iget-object v11, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    invoke-virtual {v11, v10}, Lb/b/h/c;->d(I)I

    move-result v11

    add-int/2addr v11, v9

    add-int/lit8 v10, v10, 0x4

    add-int v12, v5, v3

    invoke-virtual {v6, v12, v11}, Lb/b/a/b/am;->a(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_d
    invoke-virtual {v6, v4}, Lb/b/a/b/am;->c(I)V

    invoke-virtual {v6}, Lb/b/a/b/am;->j()V

    invoke-virtual {v6}, Lb/b/a/b/am;->b_()V

    sub-int v8, v10, v9

    const/16 v3, 0xab

    move/from16 v4, p1

    move v5, v8

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/a/b/am;I)V

    return v8

    :cond_e
    new-instance v2, Lb/b/a/b/aj;

    const-string v3, "low / high inversion"

    invoke-direct {v2, v3}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_28
    iget-object v4, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v4, v5}, Lb/b/h/c;->f(I)I

    move-result v6

    const/4 v5, 0x2

    sget-object v7, Lb/b/f/d/c;->k:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v12

    :pswitch_29
    iget-object v4, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v4, v5}, Lb/b/h/c;->c(I)I

    move-result v4

    add-int/2addr v4, v9

    invoke-interface {v2, v3, v9, v10, v4}, Lb/b/a/b/m;->a(IIII)V

    return v10

    :pswitch_2a
    sget-object v4, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v9, v5, v4}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_2b
    const/4 v5, 0x1

    sget-object v4, Lb/b/f/d/c;->d:Lb/b/f/d/c;

    invoke-interface {v2, v3, v9, v5, v4}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_2c
    const/4 v5, 0x1

    sget-object v4, Lb/b/f/d/c;->e:Lb/b/f/d/c;

    invoke-interface {v2, v3, v9, v5, v4}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_2d
    const/4 v5, 0x1

    sget-object v4, Lb/b/f/d/c;->g:Lb/b/f/d/c;

    invoke-interface {v2, v3, v9, v5, v4}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_2e
    iget-object v4, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v4, v5}, Lb/b/h/c;->f(I)I

    move-result v6

    iget-object v4, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v5, v9, 0x2

    invoke-virtual {v4, v5}, Lb/b/h/c;->b(I)I

    move-result v8

    const/4 v5, 0x3

    sget-object v7, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v10

    :pswitch_2f
    sub-int/2addr v3, v10

    sget-object v4, Lb/b/f/d/c;->d:Lb/b/f/d/c;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v9, v5, v4}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_30
    sub-int/2addr v3, v12

    sget-object v4, Lb/b/f/d/c;->e:Lb/b/f/d/c;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v9, v5, v4}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_31
    const/4 v5, 0x1

    sub-int/2addr v3, v5

    sget-object v4, Lb/b/f/d/c;->g:Lb/b/f/d/c;

    invoke-interface {v2, v3, v9, v5, v4}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_32
    const/4 v5, 0x1

    sget-object v4, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    invoke-interface {v2, v3, v9, v5, v4}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_33
    const/4 v5, 0x1

    sget-object v4, Lb/b/f/d/c;->i:Lb/b/f/d/c;

    invoke-interface {v2, v3, v9, v5, v4}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_34
    const/4 v5, 0x1

    sget-object v3, Lb/b/f/d/c;->h:Lb/b/f/d/c;

    invoke-interface {v2, v7, v9, v5, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_35
    const/4 v5, 0x1

    sget-object v3, Lb/b/f/d/c;->c:Lb/b/f/d/c;

    invoke-interface {v2, v7, v9, v5, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_36
    const/4 v5, 0x1

    sget-object v3, Lb/b/f/d/c;->b:Lb/b/f/d/c;

    invoke-interface {v2, v7, v9, v5, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_37
    const/4 v5, 0x1

    sget-object v3, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    invoke-interface {v2, v7, v9, v5, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_38
    const/4 v5, 0x1

    sget-object v3, Lb/b/f/d/c;->d:Lb/b/f/d/c;

    invoke-interface {v2, v7, v9, v5, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_39
    const/4 v5, 0x1

    sget-object v3, Lb/b/f/d/c;->e:Lb/b/f/d/c;

    invoke-interface {v2, v7, v9, v5, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_3a
    const/4 v5, 0x1

    sget-object v3, Lb/b/f/d/c;->g:Lb/b/f/d/c;

    invoke-interface {v2, v7, v9, v5, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_3b
    const/4 v5, 0x1

    sget-object v3, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    invoke-interface {v2, v7, v9, v5, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v5

    :pswitch_3c
    add-int/lit8 v6, v3, -0x4b

    const/16 v3, 0x36

    const/4 v5, 0x1

    sget-object v7, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_3d
    add-int/lit8 v6, v3, -0x47

    const/16 v3, 0x36

    const/4 v5, 0x1

    sget-object v7, Lb/b/f/d/c;->d:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_3e
    add-int/lit8 v6, v3, -0x43

    const/16 v3, 0x36

    const/4 v5, 0x1

    sget-object v7, Lb/b/f/d/c;->e:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_3f
    add-int/lit8 v6, v3, -0x3f

    const/16 v3, 0x36

    const/4 v5, 0x1

    sget-object v7, Lb/b/f/d/c;->g:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_40
    add-int/lit8 v6, v3, -0x3b

    const/16 v3, 0x36

    const/4 v5, 0x1

    sget-object v7, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_41
    iget-object v3, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lb/b/h/c;->f(I)I

    move-result v6

    const/16 v3, 0x36

    const/4 v5, 0x2

    sget-object v7, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v12

    :pswitch_42
    iget-object v3, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lb/b/h/c;->f(I)I

    move-result v6

    const/16 v3, 0x36

    const/4 v5, 0x2

    sget-object v7, Lb/b/f/d/c;->d:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v12

    :pswitch_43
    iget-object v3, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lb/b/h/c;->f(I)I

    move-result v6

    const/16 v3, 0x36

    const/4 v5, 0x2

    sget-object v7, Lb/b/f/d/c;->e:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v12

    :pswitch_44
    iget-object v3, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lb/b/h/c;->f(I)I

    move-result v6

    const/16 v3, 0x36

    const/4 v5, 0x2

    sget-object v7, Lb/b/f/d/c;->g:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v12

    :pswitch_45
    iget-object v3, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lb/b/h/c;->f(I)I

    move-result v6

    const/16 v3, 0x36

    const/4 v5, 0x2

    sget-object v7, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v12

    :pswitch_46
    sget-object v3, Lb/b/f/d/c;->h:Lb/b/f/d/c;

    const/4 v4, 0x1

    invoke-interface {v2, v5, v9, v4, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v4

    :pswitch_47
    const/4 v4, 0x1

    sget-object v3, Lb/b/f/d/c;->c:Lb/b/f/d/c;

    invoke-interface {v2, v5, v9, v4, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v4

    :pswitch_48
    const/4 v4, 0x1

    sget-object v3, Lb/b/f/d/c;->b:Lb/b/f/d/c;

    invoke-interface {v2, v5, v9, v4, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v4

    :pswitch_49
    const/4 v4, 0x1

    sget-object v3, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    invoke-interface {v2, v5, v9, v4, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v4

    :pswitch_4a
    const/4 v4, 0x1

    sget-object v3, Lb/b/f/d/c;->d:Lb/b/f/d/c;

    invoke-interface {v2, v5, v9, v4, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v4

    :pswitch_4b
    const/4 v4, 0x1

    sget-object v3, Lb/b/f/d/c;->e:Lb/b/f/d/c;

    invoke-interface {v2, v5, v9, v4, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v4

    :pswitch_4c
    const/4 v4, 0x1

    sget-object v3, Lb/b/f/d/c;->g:Lb/b/f/d/c;

    invoke-interface {v2, v5, v9, v4, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v4

    :pswitch_4d
    const/4 v4, 0x1

    sget-object v3, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    invoke-interface {v2, v5, v9, v4, v3}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V

    return v4

    :pswitch_4e
    add-int/lit8 v6, v3, -0x2a

    const/16 v3, 0x15

    const/4 v5, 0x1

    sget-object v7, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_4f
    add-int/lit8 v6, v3, -0x26

    const/16 v3, 0x15

    const/4 v5, 0x1

    sget-object v7, Lb/b/f/d/c;->d:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_50
    add-int/lit8 v6, v3, -0x22

    const/16 v3, 0x15

    const/4 v5, 0x1

    sget-object v7, Lb/b/f/d/c;->e:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_51
    add-int/lit8 v6, v3, -0x1e

    const/16 v3, 0x15

    const/4 v5, 0x1

    sget-object v7, Lb/b/f/d/c;->g:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_52
    add-int/lit8 v6, v3, -0x1a

    const/16 v3, 0x15

    const/4 v5, 0x1

    sget-object v7, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_53
    iget-object v3, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lb/b/h/c;->f(I)I

    move-result v6

    const/16 v3, 0x15

    const/4 v5, 0x2

    sget-object v7, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v12

    :pswitch_54
    iget-object v3, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lb/b/h/c;->f(I)I

    move-result v6

    const/16 v3, 0x15

    const/4 v5, 0x2

    sget-object v7, Lb/b/f/d/c;->d:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v12

    :pswitch_55
    iget-object v3, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lb/b/h/c;->f(I)I

    move-result v6

    const/16 v3, 0x15

    const/4 v5, 0x2

    sget-object v7, Lb/b/f/d/c;->e:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v12

    :pswitch_56
    iget-object v3, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lb/b/h/c;->f(I)I

    move-result v6

    const/16 v3, 0x15

    const/4 v5, 0x2

    sget-object v7, Lb/b/f/d/c;->g:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v12

    :pswitch_57
    iget-object v3, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lb/b/h/c;->f(I)I

    move-result v6

    const/16 v3, 0x15

    const/4 v5, 0x2

    sget-object v7, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lb/b/a/b/m;->a(IIIILb/b/f/d/c;I)V

    return v12

    :pswitch_58
    iget-object v3, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lb/b/h/c;->g(I)I

    move-result v3

    iget-object v4, v1, Lb/b/a/b/j;->c:Lb/b/f/c/b;

    invoke-interface {v4, v3}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v6

    const/16 v3, 0x14

    const/4 v5, 0x3

    const/4 v7, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    return v10

    :pswitch_59
    iget-object v3, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lb/b/h/c;->g(I)I

    move-result v3

    iget-object v4, v1, Lb/b/a/b/j;->c:Lb/b/f/c/b;

    invoke-interface {v4, v3}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v6

    instance-of v3, v6, Lb/b/f/c/p;

    if-eqz v3, :cond_f

    move-object v3, v6

    check-cast v3, Lb/b/f/c/p;

    invoke-virtual {v3}, Lb/b/f/c/p;->j()I

    move-result v3

    move v7, v3

    goto :goto_d

    :cond_f
    const/4 v7, 0x0

    :goto_d
    const/16 v3, 0x12

    const/4 v5, 0x3

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    return v10

    :pswitch_5a
    iget-object v3, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lb/b/h/c;->f(I)I

    move-result v3

    iget-object v4, v1, Lb/b/a/b/j;->c:Lb/b/f/c/b;

    invoke-interface {v4, v3}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v6

    instance-of v3, v6, Lb/b/f/c/p;

    if-eqz v3, :cond_10

    move-object v3, v6

    check-cast v3, Lb/b/f/c/p;

    invoke-virtual {v3}, Lb/b/f/c/p;->j()I

    move-result v3

    move v7, v3

    goto :goto_e

    :cond_10
    const/4 v7, 0x0

    :goto_e
    const/16 v3, 0x12

    const/4 v5, 0x2

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    return v12

    :pswitch_5b
    iget-object v3, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lb/b/h/c;->c(I)I

    move-result v7

    const/16 v3, 0x12

    const/4 v5, 0x3

    invoke-static {v7}, Lb/b/f/c/p;->a(I)Lb/b/f/c/p;

    move-result-object v6

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    return v10

    :pswitch_5c
    iget-object v3, v1, Lb/b/a/b/j;->b:Lb/b/h/c;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lb/b/h/c;->b(I)I

    move-result v7

    const/16 v3, 0x12

    const/4 v5, 0x2

    invoke-static {v7}, Lb/b/f/c/p;->a(I)Lb/b/f/c/p;

    move-result-object v6

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    return v12

    :pswitch_5d
    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lb/b/f/c/l;->b:Lb/b/f/c/l;

    const/4 v7, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_5e
    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lb/b/f/c/l;->a:Lb/b/f/c/l;

    const/4 v7, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_5f
    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lb/b/f/c/o;->c:Lb/b/f/c/o;

    const/4 v7, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_60
    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lb/b/f/c/o;->b:Lb/b/f/c/o;

    const/4 v7, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_61
    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lb/b/f/c/o;->a:Lb/b/f/c/o;

    const/4 v7, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_62
    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lb/b/f/c/w;->b:Lb/b/f/c/w;

    const/4 v7, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_63
    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lb/b/f/c/w;->a:Lb/b/f/c/w;

    const/4 v7, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_64
    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lb/b/f/c/p;->g:Lb/b/f/c/p;

    const/4 v7, 0x5

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_65
    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lb/b/f/c/p;->f:Lb/b/f/c/p;

    const/4 v7, 0x4

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_66
    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lb/b/f/c/p;->e:Lb/b/f/c/p;

    const/4 v7, 0x3

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_67
    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lb/b/f/c/p;->d:Lb/b/f/c/p;

    const/4 v7, 0x2

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_68
    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lb/b/f/c/p;->c:Lb/b/f/c/p;

    const/4 v7, 0x1

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_69
    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lb/b/f/c/p;->b:Lb/b/f/c/p;

    const/4 v7, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_6a
    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lb/b/f/c/p;->a:Lb/b/f/c/p;

    const/4 v7, -0x1

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_6b
    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lb/b/f/c/s;->a:Lb/b/f/c/s;

    const/4 v7, 0x0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lb/b/a/b/m;->a(IIILb/b/f/c/a;I)V

    const/4 v4, 0x1

    return v4

    :pswitch_6c
    const/4 v4, 0x1

    sget-object v5, Lb/b/f/d/c;->i:Lb/b/f/d/c;

    invoke-interface {v2, v3, v9, v4, v5}, Lb/b/a/b/m;->a(IIILb/b/f/d/c;)V
    :try_end_0
    .catch Lb/b/a/b/aj; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_f
    return v4

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v3, Lb/b/a/b/aj;

    invoke-direct {v3, v2}, Lb/b/a/b/aj;-><init>(Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "...at bytecode offset "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lb/b/a/b/aj;->a(Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception v0

    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "...at bytecode offset "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb/b/a/b/aj;->a(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_32
        :pswitch_31
        :pswitch_32
        :pswitch_31
        :pswitch_32
        :pswitch_31
        :pswitch_32
        :pswitch_31
        :pswitch_32
        :pswitch_31
        :pswitch_32
        :pswitch_31
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2d
        :pswitch_2b
        :pswitch_2a
        :pswitch_2d
        :pswitch_2c
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1f
        :pswitch_d
        :pswitch_1f
        :pswitch_2a
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_20
        :pswitch_20
        :pswitch_2
        :pswitch_1
        :pswitch_29
        :pswitch_29
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x36
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_1c
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method

.method public final a()Lb/b/h/c;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/j;->b:Lb/b/h/c;

    return-object v0
.end method

.method public final a(Lb/b/a/b/m;)V
    .registers 5

    iget-object v0, p0, Lb/b/a/b/j;->b:Lb/b/h/c;

    invoke-virtual {v0}, Lb/b/h/c;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1, p1}, Lb/b/a/b/j;->a(ILb/b/a/b/m;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lb/b/a/b/j;->b:Lb/b/h/c;

    invoke-virtual {v0}, Lb/b/h/c;->a()I

    move-result v0

    return v0
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lb/b/a/b/j;->b:Lb/b/h/c;

    invoke-virtual {v0}, Lb/b/h/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method
