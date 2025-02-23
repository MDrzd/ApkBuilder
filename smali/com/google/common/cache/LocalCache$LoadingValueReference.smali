.class Lcom/google/common/cache/LocalCache$LoadingValueReference;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/cache/LocalCache$ValueReference;


# instance fields
.field final futureValue:Lcom/google/common/util/concurrent/SettableFuture;

.field volatile oldValue:Lcom/google/common/cache/LocalCache$ValueReference;

.field final stopwatch:Lcom/google/common/base/Stopwatch;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/google/common/cache/LocalCache;->unset()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache$LoadingValueReference;-><init>(Lcom/google/common/cache/LocalCache$ValueReference;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/cache/LocalCache$ValueReference;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->futureValue:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {}, Lcom/google/common/base/Stopwatch;->createUnstarted()Lcom/google/common/base/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->stopwatch:Lcom/google/common/base/Stopwatch;

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lcom/google/common/cache/LocalCache$ValueReference;

    return-void
.end method

.method private fullyFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ValueReference;
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-object p0
.end method

.method public elapsedNanos()J
    .registers 3

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->stopwatch:Lcom/google/common/base/Stopwatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lcom/google/common/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOldValue()Lcom/google/common/cache/LocalCache$ValueReference;
    .registers 2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lcom/google/common/cache/LocalCache$ValueReference;

    return-object v0
.end method

.method public getWeight()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lcom/google/common/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lcom/google/common/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public loadFuture(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->stopwatch:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lcom/google/common/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/google/common/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->set(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->futureValue:Lcom/google/common/util/concurrent/SettableFuture;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1, v0}, Lcom/google/common/cache/CacheLoader;->reload(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p2, Lcom/google/common/cache/LocalCache$LoadingValueReference$1;

    invoke-direct {p2, p0}, Lcom/google/common/cache/LocalCache$LoadingValueReference$1;-><init>(Lcom/google/common/cache/LocalCache$LoadingValueReference;)V

    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    instance-of p2, p1, Ljava/lang/InterruptedException;

    if-eqz p2, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->setException(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->futureValue:Lcom/google/common/util/concurrent/SettableFuture;

    return-object p1

    :cond_4
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->fullyFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public notifyNewValue(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->set(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/google/common/cache/LocalCache;->unset()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lcom/google/common/cache/LocalCache$ValueReference;

    return-void
.end method

.method public set(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->futureValue:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->futureValue:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public waitForValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->futureValue:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
