.class Lcom/google/common/collect/BinaryTreeTraverser$1$1;
.super Lcom/google/common/collect/AbstractIterator;


# instance fields
.field doneLeft:Z

.field doneRight:Z

.field final synthetic this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/BinaryTreeTraverser$1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .registers 4

    iget-boolean v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->doneLeft:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->doneLeft:Z

    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;

    iget-object v0, v0, Lcom/google/common/collect/BinaryTreeTraverser$1;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;

    iget-object v2, v2, Lcom/google/common/collect/BinaryTreeTraverser$1;->val$root:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/BinaryTreeTraverser;->leftChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->doneRight:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->doneRight:Z

    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;

    iget-object v0, v0, Lcom/google/common/collect/BinaryTreeTraverser$1;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;

    iget-object v1, v1, Lcom/google/common/collect/BinaryTreeTraverser$1;->val$root:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/BinaryTreeTraverser;->rightChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
