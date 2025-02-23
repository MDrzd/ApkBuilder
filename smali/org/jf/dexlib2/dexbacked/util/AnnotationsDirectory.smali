.class public abstract Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;->EMPTY:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnnotations(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/util/Set;
    .registers 4
    .param p0    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v0

    new-instance v1, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$2;

    invoke-direct {v1, p0, p1, v0}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$2;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static getParameterAnnotations(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/util/List;
    .registers 4
    .param p0    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v0

    new-instance v1, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$3;

    invoke-direct {v1, p0, p1, v0}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$3;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static newOrEmpty(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;
    .registers 3
    .param p0    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p1, :cond_0

    sget-object p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;->EMPTY:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationsDirectoryImpl;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object v0
.end method


# virtual methods
.method public abstract getClassAnnotations()Ljava/util/Set;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getFieldAnnotationCount()I
.end method

.method public abstract getFieldAnnotationIterator()Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getMethodAnnotationIterator()Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getParameterAnnotationIterator()Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
