.class Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;
.super Lcom/google/common/collect/ForwardingIterator;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;->this$0:Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;

    iput-object p2, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;->delegate()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;->val$iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3

    invoke-super {p0}, Lcom/google/common/collect/ForwardingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;-><init>(Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method
