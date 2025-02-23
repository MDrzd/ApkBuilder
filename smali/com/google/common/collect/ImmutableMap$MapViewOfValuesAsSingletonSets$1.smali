.class Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;
.super Lcom/google/common/collect/ImmutableMapEntrySet;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->this$0:Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->this$0:Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->access$000(Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;-><init>(Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method map()Lcom/google/common/collect/ImmutableMap;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->this$0:Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;

    return-object v0
.end method
