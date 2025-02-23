.class Lcom/google/common/collect/ImmutableEnumMap$1;
.super Lcom/google/common/collect/ImmutableSet;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableEnumMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableEnumMap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/ImmutableEnumMap$1;->this$0:Lcom/google/common/collect/ImmutableEnumMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumMap$1;->this$0:Lcom/google/common/collect/ImmutableEnumMap;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableEnumMap;->access$000(Lcom/google/common/collect/ImmutableEnumMap;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method isPartialView()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumMap$1;->this$0:Lcom/google/common/collect/ImmutableEnumMap;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableEnumMap;->access$000(Lcom/google/common/collect/ImmutableEnumMap;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableEnumMap$1;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumMap$1;->this$0:Lcom/google/common/collect/ImmutableEnumMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableEnumMap;->size()I

    move-result v0

    return v0
.end method
