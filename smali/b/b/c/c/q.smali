.class public final Lb/b/c/c/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/c/b/z;

.field private final b:Lb/b/c/b/q;

.field private final c:Lb/b/h/f;

.field private final d:Lb/b/c/c/u;

.field private final e:I

.field private final f:I

.field private final g:Lb/b/f/d/a;

.field private final h:Z

.field private i:I

.field private j:I

.field private k:Lb/b/h/r;

.field private l:Ljava/io/PrintWriter;

.field private m:Ljava/lang/String;

.field private n:Z

.field private final o:[Lb/b/c/b/s;


# direct methods
.method public constructor <init>(Lb/b/c/b/z;Lb/b/c/b/q;Lb/b/c/c/u;IIZLb/b/f/c/z;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/b/c/c/q;->i:I

    const/4 v0, 0x1

    iput v0, p0, Lb/b/c/c/q;->j:I

    iput-object p1, p0, Lb/b/c/c/q;->a:Lb/b/c/b/z;

    iput-object p2, p0, Lb/b/c/c/q;->b:Lb/b/c/b/q;

    iput-object p3, p0, Lb/b/c/c/q;->d:Lb/b/c/c/u;

    invoke-virtual {p7}, Lb/b/f/c/z;->i()Lb/b/f/d/a;

    move-result-object p1

    iput-object p1, p0, Lb/b/c/c/q;->g:Lb/b/f/d/a;

    iput-boolean p6, p0, Lb/b/c/c/q;->h:Z

    iput p4, p0, Lb/b/c/c/q;->e:I

    iput p5, p0, Lb/b/c/c/q;->f:I

    new-instance p1, Lb/b/h/f;

    invoke-direct {p1}, Lb/b/h/f;-><init>()V

    iput-object p1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    new-array p1, p5, [Lb/b/c/b/s;

    iput-object p1, p0, Lb/b/c/c/q;->o:[Lb/b/c/b/s;

    return-void
.end method

.method private a(I)I
    .registers 7

    iget-object v0, p0, Lb/b/c/c/q;->b:Lb/b/c/b/q;

    invoke-virtual {v0}, Lb/b/c/b/q;->a_()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_4

    iget-object v1, p0, Lb/b/c/c/q;->b:Lb/b/c/b/q;

    invoke-virtual {v1, p1}, Lb/b/c/b/q;->a(I)Lb/b/c/b/s;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/c/b/s;->a()I

    move-result v1

    iget v2, p0, Lb/b/c/c/q;->i:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lb/b/c/c/q;->b:Lb/b/c/b/q;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, p1}, Lb/b/c/b/q;->a(I)Lb/b/c/b/s;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/c/b/s;->g()I

    move-result v1

    iget-object v3, p0, Lb/b/c/c/q;->o:[Lb/b/c/b/s;

    aget-object v3, v3, v1

    if-eq p1, v3, :cond_3

    iget-object v4, p0, Lb/b/c/c/q;->o:[Lb/b/c/b/s;

    aput-object p1, v4, v1

    invoke-virtual {p1}, Lb/b/c/b/s;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {p1, v3}, Lb/b/c/b/s;->a(Lb/b/c/b/s;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lb/b/c/b/s;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lb/b/c/c/q;->b(Lb/b/c/b/s;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lb/b/c/c/q;->c(Lb/b/c/b/s;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lb/b/c/b/s;->b()Lb/b/c/b/r;

    move-result-object v1

    sget-object v3, Lb/b/c/b/r;->c:Lb/b/c/b/r;

    if-eq v1, v3, :cond_3

    invoke-direct {p0, p1}, Lb/b/c/c/q;->e(Lb/b/c/b/s;)V

    :cond_3
    :goto_1
    move p1, v2

    goto :goto_0

    :cond_4
    return p1
.end method

.method private static a(II)I
    .registers 4

    const/4 v0, -0x4

    if-lt p0, v0, :cond_0

    const/16 v1, 0xa

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    mul-int/lit8 p1, p1, 0xf

    add-int/2addr p0, p1

    add-int/2addr p0, v1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Parameter out of range"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(ILjava/util/ArrayList;)I
    .registers 6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/c/b/aa;

    invoke-virtual {v1}, Lb/b/c/b/aa;->a()I

    move-result v1

    iget v2, p0, Lb/b/c/c/q;->i:I

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/c/b/aa;

    invoke-direct {p0, p1}, Lb/b/c/c/q;->a(Lb/b/c/b/aa;)V

    move p1, v1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private static a(Lb/b/c/b/s;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/b/c/b/s;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/b/c/b/s;->d()Lb/b/f/c/ad;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "null"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/b/c/b/s;->f()Lb/b/f/c/ae;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "null"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    invoke-virtual {v2}, Lb/b/f/c/ae;->h()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Lb/b/c/b/s;->e()Lb/b/f/c/ad;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lb/b/c/c/q;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/b/c/c/q;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lb/b/c/c/q;->k:Lb/b/h/r;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/b/c/c/q;->k:Lb/b/h/r;

    iget-boolean v1, p0, Lb/b/c/c/q;->n:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1, p2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lb/b/c/c/q;->l:Ljava/io/PrintWriter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lb/b/c/c/q;->l:Ljava/io/PrintWriter;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private a(Lb/b/c/b/aa;)V
    .registers 6

    invoke-virtual {p1}, Lb/b/c/b/aa;->b()Lb/b/f/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/z;->a()I

    move-result v0

    invoke-virtual {p1}, Lb/b/c/b/aa;->a()I

    move-result p1

    iget v1, p0, Lb/b/c/c/q;->j:I

    sub-int/2addr v0, v1

    iget v1, p0, Lb/b/c/c/q;->i:I

    sub-int/2addr p1, v1

    if-ltz p1, :cond_6

    const/4 v1, -0x4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lb/b/c/c/q;->b(I)V

    const/4 v0, 0x0

    :cond_1
    invoke-static {v0, p1}, Lb/b/c/c/q;->a(II)I

    move-result v1

    and-int/lit16 v3, v1, -0x100

    if-lez v3, :cond_3

    invoke-direct {p0, p1}, Lb/b/c/c/q;->c(I)V

    invoke-static {v0, v2}, Lb/b/c/c/q;->a(II)I

    move-result v1

    and-int/lit16 p1, v1, -0x100

    if-lez p1, :cond_2

    invoke-direct {p0, v0}, Lb/b/c/c/q;->b(I)V

    invoke-static {v2, v2}, Lb/b/c/c/q;->a(II)I

    move-result v1

    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_0
    iget-object v3, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v3, v1}, Lb/b/h/f;->d(I)V

    iget v1, p0, Lb/b/c/c/q;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lb/b/c/c/q;->j:I

    iget v0, p0, Lb/b/c/c/q;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lb/b/c/c/q;->i:I

    iget-object p1, p0, Lb/b/c/c/q;->k:Lb/b/h/r;

    if-nez p1, :cond_4

    iget-object p1, p0, Lb/b/c/c/q;->l:Ljava/io/PrintWriter;

    if-eqz p1, :cond_5

    :cond_4
    const-string p1, "%04x: line %d"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lb/b/c/c/q;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p0, Lb/b/c/c/q;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lb/b/c/c/q;->a(ILjava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Position entries must be in ascending address order"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lb/b/f/c/ad;)V
    .registers 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lb/b/c/c/q;->d:Lb/b/c/c/u;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    iget-object v1, p0, Lb/b/c/c/q;->d:Lb/b/c/c/u;

    invoke-virtual {v1}, Lb/b/c/c/u;->h()Lb/b/c/c/be;

    move-result-object v1

    invoke-virtual {v1, p1}, Lb/b/c/c/be;->b(Lb/b/f/c/ad;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lb/b/h/f;->e(I)I

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb/b/h/f;->e(I)I

    return-void
.end method

.method private a(Lb/b/f/c/ae;)V
    .registers 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lb/b/c/c/q;->d:Lb/b/c/c/u;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    iget-object v1, p0, Lb/b/c/c/q;->d:Lb/b/c/c/u;

    invoke-virtual {v1}, Lb/b/c/c/u;->k()Lb/b/c/c/bg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lb/b/c/c/bg;->b(Lb/b/f/c/ae;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lb/b/h/f;->e(I)I

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb/b/h/f;->e(I)I

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 14

    iget-object v0, p0, Lb/b/c/c/q;->k:Lb/b/h/r;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/b/c/c/q;->l:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v3}, Lb/b/h/f;->c()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/c/b/aa;

    invoke-virtual {p1}, Lb/b/c/b/aa;->b()Lb/b/f/b/z;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/z;->a()I

    move-result p1

    iput p1, p0, Lb/b/c/c/q;->j:I

    :cond_2
    iget-object p1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    iget v4, p0, Lb/b/c/c/q;->j:I

    invoke-virtual {p1, v4}, Lb/b/h/f;->e(I)I

    if-eqz v0, :cond_3

    iget-object p1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {p1}, Lb/b/h/f;->c()I

    move-result p1

    sub-int/2addr p1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "line_start: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lb/b/c/c/q;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lb/b/c/c/q;->a(ILjava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lb/b/c/c/q;->b()I

    move-result p1

    iget-object v3, p0, Lb/b/c/c/q;->g:Lb/b/f/d/a;

    invoke-virtual {v3}, Lb/b/f/d/a;->c()Lb/b/f/d/b;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/d/b;->a_()I

    move-result v4

    iget-boolean v5, p0, Lb/b/c/c/q;->h:Z

    if-nez v5, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/b/c/b/s;

    invoke-virtual {v6}, Lb/b/c/b/s;->g()I

    move-result v7

    if-ne p1, v7, :cond_4

    iget-object v5, p0, Lb/b/c/c/q;->o:[Lb/b/c/b/s;

    aput-object v6, v5, p1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    :cond_6
    iget-object v5, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v5}, Lb/b/h/f;->c()I

    move-result v5

    iget-object v6, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v6, v4}, Lb/b/h/f;->e(I)I

    if-eqz v0, :cond_7

    iget-object v6, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v6}, Lb/b/h/f;->c()I

    move-result v6

    sub-int/2addr v6, v5

    const-string v5, "parameters_size: %04x"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v1

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6, v2}, Lb/b/c/c/q;->a(ILjava/lang/String;)V

    :cond_7
    move v2, p1

    const/4 p1, 0x0

    :goto_2
    if-ge p1, v4, :cond_f

    invoke-virtual {v3, p1}, Lb/b/f/d/b;->b(I)Lb/b/f/d/c;

    move-result-object v5

    iget-object v6, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v6}, Lb/b/h/f;->c()I

    move-result v6

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/b/c/b/s;

    invoke-virtual {v8}, Lb/b/c/b/s;->g()I

    move-result v10

    if-ne v2, v10, :cond_8

    invoke-virtual {v8}, Lb/b/c/b/s;->e()Lb/b/f/c/ad;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-direct {p0, v9}, Lb/b/c/c/q;->a(Lb/b/f/c/ad;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v8}, Lb/b/c/b/s;->d()Lb/b/f/c/ad;

    move-result-object v7

    invoke-direct {p0, v7}, Lb/b/c/c/q;->a(Lb/b/f/c/ad;)V

    :goto_3
    iget-object v7, p0, Lb/b/c/c/q;->o:[Lb/b/c/b/s;

    aput-object v8, v7, v2

    goto :goto_4

    :cond_a
    move-object v8, v9

    :goto_4
    if-nez v8, :cond_b

    invoke-direct {p0, v9}, Lb/b/c/c/q;->a(Lb/b/f/c/ad;)V

    :cond_b
    if-eqz v0, :cond_e

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Lb/b/c/b/s;->e()Lb/b/f/c/ad;

    move-result-object v7

    if-eqz v7, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v8}, Lb/b/c/b/s;->d()Lb/b/f/c/ad;

    move-result-object v7

    invoke-virtual {v7}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_d
    :goto_5
    const-string v7, "<unnamed>"

    :goto_6
    iget-object v8, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v8}, Lb/b/h/f;->c()I

    move-result v8

    sub-int/2addr v8, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "parameter "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " v"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v8, v6}, Lb/b/c/c/q;->a(ILjava/lang/String;)V

    :cond_e
    invoke-virtual {v5}, Lb/b/f/d/c;->i()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_f
    iget-object p1, p0, Lb/b/c/c/q;->o:[Lb/b/c/b/s;

    array-length p2, p1

    :goto_7
    if-ge v1, p2, :cond_11

    aget-object v0, p1, v1

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lb/b/c/b/s;->e()Lb/b/f/c/ad;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-direct {p0, v0}, Lb/b/c/c/q;->d(Lb/b/c/b/s;)V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    return-void
.end method

.method private b()I
    .registers 3

    iget v0, p0, Lb/b/c/c/q;->f:I

    iget-object v1, p0, Lb/b/c/c/q;->g:Lb/b/f/d/a;

    invoke-virtual {v1}, Lb/b/f/d/a;->c()Lb/b/f/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/d/b;->f()I

    move-result v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lb/b/c/c/q;->h:Z

    xor-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private b(I)V
    .registers 6

    iget-object v0, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v0}, Lb/b/h/f;->c()I

    move-result v0

    iget-object v1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lb/b/h/f;->d(I)V

    iget-object v1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v1, p1}, Lb/b/h/f;->f(I)I

    iget v1, p0, Lb/b/c/c/q;->j:I

    add-int/2addr v1, p1

    iput v1, p0, Lb/b/c/c/q;->j:I

    iget-object p1, p0, Lb/b/c/c/q;->k:Lb/b/h/r;

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/b/c/c/q;->l:Ljava/io/PrintWriter;

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {p1}, Lb/b/h/f;->c()I

    move-result p1

    sub-int/2addr p1, v0

    const-string v0, "line = %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lb/b/c/c/q;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lb/b/c/c/q;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private b(Lb/b/c/b/s;)V
    .registers 7

    iget-object v0, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v0}, Lb/b/h/f;->c()I

    move-result v0

    iget-object v1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lb/b/h/f;->d(I)V

    invoke-virtual {p1}, Lb/b/c/b/s;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lb/b/c/c/q;->d(I)V

    iget-object v1, p0, Lb/b/c/c/q;->k:Lb/b/h/r;

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/b/c/c/q;->l:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v1}, Lb/b/h/f;->c()I

    move-result v1

    sub-int/2addr v1, v0

    const-string v0, "%04x: +local restart %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lb/b/c/c/q;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lb/b/c/c/q;->a(Lb/b/c/b/s;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lb/b/c/c/q;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private c()Ljava/util/ArrayList;
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lb/b/c/c/q;->g:Lb/b/f/d/a;

    invoke-virtual {v1}, Lb/b/f/d/a;->c()Lb/b/f/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/d/b;->a_()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0}, Lb/b/c/c/q;->b()I

    move-result v1

    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Lb/b/c/c/q;->f:I

    sub-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iget-object v3, p0, Lb/b/c/c/q;->b:Lb/b/c/b/q;

    invoke-virtual {v3}, Lb/b/c/b/q;->a_()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, p0, Lb/b/c/c/q;->b:Lb/b/c/b/q;

    invoke-virtual {v5, v4}, Lb/b/c/b/q;->a(I)Lb/b/c/b/s;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/c/b/s;->g()I

    move-result v6

    if-lt v6, v1, :cond_0

    sub-int/2addr v6, v1

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lb/b/c/c/s;

    invoke-direct {v1, p0}, Lb/b/c/c/s;-><init>(Lb/b/c/c/q;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private c(I)V
    .registers 6

    iget-object v0, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v0}, Lb/b/h/f;->c()I

    move-result v0

    iget-object v1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lb/b/h/f;->d(I)V

    iget-object v1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v1, p1}, Lb/b/h/f;->e(I)I

    iget v1, p0, Lb/b/c/c/q;->i:I

    add-int/2addr v1, p1

    iput v1, p0, Lb/b/c/c/q;->i:I

    iget-object p1, p0, Lb/b/c/c/q;->k:Lb/b/h/r;

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/b/c/c/q;->l:Ljava/io/PrintWriter;

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {p1}, Lb/b/h/f;->c()I

    move-result p1

    sub-int/2addr p1, v0

    const-string v0, "%04x: advance pc"

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lb/b/c/c/q;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lb/b/c/c/q;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private c(Lb/b/c/b/s;)V
    .registers 7

    invoke-virtual {p1}, Lb/b/c/b/s;->e()Lb/b/f/c/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lb/b/c/c/q;->d(Lb/b/c/b/s;)V

    return-void

    :cond_0
    iget-object v0, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v0}, Lb/b/h/f;->c()I

    move-result v0

    iget-object v1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lb/b/h/f;->d(I)V

    invoke-virtual {p1}, Lb/b/c/b/s;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lb/b/c/c/q;->d(I)V

    invoke-virtual {p1}, Lb/b/c/b/s;->d()Lb/b/f/c/ad;

    move-result-object v1

    invoke-direct {p0, v1}, Lb/b/c/c/q;->a(Lb/b/f/c/ad;)V

    invoke-virtual {p1}, Lb/b/c/b/s;->f()Lb/b/f/c/ae;

    move-result-object v1

    invoke-direct {p0, v1}, Lb/b/c/c/q;->a(Lb/b/f/c/ae;)V

    iget-object v1, p0, Lb/b/c/c/q;->k:Lb/b/h/r;

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/b/c/c/q;->l:Ljava/io/PrintWriter;

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v1}, Lb/b/h/f;->c()I

    move-result v1

    sub-int/2addr v1, v0

    const-string v0, "%04x: +local %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lb/b/c/c/q;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lb/b/c/c/q;->a(Lb/b/c/b/s;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lb/b/c/c/q;->a(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method private d(I)V
    .registers 5

    if-ltz p1, :cond_0

    iget-object v0, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v0, p1}, Lb/b/h/f;->e(I)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Signed value where unsigned required: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(Lb/b/c/b/s;)V
    .registers 7

    iget-object v0, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v0}, Lb/b/h/f;->c()I

    move-result v0

    iget-object v1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lb/b/h/f;->d(I)V

    invoke-virtual {p1}, Lb/b/c/b/s;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lb/b/c/c/q;->d(I)V

    invoke-virtual {p1}, Lb/b/c/b/s;->d()Lb/b/f/c/ad;

    move-result-object v1

    invoke-direct {p0, v1}, Lb/b/c/c/q;->a(Lb/b/f/c/ad;)V

    invoke-virtual {p1}, Lb/b/c/b/s;->f()Lb/b/f/c/ae;

    move-result-object v1

    invoke-direct {p0, v1}, Lb/b/c/c/q;->a(Lb/b/f/c/ae;)V

    invoke-virtual {p1}, Lb/b/c/b/s;->e()Lb/b/f/c/ad;

    move-result-object v1

    invoke-direct {p0, v1}, Lb/b/c/c/q;->a(Lb/b/f/c/ad;)V

    iget-object v1, p0, Lb/b/c/c/q;->k:Lb/b/h/r;

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/b/c/c/q;->l:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v1}, Lb/b/h/f;->c()I

    move-result v1

    sub-int/2addr v1, v0

    const-string v0, "%04x: +localx %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lb/b/c/c/q;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lb/b/c/c/q;->a(Lb/b/c/b/s;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lb/b/c/c/q;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private e(Lb/b/c/b/s;)V
    .registers 7

    iget-object v0, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v0}, Lb/b/h/f;->c()I

    move-result v0

    iget-object v1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lb/b/h/f;->d(I)V

    iget-object v1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {p1}, Lb/b/c/b/s;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lb/b/h/f;->e(I)I

    iget-object v1, p0, Lb/b/c/c/q;->k:Lb/b/h/r;

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/b/c/c/q;->l:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v1}, Lb/b/h/f;->c()I

    move-result v1

    sub-int/2addr v1, v0

    const-string v0, "%04x: -local %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lb/b/c/c/q;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lb/b/c/c/q;->a(Lb/b/c/b/s;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lb/b/c/c/q;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()[B
    .registers 13

    :try_start_0
    iget-object v0, p0, Lb/b/c/c/q;->a:Lb/b/c/b/z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/c/c/q;->a:Lb/b/c/b/z;

    invoke-virtual {v0}, Lb/b/c/b/z;->a_()I

    move-result v0

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lb/b/c/c/q;->a:Lb/b/c/b/z;

    invoke-virtual {v4, v3}, Lb/b/c/b/z;->a(I)Lb/b/c/b/aa;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lb/b/c/c/r;

    invoke-direct {v0, p0}, Lb/b/c/c/r;-><init>(Lb/b/c/c/q;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0}, Lb/b/c/c/q;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lb/b/c/c/q;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lb/b/h/f;->d(I)V

    iget-object v0, p0, Lb/b/c/c/q;->k:Lb/b/h/r;

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/b/c/c/q;->l:Ljava/io/PrintWriter;

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "%04x: prologue end"

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lb/b/c/c/q;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lb/b/c/c/q;->a(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v4, p0, Lb/b/c/c/q;->b:Lb/b/c/b/q;

    invoke-virtual {v4}, Lb/b/c/b/q;->a_()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    invoke-direct {p0, v5}, Lb/b/c/c/q;->a(I)I

    move-result v5

    invoke-direct {p0, v6, v2}, Lb/b/c/c/q;->a(ILjava/util/ArrayList;)I

    move-result v6

    const v7, 0x7fffffff

    if-ge v5, v4, :cond_4

    iget-object v8, p0, Lb/b/c/c/q;->b:Lb/b/c/b/q;

    invoke-virtual {v8, v5}, Lb/b/c/b/q;->a(I)Lb/b/c/b/s;

    move-result-object v8

    invoke-virtual {v8}, Lb/b/c/b/s;->a()I

    move-result v8

    goto :goto_3

    :cond_4
    const v8, 0x7fffffff

    :goto_3
    if-ge v6, v0, :cond_5

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/b/c/b/aa;

    invoke-virtual {v9}, Lb/b/c/b/aa;->a()I

    move-result v9

    goto :goto_4

    :cond_5
    const v9, 0x7fffffff

    :goto_4
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-eq v10, v7, :cond_8

    iget v11, p0, Lb/b/c/c/q;->e:I

    if-ne v10, v11, :cond_6

    if-ne v8, v7, :cond_6

    if-eq v9, v7, :cond_8

    :cond_6
    if-ne v10, v9, :cond_7

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/b/c/b/aa;

    invoke-direct {p0, v6}, Lb/b/c/c/q;->a(Lb/b/c/b/aa;)V

    move v6, v7

    goto :goto_2

    :cond_7
    iget v7, p0, Lb/b/c/c/q;->i:I

    sub-int/2addr v10, v7

    invoke-direct {p0, v10}, Lb/b/c/c/q;->c(I)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v0, v1}, Lb/b/h/f;->d(I)V

    iget-object v0, p0, Lb/b/c/c/q;->k:Lb/b/h/r;

    if-nez v0, :cond_9

    iget-object v0, p0, Lb/b/c/c/q;->l:Ljava/io/PrintWriter;

    if-eqz v0, :cond_a

    :cond_9
    const-string v0, "end sequence"

    invoke-direct {p0, v3, v0}, Lb/b/c/c/q;->a(ILjava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lb/b/c/c/q;->c:Lb/b/h/f;

    invoke-virtual {v0}, Lb/b/h/f;->b()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "...while encoding debug info"

    invoke-static {v0, v1}, Lb/a/a/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lb/a/a/c;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;Lb/b/h/r;Z)[B
    .registers 5

    iput-object p1, p0, Lb/b/c/c/q;->m:Ljava/lang/String;

    iput-object p2, p0, Lb/b/c/c/q;->l:Ljava/io/PrintWriter;

    iput-object p3, p0, Lb/b/c/c/q;->k:Lb/b/h/r;

    iput-boolean p4, p0, Lb/b/c/c/q;->n:Z

    invoke-virtual {p0}, Lb/b/c/c/q;->a()[B

    move-result-object p1

    return-object p1
.end method
