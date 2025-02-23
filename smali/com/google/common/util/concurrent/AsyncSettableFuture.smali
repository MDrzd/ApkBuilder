.class final Lcom/google/common/util/concurrent/AsyncSettableFuture;
.super Lcom/google/common/util/concurrent/ForwardingListenableFuture;


# instance fields
.field private final dereferenced:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final nested:Lcom/google/common/util/concurrent/AsyncSettableFuture$NestedFuture;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/util/concurrent/ForwardingListenableFuture;-><init>()V

    new-instance v0, Lcom/google/common/util/concurrent/AsyncSettableFuture$NestedFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AsyncSettableFuture$NestedFuture;-><init>(Lcom/google/common/util/concurrent/AsyncSettableFuture$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AsyncSettableFuture;->nested:Lcom/google/common/util/concurrent/AsyncSettableFuture$NestedFuture;

    iget-object v0, p0, Lcom/google/common/util/concurrent/AsyncSettableFuture;->nested:Lcom/google/common/util/concurrent/AsyncSettableFuture$NestedFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->dereference(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AsyncSettableFuture;->dereferenced:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public static create()Lcom/google/common/util/concurrent/AsyncSettableFuture;
    .registers 1

    new-instance v0, Lcom/google/common/util/concurrent/AsyncSettableFuture;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/AsyncSettableFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected final delegate()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/AsyncSettableFuture;->dereferenced:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AsyncSettableFuture;->delegate()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/concurrent/Future;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AsyncSettableFuture;->delegate()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final isSet()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/AsyncSettableFuture;->nested:Lcom/google/common/util/concurrent/AsyncSettableFuture$NestedFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AsyncSettableFuture$NestedFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method public final setException(Ljava/lang/Throwable;)Z
    .registers 2

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AsyncSettableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    move-result p1

    return p1
.end method

.method public final setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/AsyncSettableFuture;->nested:Lcom/google/common/util/concurrent/AsyncSettableFuture$NestedFuture;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AsyncSettableFuture$NestedFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    move-result p1

    return p1
.end method

.method public final setValue(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AsyncSettableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    move-result p1

    return p1
.end method
