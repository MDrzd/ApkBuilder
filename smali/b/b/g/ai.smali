.class public Lb/b/g/ai;
.super Ljava/lang/Object;


# instance fields
.field private a:Lb/b/g/al;

.field private final b:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Lb/b/g/al;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/g/ai;->a:Lb/b/g/al;

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lb/b/g/al;->g()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lb/b/g/ai;->b:Ljava/util/BitSet;

    return-void
.end method

.method public static a(Lcom/gmail/heagoo/pngeditor/j;IZ)Lb/b/g/al;
    .registers 3

    invoke-static {p0, p1, p2}, Lb/b/g/al;->a(Lcom/gmail/heagoo/pngeditor/j;IZ)Lb/b/g/al;

    move-result-object p0

    invoke-static {p0}, Lb/b/g/ai;->b(Lb/b/g/al;)V

    invoke-static {p0}, Lcom/gmail/heagoo/pngeditor/k;->a(Lb/b/g/al;)Lb/b/g/t;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lb/b/g/ai;->a(Lb/b/g/al;Lb/b/g/t;I)V

    new-instance p1, Lb/b/g/an;

    invoke-direct {p1, p0}, Lb/b/g/an;-><init>(Lb/b/g/al;)V

    invoke-virtual {p1}, Lb/b/g/an;->run()V

    invoke-virtual {p0}, Lb/b/g/al;->a()V

    return-object p0
.end method

