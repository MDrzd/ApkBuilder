.class abstract Lb/b/a/c/n;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/a/c/k;

.field private final b:Lb/b/f/c/ae;

.field private final c:I

.field private final d:Lb/b/a/c/b;

.field private e:I

.field private f:Lb/b/a/d/j;


# direct methods
.method public constructor <init>(Lb/b/a/c/k;Lb/b/f/c/ae;ILb/b/a/c/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-ltz p3, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Lb/b/a/c/n;->a:Lb/b/a/c/k;

    iput-object p2, p0, Lb/b/a/c/n;->b:Lb/b/f/c/ae;

    iput p3, p0, Lb/b/a/c/n;->c:I

    iput-object p4, p0, Lb/b/a/c/n;->d:Lb/b/a/c/b;

    const/4 p1, -0x1

    iput p1, p0, Lb/b/a/c/n;->e:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "attributeFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cf == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()V
    .registers 17

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lb/b/a/c/n;->c()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lb/b/a/c/n;->f()I

    move-result v2

    iget v3, v1, Lb/b/a/c/n;->c:I

    const/4 v4, 0x2

    add-int/2addr v3, v4

    iget-object v5, v1, Lb/b/a/c/n;->a:Lb/b/a/c/k;

    invoke-virtual {v5}, Lb/b/a/c/k;->b()Lb/b/h/c;

    move-result-object v5

    iget-object v6, v1, Lb/b/a/c/n;->a:Lb/b/a/c/k;

    invoke-virtual {v6}, Lb/b/a/c/k;->g()Lb/b/f/c/b;

    move-result-object v6

    iget-object v7, v1, Lb/b/a/c/n;->f:Lb/b/a/d/j;

    if-eqz v7, :cond_0

    iget-object v7, v1, Lb/b/a/c/n;->f:Lb/b/a/d/j;

    iget v8, v1, Lb/b/a/c/n;->c:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lb/b/a/c/n;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "s_count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v5, v8, v4, v9}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_0
    const/4 v7, 0x0

    move v8, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    :try_start_0
    invoke-virtual {v5, v8}, Lb/b/h/c;->g(I)I

    move-result v9

    add-int/lit8 v10, v8, 0x2

    invoke-virtual {v5, v10}, Lb/b/h/c;->g(I)I

    move-result v11

    add-int/lit8 v12, v8, 0x4

    invoke-virtual {v5, v12}, Lb/b/h/c;->g(I)I

    move-result v13

    invoke-interface {v6, v11}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v11

    check-cast v11, Lb/b/f/c/ad;

    invoke-interface {v6, v13}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v13

    check-cast v13, Lb/b/f/c/ad;

    iget-object v14, v1, Lb/b/a/c/n;->f:Lb/b/a/d/j;

    if-eqz v14, :cond_1

    iget-object v14, v1, Lb/b/a/c/n;->f:Lb/b/a/d/j;

    invoke-virtual {v11}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v5, v8, v15, v4}, Lb/b/a/d/j;->a(Lb/b/h/c;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lb/b/a/c/n;->f:Lb/b/a/d/j;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\n"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lb/b/a/c/n;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "s["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "]:\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v5, v8, v7, v14}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    iget-object v4, v1, Lb/b/a/c/n;->f:Lb/b/a/d/j;

    const/4 v14, 0x1

    invoke-interface {v4, v14}, Lb/b/a/d/j;->a(I)V

    iget-object v4, v1, Lb/b/a/c/n;->f:Lb/b/a/d/j;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "access_flags: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lb/b/a/c/n;->a(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    invoke-interface {v4, v5, v8, v15, v14}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    iget-object v4, v1, Lb/b/a/c/n;->f:Lb/b/a/d/j;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "name: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    invoke-interface {v4, v5, v10, v15, v14}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    iget-object v4, v1, Lb/b/a/c/n;->f:Lb/b/a/d/j;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v14, "descriptor: "

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x2

    invoke-interface {v4, v5, v12, v14, v10}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v14, 0x2

    :goto_1
    add-int/lit8 v8, v8, 0x6

    new-instance v4, Lb/b/a/c/c;

    iget-object v10, v1, Lb/b/a/c/n;->a:Lb/b/a/c/k;

    iget-object v12, v1, Lb/b/a/c/n;->d:Lb/b/a/c/b;

    invoke-direct {v4, v10, v0, v8, v12}, Lb/b/a/c/c;-><init>(Lb/b/a/c/k;IILb/b/a/c/b;)V

    iget-object v8, v1, Lb/b/a/c/n;->f:Lb/b/a/d/j;

    invoke-virtual {v4, v8}, Lb/b/a/c/c;->a(Lb/b/a/d/j;)V

    invoke-virtual {v4}, Lb/b/a/c/c;->a()I

    move-result v8

    invoke-virtual {v4}, Lb/b/a/c/c;->b()Lb/b/a/d/k;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/a/d/k;->b_()V

    new-instance v10, Lb/b/f/c/aa;

    invoke-direct {v10, v11, v13}, Lb/b/f/c/aa;-><init>(Lb/b/f/c/ad;Lb/b/f/c/ad;)V

    invoke-virtual {v1, v3, v9, v10, v4}, Lb/b/a/c/n;->a(IILb/b/f/c/aa;Lb/b/a/d/b;)Lb/b/a/d/f;

    move-result-object v4

    iget-object v9, v1, Lb/b/a/c/n;->f:Lb/b/a/d/j;

    if-eqz v9, :cond_2

    iget-object v9, v1, Lb/b/a/c/n;->f:Lb/b/a/d/j;

    const/4 v10, -0x1

    invoke-interface {v9, v10}, Lb/b/a/d/j;->a(I)V

    iget-object v9, v1, Lb/b/a/c/n;->f:Lb/b/a/d/j;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "end "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lb/b/a/c/n;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "s["

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "]\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v5, v8, v7, v10}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    iget-object v9, v1, Lb/b/a/c/n;->f:Lb/b/a/d/j;

    invoke-virtual {v11}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v5, v10, v4}, Lb/b/a/d/j;->a(Lb/b/h/c;Ljava/lang/String;Lb/b/a/d/f;)V
    :try_end_0
    .catch Lb/b/a/d/i; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lb/b/a/d/i;

    invoke-direct {v2, v0}, Lb/b/a/d/i;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "...while parsing "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lb/b/a/c/n;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "s["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lb/b/a/d/i;->a(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "...while parsing "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lb/b/a/c/n;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "s["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lb/b/a/d/i;->a(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput v8, v1, Lb/b/a/c/n;->e:I

    return-void
.end method


# virtual methods
.method protected abstract a(IILb/b/f/c/aa;Lb/b/a/d/b;)Lb/b/a/d/f;
.end method

.method protected abstract a(I)Ljava/lang/String;
.end method

.method public final a(Lb/b/a/d/j;)V
    .registers 2

    iput-object p1, p0, Lb/b/a/c/n;->f:Lb/b/a/d/j;

    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract c()I
.end method

.method public final d()I
    .registers 2

    invoke-virtual {p0}, Lb/b/a/c/n;->e()V

    iget v0, p0, Lb/b/a/c/n;->e:I

    return v0
.end method

.method protected final e()V
    .registers 2

    iget v0, p0, Lb/b/a/c/n;->e:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lb/b/a/c/n;->a()V

    :cond_0
    return-void
.end method

.method protected final f()I
    .registers 3

    iget-object v0, p0, Lb/b/a/c/n;->a:Lb/b/a/c/k;

    invoke-virtual {v0}, Lb/b/a/c/k;->b()Lb/b/h/c;

    move-result-object v0

    iget v1, p0, Lb/b/a/c/n;->c:I

    invoke-virtual {v0, v1}, Lb/b/h/c;->g(I)I

    move-result v0

    return v0
.end method

.method protected final g()Lb/b/f/c/ae;
    .registers 2

    iget-object v0, p0, Lb/b/a/c/n;->b:Lb/b/f/c/ae;

    return-object v0
.end method
