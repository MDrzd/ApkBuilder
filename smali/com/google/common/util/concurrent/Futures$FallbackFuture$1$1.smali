.class Lcom/google/common/util/concurrent/Futures$FallbackFuture$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1$1;->this$1:Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1$1;->this$1:Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->access$100(Lcom/google/common/util/concurrent/Futures$FallbackFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1$1;->this$1:Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;

    iget-object p1, p1, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->cancel(Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1$1;->this$1:Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1$1;->this$1:Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
