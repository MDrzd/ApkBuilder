.class Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;-><init>(Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method
