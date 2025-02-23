.class final Lb/b/a/b/ai;
.super Lb/b/a/b/an;


# static fields
.field private static final a:Lb/b/f/c/ae;

.field private static final b:Lb/b/f/c/z;


# instance fields
.field private final c:Lb/b/a/b/z;

.field private final d:Lb/b/a/b/n;

.field private final e:Lb/b/a/d/h;

.field private final f:Lb/b/f/b/ad;

.field private final g:I

.field private final h:Ljava/util/ArrayList;

.field private i:Lb/b/f/d/e;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Lb/b/a/b/y;

.field private q:Lb/b/f/b/x;

.field private r:Lb/b/f/b/z;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lb/b/f/c/ae;

    const-string v1, "java/lang/reflect/Array"

    invoke-static {v1}, Lb/b/f/d/c;->c(Ljava/lang/String;)Lb/b/f/d/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/b/f/c/ae;-><init>(Lb/b/f/d/c;)V

    sput-object v0, Lb/b/a/b/ai;->a:Lb/b/f/c/ae;

    new-instance v0, Lb/b/f/c/z;

    sget-object v1, Lb/b/a/b/ai;->a:Lb/b/f/c/ae;

    new-instance v2, Lb/b/f/c/aa;

    new-instance v3, Lb/b/f/c/ad;

    const-string v4, "newInstance"

    invoke-direct {v3, v4}, Lb/b/f/c/ad;-><init>(Ljava/lang/String;)V

    new-instance v4, Lb/b/f/c/ad;

    const-string v5, "(Ljava/lang/Class;[I)Ljava/lang/Object;"

    invoke-direct {v4, v5}, Lb/b/f/c/ad;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lb/b/f/c/aa;-><init>(Lb/b/f/c/ad;Lb/b/f/c/ad;)V

    invoke-direct {v0, v1, v2}, Lb/b/f/c/z;-><init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V

    sput-object v0, Lb/b/a/b/ai;->b:Lb/b/f/c/z;

    return-void
.end method

