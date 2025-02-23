.class public abstract Lorg/jf/dexlib2/writer/EncodedValueWriter;
.super Ljava/lang/Object;


# instance fields
.field private final annotationSection:Lorg/jf/dexlib2/writer/AnnotationSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final fieldSection:Lorg/jf/dexlib2/writer/FieldSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final methodSection:Lorg/jf/dexlib2/writer/MethodSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final stringSection:Lorg/jf/dexlib2/writer/StringSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final typeSection:Lorg/jf/dexlib2/writer/TypeSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final writer:Lorg/jf/dexlib2/writer/DexDataWriter;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/StringSection;Lorg/jf/dexlib2/writer/TypeSection;Lorg/jf/dexlib2/writer/FieldSection;Lorg/jf/dexlib2/writer/MethodSection;Lorg/jf/dexlib2/writer/AnnotationSection;)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/writer/StringSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/writer/TypeSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/writer/FieldSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lorg/jf/dexlib2/writer/MethodSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p6    # Lorg/jf/dexlib2/writer/AnnotationSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    iput-object p2, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    iput-object p3, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    iput-object p4, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    iput-object p5, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    iput-object p6, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->annotationSection:Lorg/jf/dexlib2/writer/AnnotationSection;

    return-void
.end method


# virtual methods
.method public writeAnnotation(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 6

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedValueHeader(II)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    invoke-interface {v1, p1}, Lorg/jf/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    sget-object p1, Lorg/jf/dexlib2/base/BaseAnnotationElement;->BY_NAME:Ljava/util/Comparator;

    invoke-static {p1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jf/dexlib2/iface/AnnotationElement;

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    iget-object v2, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->annotationSection:Lorg/jf/dexlib2/writer/AnnotationSection;

    invoke-interface {v2, p2}, Lorg/jf/dexlib2/writer/AnnotationSection;->getElementName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jf/dexlib2/writer/StringSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->annotationSection:Lorg/jf/dexlib2/writer/AnnotationSection;

    invoke-interface {v0, p2}, Lorg/jf/dexlib2/writer/AnnotationSection;->getElementValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writeEncodedValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeArray(Ljava/util/Collection;)V
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedValueHeader(II)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writeEncodedValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeBoolean(Z)V
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedValueHeader(II)V

    return-void
.end method

.method public writeByte(B)V
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedInt(II)V

    return-void
.end method

.method public writeChar(C)V
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedUint(II)V

    return-void
.end method

.method public writeDouble(D)V
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1, p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedDouble(ID)V

    return-void
.end method

.method protected abstract writeEncodedValue(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public writeEnum(Lorg/jf/dexlib2/iface/reference/FieldReference;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    invoke-interface {v1, p1}, Lorg/jf/dexlib2/writer/FieldSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedUint(II)V

    return-void
.end method

.method public writeField(Lorg/jf/dexlib2/iface/reference/FieldReference;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    invoke-interface {v1, p1}, Lorg/jf/dexlib2/writer/FieldSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedUint(II)V

    return-void
.end method

.method public writeFloat(F)V
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedFloat(IF)V

    return-void
.end method

.method public writeInt(I)V
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedInt(II)V

    return-void
.end method

.method public writeLong(J)V
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedLong(IJ)V

    return-void
.end method

.method public writeMethod(Lorg/jf/dexlib2/iface/reference/MethodReference;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    invoke-interface {v1, p1}, Lorg/jf/dexlib2/writer/MethodSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedUint(II)V

    return-void
.end method

.method public writeNull()V
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    return-void
.end method

.method public writeShort(I)V
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedInt(II)V

    return-void
.end method

.method public writeString(Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    invoke-interface {v1, p1}, Lorg/jf/dexlib2/writer/StringSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedUint(II)V

    return-void
.end method

.method public writeType(Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/EncodedValueWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    invoke-interface {v1, p1}, Lorg/jf/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeEncodedUint(II)V

    return-void
.end method
