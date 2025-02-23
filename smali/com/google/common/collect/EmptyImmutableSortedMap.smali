.class final Lcom/google/common/collect/EmptyImmutableSortedMap;
.super Lcom/google/common/collect/ImmutableSortedMap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# instance fields
.field private final transient keySet:Lcom/google/common/collect/ImmutableSortedSet;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMap;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/EmptyImmutableSortedMap;->keySet:Lcom/google/common/collect/ImmutableSortedSet;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;Lcom/google/common/collect/ImmutableSortedMap;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/EmptyImmutableSortedMap;->keySet:Lcom/google/common/collect/ImmutableSortedSet;

    return-void
.end method


# virtual methods
.method public final asMultimap()Lcom/google/common/collect/ImmutableSetMultimap;
    .registers 2

    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->of()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method final createDescendingMap()Lcom/google/common/collect/ImmutableSortedMap;
    .registers 3

    new-instance v0, Lcom/google/common/collect/EmptyImmutableSortedMap;

    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/EmptyImmutableSortedMap;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/ImmutableSortedMap;)V

    return-object v0
.end method

.method final createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 3

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final entrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return-object p1
.end method

.method public final headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 3

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EmptyImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public final isEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final isPartialView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic keySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final keySet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/EmptyImmutableSortedMap;->keySet:Lcom/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 3

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EmptyImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "{}"

    return-object v0
.end method

.method public final values()Lcom/google/common/collect/ImmutableCollection;
    .registers 2

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
