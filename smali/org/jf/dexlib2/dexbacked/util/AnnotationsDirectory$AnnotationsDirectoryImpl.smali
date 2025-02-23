.class Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;
.super Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;


# static fields
.field private static final ANNOTATIONS_START_OFFSET:I = 0x10

.field private static final FIELD_ANNOTATION_SIZE:I = 0x8

.field private static final FIELD_COUNT_OFFSET:I = 0x4

.field private static final METHOD_ANNOTATION_SIZE:I = 0x8

.field private static final METHOD_COUNT_OFFSET:I = 0x8

.field private static final PARAMETER_COUNT_OFFSET:I = 0xc


# instance fields
.field public final dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final directoryOffset:I


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->directoryOffset:I

    return-void
.end method


# virtual methods
.method public getClassAnnotations()Ljava/util/Set;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->directoryOffset:I

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->getAnnotations(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFieldAnnotationCount()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->directoryOffset:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getFieldAnnotationIterator()Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->getFieldAnnotationCount()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;->EMPTY:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    return-object v0

    :cond_0
    new-instance v1, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->directoryOffset:I

    add-int/lit8 v2, v2, 0x10

    invoke-direct {v1, p0, v2, v0}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;-><init>(Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;II)V

    return-object v1
.end method

.method public getMethodAnnotationCount()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->directoryOffset:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getMethodAnnotationIterator()Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->getMethodAnnotationCount()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;->EMPTY:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->getFieldAnnotationCount()I

    move-result v1

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->directoryOffset:I

    add-int/lit8 v2, v2, 0x10

    shl-int/lit8 v1, v1, 0x3

    add-int/2addr v2, v1

    new-instance v1, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;

    invoke-direct {v1, p0, v2, v0}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;-><init>(Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;II)V

    return-object v1
.end method

.method public getParameterAnnotationCount()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->directoryOffset:I

    add-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getParameterAnnotationIterator()Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->getParameterAnnotationCount()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;->EMPTY:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->getFieldAnnotationCount()I

    move-result v1

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->getMethodAnnotationCount()I

    move-result v2

    iget v3, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;->directoryOffset:I

    add-int/lit8 v3, v3, 0x10

    shl-int/lit8 v1, v1, 0x3

    add-int/2addr v3, v1

    shl-int/lit8 v1, v2, 0x3

    add-int/2addr v3, v1

    new-instance v1, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;

    invoke-direct {v1, p0, v3, v0}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl$AnnotationIteratorImpl;-><init>(Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;II)V

    return-object v1
.end method
