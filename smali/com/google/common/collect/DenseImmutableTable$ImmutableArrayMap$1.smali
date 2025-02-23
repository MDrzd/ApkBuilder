.class Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;
.super Lcom/google/common/collect/ImmutableMapEntrySet;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->this$0:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2

    new-instance v0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;-><init>(Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method map()Lcom/google/common/collect/ImmutableMap;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->this$0:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;

    return-object v0
.end method
