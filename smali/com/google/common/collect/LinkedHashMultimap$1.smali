.class Lcom/google/common/collect/LinkedHashMultimap$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field nextEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

.field final synthetic this$0:Lcom/google/common/collect/LinkedHashMultimap;

.field toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultimap;->access$300(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object p1

    iget-object p1, p1, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->successorInMultimap:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->nextEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->nextEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-static {v1}, Lcom/google/common/collect/LinkedHashMultimap;->access$300(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->nextEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->nextEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->successorInMultimap:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iput-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->nextEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    invoke-virtual {v1}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    invoke-virtual {v2}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/LinkedHashMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    return-void
.end method
