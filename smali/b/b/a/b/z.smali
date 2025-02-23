.class public final Lb/b/a/b/z;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/a/b/n;

.field private final b:Lb/b/a/b/f;

.field private final c:I

.field private final d:I

.field private final e:Lb/b/a/b/ai;

.field private final f:Lb/b/a/b/ak;

.field private final g:[Lb/b/a/b/p;

.field private final h:Ljava/util/ArrayList;

.field private final i:Ljava/util/ArrayList;

.field private final j:[Lb/b/a/b/ac;

.field private k:Z

.field private final l:[Lb/b/a/b/ag;

.field private m:Z

.field private final n:Lb/b/a/b/ae;


# direct methods
.method private constructor <init>(Lb/b/a/b/n;Lb/b/f/b/ad;Lb/b/a/d/h;Lcom/gmail/heagoo/b/a/a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lb/b/a/b/z;->a:Lb/b/a/b/n;

    invoke-static {p1}, Lb/b/a/b/b;->a(Lb/b/a/b/n;)Lb/b/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/b/z;->b:Lb/b/a/b/f;

    iget-object v0, p0, Lb/b/a/b/z;->b:Lb/b/a/b/f;

    invoke-virtual {v0}, Lb/b/a/b/f;->l()I

    move-result v0

    iput v0, p0, Lb/b/a/b/z;->d:I

    invoke-virtual {p1}, Lb/b/a/b/n;->k()I

    move-result v0

    iput v0, p0, Lb/b/a/b/z;->c:I

    new-instance v0, Lb/b/a/b/ai;

    invoke-direct {v0, p0, p1, p2, p3}, Lb/b/a/b/ai;-><init>(Lb/b/a/b/z;Lb/b/a/b/n;Lb/b/f/b/ad;Lb/b/a/d/h;)V

    iput-object v0, p0, Lb/b/a/b/z;->e:Lb/b/a/b/ai;

    new-instance p2, Lb/b/a/b/ak;

    iget-object p3, p0, Lb/b/a/b/z;->e:Lb/b/a/b/ai;

    invoke-direct {p2, p3, p1, p4}, Lb/b/a/b/ak;-><init>(Lb/b/a/b/w;Lb/b/a/b/n;Lcom/gmail/heagoo/b/a/a;)V

    iput-object p2, p0, Lb/b/a/b/z;->f:Lb/b/a/b/ak;

    iget p2, p0, Lb/b/a/b/z;->d:I

    new-array p2, p2, [Lb/b/a/b/p;

    iput-object p2, p0, Lb/b/a/b/z;->g:[Lb/b/a/b/p;

    iget p2, p0, Lb/b/a/b/z;->d:I

    new-array p2, p2, [Lb/b/a/b/ag;

    iput-object p2, p0, Lb/b/a/b/z;->l:[Lb/b/a/b/ag;

    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lb/b/a/b/z;->b:Lb/b/a/b/f;

    invoke-virtual {p3}, Lb/b/a/b/f;->a_()I

    move-result p3

    shl-int/lit8 p3, p3, 0x1

    add-int/lit8 p3, p3, 0xa

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lb/b/a/b/z;->b:Lb/b/a/b/f;

    invoke-virtual {p3}, Lb/b/a/b/f;->a_()I

    move-result p3

    shl-int/lit8 p3, p3, 0x1

    add-int/lit8 p3, p3, 0xa

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lb/b/a/b/z;->i:Ljava/util/ArrayList;

    iget p2, p0, Lb/b/a/b/z;->d:I

    new-array p2, p2, [Lb/b/a/b/ac;

    iput-object p2, p0, Lb/b/a/b/z;->j:[Lb/b/a/b/ac;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lb/b/a/b/z;->k:Z

    iget-object p3, p0, Lb/b/a/b/z;->g:[Lb/b/a/b/p;

    new-instance p4, Lb/b/a/b/p;

    iget v0, p0, Lb/b/a/b/z;->c:I

    invoke-virtual {p1}, Lb/b/a/b/n;->j()I

    move-result p1

    invoke-direct {p4, v0, p1}, Lb/b/a/b/p;-><init>(II)V

    aput-object p4, p3, p2

    new-instance p1, Lb/b/a/b/ae;

    invoke-direct {p1, p0}, Lb/b/a/b/ae;-><init>(Lb/b/a/b/z;)V

    iput-object p1, p0, Lb/b/a/b/z;->n:Lb/b/a/b/ae;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "advice == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(I)I
    .registers 4

    iget v0, p0, Lb/b/a/b/z;->d:I

    iget-object v1, p0, Lb/b/a/b/z;->a:Lb/b/a/b/n;

    invoke-virtual {v1}, Lb/b/a/b/n;->m()Lb/b/a/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/a/b/g;->a_()I

    move-result v1

    add-int/2addr v0, v1

    xor-int/lit8 p1, p1, -0x1

    add-int/2addr v0, p1

    return v0
.end method

.method static synthetic a(Lb/b/a/b/z;)Lb/b/a/b/ae;
    .registers 1

    iget-object p0, p0, Lb/b/a/b/z;->n:Lb/b/a/b/ae;

    return-object p0
.end method

.method static synthetic a(Lb/b/a/b/z;I)Lb/b/f/b/a;
    .registers 2

    invoke-direct {p0, p1}, Lb/b/a/b/z;->c(I)Lb/b/f/b/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lb/b/a/b/z;Lb/b/f/b/l;)Lb/b/f/b/l;
    .registers 8

    invoke-virtual {p1}, Lb/b/f/b/l;->a_()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-virtual {p1, v1}, Lb/b/f/b/l;->a(I)Lb/b/f/b/i;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v3

    sget-object v4, Lb/b/f/b/y;->g:Lb/b/f/b/x;

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, p0, :cond_2

    return-object p1

    :cond_2
    new-instance v1, Lb/b/f/b/l;

    invoke-direct {v1, v2}, Lb/b/f/b/l;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v0, p0, :cond_4

    invoke-virtual {p1, v0}, Lb/b/f/b/l;->a(I)Lb/b/f/b/i;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v4

    sget-object v5, Lb/b/f/b/y;->g:Lb/b/f/b/x;

    if-eq v4, v5, :cond_3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v2, v3}, Lb/b/f/b/l;->a(ILb/b/f/b/i;)V

    move v2, v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lb/b/f/b/l;->b_()V

    return-object v1
.end method

.method public static a(Lb/b/a/b/n;Lb/b/f/b/ad;Lb/b/a/d/h;Lcom/gmail/heagoo/b/a/a;)Lcom/gmail/heagoo/pngeditor/j;
    .registers 23

    :try_start_0
    new-instance v0, Lb/b/a/b/z;
    :try_end_0
    .catch Lb/b/a/b/aj; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    :try_start_1
    invoke-direct {v0, v1, v2, v3, v4}, Lb/b/a/b/z;-><init>(Lb/b/a/b/n;Lb/b/f/b/ad;Lb/b/a/d/h;Lcom/gmail/heagoo/b/a/a;)V

    iget v2, v0, Lb/b/a/b/z;->d:I

    invoke-static {v2}, La/a/a;->n(I)[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, La/a/a;->b([II)V

    iget-object v4, v0, Lb/b/a/b/z;->a:Lb/b/a/b/n;

    invoke-virtual {v4}, Lb/b/a/b/n;->n()Lb/b/a/b/s;

    move-result-object v4

    iget-object v5, v0, Lb/b/a/b/z;->a:Lb/b/a/b/n;

    invoke-virtual {v5, v3}, Lb/b/a/b/n;->a(I)Lb/b/f/b/z;

    move-result-object v5

    iget-object v6, v0, Lb/b/a/b/z;->a:Lb/b/a/b/n;

    invoke-virtual {v6}, Lb/b/a/b/n;->i()Lb/b/f/d/a;

    move-result-object v6

    invoke-virtual {v6}, Lb/b/f/d/a;->c()Lb/b/f/d/b;

    move-result-object v12

    invoke-virtual {v12}, Lb/b/f/d/b;->a_()I

    move-result v13

    new-instance v14, Lb/b/f/b/l;

    add-int/lit8 v6, v13, 0x1

    invoke-direct {v14, v6}, Lb/b/f/b/l;-><init>(I)V

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_1

    invoke-virtual {v12, v15}, Lb/b/f/d/b;->b(I)Lb/b/f/d/c;

    move-result-object v10

    invoke-virtual {v4, v3, v11}, Lb/b/a/b/s;->a(II)Lb/b/a/b/t;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {v11, v10}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v6

    :goto_1
    move-object v9, v6

    goto :goto_2

    :cond_0
    invoke-virtual {v6}, Lb/b/a/b/t;->a()Lb/b/f/b/n;

    move-result-object v6

    invoke-static {v11, v10, v6}, Lb/b/f/b/r;->b(ILb/b/f/d/d;Lb/b/f/b/n;)Lb/b/f/b/r;

    move-result-object v6

    goto :goto_1

    :goto_2
    new-instance v8, Lb/b/f/b/p;

    invoke-static {v10}, Lb/b/f/b/y;->b(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v7

    sget-object v16, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    invoke-static {v11}, Lb/b/f/c/p;->a(I)Lb/b/f/c/p;

    move-result-object v17

    move-object v6, v8

    move-object v3, v8

    move-object v8, v5

    move-object/from16 v18, v10

    move-object/from16 v10, v16

    move/from16 v16, v11

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v11}, Lb/b/f/b/p;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;Lb/b/f/c/a;)V

    invoke-virtual {v14, v15, v3}, Lb/b/f/b/l;->a(ILb/b/f/b/i;)V

    invoke-virtual/range {v18 .. v18}, Lb/b/f/d/c;->i()I

    move-result v3

    add-int v11, v16, v3

    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    new-instance v3, Lb/b/f/b/q;

    sget-object v4, Lb/b/f/b/y;->s:Lb/b/f/b/x;

    sget-object v6, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    const/4 v12, 0x0

    invoke-direct {v3, v4, v5, v12, v6}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-virtual {v14, v13, v3}, Lb/b/f/b/l;->a(ILb/b/f/b/i;)V

    invoke-virtual {v14}, Lb/b/f/b/l;->b_()V

    invoke-direct {v0}, Lb/b/a/b/z;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, -0x4

    invoke-direct {v0, v4}, Lb/b/a/b/z;->a(I)I

    move-result v4

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    new-instance v6, Lb/b/f/b/a;

    const/4 v13, -0x1

    invoke-direct {v0, v13}, Lb/b/a/b/z;->a(I)I

    move-result v7

    invoke-static {v4}, Lb/b/h/k;->a(I)Lb/b/h/k;

    move-result-object v8

    invoke-direct {v6, v7, v14, v8, v4}, Lb/b/f/b/a;-><init>(ILb/b/f/b/l;Lb/b/h/k;I)V

    sget-object v7, Lb/b/h/k;->a:Lb/b/h/k;

    invoke-direct {v0, v6, v7}, Lb/b/a/b/z;->a(Lb/b/f/b/a;Lb/b/h/k;)V

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v3, :cond_6

    invoke-direct {v0}, Lb/b/a/b/z;->g()Lb/b/f/b/r;

    move-result-object v3

    invoke-direct {v0}, Lb/b/a/b/z;->e()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v11, Lb/b/f/b/ab;

    sget-object v7, Lb/b/f/b/y;->q:Lb/b/f/b/x;

    sget-object v9, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    sget-object v10, Lb/b/f/d/b;->a:Lb/b/f/d/b;

    iget-object v6, v0, Lb/b/a/b/z;->a:Lb/b/a/b/n;

    invoke-virtual {v6}, Lb/b/a/b/n;->h()Lb/b/f/c/ae;

    move-result-object v16

    move-object v6, v11

    move-object v8, v5

    move-object v13, v11

    move-object/from16 v11, v16

    invoke-direct/range {v6 .. v11}, Lb/b/f/b/ab;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;Lb/b/f/c/a;)V

    new-instance v6, Lb/b/f/b/l;

    invoke-direct {v6, v15}, Lb/b/f/b/l;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v13}, Lb/b/f/b/l;->a(ILb/b/f/b/i;)V

    move-object v13, v6

    goto :goto_4

    :cond_3
    new-instance v13, Lb/b/f/b/l;

    invoke-direct {v13, v14}, Lb/b/f/b/l;-><init>(I)V

    new-instance v11, Lb/b/f/b/p;

    sget-object v7, Lb/b/f/b/y;->l:Lb/b/f/b/x;

    sget-object v10, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    sget-object v16, Lb/b/f/c/p;->b:Lb/b/f/c/p;

    move-object v6, v11

    move-object v8, v5

    move-object v9, v3

    move-object v14, v11

    move-object/from16 v11, v16

    invoke-direct/range {v6 .. v11}, Lb/b/f/b/p;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;Lb/b/f/c/a;)V

    const/4 v6, 0x0

    invoke-virtual {v13, v6, v14}, Lb/b/f/b/l;->a(ILb/b/f/b/i;)V

    new-instance v6, Lb/b/f/b/q;

    sget-object v7, Lb/b/f/b/y;->s:Lb/b/f/b/x;

    sget-object v8, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    invoke-direct {v6, v7, v5, v12, v8}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-virtual {v13, v15, v6}, Lb/b/f/b/l;->a(ILb/b/f/b/i;)V

    :goto_4
    const/4 v6, -0x5

    invoke-direct {v0, v6}, Lb/b/a/b/z;->a(I)I

    move-result v6

    invoke-virtual {v13}, Lb/b/f/b/l;->b_()V

    new-instance v7, Lb/b/f/b/a;

    invoke-static {v6}, Lb/b/h/k;->a(I)Lb/b/h/k;

    move-result-object v8

    invoke-direct {v7, v4, v13, v8, v6}, Lb/b/f/b/a;-><init>(ILb/b/f/b/l;Lb/b/h/k;I)V

    sget-object v4, Lb/b/h/k;->a:Lb/b/h/k;

    invoke-direct {v0, v7, v4}, Lb/b/a/b/z;->a(Lb/b/f/b/a;Lb/b/h/k;)V

    new-instance v4, Lb/b/f/b/l;

    invoke-direct {v0}, Lb/b/a/b/z;->e()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x2

    goto :goto_5

    :cond_4
    const/4 v7, 0x1

    :goto_5
    invoke-direct {v4, v7}, Lb/b/f/b/l;-><init>(I)V

    invoke-direct {v0}, Lb/b/a/b/z;->e()Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Lb/b/f/b/q;

    invoke-static {v3}, Lb/b/f/b/y;->e(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v8

    sget-object v9, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    invoke-direct {v7, v8, v5, v3, v9}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v7}, Lb/b/f/b/l;->a(ILb/b/f/b/i;)V

    :cond_5
    new-instance v7, Lb/b/f/b/ac;

    sget-object v8, Lb/b/f/b/y;->bj:Lb/b/f/b/x;

    invoke-static {v3}, Lb/b/f/b/u;->a(Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object v3

    sget-object v9, Lb/b/f/d/b;->a:Lb/b/f/d/b;

    invoke-direct {v7, v8, v5, v3, v9}, Lb/b/f/b/ac;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;)V

    invoke-direct {v0}, Lb/b/a/b/z;->e()Z

    move-result v3

    invoke-virtual {v4, v3, v7}, Lb/b/f/b/l;->a(ILb/b/f/b/i;)V

    invoke-virtual {v4}, Lb/b/f/b/l;->b_()V

    new-instance v3, Lb/b/f/b/a;

    const/4 v5, 0x0

    invoke-static {v5}, Lb/b/h/k;->a(I)Lb/b/h/k;

    move-result-object v7

    invoke-direct {v3, v6, v4, v7, v5}, Lb/b/f/b/a;-><init>(ILb/b/f/b/l;Lb/b/h/k;I)V

    sget-object v4, Lb/b/h/k;->a:Lb/b/h/k;

    invoke-direct {v0, v3, v4}, Lb/b/a/b/z;->a(Lb/b/f/b/a;Lb/b/h/k;)V

    :cond_6
    iget-object v3, v0, Lb/b/a/b/z;->a:Lb/b/a/b/n;

    invoke-virtual {v3}, Lb/b/a/b/n;->i()Lb/b/f/d/a;

    move-result-object v3

    iget-object v4, v0, Lb/b/a/b/z;->g:[Lb/b/a/b/p;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3}, Lb/b/f/d/a;->c()Lb/b/f/d/b;

    move-result-object v3

    invoke-virtual {v4, v3}, Lb/b/a/b/p;->a(Lb/b/f/d/b;)V

    iget-object v3, v0, Lb/b/a/b/z;->g:[Lb/b/a/b/p;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lb/b/a/b/p;->b()V

    :goto_6
    invoke-static {v2, v5}, La/a/a;->d([II)I

    move-result v3

    if-ltz v3, :cond_7

    invoke-static {v2, v3}, La/a/a;->c([II)V

    iget-object v4, v0, Lb/b/a/b/z;->b:Lb/b/a/b/f;

    invoke-virtual {v4, v3}, Lb/b/a/b/f;->b(I)Lcom/gmail/heagoo/common/ae;

    move-result-object v4

    iget-object v5, v0, Lb/b/a/b/z;->g:[Lb/b/a/b/p;

    aget-object v5, v5, v3
    :try_end_1
    .catch Lb/b/a/b/aj; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-direct {v0, v4, v5, v2}, Lb/b/a/b/z;->a(Lcom/gmail/heagoo/common/ae;Lb/b/a/b/p;[I)V
    :try_end_2
    .catch Lb/b/a/b/aj; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v5, 0x0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "...while working on block "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lb/b/a/b/aj;->a(Ljava/lang/String;)V

    throw v2

    :cond_7
    iget-object v2, v0, Lb/b/a/b/z;->e:Lb/b/a/b/ai;

    invoke-virtual {v2}, Lb/b/a/b/ai;->n()Lb/b/f/b/x;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v3, v0, Lb/b/a/b/z;->e:Lb/b/a/b/ai;

    invoke-virtual {v3}, Lb/b/a/b/ai;->o()Lb/b/f/b/z;

    move-result-object v3

    const/4 v4, -0x2

    invoke-direct {v0, v4}, Lb/b/a/b/z;->a(I)I

    move-result v4

    invoke-direct {v0}, Lb/b/a/b/z;->d()Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Lb/b/f/b/l;

    invoke-direct {v5, v15}, Lb/b/f/b/l;-><init>(I)V

    new-instance v6, Lb/b/f/b/ac;

    sget-object v7, Lb/b/f/b/y;->bk:Lb/b/f/b/x;

    invoke-direct {v0}, Lb/b/a/b/z;->g()Lb/b/f/b/r;

    move-result-object v8

    invoke-static {v8}, Lb/b/f/b/u;->a(Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object v8

    sget-object v9, Lb/b/f/d/b;->a:Lb/b/f/d/b;

    invoke-direct {v6, v7, v3, v8, v9}, Lb/b/f/b/ac;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Lb/b/f/b/l;->a(ILb/b/f/b/i;)V

    invoke-virtual {v5}, Lb/b/f/b/l;->b_()V

    const/4 v6, -0x3

    invoke-direct {v0, v6}, Lb/b/a/b/z;->a(I)I

    move-result v6

    new-instance v7, Lb/b/f/b/a;

    invoke-static {v6}, Lb/b/h/k;->a(I)Lb/b/h/k;

    move-result-object v8

    invoke-direct {v7, v4, v5, v8, v6}, Lb/b/f/b/a;-><init>(ILb/b/f/b/l;Lb/b/h/k;I)V

    sget-object v4, Lb/b/h/k;->a:Lb/b/h/k;

    invoke-direct {v0, v7, v4}, Lb/b/a/b/z;->a(Lb/b/f/b/a;Lb/b/h/k;)V

    move v4, v6

    :cond_8
    new-instance v5, Lb/b/f/b/l;

    invoke-direct {v5, v15}, Lb/b/f/b/l;-><init>(I)V

    invoke-virtual {v2}, Lb/b/f/b/x;->c()Lb/b/f/d/e;

    move-result-object v6

    invoke-interface {v6}, Lb/b/f/d/e;->a_()I

    move-result v7

    if-nez v7, :cond_9

    sget-object v6, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    const/4 v7, 0x0

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lb/b/f/d/e;->a(I)Lb/b/f/d/c;

    move-result-object v6

    invoke-static {v7, v6}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v6

    invoke-static {v6}, Lb/b/f/b/u;->a(Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object v6

    :goto_7
    new-instance v8, Lb/b/f/b/q;

    invoke-direct {v8, v2, v3, v12, v6}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-virtual {v5, v7, v8}, Lb/b/f/b/l;->a(ILb/b/f/b/i;)V

    invoke-virtual {v5}, Lb/b/f/b/l;->b_()V

    new-instance v2, Lb/b/f/b/a;

    sget-object v3, Lb/b/h/k;->a:Lb/b/h/k;

    const/4 v6, -0x1

    invoke-direct {v2, v4, v5, v3, v6}, Lb/b/f/b/a;-><init>(ILb/b/f/b/l;Lb/b/h/k;I)V

    sget-object v3, Lb/b/h/k;->a:Lb/b/h/k;

    invoke-direct {v0, v2, v3}, Lb/b/a/b/z;->a(Lb/b/f/b/a;Lb/b/h/k;)V

    :cond_a
    iget-boolean v2, v0, Lb/b/a/b/z;->k:Z

    if-eqz v2, :cond_b

    iget-object v2, v0, Lb/b/a/b/z;->a:Lb/b/a/b/n;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lb/b/a/b/n;->a(I)Lb/b/f/b/z;

    move-result-object v2

    sget-object v4, Lb/b/f/d/c;->t:Lb/b/f/d/c;

    invoke-static {v3, v4}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v4

    new-instance v3, Lb/b/f/b/l;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Lb/b/f/b/l;-><init>(I)V

    new-instance v5, Lb/b/f/b/q;

    sget-object v6, Lb/b/f/d/c;->t:Lb/b/f/d/c;

    invoke-static {v6}, Lb/b/f/b/y;->c(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v6

    sget-object v7, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    invoke-direct {v5, v6, v2, v4, v7}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Lb/b/f/b/l;->a(ILb/b/f/b/i;)V

    new-instance v5, Lb/b/f/b/ac;

    sget-object v6, Lb/b/f/b/y;->bk:Lb/b/f/b/x;

    invoke-direct {v0}, Lb/b/a/b/z;->g()Lb/b/f/b/r;

    move-result-object v7

    invoke-static {v7}, Lb/b/f/b/u;->a(Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object v7

    sget-object v8, Lb/b/f/d/b;->a:Lb/b/f/d/b;

    invoke-direct {v5, v6, v2, v7, v8}, Lb/b/f/b/ac;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;)V

    invoke-virtual {v3, v15, v5}, Lb/b/f/b/l;->a(ILb/b/f/b/i;)V

    invoke-virtual {v3}, Lb/b/f/b/l;->b_()V

    const/4 v5, -0x7

    invoke-direct {v0, v5}, Lb/b/a/b/z;->a(I)I

    move-result v5

    new-instance v6, Lb/b/f/b/a;

    const/4 v7, -0x6

    invoke-direct {v0, v7}, Lb/b/a/b/z;->a(I)I

    move-result v7

    invoke-static {v5}, Lb/b/h/k;->a(I)Lb/b/h/k;

    move-result-object v8

    invoke-direct {v6, v7, v3, v8, v5}, Lb/b/f/b/a;-><init>(ILb/b/f/b/l;Lb/b/h/k;I)V

    sget-object v3, Lb/b/h/k;->a:Lb/b/h/k;

    invoke-direct {v0, v6, v3}, Lb/b/a/b/z;->a(Lb/b/f/b/a;Lb/b/h/k;)V

    new-instance v3, Lb/b/f/b/l;

    invoke-direct {v3, v15}, Lb/b/f/b/l;-><init>(I)V

    new-instance v6, Lb/b/f/b/ac;

    sget-object v7, Lb/b/f/b/y;->bi:Lb/b/f/b/x;

    invoke-static {v4}, Lb/b/f/b/u;->a(Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object v4

    sget-object v8, Lb/b/f/d/b;->a:Lb/b/f/d/b;

    invoke-direct {v6, v7, v2, v4, v8}, Lb/b/f/b/ac;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v6}, Lb/b/f/b/l;->a(ILb/b/f/b/i;)V

    invoke-virtual {v3}, Lb/b/f/b/l;->b_()V

    new-instance v2, Lb/b/f/b/a;

    sget-object v4, Lb/b/h/k;->a:Lb/b/h/k;

    const/4 v6, -0x1

    invoke-direct {v2, v5, v3, v4, v6}, Lb/b/f/b/a;-><init>(ILb/b/f/b/l;Lb/b/h/k;I)V

    sget-object v3, Lb/b/h/k;->a:Lb/b/h/k;

    invoke-direct {v0, v2, v3}, Lb/b/a/b/z;->a(Lb/b/f/b/a;Lb/b/h/k;)V

    :cond_b
    invoke-direct {v0}, Lb/b/a/b/z;->i()V

    iget-boolean v2, v0, Lb/b/a/b/z;->m:Z

    if-eqz v2, :cond_c

    invoke-direct {v0}, Lb/b/a/b/z;->j()V

    :cond_c
    invoke-direct {v0}, Lb/b/a/b/z;->h()Lcom/gmail/heagoo/pngeditor/j;

    move-result-object v0
    :try_end_3
    .catch Lb/b/a/b/aj; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "...while working on method "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lb/b/a/b/n;->c()Lb/b/f/c/aa;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/c/aa;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/b/a/b/aj;->a(Ljava/lang/String;)V

    throw v0
.end method

.method private a(IILb/b/a/b/ag;Lb/b/a/b/p;[I)V
    .registers 7

    iget-object v0, p0, Lb/b/a/b/z;->g:[Lb/b/a/b/p;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lb/b/a/b/ag;->a()I

    move-result p3

    invoke-virtual {v0, p4, p3, p2}, Lb/b/a/b/p;->a(Lb/b/a/b/p;II)Lb/b/a/b/p;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p4}, Lb/b/a/b/p;->a(Lb/b/a/b/p;)Lb/b/a/b/p;

    move-result-object p2

    :goto_0
    if-eq p2, v0, :cond_3

    iget-object p3, p0, Lb/b/a/b/z;->g:[Lb/b/a/b/p;

    aput-object p2, p3, p1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    iget-object p3, p0, Lb/b/a/b/z;->g:[Lb/b/a/b/p;

    invoke-virtual {p4, p1, p2}, Lb/b/a/b/p;->b(II)Lb/b/a/b/p;

    move-result-object p2

    aput-object p2, p3, p1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lb/b/a/b/z;->g:[Lb/b/a/b/p;

    aput-object p4, p2, p1

    :goto_1
    invoke-static {p5, p1}, La/a/a;->b([II)V

    :cond_3
    return-void
.end method

.method private a(ILb/b/f/b/b;)V
    .registers 5

    invoke-direct {p0, p1}, Lb/b/a/b/z;->c(I)Lb/b/f/b/a;

    move-result-object p1

    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Lb/b/a/b/z;->d:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lb/b/a/b/z;->a(Lb/b/f/b/a;Lb/b/f/b/b;Ljava/util/BitSet;)V

    return-void
.end method

.method static synthetic a(Lb/b/a/b/z;IILb/b/a/b/ag;Lb/b/a/b/p;[I)V
    .registers 12

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lb/b/a/b/z;->a(IILb/b/a/b/ag;Lb/b/a/b/p;[I)V

    return-void
.end method

.method private a(Lb/b/f/b/a;Lb/b/f/b/b;Ljava/util/BitSet;)V
    .registers 9

    invoke-interface {p2, p1}, Lb/b/f/b/b;->a(Lb/b/f/b/a;)V

    invoke-virtual {p1}, Lb/b/f/b/a;->a()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/h/k;->f()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Lb/b/h/k;->b(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, p1}, Lb/b/a/b/z;->a(Lb/b/f/b/a;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-gtz v2, :cond_1

    :cond_0
    invoke-direct {p0, v3}, Lb/b/a/b/z;->b(I)I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v4, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/f/b/a;

    invoke-direct {p0, v3, p2, p3}, Lb/b/a/b/z;->a(Lb/b/f/b/a;Lb/b/f/b/b;Ljava/util/BitSet;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lb/b/f/b/a;Lb/b/h/k;)V
    .registers 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lb/b/h/k;->e()V

    iget-object p1, p0, Lb/b/a/b/z;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "block == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/gmail/heagoo/common/ae;Lb/b/a/b/p;[I)V
    .registers 28

    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Lcom/gmail/heagoo/common/ae;->e()Lb/b/a/b/g;

    move-result-object v0

    iget-object v1, v7, Lb/b/a/b/z;->e:Lb/b/a/b/ai;

    invoke-virtual {v0}, Lb/b/a/b/g;->f()Lb/b/f/d/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/b/a/b/ai;->a(Lb/b/f/d/e;)V

    invoke-virtual/range {p2 .. p2}, Lb/b/a/b/p;->a()Lb/b/a/b/p;

    move-result-object v8

    iget-object v1, v7, Lb/b/a/b/z;->f:Lb/b/a/b/ak;

    move-object/from16 v9, p1

    invoke-virtual {v1, v9, v8}, Lb/b/a/b/ak;->a(Lcom/gmail/heagoo/common/ae;Lb/b/a/b/p;)V

    invoke-virtual {v8}, Lb/b/a/b/p;->b()V

    iget-object v1, v7, Lb/b/a/b/z;->e:Lb/b/a/b/ai;

    invoke-virtual {v1}, Lb/b/a/b/ai;->s()I

    move-result v10

    iget-object v1, v7, Lb/b/a/b/z;->e:Lb/b/a/b/ai;

    invoke-virtual {v1}, Lb/b/a/b/ai;->m()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v0}, Lb/b/a/b/g;->a_()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/gmail/heagoo/common/ae;->d()Lb/b/h/k;

    move-result-object v1

    iget-object v2, v7, Lb/b/a/b/z;->e:Lb/b/a/b/ai;

    invoke-virtual {v2}, Lb/b/a/b/ai;->u()Z

    move-result v2

    const/4 v15, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1, v6}, Lb/b/h/k;->b(I)I

    move-result v2

    iget-object v3, v7, Lb/b/a/b/z;->l:[Lb/b/a/b/ag;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    iget-object v3, v7, Lb/b/a/b/z;->l:[Lb/b/a/b/ag;

    new-instance v4, Lb/b/a/b/ag;

    invoke-direct {v4, v7, v2}, Lb/b/a/b/ag;-><init>(Lb/b/a/b/z;I)V

    aput-object v4, v3, v2

    :cond_0
    iget-object v3, v7, Lb/b/a/b/z;->l:[Lb/b/a/b/ag;

    aget-object v3, v3, v2

    invoke-virtual/range {p1 .. p1}, Lcom/gmail/heagoo/common/ae;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lb/b/a/b/ag;->b(I)V

    iget-object v3, v7, Lb/b/a/b/z;->l:[Lb/b/a/b/ag;

    aget-object v2, v3, v2

    move-object/from16 v5, p3

    move-object v4, v1

    move-object/from16 v16, v2

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    iget-object v2, v7, Lb/b/a/b/z;->e:Lb/b/a/b/ai;

    invoke-virtual {v2}, Lb/b/a/b/ai;->v()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v7, Lb/b/a/b/z;->e:Lb/b/a/b/ai;

    invoke-virtual {v1}, Lb/b/a/b/ai;->w()Lb/b/a/b/y;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/a/b/y;->f()I

    move-result v1

    iget-object v2, v7, Lb/b/a/b/z;->l:[Lb/b/a/b/ag;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    iget-object v2, v7, Lb/b/a/b/z;->l:[Lb/b/a/b/ag;

    new-instance v3, Lb/b/a/b/ag;

    invoke-virtual/range {p1 .. p1}, Lcom/gmail/heagoo/common/ae;->a()I

    move-result v4

    invoke-direct {v3, v7, v1, v4}, Lb/b/a/b/ag;-><init>(Lb/b/a/b/z;II)V

    aput-object v3, v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, v7, Lb/b/a/b/z;->l:[Lb/b/a/b/ag;

    aget-object v2, v2, v1

    invoke-virtual/range {p1 .. p1}, Lcom/gmail/heagoo/common/ae;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lb/b/a/b/ag;->a(I)V

    :goto_0
    iget-object v2, v7, Lb/b/a/b/z;->l:[Lb/b/a/b/ag;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lb/b/a/b/ag;->b()Lb/b/h/k;

    move-result-object v2

    iget-object v3, v7, Lb/b/a/b/z;->l:[Lb/b/a/b/ag;

    aget-object v1, v3, v1

    move-object/from16 v5, p3

    invoke-virtual {v1, v8, v5}, Lb/b/a/b/ag;->a(Lb/b/a/b/p;[I)V

    invoke-virtual {v2}, Lb/b/h/k;->f()I

    move-result v1

    move-object v4, v2

    goto :goto_1

    :cond_3
    move-object/from16 v5, p3

    iget-object v2, v7, Lb/b/a/b/z;->e:Lb/b/a/b/ai;

    invoke-virtual {v2}, Lb/b/a/b/ai;->p()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v4, v1

    move v1, v13

    :goto_1
    const/16 v16, 0x0

    goto :goto_2

    :cond_4
    move-object v4, v1

    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {v4}, Lb/b/h/k;->f()I

    move-result v3

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_5

    invoke-virtual {v4, v2}, Lb/b/h/k;->b(I)I

    move-result v17

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/gmail/heagoo/common/ae;->a()I

    move-result v18

    move-object/from16 v1, p0

    move/from16 v19, v2

    move/from16 v2, v17

    move/from16 v20, v3

    move/from16 v3, v18

    move-object/from16 v18, v4

    move-object/from16 v4, v16

    move-object v5, v8

    const/4 v14, 0x1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lb/b/a/b/z;->a(IILb/b/a/b/ag;Lb/b/a/b/p;[I)V
    :try_end_0
    .catch Lb/b/a/b/aj; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v19, 0x1

    move-object/from16 v5, p3

    move-object/from16 v4, v18

    move/from16 v3, v20

    const/4 v6, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while merging to block "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/b/a/b/aj;->a(Ljava/lang/String;)V

    throw v0

    :cond_5
    move/from16 v20, v3

    move-object/from16 v18, v4

    const/4 v14, 0x1

    if-nez v20, :cond_6

    iget-object v1, v7, Lb/b/a/b/z;->e:Lb/b/a/b/ai;

    invoke-virtual {v1}, Lb/b/a/b/ai;->q()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, -0x2

    invoke-direct {v7, v1}, Lb/b/a/b/z;->a(I)I

    move-result v1

    invoke-static {v1}, Lb/b/h/k;->a(I)Lb/b/h/k;

    move-result-object v4

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v4, v18

    move/from16 v1, v20

    :goto_4
    if-nez v1, :cond_7

    const/4 v2, -0x1

    const/4 v6, -0x1

    goto :goto_5

    :cond_7
    iget-object v2, v7, Lb/b/a/b/z;->e:Lb/b/a/b/ai;

    invoke-virtual {v2}, Lb/b/a/b/ai;->r()I

    move-result v2

    if-ltz v2, :cond_8

    invoke-virtual {v4, v2}, Lb/b/h/k;->b(I)I

    move-result v2

    :cond_8
    move v6, v2

    :goto_5
    invoke-direct/range {p0 .. p0}, Lb/b/a/b/z;->d()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v7, Lb/b/a/b/z;->e:Lb/b/a/b/ai;

    invoke-virtual {v2}, Lb/b/a/b/ai;->t()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v16, 0x1

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    :goto_6
    if-nez v16, :cond_b

    if-eqz v13, :cond_a

    goto :goto_7

    :cond_a
    move-object v14, v4

    move v2, v6

    goto/16 :goto_b

    :cond_b
    :goto_7
    new-instance v5, Lb/b/h/k;

    invoke-direct {v5, v1}, Lb/b/h/k;-><init>(I)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v13, :cond_e

    invoke-virtual {v0, v4}, Lb/b/a/b/g;->a(I)Lb/b/a/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/a/b/h;->d()Lb/b/f/c/ae;

    move-result-object v3

    invoke-virtual {v2}, Lb/b/a/b/h;->c()I

    move-result v17

    sget-object v2, Lb/b/f/c/ae;->a:Lb/b/f/c/ae;

    if-ne v3, v2, :cond_c

    const/4 v2, 0x1

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    :goto_9
    or-int v18, v1, v2

    invoke-virtual {v8, v3}, Lb/b/a/b/p;->a(Lb/b/f/c/ae;)Lb/b/a/b/p;

    move-result-object v19

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/gmail/heagoo/common/ae;->a()I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v1, p0

    move/from16 v2, v17

    move-object/from16 v22, v3

    move/from16 v3, v20

    move/from16 v20, v4

    move-object/from16 v4, v21

    move-object v14, v5

    move-object/from16 v5, v19

    move/from16 v23, v6

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lb/b/a/b/z;->a(IILb/b/a/b/ag;Lb/b/a/b/p;[I)V
    :try_end_1
    .catch Lb/b/a/b/aj; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v1, v7, Lb/b/a/b/z;->j:[Lb/b/a/b/ac;

    aget-object v1, v1, v17

    if-nez v1, :cond_d

    new-instance v1, Lb/b/a/b/ac;

    invoke-direct {v1, v7, v15}, Lb/b/a/b/ac;-><init>(Lb/b/a/b/z;B)V

    iget-object v2, v7, Lb/b/a/b/z;->j:[Lb/b/a/b/ac;

    aput-object v1, v2, v17

    :cond_d
    invoke-virtual/range {v22 .. v22}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/b/a/b/ac;->a(Lb/b/f/d/c;)Lb/b/a/b/ad;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/a/b/ad;->b()I

    move-result v1

    invoke-virtual {v14, v1}, Lb/b/h/k;->c(I)V

    add-int/lit8 v4, v20, 0x1

    move-object v5, v14

    move/from16 v1, v18

    move/from16 v6, v23

    const/4 v14, 0x1

    goto :goto_8

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while merging exception to block "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/b/a/b/aj;->a(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object v14, v5

    move/from16 v23, v6

    if-eqz v16, :cond_10

    if-nez v1, :cond_10

    const/4 v0, -0x6

    invoke-direct {v7, v0}, Lb/b/a/b/z;->a(I)I

    move-result v0

    invoke-virtual {v14, v0}, Lb/b/h/k;->c(I)V

    const/4 v0, 0x1

    iput-boolean v0, v7, Lb/b/a/b/z;->k:Z

    sub-int v1, v12, v10

    sub-int/2addr v1, v0

    :goto_a
    if-ge v1, v12, :cond_10

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/f/b/i;

    invoke-virtual {v0}, Lb/b/f/b/i;->k()Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    invoke-virtual {v0, v2}, Lb/b/f/b/i;->a(Lb/b/f/d/c;)Lb/b/f/b/i;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_10
    move/from16 v2, v23

    if-ltz v2, :cond_11

    invoke-virtual {v14, v2}, Lb/b/h/k;->c(I)V

    :cond_11
    invoke-virtual {v14}, Lb/b/h/k;->b_()V

    :goto_b
    invoke-virtual {v14, v2}, Lb/b/h/k;->f(I)I

    move-result v0

    :goto_c
    if-lez v10, :cond_15

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/f/b/i;

    invoke-virtual {v1}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/x;->d()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    const/4 v3, 0x1

    goto :goto_d

    :cond_12
    const/4 v3, 0x0

    :goto_d
    new-instance v4, Lb/b/f/b/l;

    if-eqz v3, :cond_13

    const/4 v6, 0x2

    goto :goto_e

    :cond_13
    const/4 v6, 0x1

    :goto_e
    invoke-direct {v4, v6}, Lb/b/f/b/l;-><init>(I)V

    invoke-virtual {v4, v15, v1}, Lb/b/f/b/l;->a(ILb/b/f/b/i;)V

    if-eqz v3, :cond_14

    new-instance v3, Lb/b/f/b/q;

    sget-object v5, Lb/b/f/b/y;->s:Lb/b/f/b/x;

    invoke-virtual {v1}, Lb/b/f/b/i;->f()Lb/b/f/b/z;

    move-result-object v1

    sget-object v6, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    const/4 v13, 0x0

    invoke-direct {v3, v5, v1, v13, v6}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1, v3}, Lb/b/f/b/l;->a(ILb/b/f/b/i;)V

    invoke-static {v2}, Lb/b/h/k;->a(I)Lb/b/h/k;

    move-result-object v1

    goto :goto_f

    :cond_14
    move-object v1, v14

    :goto_f
    invoke-virtual {v4}, Lb/b/f/b/l;->b_()V

    invoke-direct/range {p0 .. p0}, Lb/b/a/b/z;->c()I

    move-result v3

    new-instance v5, Lb/b/f/b/a;

    invoke-direct {v5, v3, v4, v1, v2}, Lb/b/f/b/a;-><init>(ILb/b/f/b/l;Lb/b/h/k;I)V

    invoke-virtual {v8}, Lb/b/a/b/p;->e()Lb/b/h/k;

    move-result-object v1

    invoke-direct {v7, v5, v1}, Lb/b/a/b/z;->a(Lb/b/f/b/a;Lb/b/h/k;)V

    invoke-virtual {v14}, Lb/b/h/k;->i()Lb/b/h/k;

    move-result-object v14

    invoke-virtual {v14, v0, v3}, Lb/b/h/k;->b(II)V

    invoke-virtual {v14}, Lb/b/h/k;->b_()V

    add-int/lit8 v10, v10, -0x1

    move v2, v3

    goto :goto_c

    :cond_15
    if-nez v12, :cond_16

    const/4 v0, 0x0

    goto :goto_10

    :cond_16
    add-int/lit8 v0, v12, -0x1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/f/b/i;

    :goto_10
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/x;->d()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_19

    :cond_17
    if-nez v0, :cond_18

    sget-object v0, Lb/b/f/b/z;->a:Lb/b/f/b/z;

    goto :goto_11

    :cond_18
    invoke-virtual {v0}, Lb/b/f/b/i;->f()Lb/b/f/b/z;

    move-result-object v0

    :goto_11
    new-instance v1, Lb/b/f/b/q;

    sget-object v3, Lb/b/f/b/y;->s:Lb/b/f/b/x;

    sget-object v4, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v0, v5, v4}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    :cond_19
    new-instance v0, Lb/b/f/b/l;

    invoke-direct {v0, v12}, Lb/b/f/b/l;-><init>(I)V

    :goto_12
    if-ge v15, v12, :cond_1a

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/f/b/i;

    invoke-virtual {v0, v15, v1}, Lb/b/f/b/l;->a(ILb/b/f/b/i;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_12

    :cond_1a
    invoke-virtual {v0}, Lb/b/f/b/l;->b_()V

    new-instance v1, Lb/b/f/b/a;

    invoke-virtual/range {p1 .. p1}, Lcom/gmail/heagoo/common/ae;->a()I

    move-result v3

    invoke-direct {v1, v3, v0, v14, v2}, Lb/b/f/b/a;-><init>(ILb/b/f/b/l;Lb/b/h/k;I)V

    invoke-virtual {v8}, Lb/b/a/b/p;->e()Lb/b/h/k;

    move-result-object v0

    invoke-direct {v7, v1, v0}, Lb/b/a/b/z;->b(Lb/b/f/b/a;Lb/b/h/k;)Z

    return-void
.end method

.method static synthetic a(Lb/b/a/b/z;Lb/b/f/b/a;)Z
    .registers 2

    invoke-direct {p0, p1}, Lb/b/a/b/z;->a(Lb/b/f/b/a;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lb/b/a/b/z;Lb/b/f/b/a;Lb/b/h/k;)Z
    .registers 5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lb/b/f/b/a;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lb/b/a/b/z;->b(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lb/b/a/b/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lb/b/h/k;->e()V

    iget-object p0, p0, Lb/b/a/b/z;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "block == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lb/b/a/b/z;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/b/a/b/z;->m:Z

    return p1
.end method

.method private a(Lb/b/f/b/a;)Z
    .registers 5

    invoke-virtual {p1}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/h/k;->f()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lb/b/h/k;->b(I)I

    move-result p1

    iget-object v2, p0, Lb/b/a/b/z;->l:[Lb/b/a/b/ag;

    array-length v2, v2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lb/b/a/b/z;->l:[Lb/b/a/b/ag;

    aget-object p1, v2, p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method private b()I
    .registers 3

    iget v0, p0, Lb/b/a/b/z;->d:I

    iget-object v1, p0, Lb/b/a/b/z;->a:Lb/b/a/b/n;

    invoke-virtual {v1}, Lb/b/a/b/n;->m()Lb/b/a/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/a/b/g;->a_()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private b(I)I
    .registers 5

    iget-object v0, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/b/a;

    invoke-virtual {v2}, Lb/b/f/b/a;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic b(Lb/b/a/b/z;)I
    .registers 1

    iget p0, p0, Lb/b/a/b/z;->d:I

    return p0
.end method

.method static synthetic b(Lb/b/a/b/z;I)Lb/b/a/b/ag;
    .registers 5

    iget-object v0, p0, Lb/b/a/b/z;->l:[Lb/b/a/b/ag;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lb/b/a/b/z;->l:[Lb/b/a/b/ag;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/b/a/b/z;->l:[Lb/b/a/b/ag;

    aget-object v1, v1, v0

    invoke-static {v1}, Lb/b/a/b/ag;->b(Lb/b/a/b/ag;)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Lb/b/a/b/z;Lb/b/f/b/a;Lb/b/h/k;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lb/b/a/b/z;->a(Lb/b/f/b/a;Lb/b/h/k;)V

    return-void
.end method

.method private b(Lb/b/f/b/a;Lb/b/h/k;)Z
    .registers 5

    invoke-virtual {p1}, Lb/b/f/b/a;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lb/b/a/b/z;->b(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lb/b/a/b/z;->d(I)V

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lb/b/h/k;->e()V

    iget-object p1, p0, Lb/b/a/b/z;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method private c()I
    .registers 4

    invoke-direct {p0}, Lb/b/a/b/z;->b()I

    move-result v0

    iget-object v1, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/b/a;

    invoke-virtual {v2}, Lb/b/f/b/a;->a()I

    move-result v2

    if-lt v2, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method static synthetic c(Lb/b/a/b/z;)Lb/b/a/b/n;
    .registers 1

    iget-object p0, p0, Lb/b/a/b/z;->a:Lb/b/a/b/n;

    return-object p0
.end method

.method private c(I)Lb/b/f/b/a;
    .registers 5

    invoke-direct {p0, p1}, Lb/b/a/b/z;->b(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/f/b/a;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no such label "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(I)V
    .registers 7

    invoke-direct {p0}, Lb/b/a/b/z;->b()I

    move-result v0

    iget-object v1, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/f/b/a;

    invoke-virtual {v1}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/h/k;->f()I

    move-result v2

    iget-object v3, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lb/b/a/b/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v2, :cond_2

    invoke-virtual {v1, p1}, Lb/b/h/k;->b(I)I

    move-result v3

    if-lt v3, v0, :cond_1

    invoke-direct {p0, v3}, Lb/b/a/b/z;->b(I)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-direct {p0, v4}, Lb/b/a/b/z;->d(I)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid label "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private d()Z
    .registers 2

    iget-object v0, p0, Lb/b/a/b/z;->a:Lb/b/a/b/n;

    invoke-virtual {v0}, Lb/b/a/b/n;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()Z
    .registers 2

    iget-object v0, p0, Lb/b/a/b/z;->a:Lb/b/a/b/n;

    invoke-virtual {v0}, Lb/b/a/b/n;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private f()I
    .registers 3

    iget v0, p0, Lb/b/a/b/z;->c:I

    iget-object v1, p0, Lb/b/a/b/z;->a:Lb/b/a/b/n;

    invoke-virtual {v1}, Lb/b/a/b/n;->j()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private g()Lb/b/f/b/r;
    .registers 3

    invoke-direct {p0}, Lb/b/a/b/z;->f()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget-object v1, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    invoke-static {v0, v1}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v0

    return-object v0
.end method

.method private h()Lcom/gmail/heagoo/pngeditor/j;
    .registers 5

    iget-object v0, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lb/b/f/b/c;

    invoke-direct {v1, v0}, Lb/b/f/b/c;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/f/b/a;

    invoke-virtual {v1, v2, v3}, Lb/b/f/b/c;->a(ILb/b/f/b/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lb/b/f/b/c;->b_()V

    new-instance v0, Lcom/gmail/heagoo/pngeditor/j;

    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lb/b/a/b/z;->a(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/gmail/heagoo/pngeditor/j;-><init>(Lb/b/f/b/c;I)V

    return-object v0
.end method

.method private i()V
    .registers 12

    iget-object v0, p0, Lb/b/a/b/z;->j:[Lb/b/a/b/ac;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lb/b/a/b/z;->j:[Lb/b/a/b/ac;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lb/b/a/b/ac;->a()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/a/b/ad;

    invoke-direct {p0, v2}, Lb/b/a/b/z;->c(I)Lb/b/f/b/a;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/f/b/a;->f()Lb/b/f/b/i;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/f/b/i;->f()Lb/b/f/b/z;

    move-result-object v5

    new-instance v6, Lb/b/f/b/l;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lb/b/f/b/l;-><init>(I)V

    new-instance v7, Lb/b/f/b/q;

    invoke-virtual {v4}, Lb/b/a/b/ad;->a()Lb/b/f/d/c;

    move-result-object v8

    invoke-static {v8}, Lb/b/f/b/y;->c(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v8

    iget v9, p0, Lb/b/a/b/z;->c:I

    invoke-virtual {v4}, Lb/b/a/b/ad;->a()Lb/b/f/d/c;

    move-result-object v10

    invoke-static {v9, v10}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v9

    sget-object v10, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    invoke-direct {v7, v8, v5, v9, v10}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-virtual {v6, v1, v7}, Lb/b/f/b/l;->a(ILb/b/f/b/i;)V

    new-instance v7, Lb/b/f/b/q;

    sget-object v8, Lb/b/f/b/y;->s:Lb/b/f/b/x;

    const/4 v9, 0x0

    sget-object v10, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    invoke-direct {v7, v8, v5, v9, v10}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    const/4 v5, 0x1

    invoke-virtual {v6, v5, v7}, Lb/b/f/b/l;->a(ILb/b/f/b/i;)V

    invoke-virtual {v6}, Lb/b/f/b/l;->b_()V

    new-instance v5, Lb/b/f/b/a;

    invoke-virtual {v4}, Lb/b/a/b/ad;->b()I

    move-result v4

    invoke-static {v2}, Lb/b/h/k;->a(I)Lb/b/h/k;

    move-result-object v7

    invoke-direct {v5, v4, v6, v7, v2}, Lb/b/f/b/a;-><init>(ILb/b/f/b/l;Lb/b/h/k;I)V

    iget-object v4, p0, Lb/b/a/b/z;->g:[Lb/b/a/b/p;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lb/b/a/b/p;->e()Lb/b/h/k;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lb/b/a/b/z;->a(Lb/b/f/b/a;Lb/b/h/k;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j()V
    .registers 9

    new-instance v0, Lb/b/h/k;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lb/b/h/k;-><init>(I)V

    new-instance v1, Lb/b/a/b/aa;

    invoke-direct {v1, p0, v0}, Lb/b/a/b/aa;-><init>(Lb/b/a/b/z;Lb/b/h/k;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lb/b/a/b/z;->a(ILb/b/f/b/b;)V

    invoke-direct {p0}, Lb/b/a/b/z;->c()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/f/b/a;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lb/b/a/b/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/h/k;

    invoke-virtual {v4}, Lb/b/f/b/a;->a()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lb/b/h/k;->f()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Lb/b/h/k;->b(I)I

    move-result v4

    new-instance v5, Lb/b/a/b/ah;

    new-instance v6, Lb/b/a/b/af;

    invoke-direct {p0}, Lb/b/a/b/z;->c()I

    move-result v7

    invoke-direct {v6, v7}, Lb/b/a/b/af;-><init>(I)V

    invoke-direct {v5, p0, v6, v3}, Lb/b/a/b/ah;-><init>(Lb/b/a/b/z;Lb/b/a/b/af;Ljava/util/ArrayList;)V

    invoke-direct {p0, v4}, Lb/b/a/b/z;->c(I)Lb/b/f/b/a;

    move-result-object v4

    invoke-virtual {v5, v4}, Lb/b/a/b/ah;->a(Lb/b/f/b/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lb/b/a/b/z;->k()V

    return-void
.end method

.method private k()V
    .registers 4

    new-instance v0, Lb/b/h/k;

    iget-object v1, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lb/b/h/k;-><init>(I)V

    iget-object v1, p0, Lb/b/a/b/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lb/b/a/b/z;->a(I)I

    move-result v1

    new-instance v2, Lb/b/a/b/ab;

    invoke-direct {v2, p0, v0}, Lb/b/a/b/ab;-><init>(Lb/b/a/b/z;Lb/b/h/k;)V

    invoke-direct {p0, v1, v2}, Lb/b/a/b/z;->a(ILb/b/f/b/b;)V

    invoke-virtual {v0}, Lb/b/h/k;->j()V

    iget-object v1, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/b/a;

    invoke-virtual {v2}, Lb/b/f/b/a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lb/b/h/k;->f(I)I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lb/b/a/b/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method final a()I
    .registers 3

    invoke-direct {p0}, Lb/b/a/b/z;->f()I

    move-result v0

    invoke-direct {p0}, Lb/b/a/b/z;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method
