.class public Lorg/jf/dexlib2/writer/builder/BuilderClassDef;
.super Lorg/jf/dexlib2/base/reference/BaseTypeReference;

# interfaces
.implements Lorg/jf/dexlib2/iface/ClassDef;


# instance fields
.field final accessFlags:I

.field annotationDirectoryOffset:I

.field final annotations:Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field classDefIndex:I

.field final directMethods:Ljava/util/SortedSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field encodedArrayOffset:I

.field final instanceFields:Ljava/util/SortedSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final interfaces:Lorg/jf/dexlib2/writer/builder/BuilderTypeList;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final sourceFile:Lorg/jf/dexlib2/writer/builder/BuilderStringReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final staticFields:Ljava/util/SortedSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final superclass:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final type:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final virtualMethods:Ljava/util/SortedSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;ILorg/jf/dexlib2/writer/builder/BuilderTypeReference;Lorg/jf/dexlib2/writer/builder/BuilderTypeList;Lorg/jf/dexlib2/writer/builder/BuilderStringReference;Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .registers 10
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/writer/builder/BuilderTypeList;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lorg/jf/dexlib2/writer/builder/BuilderStringReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseTypeReference;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->classDefIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->encodedArrayOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->annotationDirectoryOffset:I

    if-nez p7, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p7

    :cond_0
    if-nez p8, :cond_1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p8

    :cond_1
    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->type:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    iput p2, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->accessFlags:I

    iput-object p3, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->superclass:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    iput-object p4, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->interfaces:Lorg/jf/dexlib2/writer/builder/BuilderTypeList;

    iput-object p5, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->sourceFile:Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    iput-object p6, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->annotations:Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    sget-object p1, Lorg/jf/dexlib2/util/FieldUtil;->FIELD_IS_STATIC:Lcom/google/common/base/Predicate;

    invoke-static {p7, p1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->staticFields:Ljava/util/SortedSet;

    sget-object p1, Lorg/jf/dexlib2/util/FieldUtil;->FIELD_IS_INSTANCE:Lcom/google/common/base/Predicate;

    invoke-static {p7, p1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->instanceFields:Ljava/util/SortedSet;

    sget-object p1, Lorg/jf/dexlib2/util/MethodUtil;->METHOD_IS_DIRECT:Lcom/google/common/base/Predicate;

    invoke-static {p8, p1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->directMethods:Ljava/util/SortedSet;

    sget-object p1, Lorg/jf/dexlib2/util/MethodUtil;->METHOD_IS_VIRTUAL:Lcom/google/common/base/Predicate;

    invoke-static {p8, p1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->virtualMethods:Ljava/util/SortedSet;

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->accessFlags:I

    return v0
.end method

.method public bridge synthetic getAnnotations()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->getAnnotations()Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->annotations:Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    return-object v0
.end method

.method public bridge synthetic getDirectMethods()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->getDirectMethods()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMethods()Ljava/util/SortedSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->directMethods:Ljava/util/SortedSet;

    return-object v0
.end method

.method public bridge synthetic getFields()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->getFields()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/Collection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/writer/builder/BuilderClassDef$1;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderClassDef;)V

    return-object v0
.end method

.method public bridge synthetic getInstanceFields()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->getInstanceFields()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFields()Ljava/util/SortedSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->instanceFields:Ljava/util/SortedSet;

    return-object v0
.end method

.method public getInterfaces()Ljava/util/List;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->interfaces:Lorg/jf/dexlib2/writer/builder/BuilderTypeList;

    invoke-static {}, Lcom/google/common/base/Functions;->toStringFunction()Lcom/google/common/base/Function;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMethods()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->getMethods()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()Ljava/util/Collection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef$2;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/writer/builder/BuilderClassDef$2;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderClassDef;)V

    return-object v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->sourceFile:Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->sourceFile:Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStaticFields()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->getStaticFields()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getStaticFields()Ljava/util/SortedSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->staticFields:Ljava/util/SortedSet;

    return-object v0
.end method

.method public getSuperclass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->superclass:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->superclass:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->type:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVirtualMethods()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->getVirtualMethods()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualMethods()Ljava/util/SortedSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->virtualMethods:Ljava/util/SortedSet;

    return-object v0
.end method
