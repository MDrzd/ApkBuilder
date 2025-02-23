.class Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue$1;
.super Lcom/google/common/collect/MapMakerInternalMap$AbstractReferenceEntry;


# instance fields
.field nextEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

.field previousEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

.field final synthetic this$0:Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue$1;->this$0:Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue;

    invoke-direct {p0}, Lcom/google/common/collect/MapMakerInternalMap$AbstractReferenceEntry;-><init>()V

    iput-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue$1;->nextEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    iput-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue$1;->previousEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getNextEvictable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue$1;->nextEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousEvictable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue$1;->previousEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public setNextEvictable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue$1;->nextEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-void
.end method

.method public setPreviousEvictable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue$1;->previousEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-void
.end method
