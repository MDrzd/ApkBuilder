.class final Lb/b/g/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/g/ak;


# instance fields
.field final synthetic a:Lb/b/g/an;

.field private final b:Lb/b/g/af;

.field private final c:[Lb/b/f/b/r;

.field private final d:Ljava/util/HashSet;

.field private final e:Ljava/util/HashMap;

.field private final f:Lb/b/g/ar;


# direct methods
.method constructor <init>(Lb/b/g/an;Lb/b/g/af;)V
    .registers 5

    iput-object p1, p0, Lb/b/g/ap;->a:Lb/b/g/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/g/ap;->b:Lb/b/g/af;

    invoke-static {p1}, Lb/b/g/an;->a(Lb/b/g/an;)[[Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {p2}, Lb/b/g/af;->e()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lb/b/g/ap;->c:[Lb/b/f/b/r;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb/b/g/ap;->d:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/b/g/ap;->e:Ljava/util/HashMap;

    new-instance v0, Lb/b/g/ar;

    invoke-direct {v0, p0}, Lb/b/g/ar;-><init>(Lb/b/g/ap;)V

    iput-object v0, p0, Lb/b/g/ap;->f:Lb/b/g/ar;

    invoke-static {p1}, Lb/b/g/an;->a(Lb/b/g/an;)[[Lb/b/f/b/r;

    move-result-object p1

    invoke-virtual {p2}, Lb/b/g/af;->e()I

    move-result p2

    const/4 v0, 0x0

    aput-object v0, p1, p2

    return-void
.end method

.method private a(ILb/b/f/b/r;)V
    .registers 7

    invoke-virtual {p2}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-virtual {p2}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v1

    iget-object v2, p0, Lb/b/g/ap;->c:[Lb/b/f/b/r;

    aput-object p2, v2, p1

    iget-object p1, p0, Lb/b/g/ap;->c:[Lb/b/f/b/r;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    iget-object v2, p0, Lb/b/g/ap;->c:[Lb/b/f/b/r;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lb/b/f/b/r;->f()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lb/b/g/ap;->c:[Lb/b/f/b/r;

    aput-object p2, v2, p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lb/b/g/ap;->a:Lb/b/g/an;

    invoke-static {p1, p2}, Lb/b/g/an;->a(Lb/b/g/an;Lb/b/f/b/r;)V

    iget-object p1, p0, Lb/b/g/ap;->c:[Lb/b/f/b/r;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_4

    iget-object p2, p0, Lb/b/g/ap;->c:[Lb/b/f/b/r;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lb/b/f/b/r;->f()I

    move-result v2

    if-eq v0, v2, :cond_3

    invoke-virtual {p2}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/b/f/b/n;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lb/b/g/ap;->c:[Lb/b/f/b/r;

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lb/b/f/b/r;->a(Lb/b/f/b/n;)Lb/b/f/b/r;

    move-result-object p2

    aput-object p2, v2, p1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private a(Lb/b/g/aj;)V
    .registers 4

    invoke-virtual {p1}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    iget-object v1, p0, Lb/b/g/ap;->a:Lb/b/g/an;

    invoke-static {v1, v0}, Lb/b/g/an;->b(Lb/b/g/an;I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lb/b/g/ap;->a:Lb/b/g/an;

    invoke-static {v1}, Lb/b/g/an;->b(Lb/b/g/an;)I

    move-result v1

    invoke-virtual {p1, v1}, Lb/b/g/aj;->c(I)V

    invoke-virtual {p1}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lb/b/g/ap;->a(ILb/b/f/b/r;)V

    iget-object p1, p0, Lb/b/g/ap;->a:Lb/b/g/an;

    invoke-static {p1}, Lb/b/g/an;->d(Lb/b/g/an;)I

    return-void
.end method

.method static synthetic a(Lb/b/g/ap;)[Lb/b/f/b/r;
    .registers 1

    iget-object p0, p0, Lb/b/g/ap;->c:[Lb/b/f/b/r;

    return-object p0
.end method

.method static synthetic b(Lb/b/g/ap;)Lb/b/g/af;
    .registers 1

    iget-object p0, p0, Lb/b/g/ap;->b:Lb/b/g/af;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 7

    iget-object v0, p0, Lb/b/g/ap;->b:Lb/b/g/af;

    invoke-virtual {v0, p0}, Lb/b/g/af;->a(Lb/b/g/ak;)V

    new-instance v0, Lb/b/g/aq;

    invoke-direct {v0, p0}, Lb/b/g/aq;-><init>(Lb/b/g/ap;)V

    iget-object v1, p0, Lb/b/g/ap;->b:Lb/b/g/af;

    invoke-virtual {v1}, Lb/b/g/af;->h()Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    :goto_0
    if-ltz v3, :cond_0

    iget-object v4, p0, Lb/b/g/ap;->a:Lb/b/g/an;

    invoke-static {v4}, Lb/b/g/an;->e(Lb/b/g/an;)Lb/b/g/al;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/g/af;

    invoke-virtual {v4, v0}, Lb/b/g/af;->a(Lb/b/g/ac;)V

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/g/ap;->b:Lb/b/g/af;

    invoke-virtual {v0}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_1
    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/g/aj;

    iget-object v5, p0, Lb/b/g/ap;->e:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/g/aj;

    if-eqz v5, :cond_1

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lb/b/g/aj;->g()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lb/b/g/ap;->d:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lb/b/g/ap;->b:Lb/b/g/af;

    invoke-virtual {v0}, Lb/b/g/af;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/af;

    iget-object v4, p0, Lb/b/g/ap;->b:Lb/b/g/af;

    if-eq v1, v4, :cond_4

    if-eqz v3, :cond_5

    iget-object v3, p0, Lb/b/g/ap;->c:[Lb/b/f/b/r;

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lb/b/g/ap;->c:[Lb/b/f/b/r;

    invoke-static {v3}, Lb/b/g/an;->a([Lb/b/f/b/r;)[Lb/b/f/b/r;

    move-result-object v3

    :goto_4
    iget-object v4, p0, Lb/b/g/ap;->a:Lb/b/g/an;

    invoke-static {v4}, Lb/b/g/an;->a(Lb/b/g/an;)[[Lb/b/f/b/r;

    move-result-object v4

    invoke-virtual {v1}, Lb/b/g/af;->e()I

    move-result v1

    aput-object v3, v4, v1

    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final a(Lb/b/g/aa;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/g/ap;->a(Lb/b/g/aj;)V

    return-void
.end method

.method public final a(Lb/b/g/x;)V
    .registers 9

    invoke-virtual {p1}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v1

    invoke-virtual {p1}, Lb/b/g/x;->a()Lb/b/f/b/u;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->f()I

    move-result v2

    iget-object v4, p0, Lb/b/g/ap;->f:Lb/b/g/ar;

    invoke-virtual {p1, v4}, Lb/b/g/x;->a(Lb/b/g/ad;)V

    invoke-virtual {p1}, Lb/b/g/x;->a()Lb/b/f/b/u;

    move-result-object v4

    invoke-virtual {v4, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/b/r;->f()I

    move-result v4

    iget-object v5, p0, Lb/b/g/ap;->c:[Lb/b/f/b/r;

    aget-object v2, v5, v2

    invoke-virtual {v2}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v2

    invoke-virtual {v0}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, v2

    :cond_0
    iget-object v6, p0, Lb/b/g/ap;->a:Lb/b/g/an;

    invoke-static {v6, v4}, Lb/b/g/an;->a(Lb/b/g/an;I)Lb/b/f/b/n;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v5, v6}, Lb/b/f/b/n;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v0}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object v0

    invoke-static {v4, v0, v5}, Lb/b/f/b/r;->b(ILb/b/f/d/d;Lb/b/f/b/n;)Lb/b/f/b/r;

    move-result-object v0

    invoke-static {}, Lb/b/g/y;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_3

    invoke-static {v5, v2}, Lb/b/g/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lb/b/g/ap;->a:Lb/b/g/an;

    invoke-static {v4}, Lb/b/g/an;->c(Lb/b/g/an;)I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    iget-object v2, p0, Lb/b/g/ap;->a:Lb/b/g/an;

    invoke-static {v2}, Lb/b/g/an;->c(Lb/b/g/an;)I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v2

    invoke-virtual {v0}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lb/b/f/b/r;->a(ILb/b/f/d/d;Lb/b/f/b/n;)Lb/b/f/b/r;

    move-result-object v2

    invoke-static {v2}, Lb/b/f/b/u;->a(Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object v2

    new-instance v3, Lb/b/f/b/q;

    invoke-static {v0}, Lb/b/f/b/y;->g(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v4

    sget-object v5, Lb/b/f/b/z;->a:Lb/b/f/b/z;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v2}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    iget-object v2, p0, Lb/b/g/ap;->b:Lb/b/g/af;

    invoke-static {v3, v2}, Lb/b/g/aj;->a(Lb/b/f/b/i;Lb/b/g/af;)Lb/b/g/aj;

    move-result-object v2

    iget-object v3, p0, Lb/b/g/ap;->e:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lb/b/g/ap;->a(ILb/b/f/b/r;)V

    return-void

    :cond_4
    invoke-direct {p0, p1}, Lb/b/g/ap;->a(Lb/b/g/aj;)V

    iget-object v0, p0, Lb/b/g/ap;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    :goto_0
    invoke-direct {p0, v1, v0}, Lb/b/g/ap;->a(ILb/b/f/b/r;)V

    return-void
.end method

.method public final b(Lb/b/g/x;)V
    .registers 3

    iget-object v0, p0, Lb/b/g/ap;->f:Lb/b/g/ar;

    invoke-virtual {p1, v0}, Lb/b/g/x;->a(Lb/b/g/ad;)V

    invoke-direct {p0, p1}, Lb/b/g/ap;->a(Lb/b/g/aj;)V

    return-void
.end method
