.class Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;
.super Lcom/google/common/collect/ForwardingMapEntry;


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/AbstractBiMap$EntrySet$1;

.field final synthetic val$finalEntry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractBiMap$EntrySet$1;Ljava/util/Map$Entry;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->this$2:Lcom/google/common/collect/AbstractBiMap$EntrySet$1;

    iput-object p2, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->val$finalEntry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map$Entry;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->val$finalEntry:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->this$2:Lcom/google/common/collect/AbstractBiMap$EntrySet$1;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->this$1:Lcom/google/common/collect/AbstractBiMap$EntrySet;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "entry no longer in map"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->this$2:Lcom/google/common/collect/AbstractBiMap$EntrySet$1;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->this$1:Lcom/google/common/collect/AbstractBiMap$EntrySet;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "value already present: %s"

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->val$finalEntry:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->this$2:Lcom/google/common/collect/AbstractBiMap$EntrySet$1;

    iget-object v2, v2, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->this$1:Lcom/google/common/collect/AbstractBiMap$EntrySet;

    iget-object v2, v2, Lcom/google/common/collect/AbstractBiMap$EntrySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/AbstractBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "entry no longer in map"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->this$2:Lcom/google/common/collect/AbstractBiMap$EntrySet$1;

    iget-object v2, v2, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->this$1:Lcom/google/common/collect/AbstractBiMap$EntrySet;

    iget-object v2, v2, Lcom/google/common/collect/AbstractBiMap$EntrySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, v1, v0, p1}, Lcom/google/common/collect/AbstractBiMap;->access$600(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
