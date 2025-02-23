.class public Lorg/jf/dexlib2/writer/pool/TypeListPool;
.super Lorg/jf/dexlib2/writer/pool/BaseNullableOffsetPool;

# interfaces
.implements Lorg/jf/dexlib2/writer/TypeListSection;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/writer/pool/DexPool;)V
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/pool/DexPool;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/pool/BaseNullableOffsetPool;-><init>(Lorg/jf/dexlib2/writer/pool/DexPool;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getNullableItemOffset(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/writer/pool/TypeListPool$Key;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/pool/TypeListPool;->getNullableItemOffset(Lorg/jf/dexlib2/writer/pool/TypeListPool$Key;)I

    move-result p1

    return p1
.end method

.method public getNullableItemOffset(Lorg/jf/dexlib2/writer/pool/TypeListPool$Key;)I
    .registers 3
    .param p1    # Lorg/jf/dexlib2/writer/pool/TypeListPool$Key;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/jf/dexlib2/writer/pool/TypeListPool$Key;->types:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/jf/dexlib2/writer/pool/BaseNullableOffsetPool;->getNullableItemOffset(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getTypes(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/writer/pool/TypeListPool$Key;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/pool/TypeListPool;->getTypes(Lorg/jf/dexlib2/writer/pool/TypeListPool$Key;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getTypes(Lorg/jf/dexlib2/writer/pool/TypeListPool$Key;)Ljava/util/Collection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p1, Lorg/jf/dexlib2/writer/pool/TypeListPool$Key;->types:Ljava/util/Collection;

    return-object p1
.end method

.method public intern(Ljava/util/Collection;)V
    .registers 5
    .param p1    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lorg/jf/dexlib2/writer/pool/TypeListPool$Key;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/writer/pool/TypeListPool$Key;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/jf/dexlib2/writer/pool/TypeListPool;->internedItems:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/pool/TypeListPool;->dexPool:Lorg/jf/dexlib2/writer/pool/DexPool;

    iget-object v1, v1, Lorg/jf/dexlib2/writer/pool/DexPool;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    check-cast v1, Lorg/jf/dexlib2/writer/pool/TypePool;

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/writer/pool/TypePool;->intern(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method
