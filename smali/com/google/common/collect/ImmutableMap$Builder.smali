.class public Lcom/google/common/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;


# instance fields
.field entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

.field size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    return-void
.end method

.method private ensureCapacity(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    array-length v0, v0

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    array-length v1, v1

    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/common/collect/ObjectArrays;->arraysCopyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ImmutableMap;
    .registers 4

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap;

    iget v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    iget-object v2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableMap;-><init>(I[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    .registers 5

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    aput-object p1, p2, v0

    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;
    .registers 3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;
    .registers 4

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method
