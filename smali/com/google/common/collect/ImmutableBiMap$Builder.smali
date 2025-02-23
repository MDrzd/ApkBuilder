.class public final Lcom/google/common/collect/ImmutableBiMap$Builder;
.super Lcom/google/common/collect/ImmutableMap$Builder;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/common/collect/ImmutableBiMap;
    .registers 4

    iget v0, p0, Lcom/google/common/collect/ImmutableBiMap$Builder;->size:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap;

    iget v1, p0, Lcom/google/common/collect/ImmutableBiMap$Builder;->size:I

    iget-object v2, p0, Lcom/google/common/collect/ImmutableBiMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableBiMap;-><init>(I[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableBiMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/ImmutableBiMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableBiMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->of()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic build()Lcom/google/common/collect/ImmutableMap;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    return-object p0
.end method

.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableBiMap$Builder;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;

    return-object p0
.end method

.method public final bridge synthetic putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object p1

    return-object p1
.end method
