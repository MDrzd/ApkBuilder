.class Lcom/google/common/collect/AbstractSortedMultiset$1;
.super Lcom/google/common/collect/DescendingMultiset;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractSortedMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractSortedMultiset;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/AbstractSortedMultiset$1;->this$0:Lcom/google/common/collect/AbstractSortedMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/DescendingMultiset;-><init>()V

    return-void
.end method


# virtual methods
.method entryIterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/AbstractSortedMultiset$1;->this$0:Lcom/google/common/collect/AbstractSortedMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractSortedMultiset;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method forwardMultiset()Lcom/google/common/collect/SortedMultiset;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/AbstractSortedMultiset$1;->this$0:Lcom/google/common/collect/AbstractSortedMultiset;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/AbstractSortedMultiset$1;->this$0:Lcom/google/common/collect/AbstractSortedMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractSortedMultiset;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
