.class public Lorg/jf/dexlib2/writer/pool/MethodPool;
.super Lorg/jf/dexlib2/writer/pool/BaseIndexPool;

# interfaces
.implements Lorg/jf/dexlib2/writer/MethodSection;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/writer/pool/DexPool;)V
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/pool/DexPool;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/pool/BaseIndexPool;-><init>(Lorg/jf/dexlib2/writer/pool/DexPool;)V

    return-void
.end method


# virtual methods
.method public getDefiningClass(Lorg/jf/dexlib2/iface/reference/MethodReference;)Ljava/lang/CharSequence;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefiningClass(Lorg/jf/dexlib2/iface/reference/MethodReference;)Ljava/lang/Object;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/pool/MethodPool;->getDefiningClass(Lorg/jf/dexlib2/iface/reference/MethodReference;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMethodIndex(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/pool/MethodPool;->getMethodIndex(Lorg/jf/dexlib2/writer/pool/PoolMethod;)I

    move-result p1

    return p1
.end method

.method public getMethodIndex(Lorg/jf/dexlib2/writer/pool/PoolMethod;)I
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/pool/MethodPool;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

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

    check-cast p1, Lorg/jf/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/pool/MethodPool;->getMethodReference(Lorg/jf/dexlib2/writer/pool/PoolMethod;)Lorg/jf/dexlib2/iface/reference/MethodReference;

    move-result-object p1

    return-object p1
.end method

.method public getMethodReference(Lorg/jf/dexlib2/writer/pool/PoolMethod;)Lorg/jf/dexlib2/iface/reference/MethodReference;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    return-object p1
.end method

.method public getName(Lorg/jf/dexlib2/iface/reference/MethodReference;)Ljava/lang/CharSequence;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object p1

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

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/pool/MethodPool;->getName(Lorg/jf/dexlib2/iface/reference/MethodReference;)Ljava/lang/CharSequence;

    move-result-object p1

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

    check-cast p1, Lorg/jf/dexlib2/writer/pool/PoolMethod;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/pool/MethodPool;->getPrototype(Lorg/jf/dexlib2/writer/pool/PoolMethod;)Lorg/jf/dexlib2/iface/reference/MethodProtoReference;

    move-result-object p1

    return-object p1
.end method

.method public getPrototype(Lorg/jf/dexlib2/iface/reference/MethodReference;)Lorg/jf/dexlib2/iface/reference/MethodProtoReference;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/pool/PoolMethodProto;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/writer/pool/PoolMethodProto;-><init>(Lorg/jf/dexlib2/iface/reference/MethodReference;)V

    return-object v0
.end method

.method public getPrototype(Lorg/jf/dexlib2/writer/pool/PoolMethod;)Lorg/jf/dexlib2/iface/reference/MethodProtoReference;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/writer/pool/PoolMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/pool/PoolMethodProto;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/writer/pool/PoolMethodProto;-><init>(Lorg/jf/dexlib2/iface/reference/MethodReference;)V

    return-object v0
.end method

.method public intern(Lorg/jf/dexlib2/iface/reference/MethodReference;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/MethodPool;->internedItems:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/MethodPool;->dexPool:Lorg/jf/dexlib2/writer/pool/DexPool;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/pool/DexPool;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    check-cast v0, Lorg/jf/dexlib2/writer/pool/TypePool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/pool/TypePool;->intern(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/MethodPool;->dexPool:Lorg/jf/dexlib2/writer/pool/DexPool;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/pool/DexPool;->protoSection:Lorg/jf/dexlib2/writer/ProtoSection;

    check-cast v0, Lorg/jf/dexlib2/writer/pool/ProtoPool;

    new-instance v1, Lorg/jf/dexlib2/writer/pool/PoolMethodProto;

    invoke-direct {v1, p1}, Lorg/jf/dexlib2/writer/pool/PoolMethodProto;-><init>(Lorg/jf/dexlib2/iface/reference/MethodReference;)V

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/pool/ProtoPool;->intern(Lorg/jf/dexlib2/iface/reference/MethodProtoReference;)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/MethodPool;->dexPool:Lorg/jf/dexlib2/writer/pool/DexPool;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/pool/DexPool;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    check-cast v0, Lorg/jf/dexlib2/writer/pool/StringPool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/pool/StringPool;->intern(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
