.class Lcom/google/common/collect/SortedMultisets$ElementSet;
.super Lcom/google/common/collect/Multisets$ElementSet;

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field private final multiset:Lcom/google/common/collect/SortedMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/SortedMultiset;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$ElementSet;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/SortedMultisets$ElementSet;->multiset:Lcom/google/common/collect/SortedMultiset;

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$ElementSet;->multiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$ElementSet;->multiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->firstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/SortedMultisets;->access$000(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$ElementSet;->multiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/SortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public last()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$ElementSet;->multiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->lastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/SortedMultisets;->access$000(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic multiset()Lcom/google/common/collect/Multiset;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$ElementSet;->multiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method final multiset()Lcom/google/common/collect/SortedMultiset;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/SortedMultisets$ElementSet;->multiset:Lcom/google/common/collect/SortedMultiset;

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 6

    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$ElementSet;->multiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    sget-object v2, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/google/common/collect/SortedMultiset;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/SortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$ElementSet;->multiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/SortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/SortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method
