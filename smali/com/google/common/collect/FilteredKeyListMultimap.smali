.class final Lcom/google/common/collect/FilteredKeyListMultimap;
.super Lcom/google/common/collect/FilteredKeyMultimap;

# interfaces
.implements Lcom/google/common/collect/ListMultimap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/ListMultimap;Lcom/google/common/base/Predicate;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/FilteredKeyMultimap;-><init>(Lcom/google/common/collect/Multimap;Lcom/google/common/base/Predicate;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/FilteredKeyListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/FilteredKeyMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/FilteredKeyListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final removeAll(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/FilteredKeyMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/FilteredKeyListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/FilteredKeyMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final unfiltered()Lcom/google/common/collect/ListMultimap;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/FilteredKeyMultimap;->unfiltered()Lcom/google/common/collect/Multimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ListMultimap;

    return-object v0
.end method

.method public final bridge synthetic unfiltered()Lcom/google/common/collect/Multimap;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/FilteredKeyListMultimap;->unfiltered()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method
