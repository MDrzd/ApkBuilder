.class Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;
.super Lcom/google/common/collect/AbstractIterator;


# instance fields
.field final backingIterator:Ljava/util/Iterator;

.field final synthetic this$2:Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;->this$2:Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    iget-object p1, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;->this$2:Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;

    iget-object p1, p1, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;

    iget-object p1, p1, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    iget-object p1, p1, Lcom/google/common/collect/FilteredEntryMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;->backingIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .registers 5

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v2, Lcom/google/common/collect/FilteredEntryMultimap$ValuePredicate;

    iget-object v3, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;->this$2:Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;

    iget-object v3, v3, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v3, v3, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-direct {v2, v3, v1}, Lcom/google/common/collect/FilteredEntryMultimap$ValuePredicate;-><init>(Lcom/google/common/collect/FilteredEntryMultimap;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/google/common/collect/FilteredEntryMultimap;->filterCollection(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
