.class final Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;

# interfaces
.implements Lcom/google/common/collect/PeekingIterator;


# instance fields
.field private final queue:Ljava/util/Queue;

.field final synthetic this$0:Lcom/google/common/collect/TreeTraverser;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeTraverser;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->this$0:Lcom/google/common/collect/TreeTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    iget-object p1, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    iget-object v2, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->this$0:Lcom/google/common/collect/TreeTraverser;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/TreeTraverser;->children(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public final peek()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
