.class final Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$1;
.super Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClassAnnotations()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final getFieldAnnotationCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getFieldAnnotationIterator()Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    sget-object v0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;->EMPTY:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    return-object v0
.end method

.method public final getMethodAnnotationIterator()Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    sget-object v0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;->EMPTY:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    return-object v0
.end method

.method public final getParameterAnnotationIterator()Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    sget-object v0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;->EMPTY:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    return-object v0
.end method
