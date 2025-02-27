.class final Lcom/google/common/collect/Platform;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static mapsAsMapSortedSet(Ljava/util/SortedSet;Lcom/google/common/base/Function;)Ljava/util/SortedMap;
    .registers 3

    instance-of v0, p0, Ljava/util/NavigableSet;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/NavigableSet;

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/NavigableSet;Lcom/google/common/base/Function;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->asMapSortedIgnoreNavigable(Ljava/util/SortedSet;Lcom/google/common/base/Function;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method static mapsFilterSortedMap(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;
    .registers 3

    instance-of v0, p0, Ljava/util/NavigableMap;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/NavigableMap;

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lcom/google/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterSortedIgnoreNavigable(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method static mapsTransformEntriesSortedMap(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;
    .registers 3

    instance-of v0, p0, Ljava/util/NavigableMap;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/NavigableMap;

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->transformEntries(Ljava/util/NavigableMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->transformEntriesIgnoreNavigable(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method static newArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method static newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
    .registers 1

    invoke-static {p0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static setsFilterSortedSet(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)Ljava/util/SortedSet;
    .registers 3

    instance-of v0, p0, Ljava/util/NavigableSet;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/NavigableSet;

    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/NavigableSet;Lcom/google/common/base/Predicate;)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->filterSortedIgnoreNavigable(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method static tryWeakKeys(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker;
    .registers 1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->weakKeys()Lcom/google/common/collect/MapMaker;

    move-result-object p0

    return-object p0
.end method