.method public static a(Lb/b/g/al;)V
    .registers 7

    new-instance v0, Lb/b/g/ai;

    invoke-direct {v0, p0}, Lb/b/g/ai;-><init>(Lb/b/g/al;)V

    iget-object p0, v0, Lb/b/g/ai;->a:Lb/b/g/al;

    invoke-virtual {p0}, Lb/b/g/al;->g()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    iget-object v3, v0, Lb/b/g/ai;->a:Lb/b/g/al;

    invoke-virtual {v3, v2}, Lb/b/g/al;->c(I)Lb/b/g/aj;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/r;->c()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lb/b/g/ai;->b:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lb/b/g/ai;->b:Ljava/util/BitSet;

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p0

    if-ltz p0, :cond_3

    iget-object v2, v0, Lb/b/g/ai;->b:Ljava/util/BitSet;

    invoke-virtual {v2, p0}, Ljava/util/BitSet;->clear(I)V

    iget-object v2, v0, Lb/b/g/ai;->a:Lb/b/g/al;

    invoke-virtual {v2, p0}, Lb/b/g/al;->c(I)Lb/b/g/aj;

    move-result-object v2

    check-cast v2, Lb/b/g/aa;

    invoke-virtual {v0, v2}, Lb/b/g/ai;->a(Lb/b/g/aa;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lb/b/g/ai;->a:Lb/b/g/al;

    invoke-virtual {v2, p0}, Lb/b/g/al;->d(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/g/aj;

    invoke-virtual {v4}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v5

    if-eqz v5, :cond_2

    instance-of v4, v4, Lb/b/g/aa;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lb/b/g/ai;->b:Ljava/util/BitSet;

    invoke-virtual {v5}, Lb/b/f/b/r;->f()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static a(Lb/b/g/al;I)V
    .registers 3

    invoke-static {p0}, Lcom/gmail/heagoo/pngeditor/k;->a(Lb/b/g/al;)Lb/b/g/t;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lb/b/g/ai;->a(Lb/b/g/al;Lb/b/g/t;I)V

    new-instance v0, Lb/b/g/an;

    invoke-direct {v0, p0, p1}, Lb/b/g/an;-><init>(Lb/b/g/al;I)V

    invoke-virtual {v0}, Lb/b/g/an;->run()V

    return-void
.end method

.method private static a(Lb/b/g/al;Lb/b/g/t;I)V
    .registers 14

    invoke-virtual {p0}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lb/b/g/al;->g()I

    move-result v2

    sub-int/2addr v2, p2

    new-instance v3, Lb/b/g/g;

    invoke-direct {v3, p0}, Lb/b/g/g;-><init>(Lb/b/g/al;)V

    invoke-virtual {v3}, Lb/b/g/g;->a()[Lb/b/g/h;

    move-result-object p0

    new-array v3, v2, [Ljava/util/BitSet;

    new-array v4, v2, [Ljava/util/BitSet;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_0

    new-instance v7, Ljava/util/BitSet;

    invoke-direct {v7, v1}, Ljava/util/BitSet;-><init>(I)V

    aput-object v7, v3, v6

    new-instance v7, Ljava/util/BitSet;

    invoke-direct {v7, v1}, Ljava/util/BitSet;-><init>(I)V

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/b/g/af;

    invoke-virtual {v7}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/b/g/aj;

    invoke-virtual {v8}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lb/b/f/b/r;->f()I

    move-result v9

    sub-int/2addr v9, p2

    if-ltz v9, :cond_1

    invoke-virtual {v8}, Lb/b/f/b/r;->f()I

    move-result v8

    sub-int/2addr v8, p2

    aget-object v8, v3, v8

    invoke-virtual {v8, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_8

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/BitSet;

    :cond_4
    invoke-virtual {v6, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v7

    if-ltz v7, :cond_7

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->clear(I)V

    aget-object v7, p0, v7

    iget-object v7, v7, Lb/b/g/h;->a:Lb/b/h/l;

    invoke-interface {v7}, Lb/b/h/l;->b()Lb/b/h/j;

    move-result-object v7

    :cond_5
    :goto_4
    invoke-interface {v7}, Lb/b/h/j;->a()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Lb/b/h/j;->b()I

    move-result v8

    aget-object v9, v4, v1

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_5

    aget-object v9, v4, v1

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    add-int v9, v1, p2

    invoke-virtual {p1, v8}, Lb/b/g/t;->a(I)Lb/b/f/b/w;

    move-result-object v10

    invoke-virtual {v10, v9}, Lb/b/f/b/w;->a(I)Lb/b/f/b/r;

    move-result-object v10

    if-nez v10, :cond_6

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb/b/g/af;

    invoke-virtual {v10, v9}, Lb/b/g/af;->a(I)V

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/b/g/af;

    invoke-virtual {v9, v10}, Lb/b/g/af;->a(Lb/b/f/b/r;)V

    :goto_5
    aget-object v9, v3, v1

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->set(I)V

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method private static a(Lb/b/f/b/n;Lb/b/f/b/n;)Z
    .registers 2

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lb/b/f/b/n;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lb/b/g/af;)Z
    .registers 3

    invoke-virtual {p0}, Lb/b/g/af;->g()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    invoke-virtual {p0}, Lb/b/g/af;->h()Ljava/util/BitSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    if-le p0, v1, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lb/b/g/af;Lb/b/g/af;)Z
    .registers 5

    invoke-virtual {p0}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/g/aj;

    invoke-virtual {p0}, Lb/b/g/af;->h()Ljava/util/BitSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    if-le p0, v2, :cond_0

    invoke-virtual {p1}, Lb/b/g/af;->g()Ljava/util/BitSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    if-le p0, v2, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object p0

    invoke-virtual {p0}, Lb/b/f/b/u;->a_()I

    move-result p0

    if-lez p0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lb/b/g/af;->g()Ljava/util/BitSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    if-le p0, v2, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/gmail/heagoo/pngeditor/j;IZ)Lb/b/g/al;
    .registers 3

    invoke-static {p0, p1, p2}, Lb/b/g/al;->a(Lcom/gmail/heagoo/pngeditor/j;IZ)Lb/b/g/al;

    move-result-object p0

    invoke-static {p0}, Lb/b/g/ai;->b(Lb/b/g/al;)V

    return-object p0
.end method

.method private static b(Lb/b/g/al;)V
    .registers 1

    invoke-static {p0}, Lb/b/g/ai;->c(Lb/b/g/al;)V

    invoke-static {p0}, Lb/b/g/ai;->d(Lb/b/g/al;)V

    invoke-static {p0}, Lb/b/g/ai;->e(Lb/b/g/al;)V

    return-void
.end method

.method public static c(Lcom/gmail/heagoo/pngeditor/j;IZ)Lb/b/g/al;
    .registers 3

    invoke-static {p0, p1, p2}, Lb/b/g/al;->a(Lcom/gmail/heagoo/pngeditor/j;IZ)Lb/b/g/al;

    move-result-object p0

    invoke-static {p0}, Lb/b/g/ai;->b(Lb/b/g/al;)V

    invoke-static {p0}, Lcom/gmail/heagoo/pngeditor/k;->a(Lb/b/g/al;)Lb/b/g/t;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lb/b/g/ai;->a(Lb/b/g/al;Lb/b/g/t;I)V

    return-object p0
.end method

.method private static c(Lb/b/g/al;)V
    .registers 4

    invoke-virtual {p0}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/af;

    invoke-static {v1}, Lb/b/g/ai;->a(Lb/b/g/af;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lb/b/g/af;->o()Lb/b/g/af;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static d(Lb/b/g/al;)V
    .registers 9

    invoke-virtual {p0}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/af;

    invoke-virtual {v2}, Lb/b/g/af;->r()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lb/b/g/af;->g()Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-le v3, v1, :cond_1

    invoke-virtual {v2}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/g/aj;

    invoke-virtual {v3}, Lb/b/g/aj;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lb/b/g/af;->g()Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    :goto_1
    if-ltz v5, :cond_0

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/b/g/af;

    invoke-virtual {v6, v2}, Lb/b/g/af;->b(Lb/b/g/af;)Lb/b/g/af;

    move-result-object v6

    invoke-virtual {v6}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/b/g/aj;

    invoke-virtual {v7}, Lb/b/g/aj;->m()Lb/b/g/aj;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static e(Lb/b/g/al;)V
    .registers 7

    invoke-virtual {p0}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/af;

    invoke-virtual {v1}, Lb/b/g/af;->h()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/g/af;

    invoke-static {v1, v4}, Lb/b/g/ai;->a(Lb/b/g/af;Lb/b/g/af;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4}, Lb/b/g/af;->b(Lb/b/g/af;)Lb/b/g/af;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method a(Lb/b/g/aa;)Z
    .registers 14

    iget-object v0, p0, Lb/b/g/ai;->a:Lb/b/g/al;

    invoke-virtual {p1, v0}, Lb/b/g/aa;->a(Lb/b/g/al;)V

    invoke-virtual {p1}, Lb/b/g/aa;->a()Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v5, v2

    const/4 v4, 0x0

    const/4 v6, -0x1

    :goto_0
    if-ge v4, v1, :cond_1

    invoke-virtual {v0, v4}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v7

    invoke-virtual {v7}, Lb/b/f/b/r;->c()I

    move-result v8

    if-eqz v8, :cond_0

    move v6, v4

    move-object v5, v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    return v3

    :cond_2
    invoke-virtual {v5}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v4

    invoke-virtual {v5}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object v5

    const/4 v7, 0x1

    move-object v8, v5

    const/4 v5, 0x0

    const/4 v9, 0x1

    :goto_1
    if-ge v5, v1, :cond_5

    if-eq v5, v6, :cond_4

    invoke-virtual {v0, v5}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v10

    invoke-virtual {v10}, Lb/b/f/b/r;->c()I

    move-result v11

    if-eqz v11, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v10}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v9

    invoke-static {v4, v9}, Lb/b/g/ai;->a(Lb/b/f/b/n;Lb/b/f/b/n;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v10}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object v10

    invoke-static {v8, v10}, La/a/a;->a(Lb/b/f/d/d;Lb/b/f/d/d;)Lb/b/f/d/d;

    move-result-object v8

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    if-eqz v8, :cond_8

    if-eqz v9, :cond_6

    move-object v2, v4

    :cond_6
    invoke-virtual {p1}, Lb/b/g/aa;->n()Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v1

    if-ne v1, v8, :cond_7

    invoke-virtual {v0}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v0

    invoke-static {v2, v0}, Lb/b/g/ai;->a(Lb/b/f/b/n;Lb/b/f/b/n;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v3

    :cond_7
    invoke-virtual {p1, v8, v2}, Lb/b/g/aa;->a(Lb/b/f/d/d;Lb/b/f/b/n;)V

    return v7

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    if-ge v3, v1, :cond_9

    invoke-virtual {v0, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t map types in phi insn:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
