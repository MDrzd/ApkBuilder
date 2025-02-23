.class public final Lb/b/a/c/p;
.super Lb/b/a/c/b;


# static fields
.field public static final a:Lb/b/a/c/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/b/a/c/p;

    invoke-direct {v0}, Lb/b/a/c/p;-><init>()V

    sput-object v0, Lb/b/a/c/p;->a:Lb/b/a/c/p;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/b/a/c/b;-><init>()V

    return-void
.end method

.method private static a(Lb/b/h/c;Lb/b/f/c/b;Lb/b/f/c/ae;IIILb/b/a/d/j;)Lb/b/a/b/d;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p6

    new-instance v4, Lb/b/a/b/d;

    invoke-direct {v4, v2}, Lb/b/a/b/d;-><init>(I)V

    move/from16 v8, p4

    move/from16 v7, p5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_5

    const/4 v9, 0x4

    if-ge v7, v9, :cond_0

    invoke-static {}, Lb/b/a/c/p;->b()Lb/b/a/d/a;

    :cond_0
    invoke-virtual {v0, v8}, Lb/b/h/c;->g(I)I

    move-result v9

    add-int/lit8 v10, v8, 0x2

    invoke-virtual {v0, v10}, Lb/b/h/c;->g(I)I

    move-result v11

    const/4 v12, 0x2

    if-eqz v3, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "bootstrap_method_ref: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v8, v12, v13}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "num_bootstrap_arguments: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v10, v12, v13}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v8, v8, 0x4

    add-int/lit8 v7, v7, -0x4

    shl-int/lit8 v10, v11, 0x1

    if-ge v7, v10, :cond_2

    invoke-static {}, Lb/b/a/c/p;->b()Lb/b/a/d/a;

    :cond_2
    new-instance v10, Lb/b/a/b/c;

    invoke-direct {v10, v11}, Lb/b/a/b/c;-><init>(I)V

    move v13, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v11, :cond_4

    invoke-virtual {v0, v8}, Lb/b/h/c;->g(I)I

    move-result v14

    if-eqz v3, :cond_3

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v5, "bootstrap_arguments["

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v8, v12, v5}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_3
    invoke-interface {v1, v14}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v5

    invoke-virtual {v10, v7, v5}, Lb/b/a/b/c;->a(ILb/b/f/c/a;)V

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v13, v13, -0x2

    goto :goto_1

    :cond_4
    invoke-virtual {v10}, Lb/b/a/b/c;->b_()V

    invoke-interface {v1, v9}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v5

    check-cast v5, Lb/b/f/c/y;

    move-object/from16 v9, p2

    invoke-virtual {v4, v6, v9, v5, v10}, Lb/b/a/b/d;->a(ILb/b/f/c/ae;Lb/b/f/c/y;Lb/b/a/b/c;)V

    add-int/lit8 v6, v6, 0x1

    move v7, v13

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v4}, Lb/b/a/b/d;->b_()V

    if-eqz v7, :cond_6

    invoke-static {v7}, Lb/b/a/c/p;->c(I)Lb/b/a/d/a;

    :cond_6
    return-object v4
.end method

.method private static a(Lb/b/h/c;Lb/b/f/c/b;Lb/b/a/d/j;IZ)Lb/b/a/b/s;
    .registers 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lb/b/h/c;->a()I

    move-result v3

    mul-int/lit8 v4, v2, 0xa

    if-eq v3, v4, :cond_0

    add-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lb/b/a/c/p;->c(I)Lb/b/a/d/a;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lb/b/h/c;->b()Lb/b/h/d;

    move-result-object v3

    new-instance v12, Lb/b/a/b/s;

    invoke-direct {v12, v2}, Lb/b/a/b/s;-><init>(I)V

    const/4 v4, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v2, :cond_3

    :try_start_0
    invoke-virtual {v3}, Lb/b/h/d;->readUnsignedShort()I

    move-result v14

    invoke-virtual {v3}, Lb/b/h/d;->readUnsignedShort()I

    move-result v15

    invoke-virtual {v3}, Lb/b/h/d;->readUnsignedShort()I

    move-result v4

    invoke-virtual {v3}, Lb/b/h/d;->readUnsignedShort()I

    move-result v5

    invoke-virtual {v3}, Lb/b/h/d;->readUnsignedShort()I

    move-result v16

    invoke-interface {v0, v4}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Lb/b/f/c/ad;

    invoke-interface {v0, v5}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Lb/b/f/c/ad;

    const/4 v4, 0x0

    if-eqz p4, :cond_1

    move-object v9, v4

    move-object/from16 v10, v18

    goto :goto_1

    :cond_1
    move-object v10, v4

    move-object/from16 v9, v18

    :goto_1
    move-object v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move-object/from16 v8, v17

    move/from16 v11, v16

    invoke-virtual/range {v4 .. v11}, Lb/b/a/b/s;->a(IIILb/b/f/c/ad;Lb/b/f/c/ad;Lb/b/f/c/ad;I)V

    if-eqz v1, :cond_2

    mul-int/lit8 v4, v13, 0xa

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v14, v15

    invoke-static {v14}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    move-object/from16 v7, p0

    invoke-interface {v1, v7, v4, v6, v5}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    move-object/from16 v7, p0

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    invoke-virtual {v12}, Lb/b/a/b/s;->b_()V

    return-object v12
