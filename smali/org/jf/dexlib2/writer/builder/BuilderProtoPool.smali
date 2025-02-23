.class Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;
.super Lorg/jf/dexlib2/writer/builder/BaseBuilderPool;

# interfaces
.implements Lorg/jf/dexlib2/writer/ProtoSection;


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

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItemIndex(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;->getItemIndex(Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;)I

    move-result p1

    return p1
.end method

.method public getItemIndex(Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;)I
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;->getIndex()I

    move-result p1

    return p1
.end method

.method public getItems()Ljava/util/Collection;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool$1;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool$1;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic getParameters(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;->getParameters(Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;)Lorg/jf/dexlib2/writer/builder/BuilderTypeList;

    move-result-object p1

    return-object p1
.end method

.method public getParameters(Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;)Lorg/jf/dexlib2/writer/builder/BuilderTypeList;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;->parameterTypes:Lorg/jf/dexlib2/writer/builder/BuilderTypeList;

    return-object p1
.end method

.method public bridge synthetic getReturnType(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;->getReturnType(Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;)Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1
.end method

.method public getReturnType(Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;)Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;->returnType:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    return-object p1
.end method

.method public bridge synthetic getShorty(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;->getShorty(Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    move-result-object p1

    return-object p1
.end method

.method public getShorty(Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;->shorty:Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    return-object p1
.end method

.method public internMethodProto(Lorg/jf/dexlib2/iface/reference/MethodProtoReference;)Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;
    .registers 6
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;->dexBuilder:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    iget-object v1, v1, Lorg/jf/dexlib2/writer/builder/DexBuilder;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    check-cast v1, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/MethodProtoReference;->getParameterTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/MethodProtoReference;->getReturnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jf/dexlib2/util/MethodUtil;->getShorty(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;->internString(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;->dexBuilder:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    iget-object v2, v2, Lorg/jf/dexlib2/writer/builder/DexBuilder;->typeListSection:Lorg/jf/dexlib2/writer/TypeListSection;

    check-cast v2, Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/MethodProtoReference;->getParameterTypes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool;->internTypeList(Ljava/util/List;)Lorg/jf/dexlib2/writer/builder/BuilderTypeList;

    move-result-object v2

    iget-object v3, p0, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;->dexBuilder:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    iget-object v3, v3, Lorg/jf/dexlib2/writer/builder/DexBuilder;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    check-cast v3, Lorg/jf/dexlib2/writer/builder/BuilderTypePool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/MethodProtoReference;->getReturnType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/jf/dexlib2/writer/builder/BuilderTypePool;->internType(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderStringReference;Lorg/jf/dexlib2/writer/builder/BuilderTypeList;Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public internMethodProto(Lorg/jf/dexlib2/iface/reference/MethodReference;)Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodProtoReference;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodProtoReference;-><init>(Ljava/lang/Iterable;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;->internMethodProto(Lorg/jf/dexlib2/iface/reference/MethodProtoReference;)Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;

    move-result-object p1

    return-object p1
.end method
