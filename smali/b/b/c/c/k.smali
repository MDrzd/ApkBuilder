.class public final Lb/b/c/c/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/c/b/i;

.field private b:Lb/b/c/b/e;

.field private c:[B

.field private d:I

.field private e:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(Lb/b/c/b/i;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/c/c/k;->a:Lb/b/c/b/i;

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/c/c/k;->b:Lb/b/c/b/e;

    iput-object p1, p0, Lb/b/c/c/k;->c:[B

    const/4 v0, 0x0

    iput v0, p0, Lb/b/c/c/k;->d:I

    iput-object p1, p0, Lb/b/c/c/k;->e:Ljava/util/TreeMap;

    return-void
.end method

.method private static a(Lb/b/c/b/c;IILjava/lang/String;Ljava/io/PrintWriter;Lb/b/h/r;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lb/b/c/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p4, :cond_0

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p5, p2, p0}, Lb/b/h/r;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/PrintWriter;Lb/b/h/r;)V
    .registers 19

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct {p0}, Lb/b/c/c/k;->c()V

    const/4 v2, 0x0

    if-eqz v8, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    const/4 v4, 0x6

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v3, :cond_2

    const/4 v5, 0x2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    iget-object v6, v0, Lb/b/c/c/k;->b:Lb/b/c/b/e;

    invoke-virtual {v6}, Lb/b/c/b/e;->a_()I

    move-result v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz v3, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "tries:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v2, v10}, Lb/b/h/r;->a(ILjava/lang/String;)V

    goto :goto_3

    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "tries:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v6, :cond_5

    iget-object v11, v0, Lb/b/c/c/k;->b:Lb/b/c/b/e;

    invoke-virtual {v11, v10}, Lb/b/c/b/e;->a(I)Lb/b/c/b/f;

    move-result-object v11

    invoke-virtual {v11}, Lb/b/c/b/f;->c()Lb/b/c/b/c;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "try "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lb/b/c/b/f;->a()I

    move-result v14

    invoke-static {v14}, La/a/a;->q(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lb/b/c/b/f;->b()I

    move-result v11

    invoke-static {v11}, La/a/a;->q(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, ""

    invoke-virtual {v12, v9, v13}, Lb/b/c/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v3, :cond_4

    invoke-interface {v8, v4, v11}, Lb/b/h/r;->a(ILjava/lang/String;)V

    invoke-interface {v8, v5, v12}, Lb/b/h/r;->a(ILjava/lang/String;)V

    goto :goto_5

    :cond_4
    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    if-nez v3, :cond_6

    return-void

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "handlers:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v2, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    iget v1, v0, Lb/b/c/c/k;->d:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lb/b/c/c/k;->e:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    invoke-static {v4}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v1, v3}, Lb/b/h/r;->a(ILjava/lang/String;)V

    const/4 v1, 0x0

    iget-object v3, v0, Lb/b/c/c/k;->e:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lb/b/c/b/c;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eqz v1, :cond_7

    sub-int v3, v12, v2

    move-object v4, v9

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lb/b/c/c/k;->a(Lb/b/c/b/c;IILjava/lang/String;Ljava/io/PrintWriter;Lb/b/h/r;)V

    :cond_7
    move-object v1, v11

    move v2, v12

    goto :goto_6

    :cond_8
    iget-object v3, v0, Lb/b/c/c/k;->c:[B

    array-length v3, v3

    sub-int/2addr v3, v2

    move-object v4, v9

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lb/b/c/c/k;->a(Lb/b/c/b/c;IILjava/lang/String;Ljava/io/PrintWriter;Lb/b/h/r;)V

    return-void
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lb/b/c/c/k;->b:Lb/b/c/b/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/c/c/k;->a:Lb/b/c/b/i;

    invoke-virtual {v0}, Lb/b/c/b/i;->g()Lb/b/c/b/e;

    move-result-object v0

    iput-object v0, p0, Lb/b/c/c/k;->b:Lb/b/c/b/e;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    invoke-direct {p0}, Lb/b/c/c/k;->c()V

    iget-object v0, p0, Lb/b/c/c/k;->b:Lb/b/c/b/e;

    invoke-virtual {v0}, Lb/b/c/b/e;->a_()I

    move-result v0

    return v0
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 11

    invoke-direct {p0}, Lb/b/c/c/k;->c()V

    invoke-virtual {p1}, Lb/b/c/c/u;->k()Lb/b/c/c/bg;

    move-result-object p1

    iget-object v0, p0, Lb/b/c/c/k;->b:Lb/b/c/b/e;

    invoke-virtual {v0}, Lb/b/c/b/e;->a_()I

    move-result v0

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lb/b/c/c/k;->e:Ljava/util/TreeMap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lb/b/c/c/k;->e:Ljava/util/TreeMap;

    iget-object v4, p0, Lb/b/c/c/k;->b:Lb/b/c/b/e;

    invoke-virtual {v4, v2}, Lb/b/c/b/e;->a(I)Lb/b/c/b/f;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/c/b/f;->c()Lb/b/c/b/c;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/c/c/k;->e:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const v2, 0xffff

    if-gt v0, v2, :cond_5

    new-instance v0, Lb/b/h/f;

    invoke-direct {v0}, Lb/b/h/f;-><init>()V

    iget-object v2, p0, Lb/b/c/c/k;->e:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lb/b/h/f;->e(I)I

    move-result v2

    iput v2, p0, Lb/b/c/c/k;->d:I

    iget-object v2, p0, Lb/b/c/c/k;->e:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/c/b/c;

    invoke-virtual {v4}, Lb/b/c/b/c;->a_()I

    move-result v5

    invoke-virtual {v4}, Lb/b/c/b/c;->f()Z

    move-result v6

    invoke-virtual {v0}, Lb/b/h/f;->c()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_2

    add-int/lit8 v3, v5, -0x1

    neg-int v3, v3

    invoke-virtual {v0, v3}, Lb/b/h/f;->f(I)I

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v5}, Lb/b/h/f;->f(I)I

    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_3

    invoke-virtual {v4, v3}, Lb/b/c/b/c;->a(I)Lb/b/c/b/d;

    move-result-object v7

    invoke-virtual {v7}, Lb/b/c/b/d;->a()Lb/b/f/c/ae;

    move-result-object v8

    invoke-virtual {p1, v8}, Lb/b/c/c/bg;->b(Lb/b/f/c/ae;)I

    move-result v8

    invoke-virtual {v0, v8}, Lb/b/h/f;->e(I)I

    invoke-virtual {v7}, Lb/b/c/b/d;->b()I

    move-result v7

    invoke-virtual {v0, v7}, Lb/b/h/f;->e(I)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Lb/b/c/b/c;->a(I)Lb/b/c/b/d;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/c/b/d;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Lb/b/h/f;->e(I)I

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lb/b/h/f;->b()[B

    move-result-object p1

    iput-object p1, p0, Lb/b/c/c/k;->c:[B

    return-void

    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "too many catch handlers"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/h/r;)V
    .registers 9

    invoke-direct {p0}, Lb/b/c/c/k;->c()V

    invoke-interface {p1}, Lb/b/h/r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "  "

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lb/b/c/c/k;->a(Ljava/lang/String;Ljava/io/PrintWriter;Lb/b/h/r;)V

    :cond_0
    iget-object v0, p0, Lb/b/c/c/k;->b:Lb/b/c/b/e;

    invoke-virtual {v0}, Lb/b/c/b/e;->a_()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lb/b/c/c/k;->b:Lb/b/c/b/e;

    invoke-virtual {v2, v1}, Lb/b/c/b/e;->a(I)Lb/b/c/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/c/b/f;->a()I

    move-result v3

    invoke-virtual {v2}, Lb/b/c/b/f;->b()I

    move-result v4

    sub-int v5, v4, v3

    const/high16 v6, 0x10000

    if-ge v5, v6, :cond_1

    invoke-interface {p1, v3}, Lb/b/h/r;->c(I)V

    invoke-interface {p1, v5}, Lb/b/h/r;->b(I)V

    iget-object v3, p0, Lb/b/c/c/k;->e:Ljava/util/TreeMap;

    invoke-virtual {v2}, Lb/b/c/b/f;->c()Lb/b/c/b/c;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Lb/b/h/r;->b(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bogus exception range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lb/b/c/c/k;->c:[B

    invoke-interface {p1, v0}, Lb/b/h/r;->a([B)V

    return-void
.end method

.method public final a(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lb/b/c/c/k;->a(Ljava/lang/String;Ljava/io/PrintWriter;Lb/b/h/r;)V

    return-void
.end method

.method public final b()I
    .registers 3

    invoke-virtual {p0}, Lb/b/c/c/k;->a()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lb/b/c/c/k;->c:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