.end method

.method private static a()Lb/b/a/d/a;
    .registers 2

    new-instance v0, Lb/b/a/d/i;

    const-string v1, "severely truncated attribute"

    invoke-direct {v0, v1}, Lb/b/a/d/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(I)Lb/b/a/d/a;
    .registers 1

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lb/b/a/c/p;->c(I)Lb/b/a/d/a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lb/b/a/a/e;

    invoke-direct {p0}, Lb/b/a/a/e;-><init>()V

    return-object p0
.end method

.method private static b()Lb/b/a/d/a;
    .registers 2

    new-instance v0, Lb/b/a/d/i;

    const-string v1, "truncated attribute"

    invoke-direct {v0, v1}, Lb/b/a/d/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(I)Lb/b/a/d/a;
    .registers 1

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lb/b/a/c/p;->c(I)Lb/b/a/d/a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lb/b/a/a/s;

    invoke-direct {p0}, Lb/b/a/a/s;-><init>()V

    return-object p0
.end method

.method private b(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;
    .registers 27

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    const/16 v3, 0xc

    if-ge v1, v3, :cond_0

    invoke-static {}, Lb/b/a/c/p;->a()Lb/b/a/d/a;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lb/b/a/c/k;->b()Lb/b/h/c;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lb/b/a/c/k;->g()Lb/b/f/c/b;

    move-result-object v4

    invoke-virtual {v3, v0}, Lb/b/h/c;->g(I)I

    move-result v6

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v3, v5}, Lb/b/h/c;->g(I)I

    move-result v7

    add-int/lit8 v8, v0, 0x4

    invoke-virtual {v3, v8}, Lb/b/h/c;->d(I)I

    move-result v9

    const/4 v10, 0x2

    if-eqz v2, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "max_stack: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v3, v0, v10, v11}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "max_locals: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v3, v5, v10, v11}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "code_length: "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x4

    invoke-interface {v2, v3, v8, v11, v5}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v5, v0, 0x8

    add-int/lit8 v1, v1, -0x8

    add-int/lit8 v8, v9, 0x4

    if-ge v1, v8, :cond_2

    invoke-static {}, Lb/b/a/c/p;->b()Lb/b/a/d/a;

    move-result-object v0

    return-object v0

    :cond_2
    add-int v8, v5, v9

    sub-int/2addr v1, v9

    new-instance v9, Lb/b/a/b/j;

    invoke-virtual {v3, v5, v8}, Lb/b/h/c;->a(II)Lb/b/h/c;

    move-result-object v5

    invoke-direct {v9, v5, v4}, Lb/b/a/b/j;-><init>(Lb/b/h/c;Lb/b/f/c/b;)V

    if-eqz v2, :cond_3

    new-instance v5, Lb/b/a/c/j;

    invoke-virtual {v9}, Lb/b/a/b/j;->a()Lb/b/h/c;

    move-result-object v11

    invoke-direct {v5, v11, v2}, Lb/b/a/c/j;-><init>(Lb/b/h/c;Lb/b/a/d/j;)V

    invoke-virtual {v9, v5}, Lb/b/a/b/j;->a(Lb/b/a/b/m;)V

    :cond_3
    invoke-virtual {v3, v8}, Lb/b/h/c;->g(I)I

    move-result v5

    if-nez v5, :cond_4

    sget-object v11, Lb/b/a/b/g;->a:Lb/b/a/b/g;

    goto :goto_0

    :cond_4
    new-instance v11, Lb/b/a/b/g;

    invoke-direct {v11, v5}, Lb/b/a/b/g;-><init>(I)V

    :goto_0
    if-eqz v2, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "exception_table_length: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v3, v8, v10, v12}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_5
    add-int/2addr v8, v10

    add-int/lit8 v1, v1, -0x2

    shl-int/lit8 v12, v5, 0x3

    add-int/2addr v12, v10

    if-ge v1, v12, :cond_6

    invoke-static {}, Lb/b/a/c/p;->b()Lb/b/a/d/a;

    move-result-object v0

    return-object v0

    :cond_6
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v5, :cond_b

    if-eqz v2, :cond_7

    const/4 v12, 0x1

    invoke-interface {v2, v12}, Lb/b/a/d/j;->a(I)V

    :cond_7
    invoke-virtual {v3, v8}, Lb/b/h/c;->g(I)I

    move-result v18

    add-int/lit8 v12, v8, 0x2

    invoke-virtual {v3, v12}, Lb/b/h/c;->g(I)I

    move-result v19

    add-int/lit8 v12, v8, 0x4

    invoke-virtual {v3, v12}, Lb/b/h/c;->g(I)I

    move-result v20

    add-int/lit8 v12, v8, 0x6

    invoke-virtual {v3, v12}, Lb/b/h/c;->g(I)I

    move-result v12

    invoke-interface {v4, v12}, Lb/b/f/c/b;->b(I)Lb/b/f/c/a;

    move-result-object v12

    move-object/from16 v21, v12

    check-cast v21, Lb/b/f/c/ae;

    move-object v12, v11

    move v13, v10

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v16, v20

    move-object/from16 v17, v21

    invoke-virtual/range {v12 .. v17}, Lb/b/a/b/g;->a(IIIILb/b/f/c/ae;)V

    if-eqz v2, :cond_9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v18}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " -> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v21, :cond_8

    const-string v13, "<any>"

    goto :goto_2

    :cond_8
    invoke-virtual/range {v21 .. v21}, Lb/b/f/c/ae;->h()Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x8

    invoke-interface {v2, v3, v8, v13, v12}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_9
    add-int/lit8 v8, v8, 0x8

    add-int/lit8 v1, v1, -0x8

    if-eqz v2, :cond_a

    const/4 v12, -0x1

    invoke-interface {v2, v12}, Lb/b/a/d/j;->a(I)V

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {v11}, Lb/b/a/b/g;->b_()V

    new-instance v3, Lb/b/a/c/c;

    const/4 v4, 0x3

    move-object/from16 v12, p0

    move-object/from16 v5, p1

    invoke-direct {v3, v5, v4, v8, v12}, Lb/b/a/c/c;-><init>(Lb/b/a/c/k;IILb/b/a/c/b;)V

    invoke-virtual {v3, v2}, Lb/b/a/c/c;->a(Lb/b/a/d/j;)V

    invoke-virtual {v3}, Lb/b/a/c/c;->b()Lb/b/a/d/k;

    move-result-object v10

    invoke-virtual {v10}, Lb/b/a/d/k;->b_()V

    invoke-virtual {v3}, Lb/b/a/c/c;->a()I

    move-result v2

    sub-int/2addr v2, v8

    if-eq v2, v1, :cond_c

    sub-int/2addr v8, v0

    add-int/2addr v2, v8

    invoke-static {v2}, Lb/b/a/c/p;->c(I)Lb/b/a/d/a;

    move-result-object v0

    return-object v0

    :cond_c
    new-instance v0, Lb/b/a/a/c;

    move-object v5, v0

    move-object v8, v9

    move-object v9, v11

    invoke-direct/range {v5 .. v10}, Lb/b/a/a/c;-><init>(IILb/b/a/b/j;Lb/b/a/b/g;Lb/b/a/d/b;)V

    return-object v0
