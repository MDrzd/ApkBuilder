.class Lcom/google/common/collect/TreeTraverser$3;
.super Lcom/google/common/collect/FluentIterable;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/TreeTraverser;

.field final synthetic val$root:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeTraverser;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$3;->this$0:Lcom/google/common/collect/TreeTraverser;

    iput-object p2, p0, Lcom/google/common/collect/TreeTraverser$3;->val$root:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 4

    new-instance v0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;

    iget-object v1, p0, Lcom/google/common/collect/TreeTraverser$3;->this$0:Lcom/google/common/collect/TreeTraverser;

    iget-object v2, p0, Lcom/google/common/collect/TreeTraverser$3;->val$root:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;-><init>(Lcom/google/common/collect/TreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeTraverser$3;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
