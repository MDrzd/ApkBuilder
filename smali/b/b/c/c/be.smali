.class public final Lb/b/c/c/be;
.super Lb/b/c/c/bi;


# instance fields
.field private final a:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(Lb/b/c/c/u;)V
    .registers 4

    const-string v0, "string_ids"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lb/b/c/c/bi;-><init>(Ljava/lang/String;Lb/b/c/c/u;I)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lb/b/c/c/be;->a:Ljava/util/TreeMap;

    return-void
.end method

.method private declared-synchronized a(Lb/b/c/c/bd;)Lb/b/c/c/bd;
    .registers 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lb/b/c/c/be;->j()V

    invoke-virtual {p1}, Lb/b/c/c/bd;->c()Lb/b/f/c/ad;

    move-result-object v0

    iget-object v1, p0, Lb/b/c/c/be;->a:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/c/c/bd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lb/b/c/c/be;->a:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Lb/b/f/c/a;)Lb/b/c/c/ag;
    .registers 3

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lb/b/c/c/be;->i()V

    iget-object v0, p0, Lb/b/c/c/be;->a:Ljava/util/TreeMap;

    check-cast p1, Lb/b/f/c/ad;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/c/c/ag;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/f/c/ad;)Lb/b/c/c/bd;
    .registers 3

    new-instance v0, Lb/b/c/c/bd;

    invoke-direct {v0, p1}, Lb/b/c/c/bd;-><init>(Lb/b/f/c/ad;)V

    invoke-direct {p0, v0}, Lb/b/c/c/be;->a(Lb/b/c/c/bd;)Lb/b/c/c/bd;

    move-result-object p1

    return-object p1
.end method

.method protected final a()V
    .registers 4

    iget-object v0, p0, Lb/b/c/c/be;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/c/c/bd;

    invoke-virtual {v2, v1}, Lb/b/c/c/bd;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lb/b/f/c/ad;)I
    .registers 3

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lb/b/c/c/be;->i()V

    iget-object v0, p0, Lb/b/c/c/be;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/c/c/bd;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/c/c/bd;->i()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "string == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/be;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lb/b/h/r;)V
    .registers 7

    invoke-virtual {p0}, Lb/b/c/c/be;->i()V

    iget-object v0, p0, Lb/b/c/c/be;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lb/b/c/c/be;->g()I

    move-result v1

    :goto_0
    invoke-interface {p1}, Lb/b/h/r;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "string_ids_size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, v3, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "string_ids_off:  "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_1
    invoke-interface {p1, v0}, Lb/b/h/r;->c(I)V

    invoke-interface {p1, v1}, Lb/b/h/r;->c(I)V

    return-void
.end method
