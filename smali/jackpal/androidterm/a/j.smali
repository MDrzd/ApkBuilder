.class final Ljackpal/androidterm/a/j;
.super Ljava/lang/Object;


# instance fields
.field private a:[C

.field private b:[S

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Ljackpal/androidterm/a/j;->b(I)V

    iget-object v0, p0, Ljackpal/androidterm/a/j;->a:[C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    const/16 v3, 0x20

    aput-char v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/a/j;->b:[S

    int-to-short p1, p1

    aput-short p1, v0, v1

    return-void
.end method

.method public constructor <init>([C)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-direct {p0, v0}, Ljackpal/androidterm/a/j;->b(I)V

    iget-object v0, p0, Ljackpal/androidterm/a/j;->a:[C

    iget v1, p0, Ljackpal/androidterm/a/j;->c:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljackpal/androidterm/a/j;->b:[S

    array-length p1, p1

    int-to-short p1, p1

    aput-short p1, v0, v2

    return-void
.end method

.method private b(I)V
    .registers 3

    iput p1, p0, Ljackpal/androidterm/a/j;->c:I

    new-array v0, p1, [S

    iput-object v0, p0, Ljackpal/androidterm/a/j;->b:[S

    int-to-float p1, p1

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float p1, p1, v0

    float-to-int p1, p1

    new-array p1, p1, [C

    iput-object p1, p0, Ljackpal/androidterm/a/j;->a:[C

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/a/j;->b:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    return v0
.end method

.method public final a(I)I
    .registers 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/a/j;->b:[S

    aget-short v0, v0, p1

    add-int/2addr p1, v0

    return p1
.end method

.method public final a(II)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Ljackpal/androidterm/a/j;->c:I

    if-ltz v1, :cond_1d

    if-ge v1, v2, :cond_1d

    iget-object v3, v0, Ljackpal/androidterm/a/j;->a:[C

    iget-object v4, v0, Ljackpal/androidterm/a/j;->b:[S

    const/4 v5, 0x0

    aget-short v6, v4, v5

    invoke-virtual/range {p0 .. p1}, Ljackpal/androidterm/a/j;->a(I)I

    move-result v7

    invoke-static/range {p2 .. p2}, Ljackpal/androidterm/a/ab;->d(I)I

    move-result v8

    invoke-static {v3, v7}, Ljackpal/androidterm/a/ab;->a([CI)I

    move-result v9

    const/4 v11, 0x2

    if-ne v8, v11, :cond_0

    add-int/lit8 v13, v2, -0x1

    if-ne v1, v13, :cond_0

    const/16 v8, 0x20

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    move v13, v8

    move/from16 v8, p2

    :goto_0
    if-ne v9, v11, :cond_1

    if-lez v1, :cond_1

    add-int/lit8 v14, v1, -0x1

    invoke-virtual {v0, v14}, Ljackpal/androidterm/a/j;->a(I)I

    move-result v14

    if-ne v14, v7, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    if-eqz v14, :cond_2

    add-int/lit8 v15, v1, 0x1

    if-ge v15, v2, :cond_2

    :goto_2
    invoke-virtual {v0, v15}, Ljackpal/androidterm/a/j;->a(I)I

    move-result v15

    sub-int/2addr v15, v7

    goto :goto_3

    :cond_2
    add-int v15, v1, v9

    if-ge v15, v2, :cond_3

    goto :goto_2

    :cond_3
    sub-int v15, v6, v7

    :goto_3
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v16

    if-nez v13, :cond_4

    add-int v16, v16, v15

    :cond_4
    sub-int v17, v16, v15

    if-lez v17, :cond_6

    add-int v10, v6, v17

    array-length v12, v3

    if-le v10, v12, :cond_5

    array-length v10, v3

    add-int/2addr v10, v2

    new-array v10, v10, [C

    invoke-static {v3, v5, v10, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v12, v7, v15

    add-int v11, v7, v16

    sub-int v18, v6, v7

    sub-int v5, v18, v15

    invoke-static {v3, v12, v10, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v10, v0, Ljackpal/androidterm/a/j;->a:[C

    move-object v3, v10

    goto :goto_4

    :cond_5
    add-int v5, v7, v15

    add-int v10, v7, v16

    sub-int v11, v6, v7

    sub-int/2addr v11, v15

    invoke-static {v3, v5, v3, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_4
    if-lez v13, :cond_7

    invoke-static {v8, v3, v7}, Ljava/lang/Character;->toChars(I[CI)I

    goto :goto_5

    :cond_7
    add-int v5, v7, v15

    invoke-static {v8, v3, v5}, Ljava/lang/Character;->toChars(I[CI)I

    :goto_5
    if-gez v17, :cond_8

    add-int v5, v7, v15

    add-int v8, v7, v16

    sub-int v10, v6, v7

    sub-int/2addr v10, v15

    invoke-static {v3, v5, v3, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    if-eqz v17, :cond_9

    add-int v6, v6, v17

    int-to-short v5, v6

    const/4 v8, 0x0

    aput-short v5, v4, v8

    :cond_9
    const/4 v5, 0x2

    if-ne v9, v5, :cond_a

    const/4 v8, 0x1

    if-eq v13, v8, :cond_b

    :cond_a
    if-eqz v14, :cond_13

    if-ne v13, v5, :cond_13

    :cond_b
    add-int v5, v7, v16

    add-int/lit8 v8, v6, 0x1

    array-length v10, v3

    if-le v8, v10, :cond_d

    array-length v8, v3

    add-int/2addr v8, v2

    new-array v8, v8, [C

    if-eqz v14, :cond_c

    move v10, v7

    :goto_6
    const/4 v11, 0x0

    goto :goto_7

    :cond_c
    move v10, v5

    goto :goto_6

    :goto_7
    invoke-static {v3, v11, v8, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8

    :cond_d
    move-object v8, v3

    :goto_8
    if-eqz v14, :cond_e

    add-int/lit8 v5, v7, 0x1

    sub-int/2addr v6, v7

    invoke-static {v3, v7, v8, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v10, 0x20

    aput-char v10, v8, v7

    goto :goto_9

    :cond_e
    const/16 v10, 0x20

    add-int/lit8 v11, v5, 0x1

    sub-int/2addr v6, v5

    invoke-static {v3, v5, v8, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-char v10, v8, v5

    :goto_9
    if-eq v8, v3, :cond_f

    iput-object v8, v0, Ljackpal/androidterm/a/j;->a:[C

    move-object v3, v8

    :cond_f
    const/4 v5, 0x0

    aget-short v6, v4, v5

    const/4 v8, 0x1

    add-int/2addr v6, v8

    int-to-short v6, v6

    aput-short v6, v4, v5

    if-eqz v14, :cond_10

    aget-short v5, v4, v1

    add-int/2addr v5, v8

    int-to-short v5, v5

    aput-short v5, v4, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_10
    if-nez v1, :cond_11

    add-int/lit8 v5, v16, -0x1

    int-to-short v5, v5

    aput-short v5, v4, v8

    goto :goto_a

    :cond_11
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_12

    aget-short v10, v4, v1

    add-int v10, v10, v16

    sub-int/2addr v10, v8

    int-to-short v8, v10

    aput-short v8, v4, v5

    :cond_12
    :goto_a
    add-int/lit8 v1, v1, 0x1

    :goto_b
    add-int/lit8 v17, v17, 0x1

    :cond_13
    move/from16 v5, v17

    const/4 v8, 0x1

    if-ne v9, v8, :cond_14

    const/4 v8, 0x2

    if-eq v13, v8, :cond_15

    goto :goto_c

    :cond_14
    const/4 v8, 0x2

    :goto_c
    if-eqz v14, :cond_16

    if-ne v13, v8, :cond_16

    :cond_15
    add-int/lit8 v8, v2, -0x2

    if-ne v1, v8, :cond_17

    add-int/lit8 v3, v1, 0x1

    aget-short v5, v4, v1

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-short v5, v5

    aput-short v5, v4, v3

    add-int v7, v7, v16

    int-to-short v3, v7

    const/4 v5, 0x0

    aput-short v3, v4, v5

    const/4 v5, 0x0

    :cond_16
    const/4 v6, 0x1

    goto :goto_11

    :cond_17
    const/4 v8, 0x1

    add-int v7, v7, v16

    invoke-static {v3, v7}, Ljackpal/androidterm/a/ab;->a([CI)I

    move-result v9

    add-int v10, v1, v9

    add-int/2addr v10, v8

    if-ge v10, v2, :cond_18

    invoke-virtual {v0, v10}, Ljackpal/androidterm/a/j;->a(I)I

    move-result v10

    add-int/2addr v10, v5

    sub-int/2addr v10, v7

    :goto_d
    const/4 v11, 0x2

    goto :goto_e

    :cond_18
    sub-int v10, v6, v7

    goto :goto_d

    :goto_e
    if-ne v9, v11, :cond_19

    const/16 v9, 0x20

    aput-char v9, v3, v7

    if-le v10, v8, :cond_1a

    add-int v9, v7, v10

    add-int/lit8 v11, v7, 0x1

    sub-int/2addr v6, v7

    sub-int/2addr v6, v10

    invoke-static {v3, v9, v3, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v10, v8

    sub-int/2addr v5, v10

    const/4 v8, 0x0

    aget-short v3, v4, v8

    sub-int/2addr v3, v10

    int-to-short v3, v3

    aput-short v3, v4, v8

    goto :goto_f

    :cond_19
    const/4 v8, 0x0

    add-int v9, v7, v10

    sub-int/2addr v6, v7

    sub-int/2addr v6, v10

    invoke-static {v3, v9, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v5, v10

    aget-short v3, v4, v8

    sub-int/2addr v3, v10

    int-to-short v3, v3

    aput-short v3, v4, v8

    :cond_1a
    :goto_f
    if-nez v1, :cond_1b

    const/4 v3, -0x1

    const/4 v6, 0x1

    aput-short v3, v4, v6

    goto :goto_10

    :cond_1b
    const/4 v6, 0x1

    add-int/lit8 v3, v1, 0x1

    aget-short v7, v4, v1

    sub-int/2addr v7, v6

    int-to-short v7, v7

    aput-short v7, v4, v3

    :goto_10
    add-int/lit8 v1, v1, 0x1

    :goto_11
    if-eqz v5, :cond_1c

    add-int/2addr v1, v6

    :goto_12
    if-ge v1, v2, :cond_1c

    aget-short v3, v4, v1

    add-int/2addr v3, v5

    int-to-short v3, v3

    aput-short v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1c
    return-void

    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public final b()[C
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/a/j;->a:[C

    return-object v0
.end method
