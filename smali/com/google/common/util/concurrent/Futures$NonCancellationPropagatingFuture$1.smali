.class Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

.field final synthetic val$delegate:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;->val$delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;->val$delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->cancel(Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
