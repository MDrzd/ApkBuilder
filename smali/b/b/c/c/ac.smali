.class public final Lb/b/c/c/ac;
.super Lb/b/c/c/al;


# instance fields
.field private final a:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(Lb/b/c/c/u;)V
    .registers 3

    const-string v0, "field_ids"

    invoke-direct {p0, v0, p1}, Lb/b/c/c/al;-><init>(Ljava/lang/String;Lb/b/c/c/u;)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lb/b/c/c/ac;->a:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lb/b/f/c/n;)Lb/b/c/c/ab;
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lb/b/c/c/ac;->j()V

    iget-object v0, p0, Lb/b/c/c/ac;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/c/c/ab;

    if-nez v0, :cond_0

    new-instance v0, Lb/b/c/c/ab;

    invoke-direct {v0, p1}, Lb/b/c/c/ab;-><init>(Lb/b/f/c/n;)V

    iget-object v1, p0, Lb/b/c/c/ac;->a:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "field == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lb/b/f/c/a;)Lb/b/c/c/ag;
    .registers 3

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lb/b/c/c/ac;->i()V

    iget-object v0, p0, Lb/b/c/c/ac;->a:Ljava/util/TreeMap;

    check-cast p1, Lb/b/f/c/n;

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

.method public final a(Lb/b/h/r;)V
    .registers 7

    invoke-virtual {p0}, Lb/b/c/c/ac;->i()V

    iget-object v0, p0, Lb/b/c/c/ac;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lb/b/c/c/ac;->g()I

    move-result v1

    :goto_0
    invoke-interface {p1}, Lb/b/h/r;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "field_ids_size:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, v3, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "field_ids_off:   "

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

.method public final b(Lb/b/f/c/n;)I
    .registers 3

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lb/b/c/c/ac;->i()V

    iget-object v0, p0, Lb/b/c/c/ac;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/c/c/ab;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/c/c/ab;->i()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ref == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/ac;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
