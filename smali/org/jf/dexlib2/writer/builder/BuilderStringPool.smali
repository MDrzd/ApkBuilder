.class Lorg/jf/dexlib2/writer/builder/BuilderStringPool;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/writer/StringSection;


# instance fields
.field private final internedItems:Ljava/util/concurrent/ConcurrentMap;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

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

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;->getItemIndex(Lorg/jf/dexlib2/writer/builder/BuilderStringReference;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getItemIndex(Lorg/jf/dexlib2/iface/reference/StringReference;)I
    .registers 2
    .param p1    # Lorg/jf/dexlib2/iface/reference/StringReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;->getItemIndex(Lorg/jf/dexlib2/writer/builder/BuilderStringReference;)I

    move-result p1

    return p1
.end method

.method public getItemIndex(Lorg/jf/dexlib2/writer/builder/BuilderStringReference;)I
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderStringReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;->index:I

    return p1
.end method

.method public getItems()Ljava/util/Collection;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderStringPool$1;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/jf/dexlib2/writer/builder/BuilderStringPool$1;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderStringPool;Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic getNullableItemIndex(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;->getNullableItemIndex(Lorg/jf/dexlib2/writer/builder/BuilderStringReference;)I

    move-result p1

    return p1
.end method

.method public getNullableItemIndex(Lorg/jf/dexlib2/writer/builder/BuilderStringReference;)I
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderStringReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;->index:I

    return p1
.end method

.method public hasJumboIndexes()Z
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    const/high16 v1, 0x10000

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method internNullableString(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;->internString(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    move-result-object p1

    return-object p1
.end method

.method internString(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method
