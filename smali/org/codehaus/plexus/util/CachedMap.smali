.class public final Lorg/codehaus/plexus/util/CachedMap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map;


# instance fields
.field private final _backingFastMap:Lorg/codehaus/plexus/util/FastMap;

.field private final _backingMap:Ljava/util/Map;

.field private final _keys:[Ljava/lang/Object;

.field private final _keysMap:Lorg/codehaus/plexus/util/FastMap;

.field private final _mask:I

.field private final _values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lorg/codehaus/plexus/util/FastMap;

    invoke-direct {v0}, Lorg/codehaus/plexus/util/FastMap;-><init>()V

    const/16 v1, 0x100

    invoke-direct {p0, v1, v0}, Lorg/codehaus/plexus/util/CachedMap;-><init>(ILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    new-instance v0, Lorg/codehaus/plexus/util/FastMap;

    invoke-direct {v0, p1}, Lorg/codehaus/plexus/util/FastMap;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/codehaus/plexus/util/CachedMap;-><init>(ILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Map;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p1, :cond_0

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/codehaus/plexus/util/CachedMap;->_keys:[Ljava/lang/Object;

    new-array p1, v1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/codehaus/plexus/util/CachedMap;->_values:[Ljava/lang/Object;

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/plexus/util/CachedMap;->_mask:I

    instance-of p1, p2, Lorg/codehaus/plexus/util/FastMap;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    check-cast p2, Lorg/codehaus/plexus/util/FastMap;

    iput-object p2, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingFastMap:Lorg/codehaus/plexus/util/FastMap;

    iget-object p1, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingFastMap:Lorg/codehaus/plexus/util/FastMap;

    iput-object p1, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingMap:Ljava/util/Map;

    iput-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_keysMap:Lorg/codehaus/plexus/util/FastMap;

    return-void

    :cond_1
    iput-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingFastMap:Lorg/codehaus/plexus/util/FastMap;

    iput-object p2, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingMap:Ljava/util/Map;

    new-instance p1, Lorg/codehaus/plexus/util/FastMap;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p1, v0}, Lorg/codehaus/plexus/util/FastMap;-><init>(I)V

    iput-object p1, p0, Lorg/codehaus/plexus/util/CachedMap;->_keysMap:Lorg/codehaus/plexus/util/FastMap;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_keysMap:Lorg/codehaus/plexus/util/FastMap;

    invoke-virtual {v0, p2, p2}, Lorg/codehaus/plexus/util/FastMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private getCacheMissed(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingFastMap:Lorg/codehaus/plexus/util/FastMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingFastMap:Lorg/codehaus/plexus/util/FastMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/plexus/util/FastMap;->getEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_keys:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, p2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_values:[Ljava/lang/Object;

    aput-object p1, v0, p2

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_keysMap:Lorg/codehaus/plexus/util/FastMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/plexus/util/FastMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/codehaus/plexus/util/CachedMap;->_keys:[Ljava/lang/Object;

    aput-object v0, v1, p2

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_values:[Ljava/lang/Object;

    aput-object p1, v0, p2

    return-object p1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final clear()V
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/CachedMap;->flush()V

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/codehaus/plexus/util/CachedMap;->_mask:I

    and-int/2addr v0, v1

    iget-object v1, p0, Lorg/codehaus/plexus/util/CachedMap;->_keys:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final flush()V
    .registers 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/codehaus/plexus/util/CachedMap;->_keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/codehaus/plexus/util/CachedMap;->_keys:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/codehaus/plexus/util/CachedMap;->_values:[Ljava/lang/Object;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_keysMap:Lorg/codehaus/plexus/util/FastMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/plexus/util/CachedMap;->_keysMap:Lorg/codehaus/plexus/util/FastMap;

    invoke-virtual {v2, v1, v1}, Lorg/codehaus/plexus/util/FastMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/codehaus/plexus/util/CachedMap;->_mask:I

    and-int/2addr v0, v1

    iget-object v1, p0, Lorg/codehaus/plexus/util/CachedMap;->_keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/codehaus/plexus/util/CachedMap;->_values:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/codehaus/plexus/util/CachedMap;->getCacheMissed(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getBackingMap()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingFastMap:Lorg/codehaus/plexus/util/FastMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingFastMap:Lorg/codehaus/plexus/util/FastMap;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getCacheSize()I
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_keys:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/codehaus/plexus/util/CachedMap;->_mask:I

    and-int/2addr v0, v1

    iget-object v1, p0, Lorg/codehaus/plexus/util/CachedMap;->_keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codehaus/plexus/util/CachedMap;->_values:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_keysMap:Lorg/codehaus/plexus/util/FastMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_keysMap:Lorg/codehaus/plexus/util/FastMap;

    invoke-virtual {v0, p1, p1}, Lorg/codehaus/plexus/util/FastMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/CachedMap;->flush()V

    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/codehaus/plexus/util/CachedMap;->_mask:I

    and-int/2addr v0, v1

    iget-object v1, p0, Lorg/codehaus/plexus/util/CachedMap;->_keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codehaus/plexus/util/CachedMap;->_keys:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_keysMap:Lorg/codehaus/plexus/util/FastMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_keysMap:Lorg/codehaus/plexus/util/FastMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/plexus/util/FastMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/CachedMap;->_backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
