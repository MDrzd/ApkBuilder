.class Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;
.super Lorg/jf/dexlib2/writer/builder/BaseBuilderPool;

# interfaces
.implements Lorg/jf/dexlib2/writer/AnnotationSetSection;


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

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public bridge synthetic getAnnotations(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;->getAnnotations(Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotations(Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;)Ljava/util/Collection;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;->annotations:Ljava/util/Set;

    return-object p1
.end method

.method public bridge synthetic getItemOffset(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;->getItemOffset(Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;)I

    move-result p1

    return p1
.end method

.method public getItemOffset(Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;)I
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;->offset:I

    return p1
.end method

.method public getItems()Ljava/util/Collection;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool$2;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool$2;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic getNullableItemOffset(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;->getNullableItemOffset(Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;)I

    move-result p1

    return p1
.end method

.method public getNullableItemOffset(Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;)I
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;->offset:I

    return p1
.end method

.method public internAnnotationSet(Ljava/util/Set;)Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;
    .registers 4
    .param p1    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;->EMPTY:Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance v1, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool$1;

    invoke-direct {v1, p0}, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool$1;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;)V

    invoke-static {p1, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;-><init>(Ljava/util/Set;)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;->internedItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method
