.class Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;
.super Lcom/google/common/collect/Maps$EntrySet;


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/FilteredEntryMultimap$AsMap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2$1;-><init>(Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;)V

    return-object v0
.end method

.method map()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/FilteredEntryMultimap;->removeEntriesIf(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/FilteredEntryMultimap;->removeEntriesIf(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
