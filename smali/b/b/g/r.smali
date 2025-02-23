.class public final Lb/b/g/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/g/al;


# direct methods
.method private constructor <init>(Lb/b/g/al;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/g/r;->a:Lb/b/g/al;

    return-void
.end method

.method public static a(Lb/b/g/al;)V
    .registers 4

    new-instance v0, Lb/b/g/r;

    invoke-direct {v0, p0}, Lb/b/g/r;-><init>(Lb/b/g/al;)V

    invoke-static {}, Lb/b/g/y;->b()Lb/b/f/b/ad;

    move-result-object p0

    iget-object v1, v0, Lb/b/g/r;->a:Lb/b/g/al;

    new-instance v2, Lb/b/g/s;

    invoke-direct {v2, v0, p0}, Lb/b/g/s;-><init>(Lb/b/g/r;Lb/b/f/b/ad;)V

    invoke-virtual {v1, v2}, Lb/b/g/al;->a(Lb/b/g/ak;)V

    return-void
.end method

.method static synthetic a(Lb/b/g/r;Lb/b/g/x;Lb/b/f/b/u;ILb/b/f/c/a;)V
    .registers 5

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lb/b/g/r;->a(Lb/b/g/x;Lb/b/f/b/u;ILb/b/f/c/a;)V

    return-void
.end method

.method private a(Lb/b/g/x;Lb/b/f/b/u;ILb/b/f/c/a;)V
    .registers 13

    invoke-virtual {p1}, Lb/b/g/x;->d()Lb/b/f/b/i;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object v1

    invoke-static {p3, v1, p2, p4}, Lb/b/f/b/y;->a(ILb/b/f/d/d;Lb/b/f/d/e;Lb/b/f/c/a;)Lb/b/f/b/x;

    move-result-object v3

    if-nez p4, :cond_0

    new-instance p3, Lb/b/f/b/q;

    invoke-virtual {v0}, Lb/b/f/b/i;->f()Lb/b/f/b/z;

    move-result-object p4

    invoke-virtual {p1}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object v0

    invoke-direct {p3, v3, p4, v0, p2}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    goto :goto_0

    :cond_0
    new-instance p3, Lb/b/f/b/p;

    invoke-virtual {v0}, Lb/b/f/b/i;->f()Lb/b/f/b/z;

    move-result-object v4

    invoke-virtual {p1}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object v5

    move-object v2, p3

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lb/b/f/b/p;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;Lb/b/f/c/a;)V

    :goto_0
    new-instance p2, Lb/b/g/x;

    invoke-virtual {p1}, Lb/b/g/x;->o()Lb/b/g/af;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lb/b/g/x;-><init>(Lb/b/f/b/i;Lb/b/g/af;)V

    invoke-virtual {p1}, Lb/b/g/x;->o()Lb/b/g/af;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object p3

    iget-object p4, p0, Lb/b/g/r;->a:Lb/b/g/al;

    invoke-virtual {p4, p1}, Lb/b/g/al;->b(Lb/b/g/aj;)V

    invoke-interface {p3, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p3, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lb/b/g/r;->a:Lb/b/g/al;

    invoke-virtual {p1, p2}, Lb/b/g/al;->a(Lb/b/g/aj;)V

    return-void
.end method

.method static synthetic a(Lb/b/f/b/r;)Z
    .registers 7

    invoke-virtual {p0}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object p0

    instance-of v0, p0, Lb/b/f/c/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lb/b/f/c/v;

    invoke-virtual {p0}, Lb/b/f/c/v;->k()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method static synthetic a(Lb/b/g/r;Lb/b/g/x;)Z
    .registers 8

    invoke-virtual {p1}, Lb/b/g/x;->d()Lb/b/f/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lb/b/g/r;->a:Lb/b/g/al;

    invoke-virtual {v3, v1}, Lb/b/g/al;->a(Lb/b/f/b/r;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    invoke-virtual {p1}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v1

    invoke-interface {v1}, Lb/b/f/d/d;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Lb/b/f/d/d;->c()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    sget-object v4, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    check-cast v1, Lb/b/f/c/a;

    invoke-direct {p0, p1, v4, v3, v1}, Lb/b/g/r;->a(Lb/b/g/x;Lb/b/f/b/u;ILb/b/f/c/a;)V

    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v0

    const/16 v1, 0x38

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lb/b/g/x;->o()Lb/b/g/af;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/g/af;->g()Ljava/util/BitSet;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p1

    iget-object v0, p0, Lb/b/g/r;->a:Lb/b/g/al;

    invoke-virtual {v0}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/g/af;

    invoke-virtual {p1}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/g/x;

    sget-object v0, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v5, v1}, Lb/b/g/r;->a(Lb/b/g/x;Lb/b/f/b/u;ILb/b/f/c/a;)V

    :cond_0
    return v3

    :cond_1
    return v2
.end method
