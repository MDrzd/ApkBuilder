.class Lcom/google/common/collect/ImmutableEnumMap$2$1;
.super Lcom/google/common/collect/UnmodifiableIterator;


# instance fields
.field private final backingIterator:Ljava/util/Iterator;

.field final synthetic this$1:Lcom/google/common/collect/ImmutableEnumMap$2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableEnumMap$2;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/ImmutableEnumMap$2$1;->this$1:Lcom/google/common/collect/ImmutableEnumMap$2;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    iget-object p1, p0, Lcom/google/common/collect/ImmutableEnumMap$2$1;->this$1:Lcom/google/common/collect/ImmutableEnumMap$2;

    iget-object p1, p1, Lcom/google/common/collect/ImmutableEnumMap$2;->this$0:Lcom/google/common/collect/ImmutableEnumMap;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableEnumMap;->access$000(Lcom/google/common/collect/ImmutableEnumMap;)Ljava/util/EnumMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableEnumMap$2$1;->backingIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumMap$2$1;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableEnumMap$2$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumMap$2$1;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
