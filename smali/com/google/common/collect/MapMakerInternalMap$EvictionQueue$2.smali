.class Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue$2;
.super Lcom/google/common/collect/AbstractSequentialIterator;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue$2;->this$0:Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractSequentialIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected computeNext(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 3

    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue$2;->this$0:Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method protected bridge synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue$2;->computeNext(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p1

    return-object p1
.end method