.end method

.method private static c(I)Lb/b/a/d/a;
    .registers 4

    new-instance v0, Lb/b/a/d/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad attribute length; expected length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/b/a/d/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;
    .registers 25

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    invoke-static {}, Lb/b/a/c/p;->a()Lb/b/a/d/a;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lb/b/a/c/k;->b()Lb/b/h/c;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lb/b/a/c/k;->g()Lb/b/f/c/b;

    move-result-object v5

    invoke-virtual {v4, v0}, Lb/b/h/c;->g(I)I

    move-result v6

    if-eqz v2, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "number_of_classes: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4, v0, v3, v7}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_1
    add-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x2

    shl-int/lit8 v7, v6, 0x3

    if-eq v1, v7, :cond_2

    add-int/2addr v7, v3

    invoke-static {v7}, Lb/b/a/c/p;->c(I)Lb/b/a/d/a;

    :cond_2
    new-instance v1, Lb/b/a/a/x;

    invoke-direct {v1, v6}, Lb/b/a/a/x;-><init>(I)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_4

    invoke-virtual {v4, v0}, Lb/b/h/c;->g(I)I

    move-result v8

    add-int/lit8 v14, v0, 0x2

    invoke-virtual {v4, v14}, Lb/b/h/c;->g(I)I

    move-result v9

    add-int/lit8 v15, v0, 0x4

    invoke-virtual {v4, v15}, Lb/b/h/c;->g(I)I

    move-result v10

    add-int/lit8 v13, v0, 0x6

    invoke-virtual {v4, v13}, Lb/b/h/c;->g(I)I

    move-result v16

    invoke-interface {v5, v8}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, Lb/b/f/c/ae;

    invoke-interface {v5, v9}, Lb/b/f/c/b;->b(I)Lb/b/f/c/a;

    move-result-object v8

    move-object/from16 v18, v8

    check-cast v18, Lb/b/f/c/ae;

    invoke-interface {v5, v10}, Lb/b/f/c/b;->b(I)Lb/b/f/c/a;

    move-result-object v8

    move-object/from16 v19, v8

    check-cast v19, Lb/b/f/c/ad;

    move-object v8, v1

    move v9, v7

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move/from16 v20, v13

    move/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Lb/b/a/a/x;->a(ILb/b/f/c/ae;Lb/b/f/c/ae;Lb/b/f/c/ad;I)V

    if-eqz v2, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "inner_class: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Lb/b/a/c/k;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v0, v3, v8}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  outer_class: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Lb/b/a/c/k;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v14, v3, v8}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  name: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Lb/b/a/c/k;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v15, v3, v8}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  access_flags: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, La/a/a;->e(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move/from16 v9, v20

    invoke-interface {v2, v4, v9, v3, v8}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Lb/b/a/a/x;->b_()V

    new-instance v0, Lb/b/a/a/h;

    invoke-direct {v0, v1}, Lb/b/a/a/h;-><init>(Lb/b/a/a/x;)V

    return-object v0
