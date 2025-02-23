.class final Lcom/google/common/util/concurrent/AsyncSettableFuture$NestedFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AsyncSettableFuture$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AsyncSettableFuture$NestedFuture;-><init>()V

    return-void
.end method


# virtual methods
.method final setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AsyncSettableFuture$NestedFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AsyncSettableFuture$NestedFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AsyncSettableFuture$NestedFuture;->wasInterrupted()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    :cond_0
    return v0
.end method
