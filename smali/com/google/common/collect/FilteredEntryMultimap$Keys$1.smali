.class Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;
.super Lcom/google/common/collect/Multisets$EntrySet;


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/FilteredEntryMultimap$Keys;


# direct methods
.method constructor <init>(Lcom/google/common/collect/FilteredEntryMultimap$Keys;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$Keys;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$EntrySet;-><init>()V

    return-void
.end method

.method private removeEntriesIf(Lcom/google/common/base/Predicate;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$Keys;

    iget-object v0, v0, Lcom/google/common/collect/FilteredEntryMultimap$Keys;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    new-instance v1, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1$1;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1$1;-><init>(Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;Lcom/google/common/base/Predicate;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/FilteredEntryMultimap;->removeEntriesIf(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$Keys;

    invoke-virtual {v0}, Lcom/google/common/collect/FilteredEntryMultimap$Keys;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method multiset()Lcom/google/common/collect/Multiset;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$Keys;

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;->removeEntriesIf(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;->removeEntriesIf(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$Keys;

    iget-object v0, v0, Lcom/google/common/collect/FilteredEntryMultimap$Keys;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/FilteredEntryMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
