.class Lcom/google/common/collect/DescendingMultiset$1;
.super Lcom/google/common/collect/Multisets$EntrySet;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/DescendingMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/DescendingMultiset;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/DescendingMultiset$1;->this$0:Lcom/google/common/collect/DescendingMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/DescendingMultiset$1;->this$0:Lcom/google/common/collect/DescendingMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/DescendingMultiset;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method multiset()Lcom/google/common/collect/Multiset;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/DescendingMultiset$1;->this$0:Lcom/google/common/collect/DescendingMultiset;

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/DescendingMultiset$1;->this$0:Lcom/google/common/collect/DescendingMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/DescendingMultiset;->forwardMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
