.class public final Lb/b/c/b/t;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private b:I

.field private c:Lb/b/f/b/w;

.field private d:[I

.field private final e:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lb/b/c/b/t;->a:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lb/b/c/b/t;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/c/b/t;->c:Lb/b/f/b/w;

    iput-object v0, p0, Lb/b/c/b/t;->d:[I

    iput p1, p0, Lb/b/c/b/t;->e:I

    return-void
.end method

.method private static a(Lb/b/f/b/r;)Lb/b/f/b/r;
    .registers 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object v0

    sget-object v1, Lb/b/f/d/c;->j:Lb/b/f/d/c;

    if-ne v0, v1, :cond_0

    sget-object v0, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    invoke-virtual {p0, v0}, Lb/b/f/b/r;->a(Lb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private a(II)V
    .registers 6

    iget-object v0, p0, Lb/b/c/b/t;->d:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-ltz p1, :cond_5

    if-nez v0, :cond_2

    iget-object p1, p0, Lb/b/c/b/t;->d:[I

    array-length p1, p1

    if-lt p2, p1, :cond_4

    :cond_2
    add-int/2addr p2, v1

    new-instance p1, Lb/b/f/b/w;

    invoke-direct {p1, p2}, Lb/b/f/b/w;-><init>(I)V

    new-array p2, p2, [I

    const/4 v1, -0x1

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/b/c/b/t;->c:Lb/b/f/b/w;

    invoke-virtual {p1, v0}, Lb/b/f/b/w;->a(Lb/b/f/b/w;)V

    iget-object v0, p0, Lb/b/c/b/t;->d:[I

    iget-object v1, p0, Lb/b/c/b/t;->d:[I

    array-length v1, v1

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iput-object p1, p0, Lb/b/c/b/t;->c:Lb/b/f/b/w;

    iput-object p2, p0, Lb/b/c/b/t;->d:[I

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(ILb/b/c/b/r;Lb/b/f/b/r;)V
    .registers 7

    invoke-virtual {p3}, Lb/b/f/b/r;->f()I

    move-result v0

    iget-object v1, p0, Lb/b/c/b/t;->a:Ljava/util/ArrayList;

    new-instance v2, Lb/b/c/b/s;

    invoke-direct {v2, p1, p2, p3}, Lb/b/c/b/s;-><init>(ILb/b/c/b/r;Lb/b/f/b/r;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lb/b/c/b/r;->a:Lb/b/c/b/r;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lb/b/c/b/t;->c:Lb/b/f/b/w;

    invoke-virtual {p1, p3}, Lb/b/f/b/w;->d(Lb/b/f/b/r;)V

    iget-object p1, p0, Lb/b/c/b/t;->d:[I

    const/4 p2, -0x1

    aput p2, p1, v0

    return-void

    :cond_0
    iget-object p1, p0, Lb/b/c/b/t;->c:Lb/b/f/b/w;

    invoke-virtual {p1, p3}, Lb/b/f/b/w;->c(Lb/b/f/b/r;)V

    iget-object p1, p0, Lb/b/c/b/t;->d:[I

    iget-object p2, p0, Lb/b/c/b/t;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    aput p2, p1, v0

    return-void
.end method

.method private a(ILb/b/f/b/r;Lb/b/c/b/r;)V
    .registers 6

    invoke-virtual {p2}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-static {p2}, Lb/b/c/b/t;->a(Lb/b/f/b/r;)Lb/b/f/b/r;

    move-result-object p2

    invoke-direct {p0, p1, v0}, Lb/b/c/b/t;->a(II)V

    iget-object v1, p0, Lb/b/c/b/t;->d:[I

    aget v0, v1, v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lb/b/c/b/t;->c(ILb/b/f/b/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, p3, p2}, Lb/b/c/b/t;->a(ILb/b/c/b/r;Lb/b/f/b/r;)V

    return-void
.end method

.method private b(ILb/b/c/b/r;Lb/b/f/b/r;)V
    .registers 7

    sget-object v0, Lb/b/c/b/r;->a:Lb/b/c/b/r;

    if-eq p2, v0, :cond_1

    invoke-virtual {p3}, Lb/b/f/b/r;->f()I

    move-result v0

    iget-object v1, p0, Lb/b/c/b/t;->d:[I

    aget v0, v1, v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lb/b/c/b/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/c/b/s;

    invoke-virtual {v1}, Lb/b/c/b/s;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lb/b/c/b/s;->h()Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2, p3}, Lb/b/f/b/r;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lb/b/c/b/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Lb/b/c/b/s;->a(Lb/b/c/b/r;)Lb/b/c/b/s;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lb/b/c/b/t;->c:Lb/b/f/b/w;

    invoke-virtual {p1, p3}, Lb/b/f/b/w;->c(Lb/b/f/b/r;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p3, p2}, Lb/b/c/b/t;->a(ILb/b/f/b/r;Lb/b/c/b/r;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(ILb/b/f/b/r;)V
    .registers 4

    sget-object v0, Lb/b/c/b/r;->b:Lb/b/c/b/r;

    invoke-direct {p0, p1, p2, v0}, Lb/b/c/b/t;->a(ILb/b/f/b/r;Lb/b/c/b/r;)V

    return-void
.end method

.method private c(ILb/b/f/b/r;)Z
    .registers 8

    iget-object v0, p0, Lb/b/c/b/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    iget-object v3, p0, Lb/b/c/b/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/c/b/s;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lb/b/c/b/s;->a()I

    move-result v4

    if-eq v4, p1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v3, p2}, Lb/b/c/b/s;->a(Lb/b/f/b/r;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lb/b/c/b/t;->c:Lb/b/f/b/w;

    invoke-virtual {v3, p2}, Lb/b/f/b/w;->c(Lb/b/f/b/r;)V

    iget-object v3, p0, Lb/b/c/b/t;->a:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lb/b/c/b/t;->b:I

    add-int/2addr v3, v1

    iput v3, p0, Lb/b/c/b/t;->b:I

    invoke-virtual {p2}, Lb/b/f/b/r;->f()I

    move-result p2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    iget-object v3, p0, Lb/b/c/b/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lb/b/c/b/s;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lb/b/c/b/s;->h()Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/r;->f()I

    move-result v3

    if-ne v3, p2, :cond_3

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    iget-object v2, p0, Lb/b/c/b/t;->d:[I

    aput v0, v2, p2

    invoke-virtual {v4}, Lb/b/c/b/s;->a()I

    move-result p2

    if-ne p2, p1, :cond_5

    iget-object p1, p0, Lb/b/c/b/t;->a:Ljava/util/ArrayList;

    sget-object p2, Lb/b/c/b/r;->b:Lb/b/c/b/r;

    invoke-virtual {v4, p2}, Lb/b/c/b/s;->a(Lb/b/c/b/r;)Lb/b/c/b/s;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return v1
.end method


# virtual methods
.method public final a()Lb/b/c/b/q;
    .registers 8

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-direct {p0, v1, v0}, Lb/b/c/b/t;->a(II)V

    iget-object v1, p0, Lb/b/c/b/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lb/b/c/b/t;->b:I

    sub-int v2, v1, v2

    if-nez v2, :cond_0

    sget-object v0, Lb/b/c/b/q;->a:Lb/b/c/b/q;

    return-object v0

    :cond_0
    new-array v3, v2, [Lb/b/c/b/s;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lb/b/c/b/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lb/b/c/b/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/c/b/s;

    if-eqz v5, :cond_2

    add-int/lit8 v6, v4, 0x1

    aput-object v5, v3, v4

    move v4, v6

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v1, Lb/b/c/b/q;

    invoke-direct {v1, v2}, Lb/b/c/b/q;-><init>(I)V

    :goto_2
    if-ge v0, v2, :cond_4

    aget-object v4, v3, v0

    invoke-virtual {v1, v0, v4}, Lb/b/c/b/q;->a(ILb/b/c/b/s;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lb/b/c/b/q;->b_()V

    return-object v1
.end method

.method public final a(ILb/b/f/b/r;)V
    .registers 7

    invoke-virtual {p2}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-static {p2}, Lb/b/c/b/t;->a(Lb/b/f/b/r;)Lb/b/f/b/r;

    move-result-object p2

    invoke-direct {p0, p1, v0}, Lb/b/c/b/t;->a(II)V

    iget-object v1, p0, Lb/b/c/b/t;->c:Lb/b/f/b/w;

    invoke-virtual {v1, v0}, Lb/b/f/b/w;->a(I)Lb/b/f/b/r;

    move-result-object v1

    invoke-virtual {p2, v1}, Lb/b/f/b/r;->a(Lb/b/f/b/r;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lb/b/c/b/t;->c:Lb/b/f/b/w;

    invoke-virtual {v2, p2}, Lb/b/f/b/w;->b(Lb/b/f/b/r;)Lb/b/f/b/r;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lb/b/c/b/r;->d:Lb/b/c/b/r;

    invoke-direct {p0, p1, v3, v2}, Lb/b/c/b/t;->b(ILb/b/c/b/r;Lb/b/f/b/r;)V

    :cond_1
    iget-object v2, p0, Lb/b/c/b/t;->d:[I

    aget v2, v2, v0

    if-eqz v1, :cond_2

    sget-object v2, Lb/b/c/b/r;->c:Lb/b/c/b/r;

    invoke-direct {p0, p1, v2, v1}, Lb/b/c/b/t;->a(ILb/b/c/b/r;Lb/b/f/b/r;)V

    goto :goto_0

    :cond_2
    if-ltz v2, :cond_4

    iget-object v1, p0, Lb/b/c/b/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/c/b/s;

    invoke-virtual {v1}, Lb/b/c/b/s;->a()I

    move-result v3

    if-ne v3, p1, :cond_4

    invoke-virtual {v1, p2}, Lb/b/c/b/s;->a(Lb/b/f/b/r;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, p0, Lb/b/c/b/t;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lb/b/c/b/t;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/b/c/b/t;->b:I

    iget-object p1, p0, Lb/b/c/b/t;->c:Lb/b/f/b/w;

    invoke-virtual {p1, p2}, Lb/b/f/b/w;->d(Lb/b/f/b/r;)V

    iget-object p1, p0, Lb/b/c/b/t;->d:[I

    const/4 p2, -0x1

    aput p2, p1, v0

    return-void

    :cond_3
    sget-object v3, Lb/b/c/b/r;->c:Lb/b/c/b/r;

    invoke-virtual {v1, v3}, Lb/b/c/b/s;->a(Lb/b/c/b/r;)Lb/b/c/b/s;

    move-result-object v1

    iget-object v3, p0, Lb/b/c/b/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    if-lez v0, :cond_5

    iget-object v1, p0, Lb/b/c/b/t;->c:Lb/b/f/b/w;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lb/b/f/b/w;->a(I)Lb/b/f/b/r;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lb/b/f/b/r;->l()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lb/b/c/b/r;->f:Lb/b/c/b/r;

    invoke-direct {p0, p1, v2, v1}, Lb/b/c/b/t;->b(ILb/b/c/b/r;Lb/b/f/b/r;)V

    :cond_5
    invoke-virtual {p2}, Lb/b/f/b/r;->l()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lb/b/c/b/t;->c:Lb/b/f/b/w;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lb/b/f/b/w;->a(I)Lb/b/f/b/r;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lb/b/c/b/r;->e:Lb/b/c/b/r;

    invoke-direct {p0, p1, v1, v0}, Lb/b/c/b/t;->b(ILb/b/c/b/r;Lb/b/f/b/r;)V

    :cond_6
    sget-object v0, Lb/b/c/b/r;->a:Lb/b/c/b/r;

    invoke-direct {p0, p1, v0, p2}, Lb/b/c/b/t;->a(ILb/b/c/b/r;Lb/b/f/b/r;)V

    return-void
.end method

.method public final a(ILb/b/f/b/w;)V
    .registers 8

    invoke-virtual {p2}, Lb/b/f/b/w;->f()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, p1, v1}, Lb/b/c/b/t;->a(II)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lb/b/c/b/t;->c:Lb/b/f/b/w;

    invoke-virtual {v2, v1}, Lb/b/f/b/w;->a(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {p2, v1}, Lb/b/f/b/w;->a(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-static {v3}, Lb/b/c/b/t;->a(Lb/b/f/b/r;)Lb/b/f/b/r;

    move-result-object v3

    if-nez v2, :cond_0

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {p0, p1, v3}, Lb/b/c/b/t;->a(ILb/b/f/b/r;)V

    goto :goto_2

    :cond_0
    if-nez v3, :cond_1

    invoke-direct {p0, p1, v2}, Lb/b/c/b/t;->b(ILb/b/f/b/r;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v2}, Lb/b/f/b/r;->a(Lb/b/f/b/r;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, p1, v2}, Lb/b/c/b/t;->b(ILb/b/f/b/r;)V

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
