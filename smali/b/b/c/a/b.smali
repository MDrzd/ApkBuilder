.class public Lb/b/c/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, -0x333334

    iput p1, p0, Lb/b/c/a/b;->a:I

    const/high16 p1, -0x1000000

    iput p1, p0, Lb/b/c/a/b;->b:I

    invoke-direct {p0}, Lb/b/c/a/b;->e()V

    return-void
.end method

.method public constructor <init>([I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    aget v2, p1, v2

    iput v2, p0, Lb/b/c/a/b;->a:I

    const/4 v2, 0x1

    aget v2, p1, v2

    iput v2, p0, Lb/b/c/a/b;->b:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lb/b/c/a/b;->e()V

    return-void

    :cond_2
    aget v0, p1, v1

    iput v0, p0, Lb/b/c/a/b;->c:I

    const/4 v0, 0x3

    aget p1, p1, v0

    iput p1, p0, Lb/b/c/a/b;->d:I

    return-void
.end method

.method private static a(II)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lb/b/c/a/b;->a(III)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lb/b/c/a/b;->a(III)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-static {p0, p1, v1}, Lb/b/c/a/b;->a(III)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static a(III)I
    .registers 3

    invoke-static {p0, p2}, Lb/b/c/a/b;->b(II)I

    move-result p0

    invoke-static {p1, p2}, Lb/b/c/a/b;->b(II)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public static a(Lb/b/b/b/a;Lb/b/a/c/k;[BLcom/gmail/heagoo/httpserver/g;Lcom/gmail/heagoo/b/a/a;Lb/b/c/c/u;)Lb/b/c/c/m;
    .registers 21

    move-object/from16 v7, p1

    move-object/from16 v0, p3

    move-object/from16 v6, p5

    move-object v1, p0

    :try_start_0
    iget-object v2, v1, Lb/b/b/b/a;->b:Lb/b/c/a/d;

    iget-object v3, v0, Lcom/gmail/heagoo/httpserver/g;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/gmail/heagoo/httpserver/g;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lb/b/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lb/b/a/c/k;->e()Lb/b/f/c/ae;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lb/b/a/c/k;->d()I

    move-result v2

    and-int/lit8 v10, v2, -0x21

    iget v2, v0, Lcom/gmail/heagoo/httpserver/g;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v13, v2

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lb/b/a/c/k;->m()Lb/b/f/c/ad;

    move-result-object v2

    goto :goto_0

    :goto_1
    new-instance v14, Lb/b/c/c/m;

    invoke-virtual/range {p1 .. p1}, Lb/b/a/c/k;->f()Lb/b/f/c/ae;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lb/b/a/c/k;->h()Lb/b/f/d/e;

    move-result-object v12

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lb/b/c/c/m;-><init>(Lb/b/f/c/ae;ILb/b/f/c/ae;Lb/b/f/d/e;Lb/b/f/c/ad;)V

    invoke-static {v7, v0}, Lb/b/c/a/a;->a(Lb/b/a/c/k;Lcom/gmail/heagoo/httpserver/g;)Lb/b/f/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/a/c;->f()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v14, v2, v6}, Lb/b/c/c/m;->a(Lb/b/f/a/c;Lb/b/c/c/u;)V

    :cond_1
    invoke-virtual/range {p5 .. p5}, Lb/b/c/c/u;->m()Lb/b/c/c/ac;

    move-result-object v8

    invoke-virtual/range {p5 .. p5}, Lb/b/c/c/u;->n()Lb/b/c/c/aq;

    move-result-object v9

    invoke-virtual/range {p5 .. p5}, Lb/b/c/c/u;->o()Lb/b/c/c/ao;

    move-result-object v10

    invoke-virtual/range {p5 .. p5}, Lb/b/c/c/u;->p()Lb/b/c/c/i;

    move-result-object v11

    invoke-static {v7, v14, v6}, Lb/b/c/a/b;->a(Lb/b/a/c/k;Lb/b/c/c/m;Lb/b/c/c/u;)V

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v14

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lb/b/c/a/b;->a(Lb/b/b/b/a;Lb/b/a/c/k;Lcom/gmail/heagoo/httpserver/g;Lcom/gmail/heagoo/b/a/a;Lb/b/c/c/m;Lb/b/c/c/u;)V

    invoke-virtual/range {p1 .. p1}, Lb/b/a/c/k;->g()Lb/b/f/c/b;

    move-result-object v0

    invoke-interface {v0}, Lb/b/f/c/b;->a()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_8

    invoke-interface {v0, v2}, Lb/b/f/c/b;->c(I)Lb/b/f/c/a;

    move-result-object v3

    instance-of v4, v3, Lb/b/f/c/z;

    if-eqz v4, :cond_2

    check-cast v3, Lb/b/f/c/f;

    :goto_3
    invoke-virtual {v9, v3}, Lb/b/c/c/aq;->a(Lb/b/f/c/f;)Lb/b/c/c/ap;

    goto/16 :goto_6

    :cond_2
    instance-of v4, v3, Lb/b/f/c/q;

    if-eqz v4, :cond_3

    check-cast v3, Lb/b/f/c/q;

    invoke-virtual {v3}, Lb/b/f/c/q;->k()Lb/b/f/c/z;

    move-result-object v3

    goto :goto_3

    :cond_3
    instance-of v4, v3, Lb/b/f/c/n;

    if-eqz v4, :cond_4

    check-cast v3, Lb/b/f/c/n;

    :goto_4
    invoke-virtual {v8, v3}, Lb/b/c/c/ac;->a(Lb/b/f/c/n;)Lb/b/c/c/ab;

    goto :goto_6

    :cond_4
    instance-of v4, v3, Lb/b/f/c/m;

    if-eqz v4, :cond_5

    check-cast v3, Lb/b/f/c/m;

    invoke-virtual {v3}, Lb/b/f/c/m;->i()Lb/b/f/c/n;

    move-result-object v3

    goto :goto_4

    :cond_5
    instance-of v4, v3, Lb/b/f/c/y;

    if-eqz v4, :cond_6

    check-cast v3, Lb/b/f/c/y;

    invoke-virtual {v10, v3}, Lb/b/c/c/ao;->a(Lb/b/f/c/y;)V

    goto :goto_6

    :cond_6
    instance-of v4, v3, Lb/b/f/c/r;

    if-eqz v4, :cond_7

    check-cast v3, Lb/b/f/c/r;

    invoke-virtual {v3}, Lb/b/f/c/r;->c()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lb/b/a/c/k;->l()Lb/b/a/b/d;

    move-result-object v5

    invoke-virtual {v5, v4}, Lb/b/a/b/d;->a(I)Lb/b/a/b/e;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/a/b/e;->a()Lb/b/f/c/y;

    move-result-object v5

    invoke-virtual {v3}, Lb/b/f/c/r;->d()Lb/b/f/c/aa;

    move-result-object v6

    invoke-virtual {v4}, Lb/b/a/b/e;->b()Lb/b/a/b/c;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lb/b/f/c/i;->a(Lb/b/f/c/y;Lb/b/f/c/aa;Lb/b/a/b/c;)Lb/b/f/c/i;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lb/b/a/c/k;->e()Lb/b/f/c/ae;

    move-result-object v5

    invoke-virtual {v3, v5}, Lb/b/f/c/r;->a(Lb/b/f/c/ae;)V

    invoke-virtual {v3, v4}, Lb/b/f/c/r;->a(Lb/b/f/c/i;)V

    invoke-virtual {v3}, Lb/b/f/c/r;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/f/c/j;

    invoke-virtual {v11, v4}, Lb/b/c/c/i;->a(Lb/b/f/c/j;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_7
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_8
    return-object v14

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while processing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lb/b/a/c/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lb/a/a/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lb/a/a/c;

    move-result-object v0

    throw v0
.end method

.method private static a(Lb/b/f/c/ag;Lb/b/f/d/c;)Lb/b/f/c/ag;
    .registers 5

    invoke-virtual {p0}, Lb/b/f/c/ag;->a()Lb/b/f/d/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/f/d/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lb/b/f/d/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t coerce "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast p0, Lb/b/f/c/p;

    invoke-virtual {p0}, Lb/b/f/c/p;->j()I

    move-result p0

    invoke-static {p0}, Lb/b/f/c/k;->a(I)Lb/b/f/c/k;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lb/b/f/c/p;

    invoke-virtual {p0}, Lb/b/f/c/p;->j()I

    move-result p0

    invoke-static {p0}, Lb/b/f/c/h;->a(I)Lb/b/f/c/h;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lb/b/f/c/p;

    invoke-virtual {p0}, Lb/b/f/c/p;->j()I

    move-result p0

    invoke-static {p0}, Lb/b/f/c/g;->a(I)Lb/b/f/c/g;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p0, Lb/b/f/c/p;

    invoke-virtual {p0}, Lb/b/f/c/p;->j()I

    move-result p0

    invoke-static {p0}, Lb/b/f/c/ac;->a(I)Lb/b/f/c/ac;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lb/b/a/c/k;Lb/b/c/c/m;Lb/b/c/c/u;)V
    .registers 11

    invoke-virtual {p0}, Lb/b/a/c/k;->e()Lb/b/f/c/ae;

    move-result-object v0

    invoke-virtual {p0}, Lb/b/a/c/k;->i()Lb/b/a/d/e;

    move-result-object p0

    invoke-interface {p0}, Lb/b/a/d/e;->a_()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-interface {p0, v2}, Lb/b/a/d/e;->a(I)Lb/b/a/d/d;

    move-result-object v3

    :try_start_0
    new-instance v4, Lb/b/f/c/n;

    invoke-interface {v3}, Lb/b/a/d/d;->c()Lb/b/f/c/aa;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lb/b/f/c/n;-><init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V

    invoke-interface {v3}, Lb/b/a/d/d;->f()I

    move-result v5

    invoke-static {v5}, La/a/a;->i(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Lb/b/a/d/d;->a()Lb/b/f/c/ag;

    move-result-object v6

    new-instance v7, Lb/b/c/c/x;

    invoke-direct {v7, v4, v5}, Lb/b/c/c/x;-><init>(Lb/b/f/c/n;I)V

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lb/b/f/c/n;->a()Lb/b/f/d/c;

    move-result-object v5

    invoke-static {v6, v5}, Lb/b/c/a/b;->a(Lb/b/f/c/ag;Lb/b/f/d/c;)Lb/b/f/c/ag;

    move-result-object v6

    :cond_0
    invoke-virtual {p1, v7, v6}, Lb/b/c/c/m;->a(Lb/b/c/c/x;Lb/b/f/c/a;)V

    goto :goto_1

    :cond_1
    new-instance v6, Lb/b/c/c/x;

    invoke-direct {v6, v4, v5}, Lb/b/c/c/x;-><init>(Lb/b/f/c/n;I)V

    invoke-virtual {p1, v6}, Lb/b/c/c/m;->a(Lb/b/c/c/x;)V

    :goto_1
    invoke-interface {v3}, Lb/b/a/d/d;->g()Lb/b/a/d/b;

    move-result-object v5

    invoke-static {v5}, Lb/b/c/a/a;->a(Lb/b/a/d/b;)Lb/b/f/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/f/a/c;->f()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v4, v5, p2}, Lb/b/c/c/m;->a(Lb/b/f/c/n;Lb/b/f/a/c;Lb/b/c/c/u;)V

    :cond_2
    invoke-virtual {p2}, Lb/b/c/c/u;->m()Lb/b/c/c/ac;

    move-result-object v5

    invoke-virtual {v5, v4}, Lb/b/c/c/ac;->a(Lb/b/f/c/n;)Lb/b/c/c/ab;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "...while processing "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lb/b/a/d/d;->d()Lb/b/f/c/ad;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lb/b/a/d/d;->e()Lb/b/f/c/ad;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lb/a/a/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lb/a/a/c;

    move-result-object p0

    throw p0

    :cond_3
    return-void
.end method

.method private static a(Lb/b/b/b/a;Lb/b/a/c/k;Lcom/gmail/heagoo/httpserver/g;Lcom/gmail/heagoo/b/a/a;Lb/b/c/c/m;Lb/b/c/c/u;)V
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {p1 .. p1}, Lb/b/a/c/k;->e()Lb/b/f/c/ae;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lb/b/a/c/k;->j()Lb/b/a/d/h;

    move-result-object v14

    invoke-interface {v14}, Lb/b/a/d/h;->a_()I

    move-result v15

    const/16 v16, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v15, :cond_f

    invoke-interface {v14, v8}, Lb/b/a/d/h;->a(I)Lb/b/a/d/g;

    move-result-object v7

    :try_start_0
    new-instance v6, Lb/b/f/c/z;

    invoke-interface {v7}, Lb/b/a/d/g;->c()Lb/b/f/c/aa;

    move-result-object v1

    invoke-direct {v6, v13, v1}, Lb/b/f/c/z;-><init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V

    invoke-interface {v7}, Lb/b/a/d/g;->f()I

    move-result v17

    invoke-static/range {v17 .. v17}, La/a/a;->i(I)Z

    move-result v5

    invoke-static/range {v17 .. v17}, La/a/a;->h(I)Z

    move-result v18

    invoke-static/range {v17 .. v17}, La/a/a;->l(I)Z

    move-result v19

    invoke-static/range {v17 .. v17}, La/a/a;->k(I)Z

    move-result v1

    invoke-virtual {v6}, Lb/b/f/c/f;->m()Lb/b/f/c/aa;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/c/aa;->d()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v6}, Lb/b/f/c/f;->m()Lb/b/f/c/aa;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/c/aa;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v20, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v20, 0x1

    :goto_2
    if-nez v19, :cond_8

    if-eqz v1, :cond_2

    goto/16 :goto_7

    :cond_2
    new-instance v1, Lb/b/a/b/n;

    iget v4, v9, Lcom/gmail/heagoo/httpserver/g;->a:I

    if-eq v4, v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    iget-boolean v4, v9, Lcom/gmail/heagoo/httpserver/g;->b:Z

    move/from16 v21, v15

    move-object/from16 v15, p1

    invoke-direct {v1, v7, v15, v3, v4}, Lb/b/a/b/n;-><init>(Lb/b/a/d/g;Lb/b/a/d/c;ZZ)V

    sget-object v3, Lb/b/f/b/f;->a:Lb/b/f/b/f;

    invoke-static {v1, v3, v14, v10}, Lb/b/a/b/z;->a(Lb/b/a/b/n;Lb/b/f/b/ad;Lb/b/a/d/h;Lcom/gmail/heagoo/b/a/a;)Lcom/gmail/heagoo/pngeditor/j;

    move-result-object v4

    move/from16 v22, v8

    invoke-virtual {v6, v5}, Lb/b/f/c/z;->b(Z)I

    move-result v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object v24

    move-object/from16 v25, v6

    invoke-virtual/range {v24 .. v24}, Lb/b/f/d/c;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lb/b/a/d/g;->d()Lb/b/f/c/ad;

    move-result-object v6

    invoke-virtual {v6}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v6, v9, Lcom/gmail/heagoo/httpserver/g;->d:Z

    if-eqz v6, :cond_5

    iget-object v6, v0, Lb/b/b/b/a;->b:Lb/b/c/a/d;

    invoke-virtual {v6, v2}, Lb/b/c/a/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, v9, Lcom/gmail/heagoo/httpserver/g;->b:Z

    invoke-static {v4, v8, v5, v2, v3}, Lb/b/g/y;->a(Lcom/gmail/heagoo/pngeditor/j;IZZLb/b/f/b/ad;)Lcom/gmail/heagoo/pngeditor/j;

    move-result-object v2

    iget-boolean v3, v9, Lcom/gmail/heagoo/httpserver/g;->g:Z

    if-eqz v3, :cond_4

    iget-object v3, v0, Lb/b/b/b/a;->a:Lcom/gmail/heagoo/httpserver/h;

    invoke-virtual {v3, v4, v2}, Lcom/gmail/heagoo/httpserver/h;->a(Lcom/gmail/heagoo/pngeditor/j;Lcom/gmail/heagoo/pngeditor/j;)V

    :cond_4
    move-object v6, v4

    move-object v4, v2

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    iget-boolean v2, v9, Lcom/gmail/heagoo/httpserver/g;->b:Z

    if-eqz v2, :cond_6

    invoke-static {v4}, Lcom/gmail/heagoo/pngeditor/i;->a(Lcom/gmail/heagoo/pngeditor/j;)Lb/b/f/b/o;

    move-result-object v2

    move-object v3, v2

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    iget v2, v9, Lcom/gmail/heagoo/httpserver/g;->a:I

    invoke-static {v4, v2, v3, v8, v10}, Lb/b/c/b/ac;->a(Lcom/gmail/heagoo/pngeditor/j;ILb/b/f/b/o;ILcom/gmail/heagoo/b/a/a;)Lb/b/c/b/i;

    move-result-object v23

    iget-boolean v2, v9, Lcom/gmail/heagoo/httpserver/g;->g:Z

    if-eqz v2, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v1}, Lb/b/a/b/n;->l()Lb/b/a/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/a/b/j;->b()I

    move-result v24
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v26, v3

    move-object/from16 v3, p3

    move/from16 v27, v5

    move-object v5, v6

    move-object/from16 v0, v25

    move-object/from16 v6, v26

    move-object/from16 v25, v7

    move v7, v8

    move/from16 v8, v24

    :try_start_1
    invoke-static/range {v1 .. v8}, Lb/b/c/a/b;->a(Lb/b/b/b/a;Lcom/gmail/heagoo/httpserver/g;Lcom/gmail/heagoo/b/a/a;Lcom/gmail/heagoo/pngeditor/j;Lcom/gmail/heagoo/pngeditor/j;Lb/b/f/b/o;II)V

    goto :goto_6

    :cond_7
    move/from16 v27, v5

    move-object/from16 v0, v25

    move-object/from16 v25, v7

    :goto_6
    move-object/from16 v1, v23

    goto :goto_8

    :cond_8
    :goto_7
    move/from16 v27, v5

    move-object v0, v6

    move-object/from16 v25, v7

    move/from16 v22, v8

    move/from16 v21, v15

    move-object/from16 v15, p1

    const/4 v1, 0x0

    :goto_8
    invoke-static/range {v17 .. v17}, La/a/a;->j(I)Z

    move-result v2

    if-eqz v2, :cond_9

    const/high16 v2, 0x20000

    or-int v17, v17, v2

    if-nez v19, :cond_9

    and-int/lit8 v17, v17, -0x21

    :cond_9
    if-eqz v20, :cond_a

    const/high16 v2, 0x10000

    or-int v17, v17, v2

    :cond_a
    move/from16 v2, v17

    invoke-static/range {v25 .. v25}, Lb/b/c/a/a;->a(Lb/b/a/d/g;)Lb/b/f/d/e;

    move-result-object v3

    new-instance v4, Lb/b/c/c/z;

    invoke-direct {v4, v0, v2, v1, v3}, Lb/b/c/c/z;-><init>(Lb/b/f/c/z;ILb/b/c/b/i;Lb/b/f/d/e;)V

    invoke-virtual {v0}, Lb/b/f/c/f;->m()Lb/b/f/c/aa;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/c/aa;->d()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lb/b/f/c/f;->m()Lb/b/f/c/aa;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/c/aa;->e()Z

    move-result v1

    if-nez v1, :cond_c

    if-nez v27, :cond_c

    if-eqz v18, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {v11, v4}, Lb/b/c/c/m;->b(Lb/b/c/c/z;)V

    goto :goto_a

    :cond_c
    :goto_9
    invoke-virtual {v11, v4}, Lb/b/c/c/m;->a(Lb/b/c/c/z;)V

    :goto_a
    invoke-static/range {v25 .. v25}, Lb/b/c/a/a;->b(Lb/b/a/d/g;)Lb/b/f/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/a/c;->f()I

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v11, v0, v1, v12}, Lb/b/c/c/m;->a(Lb/b/f/c/z;Lb/b/f/a/c;Lb/b/c/c/u;)V

    :cond_d
    invoke-static/range {v25 .. v25}, Lb/b/c/a/a;->c(Lb/b/a/d/g;)Lb/b/f/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/a/d;->a_()I

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v11, v0, v1, v12}, Lb/b/c/c/m;->a(Lb/b/f/c/z;Lb/b/f/a/d;Lb/b/c/c/u;)V

    :cond_e
    invoke-virtual/range {p5 .. p5}, Lb/b/c/c/u;->n()Lb/b/c/c/aq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/b/c/c/aq;->a(Lb/b/f/c/f;)Lb/b/c/c/ap;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v8, v22, 0x1

    move/from16 v15, v21

    move-object/from16 v0, p0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v25, v7

    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while processing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v25 .. v25}, Lb/b/a/d/g;->d()Lb/b/f/c/ad;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v25 .. v25}, Lb/b/a/d/g;->e()Lb/b/f/c/ad;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lb/a/a/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lb/a/a/c;

    move-result-object v0

    throw v0

    :cond_f
    return-void
