.class Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;
.super Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;

# interfaces
.implements Lcom/google/common/collect/SortedSetMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/SortedSetMultimap;Lcom/google/common/collect/MapConstraint;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;-><init>(Lcom/google/common/collect/SetMultimap;Lcom/google/common/collect/MapConstraint;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/SortedSet;

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/SortedSet;

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/SortedSet;

    return-object p1
.end method

.method public valueComparator()Ljava/util/Comparator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SortedSetMultimap;

    invoke-interface {v0}, Lcom/google/common/collect/SortedSetMultimap;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
