.class public Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;
.super Lorg/jf/dexlib2/base/reference/BaseTypeReference;

# interfaces
.implements Lorg/jf/dexlib2/iface/ClassDef;


# static fields
.field private static final DIRECT_MODIFIERS:I = 0xa


# instance fields
.field private final cls:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseTypeReference;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;->cls:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$000(Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;)Ljava/lang/Class;
    .registers 1

    iget-object p0, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;->cls:Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;->cls:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getAnnotations()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMethods()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$5;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$5;-><init>(Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;)V

    return-object v0
.end method

.method public bridge synthetic getFields()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;->getFields()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$4;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$4;-><init>(Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;)V

    return-object v0
.end method

.method public getInstanceFields()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$3;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$3;-><init>(Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;)V

    return-object v0
.end method

.method public getInterfaces()Ljava/util/List;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;->cls:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    new-instance v1, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$1;

    invoke-direct {v1, p0}, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$1;-><init>(Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMethods()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;->getMethods()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$7;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$7;-><init>(Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;)V

    return-object v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStaticFields()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$2;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$2;-><init>(Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;)V

    return-object v0
.end method

.method public getSuperclass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;->cls:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ljava/lang/Object;"

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;->cls:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jf/dexlib2/analysis/reflection/util/ReflectionUtils;->javaToDexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;->cls:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jf/dexlib2/analysis/reflection/util/ReflectionUtils;->javaToDexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualMethods()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$6;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$6;-><init>(Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;)V

    return-object v0
.end method
