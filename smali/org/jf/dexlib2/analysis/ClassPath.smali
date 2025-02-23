.class public Lorg/jf/dexlib2/analysis/ClassPath;
.super Ljava/lang/Object;


# static fields
.field public static final NOT_ART:I = -0x1


# instance fields
.field private final checkPackagePrivateAccess:Z

.field private final classLoader:Lcom/google/common/cache/CacheLoader;

.field private classProviders:Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final fieldInstructionMapperSupplier:Lcom/google/common/base/Supplier;

.field private loadedClasses:Lcom/google/common/cache/LoadingCache;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final oatVersion:I

.field private final unknownClass:Lorg/jf/dexlib2/analysis/TypeProto;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/analysis/ClassPath;-><init>(Ljava/lang/Iterable;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;ZI)V
    .registers 7
    .param p1    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jf/dexlib2/analysis/ClassPath$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/analysis/ClassPath$1;-><init>(Lorg/jf/dexlib2/analysis/ClassPath;)V

    iput-object v0, p0, Lorg/jf/dexlib2/analysis/ClassPath;->classLoader:Lcom/google/common/cache/CacheLoader;

    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/ClassPath;->classLoader:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->build(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/analysis/ClassPath;->loadedClasses:Lcom/google/common/cache/LoadingCache;

    new-instance v0, Lorg/jf/dexlib2/analysis/ClassPath$2;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/analysis/ClassPath$2;-><init>(Lorg/jf/dexlib2/analysis/ClassPath;)V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/analysis/ClassPath;->fieldInstructionMapperSupplier:Lcom/google/common/base/Supplier;

    new-instance v0, Lorg/jf/dexlib2/analysis/UnknownClassProto;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/analysis/UnknownClassProto;-><init>(Lorg/jf/dexlib2/analysis/ClassPath;)V

    iput-object v0, p0, Lorg/jf/dexlib2/analysis/ClassPath;->unknownClass:Lorg/jf/dexlib2/analysis/TypeProto;

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassPath;->loadedClasses:Lcom/google/common/cache/LoadingCache;

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/ClassPath;->unknownClass:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-interface {v1}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ClassPath;->unknownClass:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/LoadingCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean p2, p0, Lorg/jf/dexlib2/analysis/ClassPath;->checkPackagePrivateAccess:Z

    iput p3, p0, Lorg/jf/dexlib2/analysis/ClassPath;->oatVersion:I

    const-string p2, "Z"

    invoke-direct {p0, p2}, Lorg/jf/dexlib2/analysis/ClassPath;->loadPrimitiveType(Ljava/lang/String;)V

    const-string p2, "B"

    invoke-direct {p0, p2}, Lorg/jf/dexlib2/analysis/ClassPath;->loadPrimitiveType(Ljava/lang/String;)V

    const-string p2, "S"

    invoke-direct {p0, p2}, Lorg/jf/dexlib2/analysis/ClassPath;->loadPrimitiveType(Ljava/lang/String;)V

    const-string p2, "C"

    invoke-direct {p0, p2}, Lorg/jf/dexlib2/analysis/ClassPath;->loadPrimitiveType(Ljava/lang/String;)V

    const-string p2, "I"

    invoke-direct {p0, p2}, Lorg/jf/dexlib2/analysis/ClassPath;->loadPrimitiveType(Ljava/lang/String;)V

    const-string p2, "J"

    invoke-direct {p0, p2}, Lorg/jf/dexlib2/analysis/ClassPath;->loadPrimitiveType(Ljava/lang/String;)V

    const-string p2, "F"

    invoke-direct {p0, p2}, Lorg/jf/dexlib2/analysis/ClassPath;->loadPrimitiveType(Ljava/lang/String;)V

    const-string p2, "D"

    invoke-direct {p0, p2}, Lorg/jf/dexlib2/analysis/ClassPath;->loadPrimitiveType(Ljava/lang/String;)V

    const-string p2, "L"

    invoke-direct {p0, p2}, Lorg/jf/dexlib2/analysis/ClassPath;->loadPrimitiveType(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/ClassPath;->classProviders:Ljava/util/List;

    iget-object p1, p0, Lorg/jf/dexlib2/analysis/ClassPath;->classProviders:Ljava/util/List;

    invoke-static {}, Lorg/jf/dexlib2/analysis/ClassPath;->getBasicClasses()Lorg/jf/dexlib2/analysis/ClassProvider;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs constructor <init>([Lorg/jf/dexlib2/analysis/ClassProvider;)V
    .registers 4

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/analysis/ClassPath;-><init>(Ljava/lang/Iterable;ZI)V

    return-void
.end method

.method private static getBasicClasses()Lorg/jf/dexlib2/analysis/ClassProvider;
    .registers 10

    new-instance v0, Lorg/jf/dexlib2/analysis/DexClassProvider;

    new-instance v1, Lorg/jf/dexlib2/immutable/ImmutableDexFile;

    invoke-static {}, Lorg/jf/dexlib2/Opcodes;->getDefault()Lorg/jf/dexlib2/Opcodes;

    move-result-object v2

    new-instance v3, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;

    const-class v4, Ljava/lang/Class;

    invoke-direct {v3, v4}, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;-><init>(Ljava/lang/Class;)V

    new-instance v4, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;

    const-class v5, Ljava/lang/Cloneable;

    invoke-direct {v4, v5}, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;-><init>(Ljava/lang/Class;)V

    new-instance v5, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;

    const-class v6, Ljava/lang/Object;

    invoke-direct {v5, v6}, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;-><init>(Ljava/lang/Class;)V

    new-instance v6, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;

    const-class v7, Ljava/io/Serializable;

    invoke-direct {v6, v7}, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;-><init>(Ljava/lang/Class;)V

    new-instance v7, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;

    const-class v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;-><init>(Ljava/lang/Class;)V

    new-instance v8, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;

    const-class v9, Ljava/lang/Throwable;

    invoke-direct {v8, v9}, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;-><init>(Ljava/lang/Class;)V

    const/4 v9, 0x0

    new-array v9, v9, [Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;

    invoke-static/range {v3 .. v9}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jf/dexlib2/immutable/ImmutableDexFile;-><init>(Lorg/jf/dexlib2/Opcodes;Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/analysis/DexClassProvider;-><init>(Lorg/jf/dexlib2/iface/DexFile;)V

    return-object v0
.end method

.method private loadPrimitiveType(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassPath;->loadedClasses:Lcom/google/common/cache/LoadingCache;

    new-instance v1, Lorg/jf/dexlib2/analysis/PrimitiveProto;

    invoke-direct {v1, p0, p1}, Lorg/jf/dexlib2/analysis/PrimitiveProto;-><init>(Lorg/jf/dexlib2/analysis/ClassPath;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/google/common/cache/LoadingCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;
    .registers 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassPath;->loadedClasses:Lcom/google/common/cache/LoadingCache;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/analysis/TypeProto;

    return-object p1
.end method

.method public getClassDef(Ljava/lang/String;)Lorg/jf/dexlib2/iface/ClassDef;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassPath;->classProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/analysis/ClassProvider;

    invoke-interface {v1, p1}, Lorg/jf/dexlib2/analysis/ClassProvider;->getClassDef(Ljava/lang/String;)Lorg/jf/dexlib2/iface/ClassDef;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    new-instance v0, Lorg/jf/dexlib2/analysis/UnresolvedClassException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Could not resolve class %s"

    invoke-direct {v0, p1, v1}, Lorg/jf/dexlib2/analysis/UnresolvedClassException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getFieldInstructionMapper()Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassPath;->fieldInstructionMapperSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper;

    return-object v0
.end method

.method public getUnknownClass()Lorg/jf/dexlib2/analysis/TypeProto;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassPath;->unknownClass:Lorg/jf/dexlib2/analysis/TypeProto;

    return-object v0
.end method

.method public isArt()Z
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/analysis/ClassPath;->oatVersion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldCheckPackagePrivateAccess()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jf/dexlib2/analysis/ClassPath;->checkPackagePrivateAccess:Z

    return v0
.end method
