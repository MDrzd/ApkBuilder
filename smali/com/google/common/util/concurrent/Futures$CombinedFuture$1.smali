.class Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/Futures$CombinedFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$CombinedFuture;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$CombinedFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$CombinedFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$CombinedFuture;

    iget-object v0, v0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$CombinedFuture;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->wasInterrupted()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$CombinedFuture;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$CombinedFuture;

    iput-object v1, v0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->values:Ljava/util/List;

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$CombinedFuture;

    iput-object v1, v0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    return-void
.end method
