.class public Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation;
.super Lorg/jf/dexlib2/base/BaseAnnotation;


# instance fields
.field public final dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final elementsOffset:I

.field public final typeIndex:I

.field public final visibility:I


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseAnnotation;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readUbyte()I

    move-result p2

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation;->visibility:I

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p2

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation;->typeIndex:I

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation;->elementsOffset:I

    return-void
.end method


# virtual methods
.method public getElements()Ljava/util/Set;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation;->elementsOffset:I

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v1

    new-instance v2, Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation$1;

    iget-object v3, p0, Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    invoke-direct {v2, p0, v3, v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation$1;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation;Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V

    return-object v2
.end method

.method public getType()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation;->typeIndex:I

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation;->visibility:I

    return v0
.end method
