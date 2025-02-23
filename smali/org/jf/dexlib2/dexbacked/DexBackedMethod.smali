.class public Lorg/jf/dexlib2/dexbacked/DexBackedMethod;
.super Lorg/jf/dexlib2/base/reference/BaseMethodReference;

# interfaces
.implements Lorg/jf/dexlib2/iface/Method;


# instance fields
.field public final accessFlags:I

.field public final classDef:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final codeOffset:I

.field public final dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final methodAnnotationSetOffset:I

.field private methodIdItemOffset:I

.field public final methodIndex:I

.field private final parameterAnnotationSetListOffset:I

.field private parametersOffset:I

.field private protoIdItemOffset:I


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexReader;Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;I)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseMethodReference;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->parametersOffset:I

    iget-object v0, p1, Lorg/jf/dexlib2/dexbacked/DexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    check-cast v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput-object p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->classDef:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readLargeUleb128()I

    move-result p2

    add-int/2addr p2, p3

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->methodIndex:I

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p2

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->accessFlags:I

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->codeOffset:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->methodAnnotationSetOffset:I

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->parameterAnnotationSetListOffset:I

    return-void
.end method

.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexReader;Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;ILorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseMethodReference;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->parametersOffset:I

    iget-object v0, p1, Lorg/jf/dexlib2/dexbacked/DexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    check-cast v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput-object p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->classDef:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readLargeUleb128()I

    move-result p2

    add-int/2addr p2, p3

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->methodIndex:I

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p2

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->accessFlags:I

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->codeOffset:I

    iget p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->methodIndex:I

    invoke-interface {p4, p1}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;->seekTo(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->methodAnnotationSetOffset:I

    iget p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->methodIndex:I

    invoke-interface {p5, p1}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;->seekTo(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->parameterAnnotationSetListOffset:I

    return-void
.end method

.method private getMethodIdItemOffset()I
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->methodIdItemOffset:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->methodIndex:I

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getMethodIdItemOffset(I)I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->methodIdItemOffset:I

    :cond_0
    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->methodIdItemOffset:I

    return v0
.end method

.method private getParametersOffset()I
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->parametersOffset:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->getProtoIdItemOffset()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->parametersOffset:I

    :cond_0
    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->parametersOffset:I

    return v0
.end method

.method private getProtoIdItemOffset()I
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->protoIdItemOffset:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->getMethodIdItemOffset()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUshort(I)I

    move-result v0

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getProtoIdItemOffset(I)I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->protoIdItemOffset:I

    :cond_0
    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->protoIdItemOffset:I

    return v0
.end method

.method public static skipMethods(Lorg/jf/dexlib2/dexbacked/DexReader;I)V
    .registers 3
    .param p0    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexReader;->skipUleb128()V

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexReader;->skipUleb128()V

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexReader;->skipUleb128()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->accessFlags:I

    return v0
.end method

.method public getAnnotations()Ljava/util/Set;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->methodAnnotationSetOffset:I

    invoke-static {v0, v1}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;->getAnnotations(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDefiningClass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->classDef:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImplementation()Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->codeOffset:I

    if-lez v0, :cond_0

    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->codeOffset:I

    invoke-direct {v0, v1, p0, v2}, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/dexbacked/DexBackedMethod;I)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getImplementation()Lorg/jf/dexlib2/iface/MethodImplementation;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->getImplementation()Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;

    move-result-object v0

    return-object v0
.end method

.method public getMethodIndex()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->methodIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->getMethodIdItemOffset()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterAnnotations()Ljava/util/List;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->parameterAnnotationSetListOffset:I

    invoke-static {v0, v1}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;->getParameterAnnotations(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Iterator;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->getImplementation()Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->getParameterNames(Lorg/jf/dexlib2/dexbacked/DexReader;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->getParametersOffset()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    new-instance v2, Lorg/jf/dexlib2/dexbacked/DexBackedMethod$2;

    invoke-direct {v2, p0, v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedMethod$2;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedMethod;II)V

    return-object v2

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->getParametersOffset()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/jf/dexlib2/dexbacked/DexBackedMethod$1;

    invoke-direct {v1, p0, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedMethod$1;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedMethod;Ljava/util/List;)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->getProtoIdItemOffset()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