.method public constructor <init>(Lb/b/a/b/z;Lb/b/a/b/n;Lb/b/f/b/ad;Lb/b/a/d/h;)V
    .registers 6

    invoke-virtual {p2}, Lb/b/a/b/n;->i()Lb/b/f/d/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/b/a/b/an;-><init>(Lb/b/f/d/a;)V

    if-eqz p4, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lb/b/a/b/ai;->c:Lb/b/a/b/z;

    iput-object p2, p0, Lb/b/a/b/ai;->d:Lb/b/a/b/n;

    iput-object p4, p0, Lb/b/a/b/ai;->e:Lb/b/a/d/h;

    iput-object p3, p0, Lb/b/a/b/ai;->f:Lb/b/f/b/ad;

    invoke-virtual {p2}, Lb/b/a/b/n;->k()I

    move-result p1

    iput p1, p0, Lb/b/a/b/ai;->g:I

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x19

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lb/b/a/b/ai;->h:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/a/b/ai;->i:Lb/b/f/d/e;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lb/b/a/b/ai;->j:Z

    iput-boolean p2, p0, Lb/b/a/b/ai;->k:Z

    const/4 p3, -0x1

    iput p3, p0, Lb/b/a/b/ai;->l:I

    iput p2, p0, Lb/b/a/b/ai;->m:I

    iput-boolean p2, p0, Lb/b/a/b/ai;->o:Z

    iput-object p1, p0, Lb/b/a/b/ai;->q:Lb/b/f/b/x;

    iput-object p1, p0, Lb/b/a/b/ai;->r:Lb/b/f/b/z;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "advice == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "methods == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(ILb/b/f/c/a;)I
    .registers 6

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    const/16 v0, 0x34

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const/16 p1, 0x16

    return p1

    :sswitch_1
    const/16 p1, 0x15

    return p1

    :sswitch_2
    const/16 p1, 0x14

    return p1

    :sswitch_3
    const/16 p1, 0x19

    return p1

    :sswitch_4
    const/16 p1, 0x18

    return p1

    :sswitch_5
    const/16 p1, 0x17

    return p1

    :sswitch_6
    const/16 p1, 0x13

    return p1

    :sswitch_7
    const/16 p1, 0x12

    return p1

    :sswitch_8
    const/16 p1, 0x11

    return p1

    :sswitch_9
    const/16 p1, 0x10

    return p1

    :sswitch_a
    const/16 p1, 0xf

    return p1

    :sswitch_b
    const/16 p1, 0x27

    return p1

    :sswitch_c
    const/16 p1, 0x26

    return p1

    :sswitch_d
    const/4 p1, 0x1

    return p1

    :pswitch_0
    const/16 p1, 0x25

    return p1

    :pswitch_1
    const/16 p1, 0x24

    return p1

    :pswitch_2
    const/16 p1, 0x2c

    return p1

    :pswitch_3
    const/16 p1, 0x2b

    return p1

    :pswitch_4
    const/16 p1, 0x23

    return p1

    :pswitch_5
    const/16 p1, 0x22

    return p1

    :pswitch_6
    const/16 p1, 0x29

    return p1

    :pswitch_7
    const/16 p1, 0x28

    return p1

    :pswitch_8
    const/16 p1, 0x3b

    return p1

    :pswitch_9
    const/16 p1, 0x35

    return p1

    :pswitch_a
    const/16 p1, 0x31

    return p1

    :pswitch_b
    check-cast p2, Lb/b/f/c/z;

    invoke-virtual {p2}, Lb/b/f/c/f;->m()Lb/b/f/c/aa;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/c/aa;->d()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lb/b/f/c/z;->l()Lb/b/f/c/ae;

    move-result-object p1

    iget-object p2, p0, Lb/b/a/b/ai;->d:Lb/b/a/b/n;

    invoke-virtual {p2}, Lb/b/a/b/n;->h()Lb/b/f/c/ae;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/b/f/c/ae;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x33

    return p1

    :cond_1
    :goto_0
    return v0

    :pswitch_c
    check-cast p2, Lb/b/f/c/z;

    invoke-virtual {p2}, Lb/b/f/c/z;->l()Lb/b/f/c/ae;

    move-result-object p1

    iget-object v1, p0, Lb/b/a/b/ai;->d:Lb/b/a/b/n;

    invoke-virtual {v1}, Lb/b/a/b/n;->h()Lb/b/f/c/ae;

    move-result-object v1

    invoke-virtual {p1, v1}, Lb/b/f/c/ae;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    :goto_1
    iget-object v1, p0, Lb/b/a/b/ai;->e:Lb/b/a/d/h;

    invoke-interface {v1}, Lb/b/a/d/h;->a_()I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Lb/b/a/b/ai;->e:Lb/b/a/d/h;

    invoke-interface {v1, p1}, Lb/b/a/d/h;->a(I)Lb/b/a/d/g;

    move-result-object v1

    invoke-interface {v1}, Lb/b/a/d/g;->f()I

    move-result v2

    invoke-static {v2}, La/a/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lb/b/f/c/z;->m()Lb/b/f/c/aa;

    move-result-object v2

    invoke-interface {v1}, Lb/b/a/d/g;->c()Lb/b/f/c/aa;

    move-result-object v1

    invoke-virtual {v2, v1}, Lb/b/f/c/aa;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lb/b/f/c/z;->j()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x3a

    return p1

    :cond_4
    const/16 p1, 0x32

    return p1

    :pswitch_d
    const/16 p1, 0x2f

    return p1

    :pswitch_e
    const/16 p1, 0x2d

    return p1

    :pswitch_f
    const/16 p1, 0x30

    return p1

    :pswitch_10
    const/16 p1, 0x2e

    return p1

    :pswitch_11
    const/16 p1, 0x21

    return p1

    :pswitch_12
    const/16 p1, 0xd

    return p1

    :pswitch_13
    const/4 p1, 0x6

    return p1

    :pswitch_14
    const/16 p1, 0xb

    return p1

    :pswitch_15
    const/16 p1, 0xc

    return p1

    :pswitch_16
    const/16 p1, 0xa

    return p1

    :pswitch_17
    const/16 p1, 0x9

    return p1

    :pswitch_18
    const/16 p1, 0x8

    return p1

    :pswitch_19
    const/4 p1, 0x7

    return p1

    :pswitch_1a
    const/16 p1, 0x1c

    return p1

    :pswitch_1b
    const/16 p1, 0x1b

    return p1

    :pswitch_1c
    const/16 p1, 0x20

    return p1

    :pswitch_1d
    const/16 p1, 0x1f

    return p1

    :pswitch_1e
    const/16 p1, 0x1e

    return p1

    :pswitch_1f
    const/16 p1, 0x1d

    return p1

    :pswitch_20
    const/16 p1, 0xe

    return p1

    :goto_2
    :pswitch_21
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_22
    :sswitch_e
    const/4 p1, 0x2

    return p1

    :pswitch_23
    :sswitch_f
    const/4 p1, 0x5

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x57
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x84
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_19
        :pswitch_18
        :pswitch_13
        :pswitch_21
        :pswitch_21
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xab
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xb1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xc5
        :pswitch_21
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x12 -> :sswitch_f
        0x2e -> :sswitch_c
        0x36 -> :sswitch_e
        0x4f -> :sswitch_b
        0x64 -> :sswitch_a
        0x68 -> :sswitch_9
        0x6c -> :sswitch_8
        0x70 -> :sswitch_7
        0x74 -> :sswitch_6
        0x78 -> :sswitch_5
        0x7a -> :sswitch_4
        0x7c -> :sswitch_3
        0x7e -> :sswitch_2
        0x80 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a(Lb/b/a/b/p;II)V
    .registers 24

    move-object/from16 v1, p0

    move/from16 v0, p3

    iget v2, v1, Lb/b/a/b/ai;->g:I

    invoke-virtual/range {p1 .. p1}, Lb/b/a/b/p;->d()Lb/b/a/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/a/b/o;->g()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lb/b/a/b/ai;->c()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_0

    sget-object v3, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    :goto_0
    move-object v10, v3

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lb/b/a/b/ai;->j()I

    move-result v7

    if-ltz v7, :cond_1

    new-instance v3, Lb/b/f/b/u;

    invoke-direct {v3, v6}, Lb/b/f/b/u;-><init>(I)V

    invoke-virtual {v1, v5}, Lb/b/a/b/ai;->c(I)Lb/b/f/d/d;

    move-result-object v8

    invoke-static {v7, v8}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lb/b/f/b/u;->a(ILb/b/f/b/r;)V

    goto :goto_3

    :cond_1
    new-instance v7, Lb/b/f/b/u;

    invoke-direct {v7, v3}, Lb/b/f/b/u;-><init>(I)V

    move v9, v2

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v3, :cond_2

    invoke-virtual {v1, v8}, Lb/b/a/b/ai;->c(I)Lb/b/f/d/d;

    move-result-object v10

    invoke-static {v9, v10}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Lb/b/f/b/u;->a(ILb/b/f/b/r;)V

    invoke-virtual {v10}, Lb/b/f/b/r;->k()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/16 v8, 0x4f

    if-eq v0, v8, :cond_5

    const/16 v8, 0xb5

    if-eq v0, v8, :cond_3

    goto :goto_2

    :cond_3
    if-ne v3, v4, :cond_4

    invoke-virtual {v7, v5}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v7, v6}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lb/b/f/b/u;->a(ILb/b/f/b/r;)V

    invoke-virtual {v7, v6, v3}, Lb/b/f/b/u;->a(ILb/b/f/b/r;)V

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v8, 0x3

    if-ne v3, v8, :cond_2b

    invoke-virtual {v7, v5}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v7, v6}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v8

    invoke-virtual {v7, v4}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Lb/b/f/b/u;->a(ILb/b/f/b/r;)V

    invoke-virtual {v7, v6, v3}, Lb/b/f/b/u;->a(ILb/b/f/b/r;)V

    invoke-virtual {v7, v4, v8}, Lb/b/f/b/u;->a(ILb/b/f/b/r;)V

    :goto_2
    move-object v3, v7

    :goto_3
    invoke-virtual {v3}, Lb/b/f/b/u;->b_()V

    goto :goto_0

    :goto_4
    invoke-virtual {v10}, Lb/b/f/b/u;->a_()I

    move-result v3

    invoke-super/range {p0 .. p3}, Lb/b/a/b/an;->a(Lb/b/a/b/p;II)V

    iget-object v7, v1, Lb/b/a/b/ai;->d:Lb/b/a/b/n;

    move/from16 v8, p2

    invoke-virtual {v7, v8}, Lb/b/a/b/n;->a(I)Lb/b/f/b/z;

    move-result-object v15

    const/16 v7, 0x36

    if-ne v0, v7, :cond_6

    const/4 v7, 0x1

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v1, v7}, Lb/b/a/b/ai;->b(Z)Lb/b/f/b/r;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lb/b/a/b/ai;->l()I

    move-result v8

    if-nez v8, :cond_7

    packed-switch v0, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_7

    :pswitch_0
    return-void

    :cond_7
    if-eqz v7, :cond_8

    :goto_6
    move-object v2, v7

    goto :goto_7

    :cond_8
    if-ne v8, v6, :cond_28

    invoke-virtual {v1, v5}, Lb/b/a/b/ai;->d(I)Lb/b/f/d/d;

    move-result-object v7

    invoke-static {v2, v7}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v7

    goto :goto_6

    :goto_7
    if-eqz v2, :cond_9

    move-object v13, v2

    goto :goto_8

    :cond_9
    sget-object v7, Lb/b/f/d/c;->i:Lb/b/f/d/c;

    move-object v13, v7

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lb/b/a/b/ai;->f()Lb/b/f/c/a;

    move-result-object v12

    const/16 v7, 0xc5

    if-ne v0, v7, :cond_c

    iput-boolean v6, v1, Lb/b/a/b/ai;->o:Z

    const/4 v0, 0x6

    iput v0, v1, Lb/b/a/b/ai;->m:I

    invoke-virtual {v2}, Lb/b/f/b/r;->j()I

    move-result v0

    sget-object v7, Lb/b/f/d/c;->I:Lb/b/f/d/c;

    invoke-static {v0, v7}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v0

    sget-object v7, Lb/b/f/d/c;->I:Lb/b/f/d/c;

    invoke-static {v7, v3}, Lb/b/f/b/y;->a(Lb/b/f/d/d;I)Lb/b/f/b/x;

    move-result-object v8

    new-instance v11, Lb/b/f/b/ab;

    iget-object v9, v1, Lb/b/a/b/ai;->i:Lb/b/f/d/e;

    sget-object v16, Lb/b/f/c/ae;->h:Lb/b/f/c/ae;

    move-object v7, v11

    move-object/from16 v17, v9

    move-object v9, v15

    move-object v14, v11

    move-object/from16 v11, v17

    move-object v4, v12

    move-object/from16 v12, v16

    invoke-direct/range {v7 .. v12}, Lb/b/f/b/ab;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;Lb/b/f/c/a;)V

    iget-object v7, v1, Lb/b/a/b/ai;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lb/b/f/d/c;->I:Lb/b/f/d/c;

    invoke-static {v7}, Lb/b/f/b/y;->d(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v7

    new-instance v8, Lb/b/f/b/q;

    sget-object v9, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    invoke-direct {v8, v7, v15, v0, v9}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    iget-object v7, v1, Lb/b/a/b/ai;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v12, v4

    check-cast v12, Lb/b/f/c/ae;

    invoke-virtual {v12}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object v7

    move-object v8, v7

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v3, :cond_a

    invoke-virtual {v8}, Lb/b/f/d/c;->s()Lb/b/f/d/c;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_a
    invoke-virtual {v2}, Lb/b/f/b/r;->f()I

    move-result v7

    sget-object v9, Lb/b/f/d/c;->l:Lb/b/f/d/c;

    invoke-static {v7, v9}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v7

    invoke-virtual {v8}, Lb/b/f/d/c;->m()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-static {v8}, Lb/b/f/c/n;->a(Lb/b/f/d/c;)Lb/b/f/c/n;

    move-result-object v16

    new-instance v8, Lb/b/f/b/ab;

    sget-object v12, Lb/b/f/b/y;->bN:Lb/b/f/b/x;

    sget-object v14, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    iget-object v9, v1, Lb/b/a/b/ai;->i:Lb/b/f/d/e;

    move-object v11, v8

    move-object v10, v13

    move-object v13, v15

    move-object/from16 v18, v15

    move-object v15, v9

    invoke-direct/range {v11 .. v16}, Lb/b/f/b/ab;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;Lb/b/f/c/a;)V

    goto :goto_a

    :cond_b
    move-object v10, v13

    move-object/from16 v18, v15

    new-instance v9, Lb/b/f/b/ab;

    sget-object v12, Lb/b/f/b/y;->q:Lb/b/f/b/x;

    sget-object v14, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    iget-object v15, v1, Lb/b/a/b/ai;->i:Lb/b/f/d/e;

    new-instance v13, Lb/b/f/c/ae;

    invoke-direct {v13, v8}, Lb/b/f/c/ae;-><init>(Lb/b/f/d/c;)V

    move-object v11, v9

    move-object v8, v13

    move-object/from16 v13, v18

    move-object/from16 v16, v8

    invoke-direct/range {v11 .. v16}, Lb/b/f/b/ab;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;Lb/b/f/c/a;)V

    move-object v8, v9

    :goto_a
    iget-object v9, v1, Lb/b/a/b/ai;->h:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object v8

    invoke-static {v8}, Lb/b/f/b/y;->e(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v8

    new-instance v9, Lb/b/f/b/q;

    sget-object v11, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    move-object/from16 v15, v18

    invoke-direct {v9, v8, v15, v7, v11}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    iget-object v8, v1, Lb/b/a/b/ai;->h:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lb/b/f/b/r;->f()I

    move-result v8

    sget-object v9, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    invoke-static {v8, v9}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v8

    new-instance v9, Lb/b/f/b/ab;

    sget-object v11, Lb/b/a/b/ai;->b:Lb/b/f/c/z;

    invoke-virtual {v11}, Lb/b/f/c/z;->i()Lb/b/f/d/a;

    move-result-object v11

    invoke-static {v11}, Lb/b/f/b/y;->a(Lb/b/f/d/a;)Lb/b/f/b/x;

    move-result-object v12

    invoke-static {v7, v0}, Lb/b/f/b/u;->a(Lb/b/f/b/r;Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object v14

    iget-object v0, v1, Lb/b/a/b/ai;->i:Lb/b/f/d/e;

    sget-object v16, Lb/b/a/b/ai;->b:Lb/b/f/c/z;

    move-object v11, v9

    move-object v13, v15

    move-object v7, v15

    move-object v15, v0

    invoke-direct/range {v11 .. v16}, Lb/b/f/b/ab;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;Lb/b/f/c/a;)V

    iget-object v0, v1, Lb/b/a/b/ai;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lb/b/a/b/ai;->b:Lb/b/f/c/z;

    invoke-virtual {v0}, Lb/b/f/c/z;->i()Lb/b/f/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/d/a;->b()Lb/b/f/d/c;

    move-result-object v0

    invoke-static {v0}, Lb/b/f/b/y;->d(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v0

    new-instance v9, Lb/b/f/b/q;

    sget-object v11, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    invoke-direct {v9, v0, v7, v8, v11}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    iget-object v0, v1, Lb/b/a/b/ai;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xc0

    invoke-static {v8}, Lb/b/f/b/u;->a(Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object v8

    move-object/from16 v19, v10

    move-object v10, v8

    move-object/from16 v8, v19

    goto :goto_b

    :cond_c
    move-object v4, v12

    move-object v8, v13

    move-object v7, v15

    const/16 v9, 0xa8

    if-ne v0, v9, :cond_d

    iput-boolean v6, v1, Lb/b/a/b/ai;->n:Z

    return-void

    :cond_d
    const/16 v9, 0xa9

    if-ne v0, v9, :cond_e

    :try_start_0
    invoke-virtual {v1, v5}, Lb/b/a/b/ai;->c(I)Lb/b/f/d/d;

    move-result-object v0

    check-cast v0, Lb/b/a/b/y;

    iput-object v0, v1, Lb/b/a/b/ai;->p:Lb/b/a/b/y;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Argument to RET was not a ReturnAddress"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_e
    :goto_b
    invoke-direct {v1, v0, v4}, Lb/b/a/b/ai;->a(ILb/b/f/c/a;)I

    move-result v9

    invoke-static {v9, v8, v10, v4}, Lb/b/f/b/y;->a(ILb/b/f/d/d;Lb/b/f/d/e;Lb/b/f/c/a;)Lb/b/f/b/x;

    move-result-object v11

    if-eqz v2, :cond_10

    invoke-virtual {v11}, Lb/b/f/b/x;->e()Z

    move-result v12

    if-eqz v12, :cond_10

    iget v12, v1, Lb/b/a/b/ai;->m:I

    add-int/2addr v12, v6

    iput v12, v1, Lb/b/a/b/ai;->m:I

    invoke-virtual {v11}, Lb/b/f/b/x;->a()I

    move-result v12

    const/16 v13, 0x3b

    if-ne v12, v13, :cond_f

    move-object v12, v4

    check-cast v12, Lb/b/f/c/j;

    invoke-virtual {v12}, Lb/b/f/c/j;->b()Lb/b/f/d/c;

    move-result-object v12

    goto :goto_c

    :cond_f
    move-object v12, v4

    check-cast v12, Lb/b/f/c/z;

    invoke-virtual {v12}, Lb/b/f/c/z;->i()Lb/b/f/d/a;

    move-result-object v12

    invoke-virtual {v12}, Lb/b/f/d/a;->b()Lb/b/f/d/c;

    move-result-object v12

    :goto_c
    new-instance v14, Lb/b/f/b/q;

    invoke-static {v12}, Lb/b/f/b/y;->d(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v12

    sget-object v13, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    invoke-direct {v14, v12, v7, v2, v13}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    goto :goto_d

    :cond_10
    if-eqz v2, :cond_11

    invoke-virtual {v11}, Lb/b/f/b/x;->h()Z

    move-result v12

    if-eqz v12, :cond_11

    iget v12, v1, Lb/b/a/b/ai;->m:I

    add-int/2addr v12, v6

    iput v12, v1, Lb/b/a/b/ai;->m:I

    new-instance v14, Lb/b/f/b/q;

    invoke-virtual {v2}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v12

    invoke-static {v12}, Lb/b/f/b/y;->e(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v12

    sget-object v13, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    invoke-direct {v14, v12, v7, v2, v13}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    :goto_d
    move-object v2, v14

    const/4 v14, 0x0

    goto :goto_e

    :cond_11
    move-object v14, v2

    const/4 v2, 0x0

    :goto_e
    const/16 v12, 0x29

    if-ne v9, v12, :cond_12

    invoke-virtual {v11}, Lb/b/f/b/x;->b()Lb/b/f/d/c;

    move-result-object v3

    invoke-static {v3}, Lb/b/f/c/ae;->b(Lb/b/f/d/c;)Lb/b/f/c/ae;

    move-result-object v3

    :goto_f
    move-object v15, v10

    move-object v12, v11

    goto :goto_11

    :cond_12
    if-nez v4, :cond_16

    const/4 v12, 0x2

    if-ne v3, v12, :cond_16

    invoke-virtual {v10, v5}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v3

    invoke-virtual {v10, v6}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v12

    invoke-virtual {v12}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v12

    invoke-interface {v12}, Lb/b/f/d/d;->e()Z

    move-result v13

    if-nez v13, :cond_13

    invoke-interface {v3}, Lb/b/f/d/d;->e()Z

    move-result v13

    if-eqz v13, :cond_16

    :cond_13
    iget-object v13, v1, Lb/b/a/b/ai;->f:Lb/b/f/b/ad;

    invoke-virtual {v10, v5}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v15

    invoke-virtual {v10, v6}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v5

    invoke-interface {v13, v11, v15, v5}, Lb/b/f/b/ad;->a(Lb/b/f/b/x;Lb/b/f/b/r;Lb/b/f/b/r;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v12}, Lb/b/f/d/d;->e()Z

    move-result v4

    if-eqz v4, :cond_14

    move-object v3, v12

    check-cast v3, Lb/b/f/c/a;

    invoke-virtual {v10}, Lb/b/f/b/u;->i()Lb/b/f/b/u;

    move-result-object v4

    invoke-virtual {v11}, Lb/b/f/b/x;->a()I

    move-result v5

    const/16 v10, 0xf

    if-ne v5, v10, :cond_15

    const/16 v9, 0xe

    check-cast v12, Lb/b/f/c/p;

    invoke-virtual {v12}, Lb/b/f/c/p;->j()I

    move-result v3

    neg-int v3, v3

    invoke-static {v3}, Lb/b/f/c/p;->a(I)Lb/b/f/c/p;

    move-result-object v3

    goto :goto_10

    :cond_14
    check-cast v3, Lb/b/f/c/a;

    invoke-virtual {v10}, Lb/b/f/b/u;->g()Lb/b/f/b/u;

    move-result-object v4

    :cond_15
    :goto_10
    invoke-static {v9, v8, v4, v3}, Lb/b/f/b/y;->a(ILb/b/f/d/d;Lb/b/f/d/e;Lb/b/f/c/a;)Lb/b/f/b/x;

    move-result-object v5

    move-object v15, v4

    move-object v12, v5

    goto :goto_11

    :cond_16
    move-object v3, v4

    goto :goto_f

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lb/b/a/b/ai;->h()Lb/b/a/b/am;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lb/b/a/b/ai;->i()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v12}, Lb/b/f/b/x;->h()Z

    move-result v8

    iget-boolean v10, v1, Lb/b/a/b/ai;->o:Z

    or-int/2addr v10, v8

    iput-boolean v10, v1, Lb/b/a/b/ai;->o:Z

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lb/b/a/b/am;->f()I

    move-result v0

    if-nez v0, :cond_17

    new-instance v0, Lb/b/f/b/q;

    sget-object v4, Lb/b/f/b/y;->s:Lb/b/f/b/x;

    sget-object v8, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    const/4 v10, 0x0

    invoke-direct {v0, v4, v7, v10, v8}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    const/4 v4, 0x0

    :goto_12
    iput v4, v1, Lb/b/a/b/ai;->l:I

    goto/16 :goto_18

    :cond_17
    invoke-virtual {v4}, Lb/b/a/b/am;->i()Lb/b/h/k;

    move-result-object v0

    new-instance v4, Lb/b/f/b/aa;

    move-object v11, v4

    move-object v13, v7

    move-object/from16 v16, v0

    invoke-direct/range {v11 .. v16}, Lb/b/f/b/aa;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;Lb/b/h/k;)V

    invoke-virtual {v0}, Lb/b/h/k;->f()I

    move-result v0

    :goto_13
    iput v0, v1, Lb/b/a/b/ai;->l:I

    move-object v0, v4

    goto/16 :goto_18

    :cond_18
    const/4 v10, 0x0

    const/16 v4, 0x21

    if-ne v9, v4, :cond_20

    invoke-virtual {v15}, Lb/b/f/b/u;->a_()I

    move-result v0

    if-eqz v0, :cond_19

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v8

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, v1, Lb/b/a/b/ai;->h:Ljava/util/ArrayList;

    new-instance v11, Lb/b/f/b/q;

    invoke-static {v8}, Lb/b/f/b/y;->a(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v13

    invoke-static {v4, v8}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v8

    invoke-direct {v11, v13, v7, v8, v0}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/r;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_19
    const/4 v4, 0x0

    :cond_1a
    :goto_14
    new-instance v0, Lb/b/f/b/q;

    sget-object v8, Lb/b/f/b/y;->s:Lb/b/f/b/x;

    sget-object v9, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    invoke-direct {v0, v8, v7, v10, v9}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    iput v4, v1, Lb/b/a/b/ai;->l:I

    if-eqz v12, :cond_1f

    if-eqz v7, :cond_1e

    iget-object v4, v1, Lb/b/a/b/ai;->q:Lb/b/f/b/x;

    if-nez v4, :cond_1b

    iput-object v12, v1, Lb/b/a/b/ai;->q:Lb/b/f/b/x;

    :goto_15
    iput-object v7, v1, Lb/b/a/b/ai;->r:Lb/b/f/b/z;

    goto :goto_16

    :cond_1b
    iget-object v4, v1, Lb/b/a/b/ai;->q:Lb/b/f/b/x;

    if-ne v4, v12, :cond_1d

    invoke-virtual {v7}, Lb/b/f/b/z;->a()I

    move-result v4

    iget-object v8, v1, Lb/b/a/b/ai;->r:Lb/b/f/b/z;

    invoke-virtual {v8}, Lb/b/f/b/z;->a()I

    move-result v8

    if-le v4, v8, :cond_1c

    goto :goto_15

    :cond_1c
    :goto_16
    iput-boolean v6, v1, Lb/b/a/b/ai;->k:Z

    goto/16 :goto_18

    :cond_1d
    new-instance v0, Lb/b/a/b/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "return op mismatch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lb/b/a/b/ai;->q:Lb/b/f/b/x;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "pos == null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "op == null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    if-eqz v3, :cond_23

    if-eqz v8, :cond_22

    invoke-virtual {v12}, Lb/b/f/b/x;->a()I

    move-result v0

    const/16 v4, 0x3a

    if-ne v0, v4, :cond_21

    iget-object v0, v1, Lb/b/a/b/ai;->i:Lb/b/f/d/e;

    move-object/from16 v16, v3

    check-cast v16, Lb/b/f/c/z;

    new-instance v4, Lb/b/f/b/m;

    move-object v11, v4

    move-object v13, v7

    move-object v14, v15

    move-object v15, v0

    invoke-direct/range {v11 .. v16}, Lb/b/f/b/m;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;Lb/b/f/c/z;)V

    move-object v0, v4

    goto :goto_17

    :cond_21
    new-instance v0, Lb/b/f/b/ab;

    iget-object v4, v1, Lb/b/a/b/ai;->i:Lb/b/f/d/e;

    move-object v11, v0

    move-object v13, v7

    move-object v14, v15

    move-object v15, v4

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Lb/b/f/b/ab;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;Lb/b/f/c/a;)V

    :goto_17
    iput-boolean v6, v1, Lb/b/a/b/ai;->j:Z

    iget-object v4, v1, Lb/b/a/b/ai;->i:Lb/b/f/d/e;

    invoke-interface {v4}, Lb/b/f/d/e;->a_()I

    move-result v4

    goto/16 :goto_12

    :cond_22
    new-instance v0, Lb/b/f/b/p;

    move-object v11, v0

    move-object v13, v7

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Lb/b/f/b/p;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;Lb/b/f/c/a;)V

    goto :goto_18

    :cond_23
    if-eqz v8, :cond_25

    new-instance v4, Lb/b/f/b/ac;

    iget-object v8, v1, Lb/b/a/b/ai;->i:Lb/b/f/d/e;

    invoke-direct {v4, v12, v7, v15, v8}, Lb/b/f/b/ac;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;)V

    iput-boolean v6, v1, Lb/b/a/b/ai;->j:Z

    const/16 v8, 0xbf

    if-ne v0, v8, :cond_24

    const/4 v0, -0x1

    goto/16 :goto_13

    :cond_24
    iget-object v0, v1, Lb/b/a/b/ai;->i:Lb/b/f/d/e;

    invoke-interface {v0}, Lb/b/f/d/e;->a_()I

    move-result v0

    goto/16 :goto_13

    :cond_25
    new-instance v0, Lb/b/f/b/q;

    invoke-direct {v0, v12, v7, v14, v15}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    :goto_18
    iget-object v4, v1, Lb/b/a/b/ai;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_26

    iget-object v0, v1, Lb/b/a/b/ai;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    if-eqz v5, :cond_27

    iget v0, v1, Lb/b/a/b/ai;->m:I

    add-int/2addr v0, v6

    iput v0, v1, Lb/b/a/b/ai;->m:I

    new-instance v0, Lb/b/f/b/h;

    sget-object v12, Lb/b/f/b/y;->bW:Lb/b/f/b/x;

    invoke-virtual {v2}, Lb/b/f/b/i;->g()Lb/b/f/b/r;

    move-result-object v2

    invoke-static {v2}, Lb/b/f/b/u;->a(Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object v14

    move-object v11, v0

    move-object v13, v7

    move-object v15, v5

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Lb/b/f/b/h;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Ljava/util/ArrayList;Lb/b/f/c/a;)V

    iget-object v2, v1, Lb/b/a/b/ai;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    return-void

    :cond_28
    move-object v7, v15

    const/4 v4, 0x0

    iget-object v0, v1, Lb/b/a/b/ai;->c:Lb/b/a/b/z;

    invoke-virtual {v0}, Lb/b/a/b/z;->a()I

    move-result v0

    new-array v5, v3, [Lb/b/f/b/r;

    :goto_19
    if-ge v4, v3, :cond_29

    invoke-virtual {v10, v4}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v8

    invoke-virtual {v8}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v9

    invoke-virtual {v8, v0}, Lb/b/f/b/r;->a(I)Lb/b/f/b/r;

    move-result-object v11

    iget-object v12, v1, Lb/b/a/b/ai;->h:Ljava/util/ArrayList;

    new-instance v13, Lb/b/f/b/q;

    invoke-static {v9}, Lb/b/f/b/y;->a(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v9

    invoke-direct {v13, v9, v7, v11, v8}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/r;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-object v11, v5, v4

    invoke-virtual {v8}, Lb/b/f/b/r;->k()I

    move-result v8

    add-int/2addr v0, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lb/b/a/b/ai;->e()I

    move-result v0

    :goto_1a
    if-eqz v0, :cond_2a

    and-int/lit8 v3, v0, 0xf

    sub-int/2addr v3, v6

    aget-object v3, v5, v3

    invoke-virtual {v3}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v4

    iget-object v8, v1, Lb/b/a/b/ai;->h:Ljava/util/ArrayList;

    new-instance v9, Lb/b/f/b/q;

    invoke-static {v4}, Lb/b/f/b/y;->a(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v10

    invoke-virtual {v3, v2}, Lb/b/f/b/r;->a(I)Lb/b/f/b/r;

    move-result-object v11

    invoke-direct {v9, v10, v7, v11, v3}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/r;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/d/c;->i()I

    move-result v3

    add-int/2addr v2, v3

    shr-int/lit8 v0, v0, 0x4

    goto :goto_1a

    :cond_2a
    return-void

    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lb/b/f/d/e;)V
    .registers 2

    iput-object p1, p0, Lb/b/a/b/ai;->i:Lb/b/f/d/e;

    iget-object p1, p0, Lb/b/a/b/ai;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/b/a/b/ai;->j:Z

    iput-boolean p1, p0, Lb/b/a/b/ai;->k:Z

    iput p1, p0, Lb/b/a/b/ai;->l:I

    iput p1, p0, Lb/b/a/b/ai;->m:I

    iput-boolean p1, p0, Lb/b/a/b/ai;->o:Z

    iput-boolean p1, p0, Lb/b/a/b/ai;->n:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/a/b/ai;->p:Lb/b/a/b/y;

    return-void
.end method

.method public final m()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/ai;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final n()Lb/b/f/b/x;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/ai;->q:Lb/b/f/b/x;

    return-object v0
.end method

.method public final o()Lb/b/f/b/z;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/ai;->r:Lb/b/f/b/z;

    return-object v0
.end method

.method public final p()Z
    .registers 2

    iget-boolean v0, p0, Lb/b/a/b/ai;->j:Z

    return v0
.end method

.method public final q()Z
    .registers 2

    iget-boolean v0, p0, Lb/b/a/b/ai;->k:Z

    return v0
.end method

.method public final r()I
    .registers 2

    iget v0, p0, Lb/b/a/b/ai;->l:I

    return v0
.end method

.method public final s()I
    .registers 2

    iget v0, p0, Lb/b/a/b/ai;->m:I

    return v0
.end method

.method public final t()Z
    .registers 2

    iget-boolean v0, p0, Lb/b/a/b/ai;->o:Z

    return v0
.end method

.method public final u()Z
    .registers 2

    iget-boolean v0, p0, Lb/b/a/b/ai;->n:Z

    return v0
.end method

.method public final v()Z
    .registers 2

    iget-object v0, p0, Lb/b/a/b/ai;->p:Lb/b/a/b/y;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()Lb/b/a/b/y;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/ai;->p:Lb/b/a/b/y;

    return-object v0
.end method
