.class Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;
.super Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

# interfaces
.implements Lcom/google/common/collect/SetMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/SetMultimap;Lcom/google/common/collect/MapConstraint;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;-><init>(Lcom/google/common/collect/Multimap;Lcom/google/common/collect/MapConstraint;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic entries()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method
