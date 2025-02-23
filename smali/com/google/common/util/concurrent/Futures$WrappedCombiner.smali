.class final Lcom/google/common/util/concurrent/Futures$WrappedCombiner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final delegate:Ljava/util/concurrent/Callable;

.field outputFuture:Lcom/google/common/util/concurrent/Futures$CombinerFuture;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$WrappedCombiner;->delegate:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$WrappedCombiner;->delegate:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$WrappedCombiner;->outputFuture:Lcom/google/common/util/concurrent/Futures$CombinerFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Futures$CombinerFuture;->cancel(Z)Z

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$WrappedCombiner;->outputFuture:Lcom/google/common/util/concurrent/Futures$CombinerFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/Futures$CombinerFuture;->setException(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
