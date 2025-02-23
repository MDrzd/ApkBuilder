.class public final Lb/b/g/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/g/al;

.field private final b:I

.field private final c:Ljava/util/BitSet;

.field private final d:[Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Lb/b/g/al;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/g/e;->a:Lb/b/g/al;

    invoke-virtual {p1}, Lb/b/g/al;->g()I

    move-result p1

    iput p1, p0, Lb/b/g/e;->b:I

    new-instance p1, Ljava/util/BitSet;

    iget v0, p0, Lb/b/g/e;->b:I

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lb/b/g/e;->c:Ljava/util/BitSet;

    iget-object p1, p0, Lb/b/g/e;->a:Lb/b/g/al;

    invoke-virtual {p1}, Lb/b/g/al;->m()[Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lb/b/g/e;->d:[Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lb/b/g/al;)V
    .registers 14

    new-instance v0, Lb/b/g/e;

    invoke-direct {v0, p0}, Lb/b/g/e;-><init>(Lb/b/g/al;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, v0, Lb/b/g/e;->a:Lb/b/g/al;

    invoke-virtual {v1}, Lb/b/g/al;->k()Ljava/util/BitSet;

    move-result-object v1

    iget-object v2, v0, Lb/b/g/e;->a:Lb/b/g/al;

    invoke-virtual {v2}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/g/af;

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v5}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/b/g/aj;

    invoke-virtual {v7}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v8

    invoke-virtual {v8}, Lb/b/f/b/u;->a_()I

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_2

    invoke-virtual {v8, v10}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v11

    iget-object v12, v0, Lb/b/g/e;->d:[Ljava/util/ArrayList;

    invoke-virtual {v11}, Lb/b/f/b/r;->f()I

    move-result v11

    aget-object v11, v12, v11

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v8, v0, Lb/b/g/e;->d:[Ljava/util/ArrayList;

    invoke-virtual {v7}, Lb/b/f/b/r;->f()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/b/g/aj;

    instance-of v10, v9, Lb/b/g/aa;

    if-eqz v10, :cond_3

    check-cast v9, Lb/b/g/aa;

    invoke-virtual {v9, v7}, Lb/b/g/aa;->a(Lb/b/f/b/r;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    iget-object v1, v0, Lb/b/g/e;->a:Lb/b/g/al;

    invoke-virtual {v1, p0}, Lb/b/g/al;->a(Ljava/util/Set;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, v0, Lb/b/g/e;->a:Lb/b/g/al;

    new-instance v2, Lb/b/g/f;

    iget-object v4, v0, Lb/b/g/e;->c:Ljava/util/BitSet;

    invoke-direct {v2, v4}, Lb/b/g/f;-><init>(Ljava/util/BitSet;)V

    invoke-virtual {v1, v2}, Lb/b/g/al;->a(Lb/b/g/ak;)V

    :cond_6
    :goto_3
    iget-object v1, v0, Lb/b/g/e;->c:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-ltz v1, :cond_a

    iget-object v2, v0, Lb/b/g/e;->c:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->clear(I)V

    iget-object v2, v0, Lb/b/g/e;->d:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/b/g/e;->a(ILjava/util/BitSet;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_7
    iget-object v2, v0, Lb/b/g/e;->a:Lb/b/g/al;

    invoke-virtual {v2, v1}, Lb/b/g/al;->c(I)Lb/b/g/aj;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/u;->a_()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_9

    invoke-virtual {v2, v5}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v6

    iget-object v7, v0, Lb/b/g/e;->d:[Ljava/util/ArrayList;

    invoke-virtual {v6}, Lb/b/f/b/r;->f()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v7, v0, Lb/b/g/e;->a:Lb/b/g/al;

    invoke-virtual {v6}, Lb/b/f/b/r;->f()I

    move-result v8

    invoke-virtual {v7, v8}, Lb/b/g/al;->c(I)Lb/b/g/aj;

    move-result-object v7

    invoke-static {v7}, Lb/b/g/e;->b(Lb/b/g/aj;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v0, Lb/b/g/e;->c:Ljava/util/BitSet;

    invoke-virtual {v6}, Lb/b/f/b/r;->f()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/util/BitSet;->set(I)V

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    iget-object v0, v0, Lb/b/g/e;->a:Lb/b/g/al;

    invoke-virtual {v0, p0}, Lb/b/g/al;->a(Ljava/util/Set;)V

    return-void
.end method

.method private a(ILjava/util/BitSet;)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lb/b/g/e;->d:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/aj;

    invoke-static {v2}, Lb/b/g/e;->b(Lb/b/g/aj;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_2
    if-nez p2, :cond_3

    new-instance p2, Ljava/util/BitSet;

    iget v1, p0, Lb/b/g/e;->b:I

    invoke-direct {p2, v1}, Ljava/util/BitSet;-><init>(I)V

    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Lb/b/g/e;->d:[Ljava/util/ArrayList;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/aj;

    invoke-virtual {v1}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lb/b/f/b/r;->f()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lb/b/g/e;->a(ILjava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_5
    return v3

    :cond_6
    return v0
.end method

.method static synthetic a(Lb/b/g/aj;)Z
    .registers 1

    invoke-static {p0}, Lb/b/g/e;->b(Lb/b/g/aj;)Z

    move-result p0

    return p0
.end method

.method private static b(Lb/b/g/aj;)Z
    .registers 1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lb/b/g/aj;->l()Z

    move-result p0

    return p0
.end method
