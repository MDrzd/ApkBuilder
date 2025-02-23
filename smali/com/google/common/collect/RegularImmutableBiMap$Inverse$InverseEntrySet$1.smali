.class Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;
.super Lcom/google/common/collect/ImmutableAsList;


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->this$2:Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->this$2:Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->get(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/Map$Entry;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->this$2:Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->this$1:Lcom/google/common/collect/RegularImmutableBiMap$Inverse;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableBiMap;->access$000(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
