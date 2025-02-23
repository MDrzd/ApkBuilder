.class Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;
.super Lcom/google/common/collect/AbstractIterator;


# instance fields
.field private index:I

.field private final maxIndex:I

.field final synthetic this$1:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->this$1:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->index:I

    iget-object p1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->this$1:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;

    iget-object p1, p1, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->this$0:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;

    invoke-virtual {p1}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->maxIndex:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .registers 4

    iget v0, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->index:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->index:I

    iget v0, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->index:I

    iget v1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->maxIndex:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->this$1:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;

    iget-object v0, v0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->this$0:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;

    iget v1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->index:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->this$1:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;

    iget-object v1, v1, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->this$0:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;

    iget v2, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->index:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->index:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
