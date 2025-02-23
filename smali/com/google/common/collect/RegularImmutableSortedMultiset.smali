.class final Lcom/google/common/collect/RegularImmutableSortedMultiset;
.super Lcom/google/common/collect/ImmutableSortedMultiset;


# instance fields
.field private final transient counts:[I

.field private final transient cumulativeCounts:[J

.field private final transient elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

.field private final transient length:I

.field private final transient offset:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableSortedSet;[I[JII)V
    .registers 6

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->counts:[I

    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->cumulativeCounts:[J

    iput p4, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    iput p5, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    return-void
.end method


# virtual methods
.method public final count(Ljava/lang/Object;)I
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->counts:[I

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    add-int/2addr p1, v1

    aget p1, v0, p1

    return p1
.end method

.method public final elementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method public final bridge synthetic elementSet()Ljava/util/NavigableSet;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic elementSet()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic elementSet()Ljava/util/SortedSet;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->getEntry(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method final getEntry(I)Lcom/google/common/collect/Multiset$Entry;
    .registers 5

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->counts:[I

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    add-int/2addr v2, p1

    aget p1, v1, v2

    invoke-static {v0, p1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object p1

    return-object p1
.end method

.method final getSubMultiset(II)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 10

    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->emptyMultiset(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    if-ne p2, v0, :cond_1

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->getSubSet(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/common/collect/RegularImmutableSortedSet;

    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedMultiset;

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->counts:[I

    iget-object v4, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->cumulativeCounts:[J

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    add-int v5, v1, p1

    sub-int v6, p2, p1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/common/collect/RegularImmutableSortedMultiset;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;[I[JII)V

    return-object v0
.end method

.method public final headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 6

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->getSubMultiset(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method final isPartialView()Z
    .registers 3

    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->counts:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .registers 2

    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->getEntry(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 6

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->cumulativeCounts:[J

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    add-int/2addr v1, v2

    aget-wide v1, v0, v1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->cumulativeCounts:[J

    iget v3, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    aget-wide v3, v0, v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public final tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 5

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result p1

    iget p2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->getSubMultiset(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method
