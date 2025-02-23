.class public final Lb/b/c/c/i;
.super Lb/b/c/c/bi;


# instance fields
.field private final a:Ljava/util/TreeMap;

.field private final b:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(Lb/b/c/c/u;)V
    .registers 4

    const-string v0, "call_site_ids"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lb/b/c/c/bi;-><init>(Ljava/lang/String;Lb/b/c/c/u;I)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lb/b/c/c/i;->a:Ljava/util/TreeMap;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lb/b/c/c/i;->b:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public final a(Lb/b/f/c/a;)Lb/b/c/c/ag;
    .registers 3

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lb/b/c/c/i;->i()V

    iget-object v0, p0, Lb/b/c/c/i;->a:Ljava/util/TreeMap;

    check-cast p1, Lb/b/f/c/j;

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

.method final a(Lb/b/f/c/i;)Lb/b/c/c/j;
    .registers 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/b/c/c/i;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/c/c/j;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "callSite == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final a()V
    .registers 5

    iget-object v0, p0, Lb/b/c/c/i;->a:Ljava/util/TreeMap;

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

    check-cast v2, Lb/b/c/c/h;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1}, Lb/b/c/c/h;->a(I)V

    move v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method final a(Lb/b/f/c/i;Lb/b/c/c/j;)V
    .registers 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/b/c/c/i;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callSite == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized a(Lb/b/f/c/j;)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lb/b/c/c/i;->j()V

    iget-object v0, p0, Lb/b/c/c/i;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/c/c/h;

    if-nez v0, :cond_0

    new-instance v0, Lb/b/c/c/h;

    invoke-direct {v0, p1}, Lb/b/c/c/h;-><init>(Lb/b/f/c/j;)V

    iget-object v1, p0, Lb/b/c/c/i;->a:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cstRef"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/i;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
