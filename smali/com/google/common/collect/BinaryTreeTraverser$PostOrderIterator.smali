.class final Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;


# instance fields
.field private final hasExpanded:Ljava/util/BitSet;

.field private final stack:Ljava/util/Deque;

.field final synthetic this$0:Lcom/google/common/collect/BinaryTreeTraverser;


# direct methods
.method constructor <init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/Deque;

    iget-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {p1, p2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->hasExpanded:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/Deque;

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

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->hasExpanded:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->hasExpanded:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->hasExpanded:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/Deque;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/BinaryTreeTraverser;->rightChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/BinaryTreeTraverser;->access$000(Ljava/util/Deque;Lcom/google/common/base/Optional;)V

    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/Deque;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/BinaryTreeTraverser;->leftChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/BinaryTreeTraverser;->access$000(Ljava/util/Deque;Lcom/google/common/base/Optional;)V

    goto :goto_0
.end method
