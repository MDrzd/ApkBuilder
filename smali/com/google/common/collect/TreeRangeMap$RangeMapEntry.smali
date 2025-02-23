.class final Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;
.super Lcom/google/common/collect/AbstractMapEntry;


# instance fields
.field private final range:Lcom/google/common/collect/Range;

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;-><init>(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Range;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lcom/google/common/collect/Range;

    iput-object p2, p0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Comparable;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public final getKey()Lcom/google/common/collect/Range;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lcom/google/common/collect/Range;

    return-object v0
.end method

.method public final bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method final getLowerBound()Lcom/google/common/collect/Cut;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    return-object v0
.end method

.method final getUpperBound()Lcom/google/common/collect/Cut;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
