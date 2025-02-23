.class Lcom/google/common/util/concurrent/Futures$FallbackFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;


# instance fields
.field private volatile running:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureFallback;Ljava/util/concurrent/Executor;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->running:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->running:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;

    invoke-direct {v0, p0, p2}, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;-><init>(Lcom/google/common/util/concurrent/Futures$FallbackFuture;Lcom/google/common/util/concurrent/FutureFallback;)V

    invoke-static {p1, v0, p3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/Futures$FallbackFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 1

    iget-object p0, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->running:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/common/util/concurrent/Futures$FallbackFuture;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->running:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->running:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
