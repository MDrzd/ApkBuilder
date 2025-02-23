.class public final Lb/b/c/c/ay;
.super Lb/b/c/c/bi;


# instance fields
.field private final a:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(Lb/b/c/c/u;)V
    .registers 4

    const-string v0, "proto_ids"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lb/b/c/c/bi;-><init>(Ljava/lang/String;Lb/b/c/c/u;I)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lb/b/c/c/ay;->a:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public final a(Lb/b/f/c/a;)Lb/b/c/c/ag;
    .registers 3

    if-eqz p1, :cond_2

    instance-of v0, p1, Lb/b/f/c/ab;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lb/b/c/c/ay;->i()V

    check-cast p1, Lb/b/f/c/ab;

    iget-object v0, p0, Lb/b/c/c/ay;->a:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lb/b/f/c/ab;->i()Lb/b/f/d/a;

    move-result-object p1

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
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cst not instance of CstProtoRef"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized a(Lb/b/f/d/a;)Lb/b/c/c/ax;
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lb/b/c/c/ay;->j()V

    iget-object v0, p0, Lb/b/c/c/ay;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/c/c/ax;

    if-nez v0, :cond_0

    new-instance v0, Lb/b/c/c/ax;

    invoke-direct {v0, p1}, Lb/b/c/c/ax;-><init>(Lb/b/f/d/a;)V

    iget-object v1, p0, Lb/b/c/c/ay;->a:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "prototype == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final a()V
    .registers 4

    iget-object v0, p0, Lb/b/c/c/ay;->a:Ljava/util/TreeMap;

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

    check-cast v2, Lb/b/c/c/ax;

    invoke-virtual {v2, v1}, Lb/b/c/c/ax;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lb/b/f/d/a;)I
    .registers 3

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lb/b/c/c/ay;->i()V

    iget-object v0, p0, Lb/b/c/c/ay;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/c/c/ax;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/c/c/ax;->i()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "prototype == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/ay;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lb/b/h/r;)V
    .registers 7

    invoke-virtual {p0}, Lb/b/c/c/ay;->i()V

    iget-object v0, p0, Lb/b/c/c/ay;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lb/b/c/c/ay;->g()I

    move-result v1

    :goto_0
    const/high16 v2, 0x10000

    if-gt v0, v2, :cond_2

    invoke-interface {p1}, Lb/b/h/r;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "proto_ids_size:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, v3, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "proto_ids_off:   "

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

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "too many proto ids"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
