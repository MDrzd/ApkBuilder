.class final Ljackpal/androidterm/a/aa;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljackpal/androidterm/a/ab;


# direct methods
.method public constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Ljackpal/androidterm/a/z;->a:I

    invoke-direct {p0, p1, p2, p3, v0}, Ljackpal/androidterm/a/aa;->c(IIII)V

    return-void
.end method

.method private b(Ljackpal/androidterm/a/m;IIII)Ljava/lang/String;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    iget v4, v0, Ljackpal/androidterm/a/aa;->a:I

    invoke-virtual {v3}, Ljackpal/androidterm/a/ab;->b()I

    move-result v5

    neg-int v5, v5

    move/from16 v6, p3

    if-ge v6, v5, :cond_0

    invoke-virtual {v3}, Ljackpal/androidterm/a/ab;->b()I

    move-result v5

    neg-int v5, v5

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    iget v6, v0, Ljackpal/androidterm/a/aa;->c:I

    move/from16 v7, p5

    if-lt v7, v6, :cond_1

    iget v6, v0, Ljackpal/androidterm/a/aa;->c:I

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    const/4 v7, 0x0

    move-object v8, v7

    move v7, v5

    :goto_2
    if-gt v7, v6, :cond_14

    const/4 v9, 0x0

    if-ne v7, v5, :cond_2

    move/from16 v10, p2

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    :goto_3
    if-ne v7, v6, :cond_3

    add-int/lit8 v12, p4, 0x1

    if-le v12, v4, :cond_4

    :cond_3
    move v12, v4

    :cond_4
    invoke-virtual {v3, v7, v10, v12}, Ljackpal/androidterm/a/ab;->b(III)[C

    move-result-object v13

    if-eqz v1, :cond_5

    invoke-virtual {v3, v7, v10, v12}, Ljackpal/androidterm/a/ab;->c(III)Ljackpal/androidterm/a/n;

    move-result-object v8

    :cond_5
    const/16 v10, 0xa

    if-nez v13, :cond_7

    invoke-virtual {v3, v7}, Ljackpal/androidterm/a/ab;->c(I)Z

    move-result v12

    if-nez v12, :cond_6

    if-ge v7, v6, :cond_6

    iget v12, v0, Ljackpal/androidterm/a/aa;->c:I

    add-int/lit8 v12, v12, -0x1

    if-ge v7, v12, :cond_6

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v9}, Ljackpal/androidterm/a/m;->a(I)V

    :cond_6
    move/from16 v17, v5

    goto/16 :goto_9

    :cond_7
    iget-object v14, v0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    invoke-virtual {v14}, Ljackpal/androidterm/a/ab;->a()I

    move-result v14

    array-length v15, v13

    const/4 v10, 0x0

    const/16 v16, -0x1

    :goto_4
    if-ge v10, v15, :cond_c

    move/from16 v17, v5

    aget-char v5, v13, v10

    if-eqz v5, :cond_d

    if-eqz v8, :cond_8

    :try_start_0
    invoke-virtual {v8, v9}, Ljackpal/androidterm/a/n;->a(I)I

    move-result v18
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move v11, v14

    move/from16 v19, v15

    goto :goto_6

    :cond_8
    move/from16 v18, v14

    :goto_5
    move/from16 v19, v15

    move/from16 v11, v18

    :goto_6
    const/16 v15, 0x20

    if-ne v5, v15, :cond_9

    if-eq v11, v14, :cond_a

    :cond_9
    move/from16 v16, v10

    :cond_a
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {v13, v10}, Ljackpal/androidterm/a/ab;->a([CI)I

    move-result v5

    add-int/2addr v9, v5

    :cond_b
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v17

    move/from16 v15, v19

    goto :goto_4

    :cond_c
    move/from16 v17, v5

    :cond_d
    invoke-virtual {v3, v7}, Ljackpal/androidterm/a/ab;->c(I)Z

    move-result v5

    if-eqz v5, :cond_e

    if-ltz v16, :cond_e

    if-ne v12, v4, :cond_e

    add-int/lit8 v16, v10, -0x1

    :cond_e
    move/from16 v5, v16

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    invoke-virtual {v2, v13, v10, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_12

    if-eqz v8, :cond_10

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_7
    if-gt v9, v5, :cond_12

    invoke-virtual {v8, v10}, Ljackpal/androidterm/a/n;->a(I)I

    move-result v11

    invoke-virtual {v1, v11}, Ljackpal/androidterm/a/m;->a(I)V

    invoke-static {v13, v9}, Ljackpal/androidterm/a/ab;->a([CI)I

    move-result v11

    add-int/2addr v10, v11

    aget-char v11, v13, v9

    invoke-static {v11}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v11

    if-eqz v11, :cond_f

    add-int/lit8 v9, v9, 0x1

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_10
    const/4 v9, 0x0

    :goto_8
    if-gt v9, v5, :cond_12

    invoke-virtual {v1, v14}, Ljackpal/androidterm/a/m;->a(I)V

    aget-char v10, v13, v9

    invoke-static {v10}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v10

    if-eqz v10, :cond_11

    add-int/lit8 v9, v9, 0x1

    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_12
    invoke-virtual {v3, v7}, Ljackpal/androidterm/a/ab;->c(I)Z

    move-result v5

    if-nez v5, :cond_13

    if-ge v7, v6, :cond_13

    iget v5, v0, Ljackpal/androidterm/a/aa;->c:I

    add-int/lit8 v5, v5, -0x1

    if-ge v7, v5, :cond_13

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_13

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljackpal/androidterm/a/m;->a(I)V

    :cond_13
    :goto_9
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v17

    goto/16 :goto_2

    :cond_14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private c(IIII)V
    .registers 13

    iput p1, p0, Ljackpal/androidterm/a/aa;->a:I

    iput p2, p0, Ljackpal/androidterm/a/aa;->b:I

    iput p3, p0, Ljackpal/androidterm/a/aa;->c:I

    new-instance v0, Ljackpal/androidterm/a/ab;

    invoke-direct {v0, p1, p2, p3, p4}, Ljackpal/androidterm/a/ab;-><init>(IIII)V

    iput-object v0, p0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    iget-object v1, p0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    iget v4, p0, Ljackpal/androidterm/a/aa;->a:I

    iget v5, p0, Ljackpal/androidterm/a/aa;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x20

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Ljackpal/androidterm/a/ab;->b(IIIIII)V

    return-void
.end method


# virtual methods
.method public final a(Ljackpal/androidterm/a/m;)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    invoke-virtual {v0}, Ljackpal/androidterm/a/ab;->b()I

    move-result v0

    neg-int v4, v0

    iget v5, p0, Ljackpal/androidterm/a/aa;->a:I

    iget v6, p0, Ljackpal/androidterm/a/aa;->c:I

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Ljackpal/androidterm/a/aa;->b(Ljackpal/androidterm/a/m;IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljackpal/androidterm/a/m;IIII)Ljava/lang/String;
    .registers 6

    invoke-direct/range {p0 .. p5}, Ljackpal/androidterm/a/aa;->b(Ljackpal/androidterm/a/m;IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    sget v1, Ljackpal/androidterm/a/z;->a:I

    invoke-virtual {v0, v1}, Ljackpal/androidterm/a/ab;->a(I)V

    return-void
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/a/ab;->b(I)V

    return-void
.end method

.method public final a(III)V
    .registers 5

    iget-object v0, p0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    invoke-virtual {v0, p1, p2, p3}, Ljackpal/androidterm/a/ab;->a(III)V

    return-void
.end method

.method public final a(IIII)V
    .registers 6

    iget-object v0, p0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljackpal/androidterm/a/ab;->a(IIII)Z

    return-void
.end method

.method public final a(IIIIII)V
    .registers 14

    iget-object v0, p0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljackpal/androidterm/a/ab;->a(IIIIII)V

    return-void
.end method

.method public final a(ILandroid/graphics/Canvas;FFLjackpal/androidterm/a/y;IIILjava/lang/String;I)V
    .registers 47

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v15, p6

    move/from16 v14, p7

    move/from16 v13, p8

    :try_start_0
    iget-object v2, v0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    invoke-virtual {v2, v1}, Ljackpal/androidterm/a/ab;->e(I)[C

    move-result-object v12

    iget-object v2, v0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    invoke-virtual {v2, v1}, Ljackpal/androidterm/a/ab;->f(I)Ljackpal/androidterm/a/n;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, v0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    invoke-virtual {v1}, Ljackpal/androidterm/a/ab;->a()I

    move-result v17

    const/4 v10, -0x1

    const/4 v9, 0x1

    if-nez v12, :cond_2

    const/16 v12, 0x20

    if-eq v14, v13, :cond_0

    sub-int v6, v13, v14

    new-array v7, v6, [C

    invoke-static {v7, v12}, Ljava/util/Arrays;->fill([CC)V

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v1, p5

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p7

    const/4 v14, 0x1

    move v9, v11

    const/4 v11, -0x1

    move v10, v13

    const/4 v13, -0x1

    move/from16 v11, v17

    move/from16 v12, p6

    move/from16 v13, v16

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v16, p10

    invoke-interface/range {v1 .. v16}, Ljackpal/androidterm/a/y;->a(Landroid/graphics/Canvas;FFII[CIIZIIIIII)V

    :cond_0
    const/4 v1, -0x1

    move/from16 v15, p6

    if-eq v15, v1, :cond_1

    const/4 v10, 0x1

    new-array v7, v10, [C

    const/16 v1, 0x20

    invoke-static {v7, v1}, Ljava/util/Arrays;->fill([CC)V

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x1

    move-object/from16 v1, p5

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v11, v17

    move/from16 v12, p6

    move/from16 v15, v16

    move/from16 v16, p10

    invoke-interface/range {v1 .. v16}, Ljackpal/androidterm/a/y;->a(Landroid/graphics/Canvas;FFII[CIIZIIIIII)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, -0x1

    const/4 v10, 0x1

    iget v9, v0, Ljackpal/androidterm/a/aa;->a:I

    array-length v8, v12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_0
    if-ge v1, v9, :cond_d

    if-ge v6, v8, :cond_d

    aget-char v23, v12, v6

    if-eqz v23, :cond_d

    aget-char v23, v12, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-static {v12, v6}, Ljackpal/androidterm/a/ab;->a([CI)I

    move-result v23

    move/from16 v7, v23

    const/16 v23, 0x2

    goto :goto_1

    :cond_3
    aget-char v23, v12, v6

    invoke-static/range {v23 .. v23}, Ljackpal/androidterm/a/ab;->d(I)I

    move-result v23

    move/from16 v7, v23

    const/16 v23, 0x1

    :goto_1
    if-lez v7, :cond_4

    move v1, v7

    move/from16 v2, v21

    goto :goto_2

    :cond_4
    move/from16 v35, v2

    move v2, v1

    move/from16 v1, v35

    :goto_2
    invoke-virtual {v11, v2}, Ljackpal/androidterm/a/n;->a(I)I

    move-result v0

    if-ge v2, v14, :cond_5

    const/4 v10, 0x2

    if-ne v1, v10, :cond_6

    add-int/lit8 v10, v14, -0x1

    if-ne v2, v10, :cond_6

    :cond_5
    if-gt v2, v13, :cond_6

    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    :goto_3
    if-ne v0, v3, :cond_8

    if-ne v10, v4, :cond_8

    if-lez v7, :cond_7

    if-eqz v22, :cond_7

    goto :goto_4

    :cond_7
    move/from16 v25, v1

    move v1, v2

    move/from16 v30, v6

    move/from16 v31, v7

    move/from16 v24, v8

    move/from16 v32, v9

    move-object/from16 v33, v12

    move v0, v15

    move/from16 v9, v22

    move-object/from16 v22, v11

    goto/16 :goto_6

    :cond_8
    :goto_4
    if-ltz v5, :cond_9

    sub-int v22, v6, v17

    move/from16 v25, v1

    move-object/from16 v1, p5

    move/from16 v27, v0

    move v0, v2

    move-object/from16 v2, p2

    move/from16 v28, v3

    move/from16 v3, p3

    move/from16 v29, v4

    move/from16 v4, p4

    move/from16 v30, v6

    move/from16 v6, v16

    move/from16 v31, v7

    move-object v7, v12

    move/from16 v24, v8

    move/from16 v8, v17

    move/from16 v32, v9

    move/from16 v9, v22

    move/from16 v26, v10

    move/from16 v10, v29

    move-object/from16 v22, v11

    move/from16 v11, v28

    move-object/from16 v33, v12

    move/from16 v12, p6

    move/from16 v13, v18

    move/from16 v14, v19

    move/from16 v34, v0

    move v0, v15

    move/from16 v15, v20

    move/from16 v16, p10

    invoke-interface/range {v1 .. v16}, Ljackpal/androidterm/a/y;->a(Landroid/graphics/Canvas;FFII[CIIZIIIIII)V

    goto :goto_5

    :cond_9
    move/from16 v27, v0

    move/from16 v25, v1

    move/from16 v34, v2

    move/from16 v30, v6

    move/from16 v31, v7

    move/from16 v24, v8

    move/from16 v32, v9

    move/from16 v26, v10

    move-object/from16 v22, v11

    move-object/from16 v33, v12

    move v0, v15

    :goto_5
    move/from16 v4, v26

    move/from16 v3, v27

    move/from16 v17, v30

    move/from16 v1, v34

    move v5, v1

    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_6
    if-ne v0, v1, :cond_b

    move/from16 v2, v31

    if-lez v2, :cond_a

    move/from16 v20, v2

    move/from16 v19, v23

    move/from16 v18, v30

    goto :goto_7

    :cond_a
    add-int v19, v19, v23

    goto :goto_7

    :cond_b
    move/from16 v2, v31

    :goto_7
    add-int v16, v16, v2

    add-int v21, v21, v2

    add-int v6, v30, v23

    const/4 v7, 0x1

    if-le v2, v7, :cond_c

    const/4 v9, 0x1

    :cond_c
    move/from16 v14, p7

    move/from16 v13, p8

    move v15, v0

    move-object/from16 v11, v22

    move/from16 v8, v24

    move/from16 v2, v25

    move-object/from16 v12, v33

    move-object/from16 v0, p0

    const/4 v10, 0x1

    move/from16 v22, v9

    move/from16 v9, v32

    goto/16 :goto_0

    :cond_d
    move/from16 v28, v3

    move/from16 v29, v4

    move/from16 v30, v6

    move/from16 v32, v9

    move-object/from16 v33, v12

    move v0, v15

    if-ltz v5, :cond_e

    sub-int v9, v30, v17

    move-object/from16 v1, p5

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, v16

    move-object/from16 v7, v33

    move/from16 v8, v17

    move/from16 v10, v29

    move/from16 v11, v28

    move/from16 v12, p6

    move/from16 v13, v18

    move/from16 v14, v19

    move/from16 v15, v20

    move/from16 v16, p10

    invoke-interface/range {v1 .. v16}, Ljackpal/androidterm/a/y;->a(Landroid/graphics/Canvas;FFII[CIIZIIIIII)V

    :cond_e
    if-ltz v0, :cond_f

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v1

    move/from16 v2, v32

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v10, v1, v11

    sub-int v9, v2, v11

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    const/4 v12, 0x1

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Ljackpal/androidterm/a/z;->a(III)I

    move-result v13

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move v8, v11

    invoke-interface/range {v3 .. v18}, Ljackpal/androidterm/a/y;->a(Landroid/graphics/Canvas;FFII[CIIZIIIIII)V

    :catch_0
    :cond_f
    return-void
.end method

.method public final a(II[I)Z
    .registers 6

    iget-object v0, p0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    invoke-virtual {v0, p1, p2, p3}, Ljackpal/androidterm/a/ab;->a(II[I)Z

    move-result p3

    if-eqz p3, :cond_1

    iput p1, p0, Ljackpal/androidterm/a/aa;->a:I

    iput p2, p0, Ljackpal/androidterm/a/aa;->c:I

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(IIII)Ljava/lang/String;
    .registers 11

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljackpal/androidterm/a/aa;->b(Ljackpal/androidterm/a/m;IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    return-void
.end method

.method public final b(III)V
    .registers 5

    iget v0, p0, Ljackpal/androidterm/a/aa;->b:I

    if-le p2, v0, :cond_0

    iput p2, p0, Ljackpal/androidterm/a/aa;->b:I

    :cond_0
    iget v0, p0, Ljackpal/androidterm/a/aa;->b:I

    invoke-direct {p0, p1, v0, p2, p3}, Ljackpal/androidterm/a/aa;->c(IIII)V

    return-void
.end method

.method public final b(IIIIII)V
    .registers 14

    iget-object v0, p0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljackpal/androidterm/a/ab;->b(IIIIII)V

    return-void
.end method

.method final b(I)[C
    .registers 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    invoke-virtual {v1, p1}, Ljackpal/androidterm/a/ab;->e(I)[C

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    invoke-virtual {v0}, Ljackpal/androidterm/a/ab;->c()I

    move-result v0

    return v0
.end method

.method final c(I)Z
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/a/ab;->c(I)Z

    move-result p1

    return p1
.end method

.method public final d()I
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    invoke-virtual {v0}, Ljackpal/androidterm/a/ab;->b()I

    move-result v0

    return v0
.end method

.method final d(I)Z
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/a/ab;->g(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final e()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Ljackpal/androidterm/a/aa;->d:Ljackpal/androidterm/a/ab;

    invoke-virtual {v0}, Ljackpal/androidterm/a/ab;->b()I

    move-result v0

    neg-int v4, v0

    iget v5, p0, Ljackpal/androidterm/a/aa;->a:I

    iget v6, p0, Ljackpal/androidterm/a/aa;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljackpal/androidterm/a/aa;->b(Ljackpal/androidterm/a/m;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
