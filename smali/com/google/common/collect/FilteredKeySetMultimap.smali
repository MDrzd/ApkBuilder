.class final Lcom/google/common/collect/FilteredKeySetMultimap;
.super Lcom/google/common/collect/FilteredKeyMultimap;

# interfaces
.implements Lcom/google/common/collect/FilteredSetMultimap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/FilteredKeyMultimap;-><init>(Lcom/google/common/collect/Multimap;Lcom/google/common/base/Predicate;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic createEntries()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/FilteredKeySetMultimap;->createEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final createEntries()Ljava/util/Set;
    .registers 2

    new-instance v0, Lcom/google/common/collect/FilteredKeySetMultimap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/FilteredKeySetMultimap$EntrySet;-><init>(Lcom/google/common/collect/FilteredKeySetMultimap;)V

    return-object v0
.end method

.method public final bridge synthetic entries()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/FilteredKeySetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final entries()Ljava/util/Set;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/FilteredKeyMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/FilteredKeySetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/FilteredKeyMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public final bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/FilteredKeySetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/FilteredKeyMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public final bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/FilteredKeySetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/FilteredKeyMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public final bridge synthetic unfiltered()Lcom/google/common/collect/Multimap;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/FilteredKeySetMultimap;->unfiltered()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public final unfiltered()Lcom/google/common/collect/SetMultimap;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/FilteredKeySetMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    check-cast v0, Lcom/google/common/collect/SetMultimap;

    return-object v0
.end method
