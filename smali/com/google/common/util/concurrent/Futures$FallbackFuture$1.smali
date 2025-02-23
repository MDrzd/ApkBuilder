.class Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

.field final synthetic val$fallback:Lcom/google/common/util/concurrent/FutureFallback;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$FallbackFuture;Lcom/google/common/util/concurrent/FutureFallback;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->val$fallback:Lcom/google/common/util/concurrent/FutureFallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->val$fallback:Lcom/google/common/util/concurrent/FutureFallback;

    invoke-interface {v1, p1}, Lcom/google/common/util/concurrent/FutureFallback;->create(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->access$102(Lcom/google/common/util/concurrent/Futures$FallbackFuture;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->access$100(Lcom/google/common/util/concurrent/Futures$FallbackFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->wasInterrupted()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->access$100(Lcom/google/common/util/concurrent/Futures$FallbackFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1$1;-><init>(Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
