.class Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;
.super Lcom/google/common/collect/AbstractMultimap;


# instance fields
.field final fromMultimap:Lcom/google/common/collect/Multimap;

.field final transformer:Lcom/google/common/collect/Maps$EntryTransformer;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimap;Lcom/google/common/collect/Maps$EntryTransformer;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Multimap;

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Maps$EntryTransformer;

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method createAsMap()Ljava/util/Map;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$1;-><init>(Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->transformEntries(Ljava/util/Map;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    invoke-static {v1}, Lcom/google/common/collect/Maps;->asEntryToValueFunction(Lcom/google/common/collect/Maps$EntryTransformer;)Lcom/google/common/base/Function;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    invoke-static {v1}, Lcom/google/common/collect/Maps;->asEntryToEntryFunction(Lcom/google/common/collect/Maps$EntryTransformer;)Lcom/google/common/base/Function;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->transform(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/google/common/collect/Multiset;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Lcom/google/common/collect/Multimap;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->transform(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->size()I

    move-result v0

    return v0
.end method

.method transform(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->asValueToValueFunction(Lcom/google/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)Lcom/google/common/base/Function;

    move-result-object p1

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/List;

    invoke-static {p2, p1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