.end method

.method private static d(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;
    .registers 9

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    invoke-static {}, Lb/b/a/c/p;->a()Lb/b/a/d/a;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lb/b/a/c/k;->b()Lb/b/h/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lb/b/h/c;->g(I)I

    move-result v1

    if-eqz p3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "line_number_table_length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, p0, p1, v0, v2}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_1
    add-int/2addr p1, v0

    add-int/lit8 p2, p2, -0x2

    shl-int/lit8 v2, v1, 0x2

    if-eq p2, v2, :cond_2

    add-int/2addr v2, v0

    invoke-static {v2}, Lb/b/a/c/p;->c(I)Lb/b/a/d/a;

    :cond_2
    new-instance p2, Lb/b/a/b/q;

    invoke-direct {p2, v1}, Lb/b/a/b/q;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    invoke-virtual {p0, p1}, Lb/b/h/c;->g(I)I

    move-result v2

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v3}, Lb/b/h/c;->g(I)I

    move-result v3

    invoke-virtual {p2, v0, v2, v3}, Lb/b/a/b/q;->a(III)V

    if-eqz p3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p3, p0, p1, v3, v2}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_3
    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lb/b/a/b/q;->b_()V

    new-instance p0, Lb/b/a/a/i;

    invoke-direct {p0, p2}, Lb/b/a/a/i;-><init>(Lb/b/a/b/q;)V

    return-object p0
.end method

