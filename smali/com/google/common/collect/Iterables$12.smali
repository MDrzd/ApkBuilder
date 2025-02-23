.class final Lcom/google/common/collect/Iterables$12;
.super Lcom/google/common/collect/FluentIterable;


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Iterables$12;->val$iterable:Ljava/lang/Iterable;

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 4

    new-instance v0, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;

    iget-object v1, p0, Lcom/google/common/collect/Iterables$12;->val$iterable:Ljava/lang/Iterable;

    check-cast v1, Ljava/util/Queue;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;-><init>(Ljava/util/Queue;Lcom/google/common/collect/Iterables$1;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Iterables.consumingIterable(...)"

    return-object v0
.end method
