.class public Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
.super Lcom/google/common/collect/ImmutableMultiset$Builder;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset;->create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;-><init>(Lcom/google/common/collect/Multiset;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    return-object p0
.end method

.method public bridge synthetic addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultiset$Builder;->addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/common/collect/ImmutableCollection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->build()Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/common/collect/ImmutableMultiset;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->build()Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->contents:Lcom/google/common/collect/Multiset;

    check-cast v0, Lcom/google/common/collect/SortedMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOfSorted(Lcom/google/common/collect/SortedMultiset;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->setCount(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCount(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultiset$Builder;->setCount(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;

    return-object p0
.end method
