.class public Lorg/jf/dexlib2/dexbacked/DexBackedField;
.super Lorg/jf/dexlib2/base/reference/BaseFieldReference;

# interfaces
.implements Lorg/jf/dexlib2/iface/Field;


# instance fields
.field public final accessFlags:I

.field public final annotationSetOffset:I

.field public final classDef:Lorg/jf/dexlib2/iface/ClassDef;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private fieldIdItemOffset:I

.field public final fieldIndex:I

.field public final initialValue:Lorg/jf/dexlib2/iface/value/EncodedValue;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexReader;Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;ILorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;)V
    .registers 6
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

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseFieldReference;-><init>()V

    iget-object v0, p1, Lorg/jf/dexlib2/dexbacked/DexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    check-cast v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput-object p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readLargeUleb128()I

    move-result p2

    add-int/2addr p2, p3

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->fieldIndex:I

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->accessFlags:I

    iget p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->fieldIndex:I

    invoke-interface {p4, p1}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;->seekTo(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->annotationSetOffset:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->initialValue:Lorg/jf/dexlib2/iface/value/EncodedValue;

    return-void
.end method

.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexReader;Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;ILorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseFieldReference;-><init>()V

    iget-object v0, p1, Lorg/jf/dexlib2/dexbacked/DexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    check-cast v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput-object p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readLargeUleb128()I

    move-result p2

    add-int/2addr p2, p3

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->fieldIndex:I

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->accessFlags:I

    iget p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->fieldIndex:I

    invoke-interface {p5, p1}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;->seekTo(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->annotationSetOffset:I

    invoke-virtual {p4}, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;->getNextOrNull()Lorg/jf/dexlib2/iface/value/EncodedValue;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->initialValue:Lorg/jf/dexlib2/iface/value/EncodedValue;

    return-void
.end method

.method private getFieldIdItemOffset()I
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->fieldIdItemOffset:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->fieldIndex:I

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getFieldIdItemOffset(I)I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->fieldIdItemOffset:I

    :cond_0
    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->fieldIdItemOffset:I

    return v0
.end method

.method public static skipFields(Lorg/jf/dexlib2/dexbacked/DexReader;I)V
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

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->accessFlags:I

    return v0
.end method

.method public getAnnotations()Ljava/util/Set;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->annotationSetOffset:I

    invoke-static {v0, v1}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;->getAnnotations(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDefiningClass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitialValue()Lorg/jf/dexlib2/iface/value/EncodedValue;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->initialValue:Lorg/jf/dexlib2/iface/value/EncodedValue;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedField;->getFieldIdItemOffset()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedField;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedField;->getFieldIdItemOffset()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUshort(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
