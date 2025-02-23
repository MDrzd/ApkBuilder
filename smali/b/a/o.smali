.class public final Lb/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a;
.implements Lb/a/a/b;


# instance fields
.field final synthetic a:Lb/a/i;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/nio/ByteBuffer;

.field private final d:I


# direct methods
.method private constructor <init>(Lb/a/i;Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .registers 4

    iput-object p1, p0, Lb/a/o;->a:Lb/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/a/o;->b:Ljava/lang/String;

    iput-object p3, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lb/a/o;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lb/a/i;Ljava/lang/String;Ljava/nio/ByteBuffer;B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lb/a/o;-><init>(Lb/a/i;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic a(Lb/a/o;)Lb/a/c;
    .registers 5

    invoke-static {p0}, La/a/a;->a(Lb/a/a/a;)I

    move-result v0

    invoke-static {p0}, La/a/a;->a(Lb/a/a/a;)I

    move-result v1

    invoke-static {p0}, La/a/a;->a(Lb/a/a/a;)I

    move-result v2

    invoke-static {p0}, La/a/a;->a(Lb/a/a/a;)I

    move-result v3

    invoke-direct {p0, v0}, Lb/a/o;->j(I)[Lb/a/d;

    move-result-object v0

    invoke-direct {p0, v1}, Lb/a/o;->j(I)[Lb/a/d;

    move-result-object v1

    invoke-direct {p0, v2}, Lb/a/o;->k(I)[Lb/a/e;

    move-result-object v2

    invoke-direct {p0, v3}, Lb/a/o;->k(I)[Lb/a/e;

    move-result-object p0

    new-instance v3, Lb/a/c;

    invoke-direct {v3, v0, v1, v2, p0}, Lb/a/c;-><init>([Lb/a/d;[Lb/a/d;[Lb/a/e;[Lb/a/e;)V

    return-object v3
.end method

.method static synthetic b(Lb/a/o;)Lb/a/f;
    .registers 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lb/a/o;->r()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lb/a/o;->r()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lb/a/o;->r()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lb/a/o;->r()I

    move-result v4

    iget-object v5, v0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iget-object v6, v0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-direct {v0, v6}, Lb/a/o;->i(I)[S

    move-result-object v6

    if-lez v4, :cond_7

    array-length v8, v6

    rem-int/lit8 v8, v8, 0x2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget-object v8, v0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getShort()S

    :cond_0
    iget-object v8, v0, Lb/a/o;->a:Lb/a/i;

    iget-object v9, v0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-virtual {v8, v9}, Lb/a/i;->a(I)Lb/a/o;

    move-result-object v8

    shl-int/lit8 v9, v4, 0x3

    invoke-virtual {v0, v9}, Lb/a/o;->c(I)V

    iget-object v9, v0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-static/range {p0 .. p0}, La/a/a;->a(Lb/a/a/a;)I

    move-result v10

    new-array v11, v10, [Lb/a/g;

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_3

    iget-object v13, v0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    sub-int/2addr v13, v9

    invoke-virtual/range {p0 .. p0}, Lb/a/o;->e()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v15

    new-array v7, v15, [I

    new-array v0, v15, [I

    move/from16 v16, v9

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v15, :cond_1

    invoke-static/range {p0 .. p0}, La/a/a;->a(Lb/a/a/a;)I

    move-result v17

    aput v17, v7, v9

    invoke-static/range {p0 .. p0}, La/a/a;->a(Lb/a/a/a;)I

    move-result v17

    aput v17, v0, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-gtz v14, :cond_2

    invoke-static/range {p0 .. p0}, La/a/a;->a(Lb/a/a/a;)I

    move-result v9

    goto :goto_2

    :cond_2
    const/4 v9, -0x1

    :goto_2
    new-instance v14, Lb/a/g;

    invoke-direct {v14, v7, v0, v9, v13}, Lb/a/g;-><init>([I[III)V

    aput-object v14, v11, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v9, v16

    move-object/from16 v0, p0

    goto :goto_0

    :cond_3
    new-array v0, v4, [Lb/a/h;

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v4, :cond_6

    iget-object v9, v8, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    invoke-direct {v8}, Lb/a/o;->r()I

    move-result v10

    invoke-direct {v8}, Lb/a/o;->r()I

    move-result v12

    const/4 v13, 0x0

    :goto_4
    array-length v14, v11

    if-ge v13, v14, :cond_5

    aget-object v14, v11, v13

    iget v14, v14, Lb/a/g;->a:I

    if-ne v14, v12, :cond_4

    new-instance v12, Lb/a/h;

    invoke-direct {v12, v9, v10, v13}, Lb/a/h;-><init>(III)V

    aput-object v12, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_6
    move-object v7, v0

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    new-array v4, v0, [Lb/a/h;

    new-array v0, v0, [Lb/a/g;

    move-object v11, v0

    move-object v7, v4

    :goto_5
    new-instance v8, Lb/a/f;

    move-object v0, v8

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lb/a/f;-><init>(IIII[S[Lb/a/h;[Lb/a/g;)V

    return-object v8
.end method

.method private i(I)[S
    .registers 5

    if-nez p1, :cond_0

    sget-object p1, Lb/a/i;->a:[S

    return-object p1

    :cond_0
    new-array v0, p1, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private j(I)[Lb/a/d;
    .registers 7

    new-array v0, p1, [Lb/a/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-static {p0}, La/a/a;->a(Lb/a/a/a;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p0}, La/a/a;->a(Lb/a/a/a;)I

    move-result v3

    new-instance v4, Lb/a/d;

    invoke-direct {v4, v2, v3}, Lb/a/d;-><init>(II)V

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private k(I)[Lb/a/e;
    .registers 8

    new-array v0, p1, [Lb/a/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-static {p0}, La/a/a;->a(Lb/a/a/a;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p0}, La/a/a;->a(Lb/a/a/a;)I

    move-result v3

    invoke-static {p0}, La/a/a;->a(Lb/a/a/a;)I

    move-result v4

    new-instance v5, Lb/a/e;

    invoke-direct {v5, v2, v3, v4}, Lb/a/e;-><init>(III)V

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private l(I)[B
    .registers 4

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, p1

    new-array v0, v0, [B

    iget-object v1, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private r()I
    .registers 3

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private s()V
    .registers 3

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public final a()B
    .registers 2

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public final a(Lb/a/ae;)V
    .registers 5

    invoke-virtual {p1}, Lb/a/ae;->a()[S

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lb/a/o;->f(I)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Lb/a/o;->a(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lb/a/o;->o()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/a/o;->g(I)V

    invoke-static {p1}, La/a/a;->e(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/a/o;->a([B)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lb/a/o;->d(I)V
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final a(S)V
    .registers 3

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a([B)V
    .registers 3

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a([S)V
    .registers 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Lb/a/o;->a(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(I)[B
    .registers 3

    new-array p1, p1, [B

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .registers 2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lb/a/o;->g(I)V

    return-void
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public final c(I)V
    .registers 4

    if-ltz p1, :cond_0

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final d()S
    .registers 2

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public final d(I)V
    .registers 3

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final e()I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :cond_0
    invoke-interface {p0}, Lb/a/a/a;->a()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v4, v3, 0x7f

    mul-int/lit8 v5, v1, 0x7

    shl-int/2addr v4, v5

    or-int/2addr v0, v4

    shl-int/lit8 v2, v2, 0x7

    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    const/4 v5, 0x5

    if-lt v1, v5, :cond_0

    :cond_1
    if-eq v3, v4, :cond_3

    shr-int/lit8 v1, v2, 0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    or-int/2addr v0, v2

    :cond_2
    return v0

    :cond_3
    new-instance v0, Lb/a/s;

    const-string v1, "invalid LEB128 sequence"

    invoke-direct {v0, v1}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(I)V
    .registers 5

    int-to-short v0, p1

    const v1, 0xffff

    and-int/2addr v1, v0

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Lb/a/o;->a(S)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an unsigned short: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Lb/a/ae;
    .registers 4

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-direct {p0, v0}, Lb/a/o;->i(I)[S

    move-result-object v0

    invoke-direct {p0}, Lb/a/o;->s()V

    new-instance v1, Lb/a/ae;

    iget-object v2, p0, Lb/a/o;->a:Lb/a/i;

    invoke-direct {v1, v2, v0}, Lb/a/ae;-><init>(Lb/a/i;[S)V

    return-object v1
.end method

.method public final f(I)V
    .registers 3

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .registers 12

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iget-object v1, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget-object v3, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :try_start_0
    invoke-static {p0}, La/a/a;->a(Lb/a/a/a;)I

    move-result v0

    new-array v3, v0, [C

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p0}, Lb/a/a/a;->a()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-char v6, v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v6

    :cond_0
    :try_start_1
    new-instance v3, Lb/a/s;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Declared length "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t match decoded length of "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    aput-char v6, v3, v5

    const/16 v7, 0x80

    if-ge v6, v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    and-int/lit16 v8, v6, 0xe0

    const/16 v9, 0xc0

    if-ne v8, v9, :cond_4

    invoke-interface {p0}, Lb/a/a/a;->a()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v9, v8, 0xc0

    if-ne v9, v7, :cond_3

    add-int/lit8 v7, v5, 0x1

    and-int/lit8 v6, v6, 0x1f

    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v6, v8

    int-to-char v6, v6

    aput-char v6, v3, v5

    :goto_1
    move v5, v7

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v3, "bad second byte"

    invoke-direct {v0, v3}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    and-int/lit16 v8, v6, 0xf0

    const/16 v9, 0xe0

    if-ne v8, v9, :cond_6

    invoke-interface {p0}, Lb/a/a/a;->a()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    invoke-interface {p0}, Lb/a/a/a;->a()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    and-int/lit16 v10, v8, 0xc0

    if-ne v10, v7, :cond_5

    and-int/lit16 v10, v9, 0xc0

    if-ne v10, v7, :cond_5

    add-int/lit8 v7, v5, 0x1

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0xc

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v6, v8

    and-int/lit8 v8, v9, 0x3f

    or-int/2addr v6, v8

    int-to-char v6, v6

    aput-char v6, v3, v5

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v3, "bad second or third byte"

    invoke-direct {v0, v3}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/UTFDataFormatException;

    const-string v3, "bad byte"

    invoke-direct {v0, v3}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/UTFDataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v3, Lb/a/s;

    invoke-direct {v3, v0}, Lb/a/s;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iget-object v3, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0
.end method

.method public final g(I)V
    .registers 4

    :try_start_0
    invoke-static {p0, p1}, La/a/a;->a(Lb/a/a/b;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Lb/a/s;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Section limit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " exceeded by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h()Lb/a/w;
    .registers 6

    invoke-direct {p0}, Lb/a/o;->r()I

    move-result v0

    invoke-direct {p0}, Lb/a/o;->r()I

    move-result v1

    iget-object v2, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    new-instance v3, Lb/a/w;

    iget-object v4, p0, Lb/a/o;->a:Lb/a/i;

    invoke-direct {v3, v4, v0, v1, v2}, Lb/a/w;-><init>(Lb/a/i;III)V

    return-object v3
.end method

.method public final h(I)V
    .registers 4

    :try_start_0
    invoke-static {p0, p1}, La/a/a;->b(Lb/a/a/b;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Lb/a/s;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Section limit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " exceeded by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i()Lb/a/aa;
    .registers 6

    invoke-direct {p0}, Lb/a/o;->r()I

    move-result v0

    invoke-direct {p0}, Lb/a/o;->r()I

    move-result v1

    iget-object v2, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    new-instance v3, Lb/a/aa;

    iget-object v4, p0, Lb/a/o;->a:Lb/a/i;

    invoke-direct {v3, v4, v0, v1, v2}, Lb/a/aa;-><init>(Lb/a/i;III)V

    return-object v3
.end method

.method public final j()Lb/a/ab;
    .registers 6

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iget-object v1, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iget-object v2, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    new-instance v3, Lb/a/ab;

    iget-object v4, p0, Lb/a/o;->a:Lb/a/i;

    invoke-direct {v3, v4, v0, v1, v2}, Lb/a/ab;-><init>(Lb/a/i;III)V

    return-object v3
.end method

.method public final k()Lb/a/b;
    .registers 4

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    new-instance v1, Lb/a/b;

    iget-object v2, p0, Lb/a/o;->a:Lb/a/i;

    invoke-direct {v1, v2, v0}, Lb/a/b;-><init>(Lb/a/i;I)V

    return-object v1
.end method

.method public final l()Lb/a/x;
    .registers 8

    invoke-direct {p0}, Lb/a/o;->r()I

    move-result v0

    invoke-static {v0}, Lb/a/z;->a(I)Lb/a/z;

    move-result-object v3

    invoke-direct {p0}, Lb/a/o;->r()I

    move-result v4

    invoke-direct {p0}, Lb/a/o;->r()I

    move-result v5

    invoke-direct {p0}, Lb/a/o;->r()I

    move-result v6

    new-instance v0, Lb/a/x;

    iget-object v2, p0, Lb/a/o;->a:Lb/a/i;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lb/a/x;-><init>(Lb/a/i;Lb/a/z;III)V

    return-object v0
.end method

.method public final m()Lb/a/a;
    .registers 6

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iget-object v1, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    new-instance v2, Lb/a/v;

    const/16 v3, 0x1d

    invoke-direct {v2, p0, v3}, Lb/a/v;-><init>(Lb/a/a/a;I)V

    invoke-virtual {v2}, Lb/a/v;->v()V

    new-instance v2, Lb/a/a;

    iget-object v3, p0, Lb/a/o;->a:Lb/a/i;

    new-instance v4, Lb/a/u;

    invoke-direct {p0, v1}, Lb/a/o;->l(I)[B

    move-result-object v1

    invoke-direct {v4, v1}, Lb/a/u;-><init>([B)V

    invoke-direct {v2, v3, v0, v4}, Lb/a/a;-><init>(Lb/a/i;BLb/a/u;)V

    return-object v2
.end method

.method public final n()Lb/a/u;
    .registers 4

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-instance v1, Lb/a/v;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, v2}, Lb/a/v;-><init>(Lb/a/a/a;I)V

    invoke-virtual {v1}, Lb/a/v;->v()V

    new-instance v1, Lb/a/u;

    invoke-direct {p0, v0}, Lb/a/o;->l(I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lb/a/u;-><init>([B)V

    return-object v1
.end method

.method public final o()V
    .registers 3

    :goto_0
    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final p()V
    .registers 3

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not four byte aligned!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q()I
    .registers 3

    iget-object v0, p0, Lb/a/o;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lb/a/o;->d:I

    sub-int/2addr v0, v1

    return v0
.end method
