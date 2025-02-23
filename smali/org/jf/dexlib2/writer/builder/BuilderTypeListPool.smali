.class Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool;
.super Lorg/jf/dexlib2/writer/builder/BaseBuilderPool;

# interfaces
.implements Lorg/jf/dexlib2/writer/TypeListSection;


# instance fields
.field private final internedItems:Ljava/util/concurrent/ConcurrentMap;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/DexBuilder;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/builder/BaseBuilderPool;-><init>(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V

    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public bridge synthetic getItemOffset(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool;->getItemOffset(Lorg/jf/dexlib2/writer/builder/BuilderTypeList;)I

    move-result p1

    return p1
.end method

.method public getItemOffset(Lorg/jf/dexlib2/writer/builder/BuilderTypeList;)I
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderTypeList;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;->offset:I

    return p1
.end method

.method public getItems()Ljava/util/Collection;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool$2;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool$2;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool;Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic getNullableItemOffset(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool;->getNullableItemOffset(Lorg/jf/dexlib2/writer/builder/BuilderTypeList;)I

    move-result p1

    return p1
.end method

.method public getNullableItemOffset(Lorg/jf/dexlib2/writer/builder/BuilderTypeList;)I
    .registers 3
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderTypeList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;->offset:I

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getTypes(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool;->getTypes(Lorg/jf/dexlib2/writer/builder/BuilderTypeList;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getTypes(Lorg/jf/dexlib2/writer/builder/BuilderTypeList;)Ljava/util/Collection;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderTypeList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;->EMPTY:Lorg/jf/dexlib2/writer/builder/BuilderTypeList;

    return-object p1

    :cond_0
    iget-object p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;->types:Ljava/util/List;

    return-object p1
.end method

.method public internTypeList(Ljava/util/List;)Lorg/jf/dexlib2/writer/builder/BuilderTypeList;
    .registers 4
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;

    new-instance v1, Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool$1;

    invoke-direct {v1, p0}, Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool$1;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool;)V

    invoke-static {p1, v1}, Lcom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    sget-object p1, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;->EMPTY:Lorg/jf/dexlib2/writer/builder/BuilderTypeList;

    return-object p1
.end method
