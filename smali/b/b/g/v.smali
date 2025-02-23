.class final Lb/b/g/v;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/g/ak;


# instance fields
.field final synthetic a:Lb/b/g/u;

.field private synthetic b:[Lb/b/f/b/r;

.field private synthetic c:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lb/b/g/u;[Lb/b/f/b/r;Ljava/util/HashSet;)V
    .registers 4

    iput-object p1, p0, Lb/b/g/v;->a:Lb/b/g/u;

    iput-object p2, p0, Lb/b/g/v;->b:[Lb/b/f/b/r;

    iput-object p3, p0, Lb/b/g/v;->c:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/g/aa;)V
    .registers 2

    return-void
.end method

.method public final a(Lb/b/g/x;)V
    .registers 2

    return-void
.end method

.method public final b(Lb/b/g/x;)V
    .registers 7

    invoke-virtual {p1}, Lb/b/g/x;->c()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/b/g/v;->a:Lb/b/g/u;

    invoke-static {v0, p1}, Lb/b/g/u;->a(Lb/b/g/u;Lb/b/g/x;)I

    move-result v0

    iget-object v1, p0, Lb/b/g/v;->b:[Lb/b/f/b/r;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/b/g/v;->b:[Lb/b/f/b/r;

    invoke-virtual {p1}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object p1

    aput-object p1, v1, v0

    return-void

    :cond_1
    iget-object v1, p0, Lb/b/g/v;->b:[Lb/b/f/b/r;

    aget-object v0, v1, v0

    invoke-virtual {p1}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object v1

    invoke-virtual {v0}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v2

    invoke-virtual {v1}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v3

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v3}, Lb/b/f/b/n;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_0
    iget-object v3, p0, Lb/b/g/v;->a:Lb/b/g/u;

    invoke-static {v3}, Lb/b/g/u;->a(Lb/b/g/u;)Lb/b/g/al;

    move-result-object v3

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Lb/b/g/al;->c(I)Lb/b/g/aj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lb/b/g/aj;->a(Lb/b/f/b/n;)V

    new-instance v2, Lb/b/g/w;

    invoke-direct {v2, p0, v1, v0}, Lb/b/g/w;-><init>(Lb/b/g/v;Lb/b/f/b/r;Lb/b/f/b/r;)V

    iget-object v0, p0, Lb/b/g/v;->a:Lb/b/g/u;

    invoke-static {v0}, Lb/b/g/u;->a(Lb/b/g/u;)Lb/b/g/al;

    move-result-object v0

    invoke-virtual {v1}, Lb/b/f/b/r;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lb/b/g/al;->d(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/g/aj;

    invoke-virtual {v3, v2}, Lb/b/g/aj;->a(Lb/b/g/ad;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lb/b/g/v;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method
