.class final Lcom/google/common/util/concurrent/Futures$CombinerFuture;
.super Lcom/google/common/util/concurrent/ListenableFutureTask;


# instance fields
.field futures:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/common/collect/ImmutableList;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/ListenableFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$CombinerFuture;->futures:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinerFuture;->futures:Lcom/google/common/collect/ImmutableList;

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/ListenableFutureTask;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected final done()V
    .registers 2

    invoke-super {p0}, Lcom/google/common/util/concurrent/ListenableFutureTask;->done()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinerFuture;->futures:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method protected final setException(Ljava/lang/Throwable;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/ListenableFutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method
