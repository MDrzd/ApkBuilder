.class final Lb/b/b/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/concurrent/Future;

.field private c:I

.field private d:I

.field private synthetic e:Lb/b/b/b/c;


# direct methods
.method private constructor <init>(Lb/b/b/b/c;Ljava/lang/String;Ljava/util/concurrent/Future;II)V
    .registers 6

    iput-object p1, p0, Lb/b/b/b/g;->e:Lb/b/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/b/b/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lb/b/b/b/g;->b:Ljava/util/concurrent/Future;

    iput p4, p0, Lb/b/b/b/g;->c:I

    iput p5, p0, Lb/b/b/b/g;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lb/b/b/b/c;Ljava/lang/String;Ljava/util/concurrent/Future;IIB)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lb/b/b/b/g;-><init>(Lb/b/b/b/c;Ljava/lang/String;Ljava/util/concurrent/Future;II)V

    return-void
.end method

.method private a()Ljava/lang/Boolean;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lb/b/b/b/g;->b:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/c/c/m;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/b/b/b/g;->e:Lb/b/b/b/c;

    invoke-static {v1, v0}, Lb/b/b/b/c;->a(Lb/b/b/b/c;Lb/b/c/c/m;)Z

    iget-object v0, p0, Lb/b/b/b/g;->e:Lb/b/b/b/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/b/b/b/c;->a(Lb/b/b/b/c;Z)V

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lb/b/b/b/g;->e:Lb/b/b/b/c;

    invoke-static {v1}, Lb/b/b/b/c;->c(Lb/b/b/b/c;)Lb/b/b/b/d;

    move-result-object v1

    iget-boolean v1, v1, Lb/b/b/b/d;->t:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/b/b/b/g;->e:Lb/b/b/b/c;

    invoke-static {v1}, Lb/b/b/b/c;->e(Lb/b/b/b/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lb/b/b/b/g;->e:Lb/b/b/b/c;

    iget-object v3, p0, Lb/b/b/b/g;->e:Lb/b/b/b/c;

    invoke-static {v3}, Lb/b/b/b/c;->g(Lb/b/b/b/c;)I

    move-result v3

    iget v4, p0, Lb/b/b/b/g;->c:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lb/b/b/b/c;->a(Lb/b/b/b/c;I)I

    iget-object v2, p0, Lb/b/b/b/g;->e:Lb/b/b/b/c;

    iget-object v3, p0, Lb/b/b/b/g;->e:Lb/b/b/b/c;

    invoke-static {v3}, Lb/b/b/b/c;->h(Lb/b/b/b/c;)I

    move-result v3

    iget v4, p0, Lb/b/b/b/g;->d:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lb/b/b/b/c;->b(Lb/b/b/b/c;I)I

    iget-object v2, p0, Lb/b/b/b/g;->e:Lb/b/b/b/c;

    invoke-static {v2}, Lb/b/b/b/c;->e(Lb/b/b/b/c;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Exception;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Ljava/lang/Exception;

    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    iget-object v1, p0, Lb/b/b/b/g;->e:Lb/b/b/b/c;

    invoke-static {v1}, Lb/b/b/b/c;->c(Lb/b/b/b/c;)Lb/b/b/b/d;

    move-result-object v1

    iget-boolean v1, v1, Lb/b/b/b/d;->t:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lb/b/b/b/g;->e:Lb/b/b/b/c;

    invoke-static {v1}, Lb/b/b/b/c;->e(Lb/b/b/b/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lb/b/b/b/g;->e:Lb/b/b/b/c;

    iget-object v3, p0, Lb/b/b/b/g;->e:Lb/b/b/b/c;

    invoke-static {v3}, Lb/b/b/b/c;->g(Lb/b/b/b/c;)I

    move-result v3

    iget v4, p0, Lb/b/b/b/g;->c:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lb/b/b/b/c;->a(Lb/b/b/b/c;I)I

    iget-object v2, p0, Lb/b/b/b/g;->e:Lb/b/b/b/c;

    iget-object v3, p0, Lb/b/b/b/g;->e:Lb/b/b/b/c;

    invoke-static {v3}, Lb/b/b/b/c;->h(Lb/b/b/b/c;)I

    move-result v3

    iget v4, p0, Lb/b/b/b/g;->d:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lb/b/b/b/c;->b(Lb/b/b/b/c;I)I

    iget-object v2, p0, Lb/b/b/b/g;->e:Lb/b/b/b/c;

    invoke-static {v2}, Lb/b/b/b/c;->e(Lb/b/b/b/c;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_3
    :goto_2
    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lb/b/b/b/g;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
