.class Lorg/jf/dexlib2/writer/pool/PoolClassDef;
.super Lorg/jf/dexlib2/base/reference/BaseTypeReference;

# interfaces
.implements Lorg/jf/dexlib2/iface/ClassDef;


# instance fields
.field annotationDirectoryOffset:I

.field final classDef:Lorg/jf/dexlib2/iface/ClassDef;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field classDefIndex:I

.field final directMethods:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field encodedArrayOffset:I

.field final instanceFields:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final interfaces:Lorg/jf/dexlib2/writer/pool/TypeListPool$Key;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final staticFields:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final virtualMethods:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/iface/ClassDef;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/ClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseTypeReference;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->classDefIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->encodedArrayOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->annotationDirectoryOffset:I

    iput-object p1, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    new-instance v0, Lorg/jf/dexlib2/writer/pool/TypeListPool$Key;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/ClassDef;->getInterfaces()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/pool/TypeListPool$Key;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->interfaces:Lorg/jf/dexlib2/writer/pool/TypeListPool$Key;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/ClassDef;->getStaticFields()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->staticFields:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/ClassDef;->getInstanceFields()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->instanceFields:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/ClassDef;->getDirectMethods()Ljava/lang/Iterable;

    move-result-object v0

    sget-object v1, Lorg/jf/dexlib2/writer/pool/PoolMethod;->TRANSFORM:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->directMethods:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/ClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object p1

    sget-object v0, Lorg/jf/dexlib2/writer/pool/PoolMethod;->TRANSFORM:Lcom/google/common/base/Function;

    invoke-static {p1, v0}, Lcom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->virtualMethods:Lcom/google/common/collect/ImmutableSortedSet;

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/ClassDef;->getAccessFlags()I

    move-result v0

    return v0
.end method

.method public getAnnotations()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/ClassDef;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDirectMethods()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->getDirectMethods()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMethods()Ljava/util/SortedSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->directMethods:Lcom/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public bridge synthetic getFields()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->getFields()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/Collection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/pool/PoolClassDef$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/writer/pool/PoolClassDef$1;-><init>(Lorg/jf/dexlib2/writer/pool/PoolClassDef;)V

    return-object v0
.end method

.method public bridge synthetic getInstanceFields()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->getInstanceFields()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFields()Ljava/util/SortedSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->instanceFields:Lcom/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public getInterfaces()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->interfaces:Lorg/jf/dexlib2/writer/pool/TypeListPool$Key;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/pool/TypeListPool$Key;->types:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getMethods()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->getMethods()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()Ljava/util/Collection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/pool/PoolClassDef$2;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/writer/pool/PoolClassDef$2;-><init>(Lorg/jf/dexlib2/writer/pool/PoolClassDef;)V

    return-object v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/ClassDef;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStaticFields()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->getStaticFields()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getStaticFields()Ljava/util/SortedSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->staticFields:Lcom/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public getSuperclass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/ClassDef;->getSuperclass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVirtualMethods()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->getVirtualMethods()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualMethods()Ljava/util/SortedSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->virtualMethods:Lcom/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method
