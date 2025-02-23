.class final Lcom/google/common/util/concurrent/AbstractFuture$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;


# static fields
.field static final CANCELLED:I = 0x4

.field static final COMPLETED:I = 0x2

.field static final COMPLETING:I = 0x1

.field static final INTERRUPTED:I = 0x8

.field static final RUNNING:I

.field private static final serialVersionUID:J


# instance fields
.field private exception:Ljava/lang/Throwable;

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    return-void
.end method

.method private complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->compareAndSetState(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->value:Ljava/lang/Object;

    and-int/lit8 p1, p3, 0xc

    if-eqz p1, :cond_0

    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string p1, "Future.cancel() was called."

    invoke-direct {p2, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, p3}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->releaseShared(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result p1

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->acquireShared(I)V

    :cond_2
    :goto_0
    return v1
.end method

.method private getValue()Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x31

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error, synchronizer in invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->exception:Ljava/lang/Throwable;

    const-string v1, "Task was cancelled."

    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->value:Ljava/lang/Object;

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method final cancel(Z)Z
    .registers 3

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result p1

    return p1
.end method

.method final get()Ljava/lang/Object;
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->acquireSharedInterruptibly(I)V

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final get(J)Ljava/lang/Object;
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->tryAcquireSharedNanos(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Timeout waiting for task."

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final isCancelled()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isDone()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final set(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result p1

    return p1
.end method

.method final setException(Ljava/lang/Throwable;)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result p1

    return p1
.end method

.method protected final tryAcquireShared(I)I
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->isDone()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected final tryReleaseShared(I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->setState(I)V

    const/4 p1, 0x1

    return p1
.end method

.method final wasInterrupted()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
