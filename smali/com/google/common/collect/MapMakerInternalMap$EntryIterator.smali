.class final Lcom/google/common/collect/MapMakerInternalMap$EntryIterator;
.super Lcom/google/common/collect/MapMakerInternalMap$HashIterator;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$EntryIterator;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final next()Ljava/util/Map$Entry;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$EntryIterator;->nextEntry()Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    move-result-object v0

    return-object v0
.end method
