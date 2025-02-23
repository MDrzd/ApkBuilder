.class public Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;
.super Lorg/jf/dexlib2/base/reference/BaseTypeReference;

# interfaces
.implements Lorg/jf/dexlib2/iface/ClassDef;


# instance fields
.field private annotationsDirectory:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final classDefOffset:I

.field public final dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final directMethodCount:I

.field private directMethodsOffset:I

.field private final instanceFieldCount:I

.field private instanceFieldsOffset:I

.field private final staticFieldCount:I

.field private final staticFieldsOffset:I

.field private final virtualMethodCount:I

.field private virtualMethodsOffset:I


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseTypeReference;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldsOffset:I

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->directMethodsOffset:I

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodsOffset:I

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->classDefOffset:I

    add-int/lit8 p2, p2, 0x18

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->staticFieldsOffset:I

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->staticFieldCount:I

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldCount:I

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->directMethodCount:I

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodCount:I

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p2

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->staticFieldCount:I

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p2

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldCount:I

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p2

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->directMethodCount:I

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p2

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodCount:I

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->staticFieldsOffset:I

    return-void
.end method

.method static synthetic access$000(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;)I
    .registers 1

    iget p0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->staticFieldCount:I

    return p0
.end method

.method static synthetic access$102(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;I)I
    .registers 2

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldsOffset:I

    return p1
.end method

.method static synthetic access$200(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;)I
    .registers 1

    iget p0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldCount:I

    return p0
.end method

.method static synthetic access$302(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;I)I
    .registers 2

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->directMethodsOffset:I

    return p1
.end method

.method static synthetic access$400(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;)I
    .registers 1

    iget p0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->directMethodCount:I

    return p0
.end method

.method static synthetic access$502(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;I)I
    .registers 2

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodsOffset:I

    return p1
.end method

.method static synthetic access$600(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;)I
    .registers 1

    iget p0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodCount:I

    return p0
.end method

.method private getAnnotationsDirectory()Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->annotationsDirectory:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->classDefOffset:I

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v0

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v1, v0}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;->newOrEmpty(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->annotationsDirectory:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->annotationsDirectory:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;

    return-object v0
.end method

.method private getDirectMethodsOffset()I
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->directMethodsOffset:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->directMethodsOffset:I

    return v0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getInstanceFieldsOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object v0

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldCount:I

    invoke-static {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedField;->skipFields(Lorg/jf/dexlib2/dexbacked/DexReader;I)V

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->directMethodsOffset:I

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->directMethodsOffset:I

    return v0
.end method

.method private getInstanceFieldsOffset()I
    .registers 4

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldsOffset:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldsOffset:I

    return v0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexReader;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->staticFieldsOffset:I

    invoke-direct {v0, v1, v2}, Lorg/jf/dexlib2/dexbacked/DexReader;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->staticFieldCount:I

    invoke-static {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedField;->skipFields(Lorg/jf/dexlib2/dexbacked/DexReader;I)V

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldsOffset:I

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldsOffset:I

    return v0
.end method

.method private getVirtualMethodsOffset()I
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodsOffset:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodsOffset:I

    return v0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getDirectMethodsOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object v0

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->directMethodCount:I

    invoke-static {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->skipMethods(Lorg/jf/dexlib2/dexbacked/DexReader;I)V

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodsOffset:I

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodsOffset:I

    return v0
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->classDefOffset:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getAnnotations()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getAnnotationsDirectory()Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;->getClassAnnotations()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMethods()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getDirectMethods(Z)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMethods(Z)Ljava/lang/Iterable;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->directMethodCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getDirectMethodsOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object v0

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getAnnotationsDirectory()Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    new-instance v2, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$4;

    invoke-direct {v2, p0, v1, v0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$4;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;IZ)V

    return-object v2

    :cond_0
    iget p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->directMethodsOffset:I

    if-lez p1, :cond_1

    iget p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->directMethodsOffset:I

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodsOffset:I

    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public getFields()Ljava/lang/Iterable;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getStaticFields()Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getInstanceFields()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFields()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getInstanceFields(Z)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFields(Z)Ljava/lang/Iterable;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getInstanceFieldsOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object v0

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getAnnotationsDirectory()Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    new-instance v2, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$3;

    invoke-direct {v2, p0, v1, v0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$3;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;IZ)V

    return-object v2

    :cond_0
    iget p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldsOffset:I

    if-lez p1, :cond_1

    iget p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldsOffset:I

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->directMethodsOffset:I

    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public getInterfaces()Ljava/util/List;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->classDefOffset:I

    add-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v1

    new-instance v2, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$1;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;II)V

    return-object v2

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()Ljava/lang/Iterable;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getDirectMethods()Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->classDefOffset:I

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readOptionalUint(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getOptionalString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStaticFields()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getStaticFields(Z)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getStaticFields(Z)Ljava/lang/Iterable;
    .registers 9
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->staticFieldCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->staticFieldsOffset:I

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object v0

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getAnnotationsDirectory()Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;

    move-result-object v3

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->classDefOffset:I

    add-int/lit8 v2, v2, 0x1c

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v4

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v5

    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;

    move-object v1, v0

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;IIZ)V

    return-object v0

    :cond_0
    iget p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->staticFieldsOffset:I

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->instanceFieldsOffset:I

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public getSuperclass()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->classDefOffset:I

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readOptionalUint(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getOptionalType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->classDefOffset:I

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualMethods()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getVirtualMethods(Z)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualMethods(Z)Ljava/lang/Iterable;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->virtualMethodCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getVirtualMethodsOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object v0

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getAnnotationsDirectory()Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    new-instance v2, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5;

    invoke-direct {v2, p0, v1, v0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;IZ)V

    return-object v2

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method
