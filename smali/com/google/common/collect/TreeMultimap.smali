.class public Lcom/google/common/collect/TreeMultimap;
.super Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "not needed in emulated source"
    .end annotation
.end field


# instance fields
.field private transient keyComparator:Ljava/util/Comparator;

.field private transient valueComparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .registers 4

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;-><init>(Ljava/util/SortedMap;)V

    iput-object p1, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    iput-object p2, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;Lcom/google/common/collect/Multimap;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    invoke-virtual {p0, p3}, Lcom/google/common/collect/TreeMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    return-void
.end method

.method public static create()Lcom/google/common/collect/TreeMultimap;
    .registers 3

    new-instance v0, Lcom/google/common/collect/TreeMultimap;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/TreeMultimap;
    .registers 4

    new-instance v0, Lcom/google/common/collect/TreeMultimap;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;Lcom/google/common/collect/Multimap;)V

    return-object v0
.end method

.method public static create(Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultimap;
    .registers 3

    new-instance v0, Lcom/google/common/collect/TreeMultimap;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Comparator;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeMultimap;->setMap(Ljava/util/Map;)V

    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->populateMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOutputStream"
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->keyComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->asMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public asMap()Ljava/util/NavigableMap;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->asMap()Ljava/util/SortedMap;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

.method public bridge synthetic asMap()Ljava/util/SortedMap;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->asMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic backingMap()Ljava/util/Map;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->backingMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method backingMap()Ljava/util/NavigableMap;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->backingMap()Ljava/util/SortedMap;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

.method bridge synthetic backingMap()Ljava/util/SortedMap;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->backingMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .registers 1

    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->clear()V

    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method bridge synthetic createAsMap()Ljava/util/Map;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->createAsMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method createAsMap()Ljava/util/NavigableMap;
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableAsMap;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->backingMap()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableAsMap;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method bridge synthetic createCollection()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method createCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->keyComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->createCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic createCollection()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method createCollection()Ljava/util/SortedSet;
    .registers 3

    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method createKeySet()Ljava/util/NavigableSet;
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->backingMap()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method bridge synthetic createKeySet()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->createKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Set;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultimap;->get(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    check-cast p1, Ljava/util/NavigableSet;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultimap;->get(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultimap;->get(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keyComparator()Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public keySet()Ljava/util/NavigableSet;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->keySet()Ljava/util/SortedSet;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/SortedSet;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lcom/google/common/collect/Multiset;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/Multimap;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic size()I
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unmodifiableCollectionSubclass(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    check-cast p1, Ljava/util/NavigableSet;

    invoke-static {p1}, Lcom/google/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public valueComparator()Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;

    check-cast p2, Ljava/util/NavigableSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/NavigableSet;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0
.end method
