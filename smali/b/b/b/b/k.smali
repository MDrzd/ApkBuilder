.class final Lb/b/b/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:Ljava/util/concurrent/Future;

.field private synthetic d:Lb/b/b/b/c;


# direct methods
.method private constructor <init>(Lb/b/b/b/c;Ljava/lang/String;[BLjava/util/concurrent/Future;)V
    .registers 5

    iput-object p1, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/b/b/k;->a:Ljava/lang/String;

    iput-object p3, p0, Lb/b/b/b/k;->b:[B

    iput-object p4, p0, Lb/b/b/b/k;->c:Ljava/util/concurrent/Future;

    return-void
.end method

.method synthetic constructor <init>(Lb/b/b/b/c;Ljava/lang/String;[BLjava/util/concurrent/Future;B)V
    .registers 6

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lb/b/b/b/k;-><init>(Lb/b/b/b/c;Ljava/lang/String;[BLjava/util/concurrent/Future;)V

    return-void
.end method

.method private a(Lb/b/a/c/k;)Ljava/lang/Boolean;
    .registers 12

    iget-object v0, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v0}, Lb/b/b/b/c;->c(Lb/b/b/b/c;)Lb/b/b/b/d;

    move-result-object v0

    iget-boolean v0, v0, Lb/b/b/b/d;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lb/b/a/c/k;->g()Lb/b/f/c/b;

    move-result-object v0

    invoke-interface {v0}, Lb/b/f/c/b;->a()I

    move-result v0

    invoke-virtual {p1}, Lb/b/a/c/k;->j()Lb/b/a/d/h;

    move-result-object v1

    invoke-interface {v1}, Lb/b/a/d/h;->a_()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Lb/b/a/c/k;->i()Lb/b/a/d/e;

    move-result-object v2

    invoke-interface {v2}, Lb/b/a/d/e;->a_()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x9

    iget-object v2, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v2}, Lb/b/b/b/c;->e(Lb/b/b/b/c;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v3}, Lb/b/b/b/c;->f(Lb/b/b/b/c;)Lb/b/c/c/u;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v4, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v4}, Lb/b/b/b/c;->f(Lb/b/b/b/c;)Lb/b/c/c/u;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/c/c/u;->n()Lb/b/c/c/aq;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/c/c/aq;->b()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    iget-object v5, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v5}, Lb/b/b/b/c;->f(Lb/b/b/b/c;)Lb/b/c/c/u;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/c/c/u;->m()Lb/b/c/c/ac;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/c/c/ac;->b()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    add-int/2addr v4, v1

    :try_start_2
    iget-object v3, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v3}, Lb/b/b/b/c;->g(Lb/b/b/b/c;)I

    move-result v3

    add-int/2addr v4, v3

    iget-object v3, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v3}, Lb/b/b/b/c;->c(Lb/b/b/b/c;)Lb/b/b/b/d;

    move-result-object v3

    iget v3, v3, Lb/b/b/b/d;->w:I

    if-gt v4, v3, :cond_0

    add-int/2addr v5, v0

    iget-object v3, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v3}, Lb/b/b/b/c;->h(Lb/b/b/b/c;)I

    move-result v3

    add-int/2addr v5, v3

    iget-object v3, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v3}, Lb/b/b/b/c;->c(Lb/b/b/b/c;)Lb/b/b/b/d;

    move-result-object v3

    iget v3, v3, Lb/b/b/b/d;->w:I

    if-le v5, v3, :cond_2

    :cond_0
    iget-object v3, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v3}, Lb/b/b/b/c;->g(Lb/b/b/b/c;)I

    move-result v3

    if-gtz v3, :cond_3

    iget-object v3, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v3}, Lb/b/b/b/c;->h(Lb/b/b/b/c;)I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v3}, Lb/b/b/b/c;->f(Lb/b/b/b/c;)Lb/b/c/c/u;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/c/c/u;->i()Lb/b/c/c/n;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/c/c/n;->b()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v3}, Lb/b/b/b/c;->i(Lb/b/b/b/c;)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    iget-object v4, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v4}, Lb/b/b/b/c;->g(Lb/b/b/b/c;)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Lb/b/b/b/c;->a(Lb/b/b/b/c;I)I

    iget-object v3, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    iget-object v4, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v4}, Lb/b/b/b/c;->h(Lb/b/b/b/c;)I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Lb/b/b/b/c;->b(Lb/b/b/b/c;I)I

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v8, v0

    move v7, v1

    goto :goto_3

    :cond_3
    :goto_1
    :try_start_3
    iget-object v3, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v3}, Lb/b/b/b/c;->e(Lb/b/b/b/c;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    :goto_2
    :try_start_4
    iget-object v3, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v3}, Lb/b/b/b/c;->f(Lb/b/b/b/c;)Lb/b/c/c/u;

    move-result-object v3

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v4, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v4}, Lb/b/b/b/c;->f(Lb/b/b/b/c;)Lb/b/c/c/u;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/c/c/u;->n()Lb/b/c/c/aq;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/c/c/aq;->b()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    iget-object v5, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v5}, Lb/b/b/b/c;->f(Lb/b/b/b/c;)Lb/b/c/c/u;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/c/c/u;->m()Lb/b/c/c/ac;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/c/c/ac;->b()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1

    :cond_4
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    iget-object v0, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v0}, Lb/b/b/b/c;->j(Lb/b/b/b/c;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v9, Lb/b/b/b/i;

    iget-object v2, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    iget-object v3, p0, Lb/b/b/b/k;->a:Ljava/lang/String;

    iget-object v4, p0, Lb/b/b/b/k;->b:[B

    const/4 v6, 0x0

    move-object v1, v9

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lb/b/b/b/i;-><init>(Lb/b/b/b/c;Ljava/lang/String;[BLb/b/a/c/k;B)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v6

    iget-object p1, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {p1}, Lb/b/b/b/c;->k(Lb/b/b/b/c;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lb/b/b/b/g;

    iget-object v4, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    iget-object v5, p0, Lb/b/b/b/k;->a:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lb/b/b/b/g;-><init>(Lb/b/b/b/c;Ljava/lang/String;Ljava/util/concurrent/Future;IIB)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iget-object v0, p0, Lb/b/b/b/k;->d:Lb/b/b/b/c;

    invoke-static {v0}, Lb/b/b/b/c;->l(Lb/b/b/b/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lb/b/b/b/k;Lb/b/a/c/k;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lb/b/b/b/k;->a(Lb/b/a/c/k;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lb/b/b/b/k;->c:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/a/c/k;

    invoke-direct {p0, v0}, Lb/b/b/b/k;->a(Lb/b/a/c/k;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
