.class final Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$2;
.super Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet;


# instance fields
.field final synthetic val$annotationSetOffset:I

.field final synthetic val$dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V
    .registers 4

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$2;->val$dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$2;->val$annotationSetOffset:I

    iput p3, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$2;->val$size:I

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic readItem(I)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$2;->readItem(I)Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public final readItem(I)Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$2;->val$dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$2;->val$annotationSetOffset:I

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result p1

    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$2;->val$dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {v0, v1, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$2;->val$size:I

    return v0
.end method
