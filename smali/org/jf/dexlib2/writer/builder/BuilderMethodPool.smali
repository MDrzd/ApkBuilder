.class Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;
.super Lorg/jf/dexlib2/writer/builder/BaseBuilderPool;

# interfaces
.implements Lorg/jf/dexlib2/writer/MethodSection;


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

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDefiningClass(Lorg/jf/dexlib2/iface/reference/MethodReference;)Ljava/lang/Object;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;->getDefiningClass(Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;)Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1
.end method

.method public getDefiningClass(Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;)Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;->definingClass:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    return-object p1
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

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

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;->getItemIndex(Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;)I

    move-result p1

    return p1
.end method

.method public getItemIndex(Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;)I
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;->index:I

    return p1
.end method

.method public getItems()Ljava/util/Collection;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool$1;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool$1;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic getMethodIndex(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;->getMethodIndex(Lorg/jf/dexlib2/writer/builder/BuilderMethod;)I

    move-result p1

    return p1
.end method

.method public getMethodIndex(Lorg/jf/dexlib2/writer/builder/BuilderMethod;)I
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->methodReference:Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    iget p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;->index:I

    return p1
.end method

.method public bridge synthetic getMethodReference(Ljava/lang/Object;)Lorg/jf/dexlib2/iface/reference/MethodReference;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;->getMethodReference(Lorg/jf/dexlib2/writer/builder/BuilderMethod;)Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    move-result-object p1

    return-object p1
.end method

.method public getMethodReference(Lorg/jf/dexlib2/writer/builder/BuilderMethod;)Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->methodReference:Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    return-object p1
.end method

.method public bridge synthetic getName(Lorg/jf/dexlib2/iface/reference/MethodReference;)Ljava/lang/Object;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;->getName(Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    move-result-object p1

    return-object p1
.end method

.method public getName(Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;->name:Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    return-object p1
.end method

.method public bridge synthetic getPrototype(Ljava/lang/Object;)Lorg/jf/dexlib2/iface/reference/MethodProtoReference;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderMethod;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;->getPrototype(Lorg/jf/dexlib2/writer/builder/BuilderMethod;)Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPrototype(Lorg/jf/dexlib2/iface/reference/MethodReference;)Lorg/jf/dexlib2/iface/reference/MethodProtoReference;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;->getPrototype(Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;)Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;

    move-result-object p1

    return-object p1
.end method

.method public getPrototype(Lorg/jf/dexlib2/writer/builder/BuilderMethod;)Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->methodReference:Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    iget-object p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;->proto:Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;

    return-object p1
.end method

.method public getPrototype(Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;)Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;->proto:Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;

    return-object p1
.end method

.method public internMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool$MethodKey;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool$MethodKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;->internMethod(Lorg/jf/dexlib2/iface/reference/MethodReference;)Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    move-result-object p1

    return-object p1
.end method

.method public internMethod(Lorg/jf/dexlib2/iface/reference/MethodReference;)Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;
    .registers 6
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;->dexBuilder:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    iget-object v1, v1, Lorg/jf/dexlib2/writer/builder/DexBuilder;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    check-cast v1, Lorg/jf/dexlib2/writer/builder/BuilderTypePool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/writer/builder/BuilderTypePool;->internType(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;->dexBuilder:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    iget-object v2, v2, Lorg/jf/dexlib2/writer/builder/DexBuilder;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    check-cast v2, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;->internString(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    move-result-object v2

    iget-object v3, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;->dexBuilder:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    iget-object v3, v3, Lorg/jf/dexlib2/writer/builder/DexBuilder;->protoSection:Lorg/jf/dexlib2/writer/ProtoSection;

    check-cast v3, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;

    invoke-virtual {v3, p1}, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;->internMethodProto(Lorg/jf/dexlib2/iface/reference/MethodReference;)Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;Lorg/jf/dexlib2/writer/builder/BuilderStringReference;Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method
