.class final Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;

# interfaces
.implements Lcom/google/common/collect/PeekingIterator;


# instance fields
.field private final stack:Ljava/util/Deque;

.field final synthetic this$0:Lcom/google/common/collect/BinaryTreeTraverser;


# direct methods
.method constructor <init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    iget-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {p1, p2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

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

    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/BinaryTreeTraverser;->rightChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/BinaryTreeTraverser;->access$000(Ljava/util/Deque;Lcom/google/common/base/Optional;)V

    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/BinaryTreeTraverser;->leftChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/BinaryTreeTraverser;->access$000(Ljava/util/Deque;Lcom/google/common/base/Optional;)V

    return-object v0
.end method

.method public final peek()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
