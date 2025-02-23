.class final Lcom/google/common/collect/ImmutableSortedAsList;
.super Lcom/google/common/collect/RegularImmutableAsList;

# interfaces
.implements Lcom/google/common/collect/SortedIterable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableAsList;-><init>(Lcom/google/common/collect/ImmutableCollection;Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->delegateCollection()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedAsList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final bridge synthetic delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->delegateCollection()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method final delegateCollection()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/RegularImmutableAsList;->delegateCollection()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "ImmutableSortedSet.indexOf"
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->delegateCollection()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSortedAsList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "ImmutableSortedSet.indexOf"
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedAsList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method final subListUnchecked(II)Lcom/google/common/collect/ImmutableList;
    .registers 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "super.subListUnchecked does not exist; inherited subList is valid if slow"
    .end annotation

    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableAsList;->subListUnchecked(II)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->comparator()Ljava/util/Comparator;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method