.end method

.method private static a(Lb/b/b/b/a;Lcom/gmail/heagoo/httpserver/g;Lcom/gmail/heagoo/b/a/a;Lcom/gmail/heagoo/pngeditor/j;Lcom/gmail/heagoo/pngeditor/j;Lb/b/f/b/o;II)V
    .registers 9

    iget v0, p1, Lcom/gmail/heagoo/httpserver/g;->a:I

    invoke-static {p3, v0, p5, p6, p2}, Lb/b/c/b/ac;->a(Lcom/gmail/heagoo/pngeditor/j;ILb/b/f/b/o;ILcom/gmail/heagoo/b/a/a;)Lb/b/c/b/i;

    move-result-object p3

    iget p1, p1, Lcom/gmail/heagoo/httpserver/g;->a:I

    invoke-static {p4, p1, p5, p6, p2}, Lb/b/c/b/ac;->a(Lcom/gmail/heagoo/pngeditor/j;ILb/b/f/b/o;ILcom/gmail/heagoo/b/a/a;)Lb/b/c/b/i;

    move-result-object p1

    new-instance p2, Lb/b/c/a/c;

    invoke-direct {p2}, Lb/b/c/a/c;-><init>()V

    invoke-virtual {p3, p2}, Lb/b/c/b/i;->a(Lb/b/c/b/j;)V

    invoke-virtual {p1, p2}, Lb/b/c/b/i;->a(Lb/b/c/b/j;)V

    iget-object p2, p0, Lb/b/b/b/a;->a:Lcom/gmail/heagoo/httpserver/h;

    invoke-virtual {p2, p1, p3}, Lcom/gmail/heagoo/httpserver/h;->a(Lb/b/c/b/i;Lb/b/c/b/i;)V

    iget-object p0, p0, Lb/b/b/b/a;->a:Lcom/gmail/heagoo/httpserver/h;

    invoke-virtual {p0, p7}, Lcom/gmail/heagoo/httpserver/h;->a(I)V

    return-void
.end method

.method private static b(II)I
    .registers 2

    rsub-int/lit8 p1, p1, 0x2

    shl-int/lit8 p1, p1, 0x3

    shr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private e()V
    .registers 4

    const v0, -0x7f7f80

    iput v0, p0, Lb/b/c/a/b;->d:I

    iget v0, p0, Lb/b/c/a/b;->a:I

    iget v1, p0, Lb/b/c/a/b;->d:I

    invoke-static {v0, v1}, Lb/b/c/a/b;->a(II)I

    move-result v0

    iget v1, p0, Lb/b/c/a/b;->b:I

    iget v2, p0, Lb/b/c/a/b;->d:I

    invoke-static {v1, v2}, Lb/b/c/a/b;->a(II)I

    move-result v1

    shl-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lb/b/c/a/b;->a:I

    :goto_0
    iput v0, p0, Lb/b/c/a/b;->c:I

    return-void

    :cond_0
    iget v0, p0, Lb/b/c/a/b;->b:I

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lb/b/c/a/b;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lb/b/c/a/b;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lb/b/c/a/b;->c:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lb/b/c/a/b;->d:I

    return v0
.end method