.method private static e(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;
    .registers 5

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    invoke-static {}, Lb/b/a/c/p;->a()Lb/b/a/d/a;

    :cond_0
    new-instance v0, Lb/b/a/c/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lb/b/a/c/a;-><init>(Lb/b/a/c/k;IILb/b/a/d/j;)V

    sget-object p0, Lb/b/f/a/b;->b:Lb/b/f/a/b;

    invoke-virtual {v0, p0}, Lb/b/a/c/a;->b(Lb/b/f/a/b;)Lb/b/f/a/c;

    move-result-object p0

    new-instance p1, Lb/b/a/a/l;

    invoke-direct {p1, p0, p2}, Lb/b/a/a/l;-><init>(Lb/b/f/a/c;I)V

    return-object p1
.end method

.method private static f(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;
    .registers 5

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    invoke-static {}, Lb/b/a/c/p;->a()Lb/b/a/d/a;

    :cond_0
    new-instance v0, Lb/b/a/c/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lb/b/a/c/a;-><init>(Lb/b/a/c/k;IILb/b/a/d/j;)V

    sget-object p0, Lb/b/f/a/b;->a:Lb/b/f/a/b;

    invoke-virtual {v0, p0}, Lb/b/a/c/a;->b(Lb/b/f/a/b;)Lb/b/f/a/c;

    move-result-object p0

    new-instance p1, Lb/b/a/a/n;

    invoke-direct {p1, p0, p2}, Lb/b/a/a/n;-><init>(Lb/b/f/a/c;I)V

    return-object p1
.end method

.method private static g(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;
    .registers 8

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-static {v0}, Lb/b/a/c/p;->c(I)Lb/b/a/d/a;

    :cond_0
    invoke-virtual {p0}, Lb/b/a/c/k;->b()Lb/b/h/c;

    move-result-object p2

    invoke-virtual {p0}, Lb/b/a/c/k;->g()Lb/b/f/c/b;

    move-result-object p0

    invoke-virtual {p2, p1}, Lb/b/h/c;->g(I)I

    move-result v1

    invoke-interface {p0, v1}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object p0

    check-cast p0, Lb/b/f/c/ad;

    new-instance v1, Lb/b/a/a/p;

    invoke-direct {v1, p0}, Lb/b/a/a/p;-><init>(Lb/b/f/c/ad;)V

    if-eqz p3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "signature: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p2, p1, v0, p0}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_1
    return-object v1
.end method


# virtual methods
.method protected final a(Lb/b/a/c/k;ILjava/lang/String;IILb/b/a/d/j;)Lb/b/a/d/a;
    .registers 14

    const/4 v0, 0x2

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "LineNumberTable"

    if-ne p3, v1, :cond_0

    invoke-static {p1, p4, p5, p6}, Lb/b/a/c/p;->d(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "LocalVariableTable"

    if-ne p3, v1, :cond_3

    if-ge p5, v0, :cond_1

    invoke-static {}, Lb/b/a/c/p;->a()Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lb/b/a/c/k;->b()Lb/b/h/c;

    move-result-object p2

    invoke-virtual {p2, p4}, Lb/b/h/c;->g(I)I

    move-result p3

    if-eqz p6, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "local_variable_table_length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p6, p2, p4, v0, v1}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_2
    add-int/lit8 v0, p4, 0x2

    add-int/2addr p4, p5

    invoke-virtual {p2, v0, p4}, Lb/b/h/c;->a(II)Lb/b/h/c;

    move-result-object p2

    invoke-virtual {p1}, Lb/b/a/c/k;->g()Lb/b/f/c/b;

    move-result-object p1

    const/4 p4, 0x0

    invoke-static {p2, p1, p6, p3, p4}, Lb/b/a/c/p;->a(Lb/b/h/c;Lb/b/f/c/b;Lb/b/a/d/j;IZ)Lb/b/a/b/s;

    move-result-object p1

    new-instance p2, Lb/b/a/a/j;

    invoke-direct {p2, p1}, Lb/b/a/a/j;-><init>(Lb/b/a/b/s;)V

    return-object p2

    :cond_3
    const-string v1, "LocalVariableTypeTable"

    if-ne p3, v1, :cond_2c

    if-ge p5, v0, :cond_4

    invoke-static {}, Lb/b/a/c/p;->a()Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p1}, Lb/b/a/c/k;->b()Lb/b/h/c;

    move-result-object p2

    invoke-virtual {p2, p4}, Lb/b/h/c;->g(I)I

    move-result p3

    if-eqz p6, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "local_variable_type_table_length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p6, p2, p4, v0, v1}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_5
    add-int/lit8 v0, p4, 0x2

    add-int/2addr p4, p5

    invoke-virtual {p2, v0, p4}, Lb/b/h/c;->a(II)Lb/b/h/c;

    move-result-object p2

    invoke-virtual {p1}, Lb/b/a/c/k;->g()Lb/b/f/c/b;

    move-result-object p1

    const/4 p4, 0x1

    invoke-static {p2, p1, p6, p3, p4}, Lb/b/a/c/p;->a(Lb/b/h/c;Lb/b/f/c/b;Lb/b/a/d/j;IZ)Lb/b/a/b/s;

    move-result-object p1

    new-instance p2, Lb/b/a/a/k;

    invoke-direct {p2, p1}, Lb/b/a/a/k;-><init>(Lb/b/a/b/s;)V

    return-object p2

    :pswitch_1
    const-string v1, "AnnotationDefault"

    if-ne p3, v1, :cond_7

    if-ge p5, v0, :cond_6

    invoke-static {}, Lb/b/a/c/p;->a()Lb/b/a/d/a;

    :cond_6
    new-instance p2, Lb/b/a/c/a;

    invoke-direct {p2, p1, p4, p5, p6}, Lb/b/a/c/a;-><init>(Lb/b/a/c/k;IILb/b/a/d/j;)V

    invoke-virtual {p2}, Lb/b/a/c/a;->a()Lb/b/f/c/a;

    move-result-object p1

    new-instance p2, Lb/b/a/a/a;

    invoke-direct {p2, p1, p5}, Lb/b/a/a/a;-><init>(Lb/b/f/c/a;I)V

    return-object p2

    :cond_7
    const-string v1, "Code"

    if-ne p3, v1, :cond_8

    invoke-direct {p0, p1, p4, p5, p6}, Lb/b/a/c/p;->b(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v1, "Deprecated"

    if-ne p3, v1, :cond_9

    invoke-static {p5}, Lb/b/a/c/p;->a(I)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_9
    const-string v1, "Exceptions"

    if-ne p3, v1, :cond_d

    if-ge p5, v0, :cond_a

    invoke-static {}, Lb/b/a/c/p;->a()Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-virtual {p1}, Lb/b/a/c/k;->b()Lb/b/h/c;

    move-result-object p2

    invoke-virtual {p2, p4}, Lb/b/h/c;->g(I)I

    move-result p3

    if-eqz p6, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "number_of_exceptions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p6, p2, p4, v0, v1}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_b
    add-int/2addr p4, v0

    add-int/lit8 p5, p5, -0x2

    shl-int/lit8 p2, p3, 0x1

    if-eq p5, p2, :cond_c

    add-int/2addr p2, v0

    invoke-static {p2}, Lb/b/a/c/p;->c(I)Lb/b/a/d/a;

    :cond_c
    invoke-virtual {p1, p4, p3}, Lb/b/a/c/k;->a(II)Lb/b/f/d/e;

    move-result-object p1

    new-instance p2, Lb/b/a/a/g;

    invoke-direct {p2, p1}, Lb/b/a/a/g;-><init>(Lb/b/f/d/e;)V

    return-object p2

    :cond_d
    const-string v1, "RuntimeInvisibleAnnotations"

    if-ne p3, v1, :cond_e

    invoke-static {p1, p4, p5, p6}, Lb/b/a/c/p;->e(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_e
    const-string v1, "RuntimeVisibleAnnotations"

    if-ne p3, v1, :cond_f

    invoke-static {p1, p4, p5, p6}, Lb/b/a/c/p;->f(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_f
    const-string v1, "RuntimeInvisibleParameterAnnotations"

    if-ne p3, v1, :cond_11

    if-ge p5, v0, :cond_10

    invoke-static {}, Lb/b/a/c/p;->a()Lb/b/a/d/a;

    :cond_10
    new-instance p2, Lb/b/a/c/a;

    invoke-direct {p2, p1, p4, p5, p6}, Lb/b/a/c/a;-><init>(Lb/b/a/c/k;IILb/b/a/d/j;)V

    sget-object p1, Lb/b/f/a/b;->b:Lb/b/f/a/b;

    invoke-virtual {p2, p1}, Lb/b/a/c/a;->a(Lb/b/f/a/b;)Lb/b/f/a/d;

    move-result-object p1

    new-instance p2, Lb/b/a/a/m;

    invoke-direct {p2, p1, p5}, Lb/b/a/a/m;-><init>(Lb/b/f/a/d;I)V

    return-object p2

    :cond_11
    const-string v1, "RuntimeVisibleParameterAnnotations"

    if-ne p3, v1, :cond_13

    if-ge p5, v0, :cond_12

    invoke-static {}, Lb/b/a/c/p;->a()Lb/b/a/d/a;

    :cond_12
    new-instance p2, Lb/b/a/c/a;

    invoke-direct {p2, p1, p4, p5, p6}, Lb/b/a/c/a;-><init>(Lb/b/a/c/k;IILb/b/a/d/j;)V

    sget-object p1, Lb/b/f/a/b;->a:Lb/b/f/a/b;

    invoke-virtual {p2, p1}, Lb/b/a/c/a;->a(Lb/b/f/a/b;)Lb/b/f/a/d;

    move-result-object p1

    new-instance p2, Lb/b/a/a/o;

    invoke-direct {p2, p1, p5}, Lb/b/a/a/o;-><init>(Lb/b/f/a/d;I)V

    return-object p2

    :cond_13
    const-string v0, "Signature"

    if-ne p3, v0, :cond_14

    invoke-static {p1, p4, p5, p6}, Lb/b/a/c/p;->g(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_14
    const-string v0, "Synthetic"

    if-ne p3, v0, :cond_2c

    invoke-static {p5}, Lb/b/a/c/p;->b(I)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :pswitch_2
    const-string v1, "ConstantValue"

    if-ne p3, v1, :cond_17

    if-eq p5, v0, :cond_15

    invoke-static {v0}, Lb/b/a/c/p;->c(I)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_15
    invoke-virtual {p1}, Lb/b/a/c/k;->b()Lb/b/h/c;

    move-result-object p2

    invoke-virtual {p1}, Lb/b/a/c/k;->g()Lb/b/f/c/b;

    move-result-object p1

    invoke-virtual {p2, p4}, Lb/b/h/c;->g(I)I

    move-result p3

    invoke-interface {p1, p3}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object p1

    check-cast p1, Lb/b/f/c/ag;

    new-instance p3, Lb/b/a/a/d;

    invoke-direct {p3, p1}, Lb/b/a/a/d;-><init>(Lb/b/f/c/ag;)V

    if-eqz p6, :cond_16

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v1, "value: "

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p6, p2, p4, v0, p1}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_16
    return-object p3

    :cond_17
    const-string v0, "Deprecated"

    if-ne p3, v0, :cond_18

    invoke-static {p5}, Lb/b/a/c/p;->a(I)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_18
    const-string v0, "RuntimeInvisibleAnnotations"

    if-ne p3, v0, :cond_19

    invoke-static {p1, p4, p5, p6}, Lb/b/a/c/p;->e(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_19
    const-string v0, "RuntimeVisibleAnnotations"

    if-ne p3, v0, :cond_1a

    invoke-static {p1, p4, p5, p6}, Lb/b/a/c/p;->f(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_1a
    const-string v0, "Signature"

    if-ne p3, v0, :cond_1b

    invoke-static {p1, p4, p5, p6}, Lb/b/a/c/p;->g(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_1b
    const-string v0, "Synthetic"

    if-ne p3, v0, :cond_2c

    invoke-static {p5}, Lb/b/a/c/p;->b(I)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :pswitch_3
    const-string v1, "BootstrapMethods"

    if-ne p3, v1, :cond_1e

    if-ge p5, v0, :cond_1c

    invoke-static {}, Lb/b/a/c/p;->a()Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_1c
    invoke-virtual {p1}, Lb/b/a/c/k;->b()Lb/b/h/c;

    move-result-object p2

    invoke-virtual {p2, p4}, Lb/b/h/c;->g(I)I

    move-result v3

    if-eqz p6, :cond_1d

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "num_boostrap_methods: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p6, p2, p4, v0, p3}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_1d
    add-int/lit8 v4, p4, 0x2

    add-int/lit8 v5, p5, -0x2

    invoke-virtual {p1}, Lb/b/a/c/k;->g()Lb/b/f/c/b;

    move-result-object v1

    invoke-virtual {p1}, Lb/b/a/c/k;->e()Lb/b/f/c/ae;

    move-result-object v2

    move-object v0, p2

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lb/b/a/c/p;->a(Lb/b/h/c;Lb/b/f/c/b;Lb/b/f/c/ae;IIILb/b/a/d/j;)Lb/b/a/b/d;

    move-result-object p1

    new-instance p2, Lb/b/a/a/b;

    invoke-direct {p2, p1}, Lb/b/a/a/b;-><init>(Lb/b/a/b/d;)V

    return-object p2

    :cond_1e
    const-string v1, "Deprecated"

    if-ne p3, v1, :cond_1f

    invoke-static {p5}, Lb/b/a/c/p;->a(I)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_1f
    const-string v1, "EnclosingMethod"

    if-ne p3, v1, :cond_22

    const/4 p2, 0x4

    if-eq p5, p2, :cond_20

    invoke-static {p2}, Lb/b/a/c/p;->c(I)Lb/b/a/d/a;

    :cond_20
    invoke-virtual {p1}, Lb/b/a/c/k;->b()Lb/b/h/c;

    move-result-object p2

    invoke-virtual {p1}, Lb/b/a/c/k;->g()Lb/b/f/c/b;

    move-result-object p1

    invoke-virtual {p2, p4}, Lb/b/h/c;->g(I)I

    move-result p3

    invoke-interface {p1, p3}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object p3

    check-cast p3, Lb/b/f/c/ae;

    add-int/lit8 p5, p4, 0x2

    invoke-virtual {p2, p5}, Lb/b/h/c;->g(I)I

    move-result v1

    invoke-interface {p1, v1}, Lb/b/f/c/b;->b(I)Lb/b/f/c/a;

    move-result-object p1

    check-cast p1, Lb/b/f/c/aa;

    new-instance v1, Lb/b/a/a/f;

    invoke-direct {v1, p3, p1}, Lb/b/a/a/f;-><init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V

    if-eqz p6, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p6, p2, p4, v0, p3}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "method: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lb/b/a/c/k;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p6, p2, p5, v0, p1}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_21
    return-object v1

    :cond_22
    const-string v1, "InnerClasses"

    if-ne p3, v1, :cond_23

    invoke-static {p1, p4, p5, p6}, Lb/b/a/c/p;->c(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_23
    const-string v1, "RuntimeInvisibleAnnotations"

    if-ne p3, v1, :cond_24

    invoke-static {p1, p4, p5, p6}, Lb/b/a/c/p;->e(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_24
    const-string v1, "RuntimeVisibleAnnotations"

    if-ne p3, v1, :cond_25

    invoke-static {p1, p4, p5, p6}, Lb/b/a/c/p;->f(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_25
    const-string v1, "Synthetic"

    if-ne p3, v1, :cond_26

    invoke-static {p5}, Lb/b/a/c/p;->b(I)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_26
    const-string v1, "Signature"

    if-ne p3, v1, :cond_27

    invoke-static {p1, p4, p5, p6}, Lb/b/a/c/p;->g(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :cond_27
    const-string v1, "SourceDebugExtension"

    if-ne p3, v1, :cond_29

    invoke-virtual {p1}, Lb/b/a/c/k;->b()Lb/b/h/c;

    move-result-object p1

    add-int p2, p4, p5

    invoke-virtual {p1, p4, p2}, Lb/b/h/c;->a(II)Lb/b/h/c;

    move-result-object p1

    new-instance p2, Lb/b/f/c/ad;

    invoke-direct {p2, p1}, Lb/b/f/c/ad;-><init>(Lb/b/h/c;)V

    new-instance p3, Lb/b/a/a/q;

    invoke-direct {p3, p2}, Lb/b/a/a/q;-><init>(Lb/b/f/c/ad;)V

    if-eqz p6, :cond_28

    invoke-virtual {p2}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sourceDebugExtension: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p6, p1, p4, p5, p2}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_28
    return-object p3

    :cond_29
    const-string v1, "SourceFile"

    if-ne p3, v1, :cond_2c

    if-eq p5, v0, :cond_2a

    invoke-static {v0}, Lb/b/a/c/p;->c(I)Lb/b/a/d/a;

    :cond_2a
    invoke-virtual {p1}, Lb/b/a/c/k;->b()Lb/b/h/c;

    move-result-object p2

    invoke-virtual {p1}, Lb/b/a/c/k;->g()Lb/b/f/c/b;

    move-result-object p1

    invoke-virtual {p2, p4}, Lb/b/h/c;->g(I)I

    move-result p3

    invoke-interface {p1, p3}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object p1

    check-cast p1, Lb/b/f/c/ad;

    new-instance p3, Lb/b/a/a/r;

    invoke-direct {p3, p1}, Lb/b/a/a/r;-><init>(Lb/b/f/c/ad;)V

    if-eqz p6, :cond_2b

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v1, "source: "

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p6, p2, p4, v0, p1}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_2b
    return-object p3

    :cond_2c
    :goto_0
    invoke-super/range {p0 .. p6}, Lb/b/a/c/b;->a(Lb/b/a/c/k;ILjava/lang/String;IILb/b/a/d/j;)Lb/b/a/d/a;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
