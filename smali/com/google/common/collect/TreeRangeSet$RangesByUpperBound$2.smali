.class Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound$2;
.super Lcom/google/common/collect/AbstractIterator;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;

.field final synthetic val$backingItr:Lcom/google/common/collect/PeekingIterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;Lcom/google/common/collect/PeekingIterator;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound$2;->this$0:Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;

    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound$2;->val$backingItr:Lcom/google/common/collect/PeekingIterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound$2;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound$2;->val$backingItr:Lcom/google/common/collect/PeekingIterator;

    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound$2;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound$2;->val$backingItr:Lcom/google/common/collect/PeekingIterator;

    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound$2;->this$0:Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;

    invoke-static {v1}, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;->access$000(Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;)Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v2, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound$2;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
