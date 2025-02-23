.class public Lb/b/g/a/a;
.super Lb/b/g/a/j;

# interfaces
.implements Lb/b/g/ak;


# instance fields
.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/util/ArrayList;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/BitSet;

.field private final g:Lb/b/g/q;

.field private final h:I

.field private final i:Ljava/util/BitSet;

.field private final j:Ljava/util/BitSet;

.field private final k:Z


# direct methods
.method public constructor <init>(Lb/b/g/al;Lcom/gmail/heagoo/pngeditor/m;Z)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lb/b/g/a/j;-><init>(Lb/b/g/al;Lcom/gmail/heagoo/pngeditor/m;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lb/b/g/al;->g()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lb/b/g/a/a;->f:Ljava/util/BitSet;

    new-instance v0, Lb/b/g/q;

    invoke-virtual {p1}, Lb/b/g/al;->g()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lb/b/g/q;-><init>(Lcom/gmail/heagoo/pngeditor/m;I)V

    iput-object v0, p0, Lb/b/g/a/a;->g:Lb/b/g/q;

    iput-boolean p3, p0, Lb/b/g/a/a;->k:Z

    invoke-virtual {p1}, Lb/b/g/al;->h()I

    move-result p1

    iput p1, p0, Lb/b/g/a/a;->h:I

    new-instance p1, Ljava/util/BitSet;

    iget p2, p0, Lb/b/g/a/a;->h:I

    shl-int/lit8 p2, p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lb/b/g/a/a;->i:Ljava/util/BitSet;

    iget-object p1, p0, Lb/b/g/a/a;->i:Ljava/util/BitSet;

    iget p2, p0, Lb/b/g/a/a;->h:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/util/BitSet;->set(II)V

    new-instance p1, Ljava/util/BitSet;

    iget p2, p0, Lb/b/g/a/a;->h:I

    shl-int/lit8 p2, p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lb/b/g/a/a;->j:Ljava/util/BitSet;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lb/b/g/a/a;->b:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/b/g/a/a;->c:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/b/g/a/a;->d:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/b/g/a/a;->e:Ljava/util/ArrayList;

    return-void
.end method

.method private a(IILb/b/g/a/b;)I
    .registers 7

    iget-object v0, p0, Lb/b/g/a/a;->i:Ljava/util/BitSet;

    invoke-virtual {p3, v0, p1}, Lb/b/g/a/b;->a(Ljava/util/BitSet;I)I

    move-result p1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lb/b/g/a/a;->i:Ljava/util/BitSet;

    add-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-ne v0, p2, :cond_1

    return p1

    :cond_1
    iget-object v1, p0, Lb/b/g/a/a;->i:Ljava/util/BitSet;

    add-int/2addr p1, v0

    invoke-virtual {p3, v1, p1}, Lb/b/g/a/b;->a(Ljava/util/BitSet;I)I

    move-result p1

    goto :goto_0
.end method

.method private a(ILb/b/g/x;[ILjava/util/BitSet;)I
    .registers 15

    invoke-virtual {p2}, Lb/b/g/x;->a()Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result v1

    invoke-virtual {p2}, Lb/b/g/x;->o()Lb/b/g/af;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/g/af;->q()Lb/b/h/l;

    move-result-object p2

    invoke-direct {p0, p2}, Lb/b/g/a/a;->a(Lb/b/h/l;)Lb/b/f/b/u;

    move-result-object p2

    new-instance v2, Ljava/util/BitSet;

    iget-object v3, p0, Lb/b/g/a/a;->a:Lb/b/g/al;

    invoke-virtual {v3}, Lb/b/g/al;->g()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v6

    invoke-virtual {v6}, Lb/b/f/b/r;->f()I

    move-result v7

    aget v8, p3, v3

    if-eqz v3, :cond_0

    add-int/lit8 v9, v3, -0x1

    aget v9, p3, v9

    add-int/2addr p1, v9

    :cond_0
    iget-object v9, p0, Lb/b/g/a/a;->f:Ljava/util/BitSet;

    invoke-virtual {v9, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lb/b/g/a/a;->g:Lb/b/g/q;

    invoke-virtual {v9, v7}, Lb/b/g/q;->a(I)I

    move-result v9

    if-ne v9, p1, :cond_1

    :goto_1
    add-int/2addr v4, v8

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1, v8}, Lb/b/g/a/a;->b(II)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    iget-object v9, p0, Lb/b/g/a/a;->f:Ljava/util/BitSet;

    invoke-virtual {v9, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-direct {p0, v6, p1}, Lb/b/g/a/a;->a(Lb/b/f/b/r;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lb/b/g/a/a;->g:Lb/b/g/q;

    invoke-virtual {v6, p2, p1, v8}, Lb/b/g/q;->a(Lb/b/f/b/u;II)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lb/b/g/a/a;->g:Lb/b/g/q;

    invoke-virtual {v6, v0, p1, v8}, Lb/b/g/q;->a(Lb/b/f/b/u;II)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p4, v3}, Ljava/util/BitSet;->set(I)V

    :goto_2
    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move v5, v4

    :cond_5
    :goto_3
    return v5
.end method

.method private a(Lb/b/g/x;I[ILjava/util/BitSet;)I
    .registers 13

    sget-object v0, Lb/b/g/a/b;->c:Lb/b/g/a/b;

    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v6, p3, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    invoke-static {v5}, Lb/b/g/a/a;->f(I)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-le v3, v4, :cond_3

    iget v0, p0, Lb/b/g/a/a;->h:I

    invoke-static {v0}, Lb/b/g/a/a;->f(I)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    sget-object v0, Lb/b/g/a/b;->a:Lb/b/g/a/b;

    goto :goto_4

    :cond_3
    if-lez v4, :cond_5

    iget v0, p0, Lb/b/g/a/a;->h:I

    invoke-static {v0}, Lb/b/g/a/a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    sget-object v0, Lb/b/g/a/b;->b:Lb/b/g/a/b;

    :cond_5
    :goto_4
    iget v1, p0, Lb/b/g/a/a;->h:I

    :goto_5
    invoke-direct {p0, v1, p2, v0}, Lb/b/g/a/a;->a(IILb/b/g/a/b;)I

    move-result v1

    invoke-direct {p0, v1, p1, p3, p4}, Lb/b/g/a/a;->a(ILb/b/g/x;[ILjava/util/BitSet;)I

    move-result v2

    if-gez v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p4}, Ljava/util/BitSet;->clear()V

    goto :goto_5

    :cond_6
    return v1
.end method

.method private a(Lb/b/h/l;)Lb/b/f/b/u;
    .registers 6

    new-instance v0, Lb/b/f/b/u;

    invoke-interface {p1}, Lb/b/h/l;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lb/b/f/b/u;-><init>(I)V

    invoke-interface {p1}, Lb/b/h/l;->b()Lb/b/h/j;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Lb/b/h/j;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1}, Lb/b/h/j;->b()I

    move-result v3

    invoke-virtual {p0, v3}, Lb/b/g/a/a;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lb/b/f/b/u;->a(ILb/b/f/b/r;)V

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(II)V
    .registers 5

    iget-object v0, p0, Lb/b/g/a/a;->i:Ljava/util/BitSet;

    add-int/2addr p2, p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/BitSet;->set(IIZ)V

    return-void
.end method

.method private a(Lb/b/g/aj;)V
    .registers 6

    invoke-virtual {p1}, Lb/b/g/aj;->e()Lb/b/f/b/r;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v1

    iget-object v2, p0, Lb/b/g/a/a;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lb/b/g/a/a;->b:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    instance-of v0, p1, Lb/b/g/x;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lb/b/g/aj;->c()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lb/b/g/a/a;->c:Ljava/util/ArrayList;

    :goto_0
    check-cast p1, Lb/b/g/x;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-static {}, Lb/b/g/y;->b()Lb/b/f/b/ad;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/g/aj;->d()Lb/b/f/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v1

    invoke-virtual {p1}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/b/f/b/ad;->a(Lb/b/f/b/x;Lb/b/f/b/u;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/b/g/a/a;->d:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lb/b/g/aa;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/b/g/a/a;->e:Ljava/util/ArrayList;

    check-cast p1, Lb/b/g/aa;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method static synthetic a(I)Z
    .registers 1

    invoke-static {p0}, Lb/b/g/a/a;->f(I)Z

    move-result p0

    return p0
.end method

.method private a(Lb/b/f/b/r;I)Z
    .registers 4

    invoke-virtual {p1}, Lb/b/f/b/r;->k()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lb/b/g/a/a;->d(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/g/a/a;->g:Lb/b/g/q;

    invoke-virtual {v0, p1, p2}, Lb/b/g/q;->a(Lb/b/f/b/r;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lb/b/f/b/r;II)Z
    .registers 5

    invoke-virtual {p1}, Lb/b/f/b/r;->k()I

    move-result v0

    if-gt v0, p3, :cond_0

    iget-object p3, p0, Lb/b/g/a/a;->f:Ljava/util/BitSet;

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lb/b/g/a/a;->a(Lb/b/f/b/r;I)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lb/b/g/a/a;->b(Lb/b/f/b/r;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/util/ArrayList;IIZ)Z
    .registers 11

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/b/r;

    iget-object v4, p0, Lb/b/g/a/a;->f:Ljava/util/BitSet;

    invoke-virtual {v2}, Lb/b/f/b/r;->f()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v2, p2, p3}, Lb/b/g/a/a;->a(Lb/b/f/b/r;II)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v4, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {v2}, Lb/b/f/b/r;->k()I

    move-result v2

    invoke-direct {p0, p2, v2}, Lb/b/g/a/a;->a(II)V

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    return v3

    :cond_4
    return v0
.end method

.method private b()V
    .registers 13

    iget-object v0, p0, Lb/b/g/a/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget v2, p0, Lb/b/g/a/a;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_1
    if-ge v7, v5, :cond_2

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/b/f/b/r;

    invoke-virtual {v9}, Lb/b/f/b/r;->k()I

    move-result v10

    iget-object v11, p0, Lb/b/g/a/a;->f:Ljava/util/BitSet;

    invoke-virtual {v9}, Lb/b/f/b/r;->f()I

    move-result v9

    invoke-virtual {v11, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_1

    if-le v10, v8, :cond_1

    move v8, v10

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v8}, Lb/b/g/a/a;->d(I)Lb/b/g/a/b;

    move-result-object v5

    iget-object v7, p0, Lb/b/g/a/a;->j:Ljava/util/BitSet;

    invoke-virtual {v5, v7, v2}, Lb/b/g/a/b;->a(Ljava/util/BitSet;I)I

    move-result v2

    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-ge v7, v8, :cond_3

    iget-object v9, p0, Lb/b/g/a/a;->j:Ljava/util/BitSet;

    add-int v10, v2, v7

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    if-ne v7, v8, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/b/f/b/r;

    iget-object v9, p0, Lb/b/g/a/a;->f:Ljava/util/BitSet;

    invoke-virtual {v7}, Lb/b/f/b/r;->f()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-direct {p0, v7, v2}, Lb/b/g/a/a;->a(Lb/b/f/b/r;I)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    const/4 v5, 0x1

    :goto_4
    if-eqz v5, :cond_6

    invoke-direct {p0, v1, v2, v8, v6}, Lb/b/g/a/a;->a(Ljava/util/ArrayList;IIZ)Z

    move-result v4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    if-eqz v4, :cond_0

    goto/16 :goto_0

    :cond_7
    iget-object v9, p0, Lb/b/g/a/a;->j:Ljava/util/BitSet;

    add-int/2addr v2, v7

    invoke-virtual {v5, v9, v2}, Lb/b/g/a/b;->a(Ljava/util/BitSet;I)I

    move-result v2

    goto :goto_2

    :cond_8
    return-void
.end method

.method private b(Lb/b/f/b/r;I)V
    .registers 6

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v0

    iget-object v1, p0, Lb/b/g/a/a;->f:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lb/b/g/a/a;->a(Lb/b/f/b/r;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lb/b/f/b/r;->k()I

    move-result v1

    iget-object v2, p0, Lb/b/g/a/a;->g:Lb/b/g/q;

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result p1

    invoke-virtual {v2, p1, p2, v1}, Lb/b/g/q;->a(III)V

    iget-object p1, p0, Lb/b/g/a/a;->f:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    iget-object p1, p0, Lb/b/g/a/a;->j:Ljava/util/BitSet;

    add-int/2addr v1, p2

    invoke-virtual {p1, p2, v1}, Ljava/util/BitSet;->set(II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "attempt to add invalid register mapping"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(II)Z
    .registers 5

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lb/b/g/a/a;->i:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private c(I)I
    .registers 5

    iget-object v0, p0, Lb/b/g/a/a;->a:Lb/b/g/al;

    invoke-virtual {v0, p1}, Lb/b/g/al;->c(I)Lb/b/g/aj;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lb/b/g/aj;->c()Lb/b/f/b/x;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lb/b/f/b/x;->a()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lb/b/g/aj;->d()Lb/b/f/b/i;

    move-result-object p1

    check-cast p1, Lb/b/f/b/e;

    invoke-virtual {p1}, Lb/b/f/b/e;->e_()Lb/b/f/c/a;

    move-result-object p1

    check-cast p1, Lb/b/f/c/p;

    invoke-virtual {p1}, Lb/b/f/c/p;->j()I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method private c(II)I
    .registers 4

    invoke-direct {p0, p2}, Lb/b/g/a/a;->d(I)Lb/b/g/a/b;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lb/b/g/a/a;->a(IILb/b/g/a/b;)I

    move-result p1

    return p1
.end method

.method private c()V
    .registers 13

    iget-object v0, p0, Lb/b/g/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/x;

    invoke-virtual {v1}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->f()I

    move-result v3

    invoke-virtual {v1}, Lb/b/g/x;->o()Lb/b/g/af;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/g/af;->g()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lb/b/g/a/a;->a:Lb/b/g/al;

    invoke-virtual {v4}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/af;

    invoke-virtual {v1}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/aj;

    invoke-virtual {v1}, Lb/b/g/aj;->c()Lb/b/f/b/x;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/b/x;->a()I

    move-result v4

    const/16 v7, 0x2b

    if-ne v4, v7, :cond_0

    invoke-virtual {v1}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v4

    invoke-virtual {v4, v6}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/b/r;->f()I

    move-result v7

    invoke-virtual {v4}, Lb/b/f/b/r;->k()I

    move-result v8

    iget-object v9, p0, Lb/b/g/a/a;->f:Ljava/util/BitSet;

    invoke-virtual {v9, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    iget-object v10, p0, Lb/b/g/a/a;->f:Ljava/util/BitSet;

    invoke-virtual {v10, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    xor-int/lit8 v11, v10, 0x1

    and-int/2addr v11, v9

    if-eqz v11, :cond_1

    iget-object v10, p0, Lb/b/g/a/a;->g:Lb/b/g/q;

    invoke-virtual {v10, v3}, Lb/b/g/q;->a(I)I

    move-result v10

    invoke-direct {p0, v4, v10, v8}, Lb/b/g/a/a;->a(Lb/b/f/b/r;II)Z

    move-result v10

    :cond_1
    xor-int/lit8 v11, v9, 0x1

    and-int/2addr v11, v10

    if-eqz v11, :cond_2

    iget-object v9, p0, Lb/b/g/a/a;->g:Lb/b/g/q;

    invoke-virtual {v9, v7}, Lb/b/g/q;->a(I)I

    move-result v9

    invoke-direct {p0, v2, v9, v8}, Lb/b/g/a/a;->a(Lb/b/f/b/r;II)Z

    move-result v9

    :cond_2
    if-eqz v9, :cond_3

    if-nez v10, :cond_4

    :cond_3
    iget v9, p0, Lb/b/g/a/a;->h:I

    invoke-direct {p0, v9, v8}, Lb/b/g/a/a;->c(II)I

    move-result v9

    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-direct {p0, v10, v9, v8, v6}, Lb/b/g/a/a;->a(Ljava/util/ArrayList;IIZ)Z

    move-result v2

    if-nez v2, :cond_4

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v9, v8}, Lb/b/g/a/a;->c(II)I

    move-result v9

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lb/b/g/aj;->d()Lb/b/f/b/i;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/i;->b()Lb/b/f/d/e;

    move-result-object v2

    invoke-interface {v2}, Lb/b/f/d/e;->a_()I

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    iget-object v2, p0, Lb/b/g/a/a;->g:Lb/b/g/q;

    invoke-virtual {v2, v3}, Lb/b/g/q;->a(I)I

    move-result v2

    iget-object v3, p0, Lb/b/g/a/a;->g:Lb/b/g/q;

    invoke-virtual {v3, v7}, Lb/b/g/q;->a(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    if-nez v5, :cond_0

    move-object v3, v1

    check-cast v3, Lb/b/g/x;

    invoke-virtual {p0, v1, v4}, Lb/b/g/a/a;->a(Lb/b/g/aj;Lb/b/f/b/r;)Lb/b/f/b/r;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lb/b/g/x;->a(ILb/b/f/b/r;)V

    invoke-virtual {v1}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v1

    invoke-virtual {v1, v6}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lb/b/g/a/a;->b(Lb/b/f/b/r;I)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private d(I)Lb/b/g/a/b;
    .registers 4

    sget-object v0, Lb/b/g/a/b;->c:Lb/b/g/a/b;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget p1, p0, Lb/b/g/a/a;->h:I

    invoke-static {p1}, Lb/b/g/a/a;->f(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object v0, Lb/b/g/a/b;->a:Lb/b/g/a/b;

    goto :goto_0

    :cond_0
    sget-object v0, Lb/b/g/a/b;->b:Lb/b/g/a/b;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private d()V
    .registers 12

    iget-object v0, p0, Lb/b/g/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/aa;

    invoke-virtual {v1}, Lb/b/g/aa;->n()Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->f()I

    move-result v3

    invoke-virtual {v2}, Lb/b/f/b/r;->k()I

    move-result v4

    invoke-virtual {v1}, Lb/b/g/aa;->a()Lb/b/f/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/u;->a_()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lb/b/g/a/f;

    add-int/lit8 v8, v5, 0x1

    invoke-direct {v7, v8}, Lb/b/g/a/f;-><init>(I)V

    iget-object v8, p0, Lb/b/g/a/a;->f:Ljava/util/BitSet;

    invoke-virtual {v8, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v2, p0, Lb/b/g/a/a;->g:Lb/b/g/q;

    invoke-virtual {v2, v3}, Lb/b/g/q;->a(I)I

    move-result v2

    invoke-virtual {v7, v2}, Lb/b/g/a/f;->a(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_3

    invoke-virtual {v1, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v8

    iget-object v9, p0, Lb/b/g/a/a;->a:Lb/b/g/al;

    invoke-virtual {v8}, Lb/b/f/b/r;->f()I

    move-result v8

    invoke-virtual {v9, v8}, Lb/b/g/al;->c(I)Lb/b/g/aj;

    move-result-object v8

    invoke-virtual {v8}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v8

    invoke-virtual {v8}, Lb/b/f/b/r;->f()I

    move-result v9

    iget-object v10, p0, Lb/b/g/a/a;->f:Ljava/util/BitSet;

    invoke-virtual {v10, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v8, p0, Lb/b/g/a/a;->g:Lb/b/g/q;

    invoke-virtual {v8, v9}, Lb/b/g/q;->a(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lb/b/g/a/f;->a(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v7}, Lb/b/g/a/f;->b()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {v7}, Lb/b/g/a/f;->a()I

    move-result v3

    invoke-direct {p0, v6, v3, v4, v2}, Lb/b/g/a/a;->a(Ljava/util/ArrayList;IIZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget v1, p0, Lb/b/g/a/a;->h:I

    :goto_4
    invoke-direct {p0, v1, v4}, Lb/b/g/a/a;->c(II)I

    move-result v1

    invoke-direct {p0, v6, v1, v4, v2}, Lb/b/g/a/a;->a(Ljava/util/ArrayList;IIZ)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method private d(II)Z
    .registers 4

    iget v0, p0, Lb/b/g/a/a;->h:I

    if-ge p1, v0, :cond_0

    add-int/2addr p1, p2

    iget p2, p0, Lb/b/g/a/a;->h:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private e(I)Lb/b/f/b/n;
    .registers 6

    iget-object v0, p0, Lb/b/g/a/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/f/b/r;

    invoke-virtual {v3}, Lb/b/f/b/r;->f()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/f/b/n;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private e()V
    .registers 7

    iget-object v0, p0, Lb/b/g/a/a;->a:Lb/b/g/al;

    invoke-virtual {v0}, Lb/b/g/al;->g()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lb/b/g/a/a;->f:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lb/b/g/a/a;->b(I)Lb/b/f/b/r;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lb/b/f/b/r;->k()I

    move-result v3

    iget v4, p0, Lb/b/g/a/a;->h:I

    :goto_1
    invoke-direct {p0, v4, v3}, Lb/b/g/a/a;->c(II)I

    move-result v4

    invoke-direct {p0, v2, v4}, Lb/b/g/a/a;->a(Lb/b/f/b/r;I)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2, v4}, Lb/b/g/a/a;->b(Lb/b/f/b/r;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static f(I)Z
    .registers 2

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Lb/b/g/ad;
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lb/b/g/a/a;->a:Lb/b/g/al;

    invoke-virtual {v1, v0}, Lb/b/g/al;->a(Lb/b/g/ak;)V

    iget-object v1, v0, Lb/b/g/a/a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v3, 0x0

    const/4 v6, -0x1

    :goto_1
    if-ge v3, v5, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/b/f/b/r;

    invoke-virtual {v6}, Lb/b/f/b/r;->f()I

    move-result v7

    invoke-direct {v0, v7}, Lb/b/g/a/a;->c(I)I

    move-result v7

    if-ltz v7, :cond_1

    invoke-virtual {v6}, Lb/b/f/b/r;->k()I

    move-result v4

    invoke-direct {v0, v6, v7}, Lb/b/g/a/a;->b(Lb/b/f/b/r;I)V

    move v6, v7

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v6, v7

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-ltz v6, :cond_0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v6, v4, v3}, Lb/b/g/a/a;->a(Ljava/util/ArrayList;IIZ)Z

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lb/b/g/a/a;->a:Lb/b/g/al;

    invoke-virtual {v1}, Lb/b/g/al;->g()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_5

    iget-object v5, v0, Lb/b/g/a/a;->f:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {v0, v2}, Lb/b/g/a/a;->c(I)I

    move-result v5

    invoke-virtual {v0, v2}, Lb/b/g/a/a;->b(I)Lb/b/f/b/r;

    move-result-object v6

    if-ltz v5, :cond_4

    invoke-direct {v0, v6, v5}, Lb/b/g/a/a;->b(Lb/b/f/b/r;I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lb/b/g/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/x;

    invoke-virtual {v2}, Lb/b/g/x;->a()Lb/b/f/b/u;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/f/b/u;->a_()I

    move-result v6

    new-array v7, v6, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_4
    if-ge v8, v6, :cond_7

    invoke-virtual {v5, v8}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v10

    invoke-virtual {v10}, Lb/b/f/b/r;->k()I

    move-result v10

    aput v10, v7, v8

    aget v10, v7, v8

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    const/high16 v8, -0x80000000

    const/4 v10, 0x0

    move-object v13, v10

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/high16 v11, -0x80000000

    const/4 v12, -0x1

    :goto_5
    if-ge v8, v6, :cond_b

    invoke-virtual {v5, v8}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v14

    invoke-virtual {v14}, Lb/b/f/b/r;->f()I

    move-result v14

    if-eqz v8, :cond_8

    add-int/lit8 v15, v8, -0x1

    aget v15, v7, v15

    sub-int/2addr v10, v15

    :cond_8
    iget-object v15, v0, Lb/b/g/a/a;->f:Ljava/util/BitSet;

    invoke-virtual {v15, v14}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_a

    iget-object v15, v0, Lb/b/g/a/a;->g:Lb/b/g/q;

    invoke-virtual {v15, v14}, Lb/b/g/q;->a(I)I

    move-result v14

    add-int/2addr v14, v10

    if-ltz v14, :cond_a

    invoke-direct {v0, v14, v9}, Lb/b/g/a/a;->d(II)Z

    move-result v15

    if-nez v15, :cond_a

    new-instance v15, Ljava/util/BitSet;

    invoke-direct {v15, v6}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {v0, v14, v2, v7, v15}, Lb/b/g/a/a;->a(ILb/b/g/x;[ILjava/util/BitSet;)I

    move-result v4

    if-ltz v4, :cond_a

    invoke-virtual {v15}, Ljava/util/BitSet;->cardinality()I

    move-result v16

    sub-int v3, v4, v16

    if-le v3, v11, :cond_9

    move v12, v14

    move-object v13, v15

    goto :goto_6

    :cond_9
    move v3, v11

    :goto_6
    if-eq v4, v9, :cond_b

    move v11, v3

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_b
    const/4 v3, -0x1

    if-ne v12, v3, :cond_c

    new-instance v13, Ljava/util/BitSet;

    invoke-direct {v13, v6}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {v0, v2, v9, v7, v13}, Lb/b/g/a/a;->a(Lb/b/g/x;I[ILjava/util/BitSet;)I

    move-result v12

    :cond_c
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    :goto_7
    if-ltz v4, :cond_d

    invoke-virtual {v5, v4}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lb/b/g/a/a;->a(Lb/b/g/aj;Lb/b/f/b/r;)Lb/b/f/b/r;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lb/b/g/x;->a(ILb/b/f/b/r;)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v13, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    goto :goto_7

    :cond_d
    invoke-virtual {v2}, Lb/b/g/x;->a()Lb/b/f/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/u;->a_()I

    move-result v4

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v4, :cond_6

    invoke-virtual {v2, v5}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v6

    invoke-virtual {v6}, Lb/b/f/b/r;->f()I

    move-result v7

    invoke-virtual {v6}, Lb/b/f/b/r;->k()I

    move-result v8

    add-int v9, v12, v8

    iget-object v10, v0, Lb/b/g/a/a;->f:Ljava/util/BitSet;

    invoke-virtual {v10, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_f

    invoke-direct {v0, v7}, Lb/b/g/a/a;->e(I)Lb/b/f/b/n;

    move-result-object v7

    invoke-direct {v0, v6, v12}, Lb/b/g/a/a;->b(Lb/b/f/b/r;I)V

    if-eqz v7, :cond_f

    invoke-direct {v0, v12, v8}, Lb/b/g/a/a;->a(II)V

    iget-object v6, v0, Lb/b/g/a/a;->b:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v7, :cond_f

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lb/b/f/b/r;

    invoke-virtual {v11}, Lb/b/f/b/r;->f()I

    move-result v13

    invoke-virtual {v2, v13}, Lb/b/f/b/u;->c(I)I

    move-result v13

    const/4 v14, -0x1

    if-ne v14, v13, :cond_e

    invoke-direct {v0, v11, v12, v8}, Lb/b/g/a/a;->a(Lb/b/f/b/r;II)Z

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_f
    const/4 v14, -0x1

    add-int/lit8 v5, v5, 0x1

    move v12, v9

    goto :goto_8

    :cond_10
    invoke-direct/range {p0 .. p0}, Lb/b/g/a/a;->b()V

    invoke-direct/range {p0 .. p0}, Lb/b/g/a/a;->c()V

    invoke-direct/range {p0 .. p0}, Lb/b/g/a/a;->d()V

    invoke-direct/range {p0 .. p0}, Lb/b/g/a/a;->e()V

    iget-object v1, v0, Lb/b/g/a/a;->g:Lb/b/g/q;

    return-object v1
.end method

.method public a(Lb/b/g/aa;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/g/a/a;->a(Lb/b/g/aj;)V

    return-void
.end method

.method public a(Lb/b/g/x;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/g/a/a;->a(Lb/b/g/aj;)V

    return-void
.end method

.method public b(Lb/b/g/x;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/g/a/a;->a(Lb/b/g/aj;)V

    return-void
.end method
