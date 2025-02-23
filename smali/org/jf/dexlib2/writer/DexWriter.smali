.class public abstract Lorg/jf/dexlib2/writer/DexWriter;
.super Ljava/lang/Object;


# static fields
.field public static final NO_INDEX:I = -0x1

.field public static final NO_OFFSET:I

.field private static toStringKeyComparator:Ljava/util/Comparator;


# instance fields
.field protected annotationDirectorySectionOffset:I

.field public final annotationSection:Lorg/jf/dexlib2/writer/AnnotationSection;

.field protected annotationSectionOffset:I

.field protected annotationSetRefSectionOffset:I

.field public final annotationSetSection:Lorg/jf/dexlib2/writer/AnnotationSetSection;

.field protected annotationSetSectionOffset:I

.field protected classDataSectionOffset:I

.field protected classIndexSectionOffset:I

.field public final classSection:Lorg/jf/dexlib2/writer/ClassSection;

.field protected codeSectionOffset:I

.field protected debugSectionOffset:I

.field protected encodedArraySectionOffset:I

.field public final fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

.field protected fieldSectionOffset:I

.field protected mapSectionOffset:I

.field public final methodSection:Lorg/jf/dexlib2/writer/MethodSection;

.field protected methodSectionOffset:I

.field protected numAnnotationDirectoryItems:I

.field protected numAnnotationSetRefItems:I

.field protected numClassDataItems:I

.field protected numCodeItemItems:I

.field protected numDebugInfoItems:I

.field protected numEncodedArrayItems:I

.field protected final opcodes:Lorg/jf/dexlib2/Opcodes;

.field public final protoSection:Lorg/jf/dexlib2/writer/ProtoSection;

.field protected protoSectionOffset:I

.field protected stringDataSectionOffset:I

.field protected stringIndexSectionOffset:I

.field public final stringSection:Lorg/jf/dexlib2/writer/StringSection;

.field public final typeListSection:Lorg/jf/dexlib2/writer/TypeListSection;

.field protected typeListSectionOffset:I

.field public final typeSection:Lorg/jf/dexlib2/writer/TypeSection;

.field protected typeSectionOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/writer/DexWriter$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/writer/DexWriter$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/writer/DexWriter;->toStringKeyComparator:Ljava/util/Comparator;

    return-void
.end method

.method protected constructor <init>(Lorg/jf/dexlib2/Opcodes;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringIndexSectionOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSectionOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->protoSectionOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->fieldSectionOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->methodSectionOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->classIndexSectionOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringDataSectionOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->classDataSectionOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeListSectionOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->encodedArraySectionOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSectionOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSetSectionOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSetRefSectionOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationDirectorySectionOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->debugSectionOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->codeSectionOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->mapSectionOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->numEncodedArrayItems:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->numAnnotationSetRefItems:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->numAnnotationDirectoryItems:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->numDebugInfoItems:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->numCodeItemItems:I

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->numClassDataItems:I

    iput-object p1, p0, Lorg/jf/dexlib2/writer/DexWriter;->opcodes:Lorg/jf/dexlib2/Opcodes;

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/DexWriter;->getSectionProvider()Lorg/jf/dexlib2/writer/DexWriter$SectionProvider;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexWriter$SectionProvider;->getStringSection()Lorg/jf/dexlib2/writer/StringSection;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexWriter$SectionProvider;->getTypeSection()Lorg/jf/dexlib2/writer/TypeSection;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexWriter$SectionProvider;->getProtoSection()Lorg/jf/dexlib2/writer/ProtoSection;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->protoSection:Lorg/jf/dexlib2/writer/ProtoSection;

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexWriter$SectionProvider;->getFieldSection()Lorg/jf/dexlib2/writer/FieldSection;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexWriter$SectionProvider;->getMethodSection()Lorg/jf/dexlib2/writer/MethodSection;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexWriter$SectionProvider;->getClassSection()Lorg/jf/dexlib2/writer/ClassSection;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexWriter$SectionProvider;->getTypeListSection()Lorg/jf/dexlib2/writer/TypeListSection;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeListSection:Lorg/jf/dexlib2/writer/TypeListSection;

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexWriter$SectionProvider;->getAnnotationSection()Lorg/jf/dexlib2/writer/AnnotationSection;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSection:Lorg/jf/dexlib2/writer/AnnotationSection;

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexWriter$SectionProvider;->getAnnotationSetSection()Lorg/jf/dexlib2/writer/AnnotationSetSection;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSetSection:Lorg/jf/dexlib2/writer/AnnotationSetSection;

    return-void
.end method

.method private calcNumItems()I
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/StringSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    invoke-interface {v2}, Lorg/jf/dexlib2/writer/TypeSection;->getItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->protoSection:Lorg/jf/dexlib2/writer/ProtoSection;

    invoke-interface {v2}, Lorg/jf/dexlib2/writer/ProtoSection;->getItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    invoke-interface {v2}, Lorg/jf/dexlib2/writer/FieldSection;->getItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    invoke-interface {v2}, Lorg/jf/dexlib2/writer/MethodSection;->getItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeListSection:Lorg/jf/dexlib2/writer/TypeListSection;

    invoke-interface {v2}, Lorg/jf/dexlib2/writer/TypeListSection;->getItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->numEncodedArrayItems:I

    if-lez v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSection:Lorg/jf/dexlib2/writer/AnnotationSection;

    invoke-interface {v2}, Lorg/jf/dexlib2/writer/AnnotationSection;->getItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSetSection:Lorg/jf/dexlib2/writer/AnnotationSetSection;

    invoke-interface {v2}, Lorg/jf/dexlib2/writer/AnnotationSetSection;->getItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-gtz v2, :cond_8

    invoke-direct {p0}, Lorg/jf/dexlib2/writer/DexWriter;->shouldCreateEmptyAnnotationSet()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    add-int/lit8 v0, v0, 0x1

    :cond_9
    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->numAnnotationSetRefItems:I

    if-lez v2, :cond_a

    add-int/lit8 v0, v0, 0x1

    :cond_a
    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->numAnnotationDirectoryItems:I

    if-lez v2, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_b
    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->numDebugInfoItems:I

    if-lez v2, :cond_c

    add-int/lit8 v0, v0, 0x1

    :cond_c
    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->numCodeItemItems:I

    if-lez v2, :cond_d

    add-int/lit8 v0, v0, 0x1

    :cond_d
    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v2}, Lorg/jf/dexlib2/writer/ClassSection;->getItems()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_e

    add-int/lit8 v0, v0, 0x1

    :cond_e
    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->numClassDataItems:I

    if-lez v2, :cond_f

    add-int/lit8 v0, v0, 0x1

    :cond_f
    add-int/2addr v0, v1

    return v0
.end method

.method private static comparableKeyComparator()Ljava/util/Comparator;
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/writer/DexWriter$2;

    invoke-direct {v0}, Lorg/jf/dexlib2/writer/DexWriter$2;-><init>()V

    return-object v0
.end method

.method private fixInstructions(Lorg/jf/dexlib2/builder/MutableMethodImplementation;)V
    .registers 8
    .param p1    # Lorg/jf/dexlib2/builder/MutableMethodImplementation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->getInstructions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v3

    sget-object v4, Lorg/jf/dexlib2/Opcode;->CONST_STRING:Lorg/jf/dexlib2/Opcode;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    move-object v4, v2

    check-cast v4, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v5

    check-cast v5, Lorg/jf/dexlib2/iface/reference/StringReference;

    invoke-interface {v3, v5}, Lorg/jf/dexlib2/writer/StringSection;->getItemIndex(Lorg/jf/dexlib2/iface/reference/StringReference;)I

    move-result v3

    const/high16 v5, 0x10000

    if-lt v3, v5, :cond_0

    new-instance v3, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction31c;

    sget-object v5, Lorg/jf/dexlib2/Opcode;->CONST_STRING_JUMBO:Lorg/jf/dexlib2/Opcode;

    check-cast v2, Lorg/jf/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v4

    invoke-direct {v3, v5, v2, v4}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction31c;-><init>(Lorg/jf/dexlib2/Opcode;ILorg/jf/dexlib2/iface/reference/Reference;)V

    invoke-virtual {p1, v1, v3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->replaceInstruction(ILorg/jf/dexlib2/builder/BuilderInstruction;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getDataSectionOffset()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/StringSection;->getItemCount()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x70

    iget-object v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    invoke-interface {v1}, Lorg/jf/dexlib2/writer/TypeSection;->getItemCount()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->protoSection:Lorg/jf/dexlib2/writer/ProtoSection;

    invoke-interface {v1}, Lorg/jf/dexlib2/writer/ProtoSection;->getItemCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    invoke-interface {v1}, Lorg/jf/dexlib2/writer/FieldSection;->getItemCount()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    invoke-interface {v1}, Lorg/jf/dexlib2/writer/MethodSection;->getItemCount()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v1}, Lorg/jf/dexlib2/writer/ClassSection;->getItemCount()I

    move-result v1

    shl-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    return v0
.end method

.method private static outputAt(Lorg/jf/dexlib2/writer/io/DexDataStore;I)Lorg/jf/dexlib2/writer/DexDataWriter;
    .registers 3

    new-instance v0, Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p0, p1}, Lorg/jf/dexlib2/writer/io/DexDataStore;->outputAt(I)Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method private shouldCreateEmptyAnnotationSet()Z
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->opcodes:Lorg/jf/dexlib2/Opcodes;

    iget v0, v0, Lorg/jf/dexlib2/Opcodes;->api:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateChecksum(Lorg/jf/dexlib2/writer/io/DexDataStore;)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/writer/io/DexDataStore;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Lorg/jf/dexlib2/writer/io/DexDataStore;->readAt(I)Ljava/io/InputStream;

    move-result-object v2

    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/util/zip/Adler32;->update([BII)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Lorg/jf/dexlib2/writer/io/DexDataStore;->outputAt(I)Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(Ljava/io/OutputStream;I)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private updateSignature(Lorg/jf/dexlib2/writer/io/DexDataStore;)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/writer/io/DexDataStore;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1000

    new-array v1, v1, [B

    const/16 v2, 0x20

    invoke-interface {p1, v2}, Lorg/jf/dexlib2/writer/io/DexDataStore;->readAt(I)Ljava/io/InputStream;

    move-result-object v2

    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    const/16 v1, 0xc

    invoke-interface {p1, v1}, Lorg/jf/dexlib2/writer/io/DexDataStore;->outputAt(I)Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected digest write: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private writeAnnotationDirectories(Lorg/jf/dexlib2/writer/DexDataWriter;)V
    .registers 14
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->align()V

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationDirectorySectionOffset:I

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v2}, Lorg/jf/dexlib2/writer/ClassSection;->getSortedClasses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v4, v3}, Lorg/jf/dexlib2/writer/ClassSection;->getSortedFields(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    iget-object v5, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v5, v3}, Lorg/jf/dexlib2/writer/ClassSection;->getSortedMethods(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v6

    shl-int/lit8 v6, v6, 0x3

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-le v6, v7, :cond_1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v9, v8}, Lorg/jf/dexlib2/writer/ClassSection;->getFieldAnnotations(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    add-int/lit8 v7, v7, 0x1

    iget-object v10, p0, Lorg/jf/dexlib2/writer/DexWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    invoke-interface {v10, v8}, Lorg/jf/dexlib2/writer/FieldSection;->getFieldIndex(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSetSection:Lorg/jf/dexlib2/writer/AnnotationSetSection;

    invoke-interface {v8, v9}, Lorg/jf/dexlib2/writer/AnnotationSetSection;->getItemOffset(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v8, 0x0

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    iget-object v10, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v10, v9}, Lorg/jf/dexlib2/writer/ClassSection;->getMethodAnnotations(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    add-int/lit8 v8, v8, 0x1

    iget-object v11, p0, Lorg/jf/dexlib2/writer/DexWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    invoke-interface {v11, v9}, Lorg/jf/dexlib2/writer/MethodSection;->getMethodIndex(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v9, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSetSection:Lorg/jf/dexlib2/writer/AnnotationSetSection;

    invoke-interface {v9, v10}, Lorg/jf/dexlib2/writer/AnnotationSetSection;->getItemOffset(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_5
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    iget-object v10, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v10, v9}, Lorg/jf/dexlib2/writer/ClassSection;->getAnnotationSetRefListOffset(Ljava/lang/Object;)I

    move-result v10

    if-eqz v10, :cond_6

    add-int/lit8 v5, v5, 0x1

    iget-object v11, p0, Lorg/jf/dexlib2/writer/DexWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    invoke-interface {v11, v9}, Lorg/jf/dexlib2/writer/MethodSection;->getMethodIndex(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v4, v3}, Lorg/jf/dexlib2/writer/ClassSection;->getClassAnnotations(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v7, :cond_9

    if-nez v8, :cond_9

    if-nez v5, :cond_9

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_8

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v3, v5}, Lorg/jf/dexlib2/writer/ClassSection;->setAnnotationDirectoryOffset(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget v9, p0, Lorg/jf/dexlib2/writer/DexWriter;->numAnnotationDirectoryItems:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/jf/dexlib2/writer/DexWriter;->numAnnotationDirectoryItems:I

    iget-object v9, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v10

    invoke-interface {v9, v3, v10}, Lorg/jf/dexlib2/writer/ClassSection;->setAnnotationDirectoryOffset(Ljava/lang/Object;I)V

    iget-object v3, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSetSection:Lorg/jf/dexlib2/writer/AnnotationSetSection;

    invoke-interface {v3, v4}, Lorg/jf/dexlib2/writer/AnnotationSetSection;->getNullableItemOffset(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    invoke-virtual {p1, v7}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    invoke-virtual {p1, v8}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    invoke-virtual {p1, v5}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1, v3, v6, v4}, Lorg/jf/dexlib2/writer/DexDataWriter;->write([BII)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private writeAnnotationSetRefs(Lorg/jf/dexlib2/writer/DexDataWriter;)V
    .registers 9
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->align()V

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSetRefSectionOffset:I

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v1}, Lorg/jf/dexlib2/writer/ClassSection;->getSortedClasses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    iget-object v3, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v3, v2}, Lorg/jf/dexlib2/writer/ClassSection;->getSortedMethods(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v4, v3}, Lorg/jf/dexlib2/writer/ClassSection;->getParameterAnnotations(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v3, v5}, Lorg/jf/dexlib2/writer/ClassSection;->setAnnotationSetRefListOffset(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->align()V

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v5

    iget-object v6, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v6, v3, v5}, Lorg/jf/dexlib2/writer/ClassSection;->setAnnotationSetRefListOffset(Ljava/lang/Object;I)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lorg/jf/dexlib2/writer/DexWriter;->numAnnotationSetRefItems:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jf/dexlib2/writer/DexWriter;->numAnnotationSetRefItems:I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSetSection:Lorg/jf/dexlib2/writer/AnnotationSetSection;

    invoke-interface {v5, v4}, Lorg/jf/dexlib2/writer/AnnotationSetSection;->getAnnotations(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSetSection:Lorg/jf/dexlib2/writer/AnnotationSetSection;

    invoke-interface {v5, v4}, Lorg/jf/dexlib2/writer/AnnotationSetSection;->getItemOffset(Ljava/lang/Object;)I

    move-result v4

    :goto_2
    invoke-virtual {p1, v4}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/jf/dexlib2/writer/DexWriter;->shouldCreateEmptyAnnotationSet()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSetSectionOffset:I

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    return-void
.end method

.method private writeAnnotationSets(Lorg/jf/dexlib2/writer/DexDataWriter;)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->align()V

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSetSectionOffset:I

    invoke-direct {p0}, Lorg/jf/dexlib2/writer/DexWriter;->shouldCreateEmptyAnnotationSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSetSection:Lorg/jf/dexlib2/writer/AnnotationSetSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/AnnotationSetSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lorg/jf/dexlib2/base/BaseAnnotation;->BY_TYPE:Ljava/util/Comparator;

    invoke-static {v2}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v2

    iget-object v3, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSetSection:Lorg/jf/dexlib2/writer/AnnotationSetSection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jf/dexlib2/writer/AnnotationSetSection;->getAnnotations(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->align()V

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/iface/Annotation;

    iget-object v3, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSection:Lorg/jf/dexlib2/writer/AnnotationSection;

    invoke-interface {v3, v2}, Lorg/jf/dexlib2/writer/AnnotationSection;->getItemOffset(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private writeAnnotations(Lorg/jf/dexlib2/writer/DexDataWriter;)V
    .registers 8
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance v0, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;-><init>(Lorg/jf/dexlib2/writer/DexWriter;Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/DexWriter$1;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v1

    iput v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSectionOffset:I

    iget-object v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSection:Lorg/jf/dexlib2/writer/AnnotationSection;

    invoke-interface {v1}, Lorg/jf/dexlib2/writer/AnnotationSection;->getItems()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/iface/Annotation;

    iget-object v3, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSection:Lorg/jf/dexlib2/writer/AnnotationSection;

    invoke-interface {v3, v2}, Lorg/jf/dexlib2/writer/AnnotationSection;->getVisibility(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUbyte(I)V

    iget-object v3, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSection:Lorg/jf/dexlib2/writer/AnnotationSection;

    invoke-interface {v4, v2}, Lorg/jf/dexlib2/writer/AnnotationSection;->getType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jf/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    sget-object v3, Lorg/jf/dexlib2/base/BaseAnnotationElement;->BY_NAME:Ljava/util/Comparator;

    invoke-static {v3}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v3

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSection:Lorg/jf/dexlib2/writer/AnnotationSection;

    invoke-interface {v4, v2}, Lorg/jf/dexlib2/writer/AnnotationSection;->getElements(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jf/dexlib2/iface/AnnotationElement;

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    iget-object v5, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSection:Lorg/jf/dexlib2/writer/AnnotationSection;

    invoke-interface {v5, v3}, Lorg/jf/dexlib2/writer/AnnotationSection;->getElementName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/jf/dexlib2/writer/StringSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSection:Lorg/jf/dexlib2/writer/AnnotationSection;

    invoke-interface {v4, v3}, Lorg/jf/dexlib2/writer/AnnotationSection;->getElementValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/jf/dexlib2/writer/DexWriter;->writeEncodedValue(Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeClass(Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/DexDataWriter;ILjava/util/Map$Entry;)I
    .registers 12
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p4, :cond_0

    return p3

    :cond_0
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return p3

    :cond_1
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    iget-object v3, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v3, v0}, Lorg/jf/dexlib2/writer/ClassSection;->getSuperclass(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jf/dexlib2/writer/ClassSection;->getClassEntryByType(Ljava/lang/CharSequence;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, p1, p2, p3, v2}, Lorg/jf/dexlib2/writer/DexWriter;->writeClass(Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/DexDataWriter;ILjava/util/Map$Entry;)I

    move-result p3

    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeListSection:Lorg/jf/dexlib2/writer/TypeListSection;

    iget-object v3, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v3, v0}, Lorg/jf/dexlib2/writer/ClassSection;->getInterfaces(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jf/dexlib2/writer/TypeListSection;->getTypes(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v4, v3}, Lorg/jf/dexlib2/writer/ClassSection;->getClassEntryByType(Ljava/lang/CharSequence;)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-direct {p0, p1, p2, p3, v3}, Lorg/jf/dexlib2/writer/DexWriter;->writeClass(Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/DexDataWriter;ILjava/util/Map$Entry;)I

    move-result p3

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    iget-object p4, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {p4, v0}, Lorg/jf/dexlib2/writer/ClassSection;->getType(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p3, p4}, Lorg/jf/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    iget-object p3, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {p3, v0}, Lorg/jf/dexlib2/writer/ClassSection;->getAccessFlags(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    iget-object p3, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    iget-object p4, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {p4, v0}, Lorg/jf/dexlib2/writer/ClassSection;->getSuperclass(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p3, p4}, Lorg/jf/dexlib2/writer/TypeSection;->getNullableItemIndex(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    iget-object p3, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeListSection:Lorg/jf/dexlib2/writer/TypeListSection;

    iget-object p4, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {p4, v0}, Lorg/jf/dexlib2/writer/ClassSection;->getInterfaces(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, p4}, Lorg/jf/dexlib2/writer/TypeListSection;->getNullableItemOffset(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    iget-object p3, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    iget-object p4, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {p4, v0}, Lorg/jf/dexlib2/writer/ClassSection;->getSourceFile(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p3, p4}, Lorg/jf/dexlib2/writer/StringSection;->getNullableItemIndex(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    iget-object p3, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {p3, v0}, Lorg/jf/dexlib2/writer/ClassSection;->getAnnotationDirectoryOffset(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    iget-object p3, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {p3, v0}, Lorg/jf/dexlib2/writer/ClassSection;->getSortedStaticFields(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p3

    iget-object p4, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {p4, v0}, Lorg/jf/dexlib2/writer/ClassSection;->getSortedInstanceFields(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p4

    iget-object v3, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v3, v0}, Lorg/jf/dexlib2/writer/ClassSection;->getSortedDirectMethods(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v4, v0}, Lorg/jf/dexlib2/writer/ClassSection;->getSortedVirtualMethods(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x1

    if-gtz v5, :cond_4

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v5

    if-gtz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    if-gtz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    if-lez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_5

    invoke-virtual {p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v1

    :cond_5
    invoke-virtual {p1, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    iget-object v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v1, v0}, Lorg/jf/dexlib2/writer/ClassSection;->getEncodedArrayOffset(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    if-eqz v5, :cond_6

    iget p1, p0, Lorg/jf/dexlib2/writer/DexWriter;->numClassDataItems:I

    add-int/2addr p1, v6

    iput p1, p0, Lorg/jf/dexlib2/writer/DexWriter;->numClassDataItems:I

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    invoke-direct {p0, p2, p3}, Lorg/jf/dexlib2/writer/DexWriter;->writeEncodedFields(Lorg/jf/dexlib2/writer/DexDataWriter;Ljava/util/Collection;)V

    invoke-direct {p0, p2, p4}, Lorg/jf/dexlib2/writer/DexWriter;->writeEncodedFields(Lorg/jf/dexlib2/writer/DexDataWriter;Ljava/util/Collection;)V

    invoke-direct {p0, p2, v3}, Lorg/jf/dexlib2/writer/DexWriter;->writeEncodedMethods(Lorg/jf/dexlib2/writer/DexDataWriter;Ljava/util/Collection;)V

    invoke-direct {p0, p2, v4}, Lorg/jf/dexlib2/writer/DexWriter;->writeEncodedMethods(Lorg/jf/dexlib2/writer/DexDataWriter;Ljava/util/Collection;)V

    :cond_6
    return v2
.end method

.method private writeClasses(Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/DexDataWriter;)V
    .registers 6
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->classIndexSectionOffset:I

    invoke-virtual {p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->classDataSectionOffset:I

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/ClassSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lorg/jf/dexlib2/writer/DexWriter;->comparableKeyComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/jf/dexlib2/writer/DexWriter;->writeClass(Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/DexDataWriter;ILjava/util/Map$Entry;)I

    move-result v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeCodeItem(Lorg/jf/dexlib2/writer/DexDataWriter;Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;Ljava/util/List;Ljava/lang/Iterable;I)I
    .registers 22
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/io/ByteArrayOutputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v2, p3

    move/from16 v3, p6

    if-nez p5, :cond_0

    if-nez v3, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v4, v1, Lorg/jf/dexlib2/writer/DexWriter;->numCodeItemItems:I

    const/4 v10, 0x1

    add-int/2addr v4, v10

    iput v4, v1, Lorg/jf/dexlib2/writer/DexWriter;->numCodeItemItems:I

    invoke-virtual/range {p1 .. p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->align()V

    invoke-virtual/range {p1 .. p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v11

    iget-object v4, v1, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v4, v2}, Lorg/jf/dexlib2/writer/ClassSection;->getRegisterCount(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    sget-object v4, Lorg/jf/dexlib2/AccessFlags;->STATIC:Lorg/jf/dexlib2/AccessFlags;

    iget-object v5, v1, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v5, v2}, Lorg/jf/dexlib2/writer/ClassSection;->getMethodAccessFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/AccessFlags;->isSet(I)Z

    move-result v4

    iget-object v5, v1, Lorg/jf/dexlib2/writer/DexWriter;->typeListSection:Lorg/jf/dexlib2/writer/TypeListSection;

    iget-object v6, v1, Lorg/jf/dexlib2/writer/DexWriter;->protoSection:Lorg/jf/dexlib2/writer/ProtoSection;

    iget-object v7, v1, Lorg/jf/dexlib2/writer/DexWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    invoke-interface {v7, v2}, Lorg/jf/dexlib2/writer/MethodSection;->getPrototype(Ljava/lang/Object;)Lorg/jf/dexlib2/iface/reference/MethodProtoReference;

    move-result-object v2

    invoke-interface {v6, v2}, Lorg/jf/dexlib2/writer/ProtoSection;->getParameters(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v2}, Lorg/jf/dexlib2/writer/TypeListSection;->getTypes(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2, v4}, Lorg/jf/dexlib2/util/MethodUtil;->getParameterRegisterCount(Ljava/util/Collection;Z)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    const/4 v12, 0x0

    if-eqz p5, :cond_b

    invoke-static/range {p4 .. p4}, Lorg/jf/dexlib2/writer/util/TryListBuilder;->massageTryBlocks(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v14, 0x0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v5}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v6

    add-int/2addr v14, v6

    invoke-interface {v5}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v6

    iget v6, v6, Lorg/jf/dexlib2/Opcode;->referenceType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v6}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v6

    check-cast v6, Lorg/jf/dexlib2/iface/reference/MethodReference;

    invoke-interface {v5}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v5

    invoke-static {v5}, Lorg/jf/dexlib2/util/InstructionUtil;->isInvokeStatic(Lorg/jf/dexlib2/Opcode;)Z

    move-result v5

    invoke-static {v6, v5}, Lorg/jf/dexlib2/util/MethodUtil;->getParameterRegisterCount(Lorg/jf/dexlib2/iface/reference/MethodReference;Z)I

    move-result v5

    if-le v5, v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    invoke-virtual {v0, v3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    iget-object v2, v1, Lorg/jf/dexlib2/writer/DexWriter;->opcodes:Lorg/jf/dexlib2/Opcodes;

    iget-object v4, v1, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    iget-object v5, v1, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    iget-object v6, v1, Lorg/jf/dexlib2/writer/DexWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    iget-object v7, v1, Lorg/jf/dexlib2/writer/DexWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    iget-object v8, v1, Lorg/jf/dexlib2/writer/DexWriter;->protoSection:Lorg/jf/dexlib2/writer/ProtoSection;

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v8}, Lorg/jf/dexlib2/writer/InstructionWriter;->makeInstructionWriter(Lorg/jf/dexlib2/Opcodes;Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/StringSection;Lorg/jf/dexlib2/writer/TypeSection;Lorg/jf/dexlib2/writer/FieldSection;Lorg/jf/dexlib2/writer/MethodSection;Lorg/jf/dexlib2/writer/ProtoSection;)Lorg/jf/dexlib2/writer/InstructionWriter;

    move-result-object v2

    invoke-virtual {v0, v14}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jf/dexlib2/iface/instruction/Instruction;

    :try_start_0
    sget-object v6, Lorg/jf/dexlib2/writer/DexWriter$3;->$SwitchMap$org$jf$dexlib2$Format:[I

    invoke-interface {v5}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v7

    iget-object v7, v7, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    invoke-virtual {v7}, Lorg/jf/dexlib2/Format;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    goto/16 :goto_3

    :pswitch_0
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;)V

    goto/16 :goto_2

    :pswitch_1
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;)V

    goto/16 :goto_2

    :pswitch_2
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;)V

    goto/16 :goto_2

    :pswitch_3
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction51l;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction51l;)V

    goto/16 :goto_2

    :pswitch_4
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction4rcc;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction4rcc;)V

    goto/16 :goto_2

    :pswitch_5
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction45cc;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction45cc;)V

    goto/16 :goto_2

    :pswitch_6
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;)V

    goto/16 :goto_2

    :pswitch_7
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;)V

    goto/16 :goto_2

    :pswitch_8
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction32x;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction32x;)V

    goto/16 :goto_2

    :pswitch_9
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;)V

    goto/16 :goto_2

    :pswitch_a
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31i;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction31i;)V

    goto/16 :goto_2

    :pswitch_b
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31c;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction31c;)V

    goto/16 :goto_2

    :pswitch_c
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction30t;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction30t;)V

    goto/16 :goto_2

    :pswitch_d
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction23x;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction23x;)V

    goto/16 :goto_2

    :pswitch_e
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22x;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22x;)V

    goto/16 :goto_2

    :pswitch_f
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22t;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22t;)V

    goto/16 :goto_2

    :pswitch_10
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22s;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22s;)V

    goto :goto_2

    :pswitch_11
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;)V

    goto :goto_2

    :pswitch_12
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22b;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22b;)V

    goto :goto_2

    :pswitch_13
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21t;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21t;)V

    goto :goto_2

    :pswitch_14
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21s;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21s;)V

    goto :goto_2

    :pswitch_15
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21lh;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21lh;)V

    goto :goto_2

    :pswitch_16
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21ih;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21ih;)V

    goto :goto_2

    :pswitch_17
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21c;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21c;)V

    goto :goto_2

    :pswitch_18
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction20t;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction20t;)V

    goto :goto_2

    :pswitch_19
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;)V

    goto :goto_2

    :pswitch_1a
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction12x;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction12x;)V

    goto :goto_2

    :pswitch_1b
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction11x;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction11x;)V

    goto :goto_2

    :pswitch_1c
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction11n;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction11n;)V

    goto :goto_2

    :pswitch_1d
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction10x;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction10x;)V

    goto :goto_2

    :pswitch_1e
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction10t;

    invoke-virtual {v2, v6}, Lorg/jf/dexlib2/writer/InstructionWriter;->write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction10t;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-interface {v5}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v5

    add-int/2addr v4, v5

    goto/16 :goto_1

    :goto_3
    :try_start_1
    const-string v2, "Unsupported instruction format: %s"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-interface {v5}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v5

    iget-object v5, v5, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    aput-object v5, v3, v12

    invoke-direct {v0, v2, v3}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/jf/util/ExceptionWithContext;

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    const-string v4, "Error while writing instruction at code offset 0x%x"

    invoke-direct {v2, v0, v4, v3}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->align()V

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jf/dexlib2/iface/TryBlock;

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v9, v3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(Ljava/io/OutputStream;I)V

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jf/dexlib2/iface/TryBlock;

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/TryBlock;->getStartCodeAddress()I

    move-result v5

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/TryBlock;->getCodeUnitCount()I

    move-result v6

    add-int/2addr v6, v5

    sub-int/2addr v6, v5

    invoke-virtual {v0, v5}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    invoke-virtual {v0, v6}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    goto :goto_5

    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v6

    add-int/lit8 v7, v5, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jf/dexlib2/iface/ExceptionHandler;

    invoke-interface {v6}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    neg-int v5, v5

    add-int/2addr v5, v10

    :cond_7
    invoke-static {v9, v5}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeSleb128(Ljava/io/OutputStream;I)V

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jf/dexlib2/iface/ExceptionHandler;

    iget-object v6, v1, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v6, v5}, Lorg/jf/dexlib2/writer/ClassSection;->getExceptionType(Lorg/jf/dexlib2/iface/ExceptionHandler;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v5}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result v5

    if-eqz v6, :cond_8

    iget-object v7, v1, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    invoke-interface {v7, v6}, Lorg/jf/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v9, v6}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(Ljava/io/OutputStream;I)V

    :cond_8
    invoke-static {v9, v5}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(Ljava/io/OutputStream;I)V

    goto :goto_6

    :cond_9
    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    new-array v2, v12, [Ljava/lang/Object;

    const-string v3, "No exception handlers for the try block!"

    invoke-direct {v0, v3, v2}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_a
    invoke-virtual/range {p2 .. p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_c

    invoke-virtual {v9, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_7

    :cond_b
    invoke-virtual {v0, v12}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    invoke-virtual {v0, v12}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    invoke-virtual {v0, v3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    invoke-virtual {v0, v12}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    :cond_c
    :goto_7
    return v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeDebugAndCodeItems(Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/io/DeferredOutputStream;)V
    .registers 21
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/writer/io/DeferredOutputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v1

    iput v1, v8, Lorg/jf/dexlib2/writer/DexWriter;->debugSectionOffset:I

    new-instance v11, Lorg/jf/dexlib2/writer/DebugWriter;

    iget-object v1, v8, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    iget-object v2, v8, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    invoke-direct {v11, v1, v2, v0}, Lorg/jf/dexlib2/writer/DebugWriter;-><init>(Lorg/jf/dexlib2/writer/StringSection;Lorg/jf/dexlib2/writer/TypeSection;Lorg/jf/dexlib2/writer/DexDataWriter;)V

    new-instance v12, Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 v13, 0x0

    invoke-direct {v12, v9, v13}, Lorg/jf/dexlib2/writer/DexDataWriter;-><init>(Ljava/io/OutputStream;I)V

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v14

    iget-object v1, v8, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v1}, Lorg/jf/dexlib2/writer/ClassSection;->getSortedClasses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    iget-object v2, v8, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v2, v1}, Lorg/jf/dexlib2/writer/ClassSection;->getSortedDirectMethods(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    iget-object v3, v8, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v3, v1}, Lorg/jf/dexlib2/writer/ClassSection;->getSortedVirtualMethods(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v8, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v1, v7}, Lorg/jf/dexlib2/writer/ClassSection;->getTryBlocks(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v8, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v2, v7}, Lorg/jf/dexlib2/writer/ClassSection;->getInstructions(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v2

    iget-object v3, v8, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v3, v7}, Lorg/jf/dexlib2/writer/ClassSection;->getDebugItems(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v3

    if-eqz v2, :cond_3

    iget-object v4, v8, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    invoke-interface {v4}, Lorg/jf/dexlib2/writer/StringSection;->hasJumboIndexes()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v5}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v6

    sget-object v13, Lorg/jf/dexlib2/Opcode;->CONST_STRING:Lorg/jf/dexlib2/Opcode;

    if-ne v6, v13, :cond_1

    iget-object v6, v8, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    check-cast v5, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v5}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v5

    check-cast v5, Lorg/jf/dexlib2/iface/reference/StringReference;

    invoke-interface {v6, v5}, Lorg/jf/dexlib2/writer/StringSection;->getItemIndex(Lorg/jf/dexlib2/iface/reference/StringReference;)I

    move-result v5

    const/high16 v6, 0x10000

    if-lt v5, v6, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    iget-object v1, v8, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v1, v7}, Lorg/jf/dexlib2/writer/ClassSection;->makeMutableMethodImplementation(Ljava/lang/Object;)Lorg/jf/dexlib2/builder/MutableMethodImplementation;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/jf/dexlib2/writer/DexWriter;->fixInstructions(Lorg/jf/dexlib2/builder/MutableMethodImplementation;)V

    invoke-virtual {v1}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->getInstructions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->getDebugItems()Ljava/lang/Iterable;

    move-result-object v1

    move-object v6, v2

    move-object v5, v3

    goto :goto_3

    :cond_3
    move-object v5, v1

    move-object v6, v2

    move-object v1, v3

    :goto_3
    iget-object v2, v8, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v2, v7}, Lorg/jf/dexlib2/writer/ClassSection;->getParameterNames(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-direct {v8, v0, v11, v2, v1}, Lorg/jf/dexlib2/writer/DexWriter;->writeDebugItem(Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/DebugWriter;Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v13

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v10

    move-object v4, v7

    move-object/from16 v17, v10

    const/4 v10, 0x1

    move-object v10, v7

    move v7, v13

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lorg/jf/dexlib2/writer/DexWriter;->writeCodeItem(Lorg/jf/dexlib2/writer/DexDataWriter;Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;Ljava/util/List;Ljava/lang/Iterable;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    new-instance v2, Lorg/jf/dexlib2/writer/DexWriter$CodeItemOffset;

    const/4 v3, 0x0

    invoke-direct {v2, v10, v1, v3}, Lorg/jf/dexlib2/writer/DexWriter$CodeItemOffset;-><init>(Ljava/lang/Object;ILorg/jf/dexlib2/writer/DexWriter$1;)V

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v10, v17

    const/4 v13, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v8, Lorg/jf/dexlib2/writer/DexWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    invoke-interface {v3, v10}, Lorg/jf/dexlib2/writer/MethodSection;->getMethodReference(Ljava/lang/Object;)Lorg/jf/dexlib2/iface/reference/MethodReference;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Exception occurred while writing code_item for method %s"

    invoke-direct {v0, v1, v3, v2}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->align()V

    invoke-virtual/range {p1 .. p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v1

    iput v1, v8, Lorg/jf/dexlib2/writer/DexWriter;->codeSectionOffset:I

    invoke-virtual {v12}, Lorg/jf/dexlib2/writer/DexDataWriter;->close()V

    invoke-virtual {v9, v0}, Lorg/jf/dexlib2/writer/io/DeferredOutputStream;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jf/dexlib2/writer/io/DeferredOutputStream;->close()V

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/writer/DexWriter$CodeItemOffset;

    iget-object v2, v8, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    iget-object v3, v1, Lorg/jf/dexlib2/writer/DexWriter$CodeItemOffset;->method:Ljava/lang/Object;

    iget v4, v8, Lorg/jf/dexlib2/writer/DexWriter;->codeSectionOffset:I

    iget v1, v1, Lorg/jf/dexlib2/writer/DexWriter$CodeItemOffset;->codeOffset:I

    add-int/2addr v4, v1

    invoke-interface {v2, v3, v4}, Lorg/jf/dexlib2/writer/ClassSection;->setCodeItemOffset(Ljava/lang/Object;I)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method private writeDebugItem(Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/DebugWriter;Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .registers 12
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/writer/DebugWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/google/common/collect/Iterables;->size(Ljava/lang/Iterable;)I

    move-result v2

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v4, -0x1

    :cond_2
    if-ne v4, v0, :cond_4

    if-eqz p4, :cond_3

    invoke-static {p4}, Lcom/google/common/collect/Iterables;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return v1

    :cond_4
    iget v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->numDebugInfoItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->numDebugInfoItems:I

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    if-eqz p4, :cond_6

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jf/dexlib2/iface/debug/DebugItem;

    instance-of v5, v4, Lorg/jf/dexlib2/iface/debug/LineNumber;

    if-eqz v5, :cond_5

    check-cast v4, Lorg/jf/dexlib2/iface/debug/LineNumber;

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/debug/LineNumber;->getLineNumber()I

    move-result v3

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1, v3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    invoke-virtual {p1, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    if-eqz p3, :cond_7

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v4, 0x0

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    if-eq v4, v2, :cond_7

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    invoke-interface {v6, v5}, Lorg/jf/dexlib2/writer/StringSection;->getNullableItemIndex(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    goto :goto_2

    :cond_7
    if-eqz p4, :cond_8

    invoke-virtual {p2, v3}, Lorg/jf/dexlib2/writer/DebugWriter;->reset(I)V

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/jf/dexlib2/iface/debug/DebugItem;

    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v2, p2, p4}, Lorg/jf/dexlib2/writer/ClassSection;->writeDebugItem(Lorg/jf/dexlib2/writer/DebugWriter;Lorg/jf/dexlib2/iface/debug/DebugItem;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p1, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    return v0
.end method

.method private writeEncodedArrays(Lorg/jf/dexlib2/writer/DexDataWriter;)V
    .registers 10
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance v0, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;-><init>(Lorg/jf/dexlib2/writer/DexWriter;Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/DexWriter$1;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v1

    iput v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->encodedArraySectionOffset:I

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lorg/jf/dexlib2/writer/DexWriter$EncodedArrayKey;

    invoke-direct {v2}, Lorg/jf/dexlib2/writer/DexWriter$EncodedArrayKey;-><init>()V

    iget-object v3, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v3}, Lorg/jf/dexlib2/writer/ClassSection;->getSortedClasses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    iget-object v5, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v5, v4}, Lorg/jf/dexlib2/writer/ClassSection;->getStaticInitializers(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    if-lez v6, :cond_0

    iput-object v5, v2, Lorg/jf/dexlib2/writer/DexWriter$EncodedArrayKey;->elements:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    iget-object v5, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v4, v6}, Lorg/jf/dexlib2/writer/ClassSection;->setEncodedArrayOffset(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v2, v4, v6}, Lorg/jf/dexlib2/writer/ClassSection;->setEncodedArrayOffset(Ljava/lang/Object;I)V

    new-instance v2, Lorg/jf/dexlib2/writer/DexWriter$EncodedArrayKey;

    invoke-direct {v2}, Lorg/jf/dexlib2/writer/DexWriter$EncodedArrayKey;-><init>()V

    iget v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->numEncodedArrayItems:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->numEncodedArrayItems:I

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lorg/jf/dexlib2/writer/DexWriter;->writeEncodedValue(Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private writeEncodedFields(Lorg/jf/dexlib2/writer/DexDataWriter;Ljava/util/Collection;)V
    .registers 6
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    invoke-interface {v2, v1}, Lorg/jf/dexlib2/writer/FieldSection;->getFieldIndex(Ljava/lang/Object;)I

    move-result v2

    sub-int v0, v2, v0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/writer/ClassSection;->getFieldAccessFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeEncodedMethods(Lorg/jf/dexlib2/writer/DexDataWriter;Ljava/util/Collection;)V
    .registers 6
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    invoke-interface {v2, v1}, Lorg/jf/dexlib2/writer/MethodSection;->getMethodIndex(Ljava/lang/Object;)I

    move-result v2

    sub-int v0, v2, v0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/writer/ClassSection;->getMethodAccessFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/writer/ClassSection;->getCodeItemOffset(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeFields(Lorg/jf/dexlib2/writer/DexDataWriter;)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->fieldSectionOffset:I

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/FieldSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lorg/jf/dexlib2/writer/DexWriter;->comparableKeyComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/reference/FieldReference;

    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    invoke-interface {v4, v1}, Lorg/jf/dexlib2/writer/FieldSection;->getDefiningClass(Lorg/jf/dexlib2/iface/reference/FieldReference;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/jf/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    invoke-interface {v4, v1}, Lorg/jf/dexlib2/writer/FieldSection;->getFieldType(Lorg/jf/dexlib2/iface/reference/FieldReference;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/jf/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    invoke-interface {v4, v1}, Lorg/jf/dexlib2/writer/FieldSection;->getName(Lorg/jf/dexlib2/iface/reference/FieldReference;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/jf/dexlib2/writer/StringSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    move v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeHeader(Lorg/jf/dexlib2/writer/DexDataWriter;II)V
    .registers 6
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->opcodes:Lorg/jf/dexlib2/Opcodes;

    iget v0, v0, Lorg/jf/dexlib2/Opcodes;->api:I

    invoke-static {v0}, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem;->getMagicForApi(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->write([B)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    const/16 v1, 0x14

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write([B)V

    invoke-virtual {p1, p3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    const/16 v1, 0x70

    invoke-virtual {p1, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    const v1, 0x12345678

    invoke-virtual {p1, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    iget v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->mapSectionOffset:I

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/StringSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringIndexSectionOffset:I

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/writer/DexWriter;->writeSectionInfo(Lorg/jf/dexlib2/writer/DexDataWriter;II)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/TypeSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSectionOffset:I

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/writer/DexWriter;->writeSectionInfo(Lorg/jf/dexlib2/writer/DexDataWriter;II)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->protoSection:Lorg/jf/dexlib2/writer/ProtoSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/ProtoSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->protoSectionOffset:I

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/writer/DexWriter;->writeSectionInfo(Lorg/jf/dexlib2/writer/DexDataWriter;II)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/FieldSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->fieldSectionOffset:I

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/writer/DexWriter;->writeSectionInfo(Lorg/jf/dexlib2/writer/DexDataWriter;II)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/MethodSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->methodSectionOffset:I

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/writer/DexWriter;->writeSectionInfo(Lorg/jf/dexlib2/writer/DexDataWriter;II)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/ClassSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->classIndexSectionOffset:I

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/writer/DexWriter;->writeSectionInfo(Lorg/jf/dexlib2/writer/DexDataWriter;II)V

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    return-void
.end method

.method private writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;)V
    .registers 6
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->align()V

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->mapSectionOffset:I

    invoke-direct {p0}, Lorg/jf/dexlib2/writer/DexWriter;->calcNumItems()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, v0}, Lorg/jf/dexlib2/writer/DexWriter;->writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;III)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/StringSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringIndexSectionOffset:I

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/jf/dexlib2/writer/DexWriter;->writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;III)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/TypeSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSectionOffset:I

    const/4 v3, 0x2

    invoke-direct {p0, p1, v3, v0, v2}, Lorg/jf/dexlib2/writer/DexWriter;->writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;III)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->protoSection:Lorg/jf/dexlib2/writer/ProtoSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/ProtoSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->protoSectionOffset:I

    const/4 v3, 0x3

    invoke-direct {p0, p1, v3, v0, v2}, Lorg/jf/dexlib2/writer/DexWriter;->writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;III)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/FieldSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->fieldSectionOffset:I

    const/4 v3, 0x4

    invoke-direct {p0, p1, v3, v0, v2}, Lorg/jf/dexlib2/writer/DexWriter;->writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;III)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/MethodSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->methodSectionOffset:I

    const/4 v3, 0x5

    invoke-direct {p0, p1, v3, v0, v2}, Lorg/jf/dexlib2/writer/DexWriter;->writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;III)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/ClassSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->classIndexSectionOffset:I

    const/4 v3, 0x6

    invoke-direct {p0, p1, v3, v0, v2}, Lorg/jf/dexlib2/writer/DexWriter;->writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;III)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/StringSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringDataSectionOffset:I

    const/16 v3, 0x2002

    invoke-direct {p0, p1, v3, v0, v2}, Lorg/jf/dexlib2/writer/DexWriter;->writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;III)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeListSection:Lorg/jf/dexlib2/writer/TypeListSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/TypeListSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeListSectionOffset:I

    const/16 v3, 0x1001

    invoke-direct {p0, p1, v3, v0, v2}, Lorg/jf/dexlib2/writer/DexWriter;->writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;III)V

    iget v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->numEncodedArrayItems:I

    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->encodedArraySectionOffset:I

    const/16 v3, 0x2005

    invoke-direct {p0, p1, v3, v0, v2}, Lorg/jf/dexlib2/writer/DexWriter;->writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;III)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSection:Lorg/jf/dexlib2/writer/AnnotationSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/AnnotationSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSectionOffset:I

    const/16 v3, 0x2004

    invoke-direct {p0, p1, v3, v0, v2}, Lorg/jf/dexlib2/writer/DexWriter;->writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;III)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSetSection:Lorg/jf/dexlib2/writer/AnnotationSetSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/AnnotationSetSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0}, Lorg/jf/dexlib2/writer/DexWriter;->shouldCreateEmptyAnnotationSet()Z

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSetSectionOffset:I

    const/16 v3, 0x1003

    invoke-direct {p0, p1, v3, v0, v2}, Lorg/jf/dexlib2/writer/DexWriter;->writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;III)V

    const/16 v0, 0x1002

    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->numAnnotationSetRefItems:I

    iget v3, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationSetRefSectionOffset:I

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/jf/dexlib2/writer/DexWriter;->writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;III)V

    const/16 v0, 0x2006

    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->numAnnotationDirectoryItems:I

    iget v3, p0, Lorg/jf/dexlib2/writer/DexWriter;->annotationDirectorySectionOffset:I

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/jf/dexlib2/writer/DexWriter;->writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;III)V

    const/16 v0, 0x2003

    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->numDebugInfoItems:I

    iget v3, p0, Lorg/jf/dexlib2/writer/DexWriter;->debugSectionOffset:I

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/jf/dexlib2/writer/DexWriter;->writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;III)V

    const/16 v0, 0x2001

    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->numCodeItemItems:I

    iget v3, p0, Lorg/jf/dexlib2/writer/DexWriter;->codeSectionOffset:I

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/jf/dexlib2/writer/DexWriter;->writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;III)V

    const/16 v0, 0x2000

    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->numClassDataItems:I

    iget v3, p0, Lorg/jf/dexlib2/writer/DexWriter;->classDataSectionOffset:I

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/jf/dexlib2/writer/DexWriter;->writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;III)V

    const/16 v0, 0x1000

    iget v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->mapSectionOffset:I

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jf/dexlib2/writer/DexWriter;->writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;III)V

    return-void
.end method

.method private writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;III)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-lez p3, :cond_0

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    invoke-virtual {p1, p3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    invoke-virtual {p1, p4}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    :cond_0
    return-void
.end method

.method private writeMethods(Lorg/jf/dexlib2/writer/DexDataWriter;)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->methodSectionOffset:I

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/MethodSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lorg/jf/dexlib2/writer/DexWriter;->comparableKeyComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/reference/MethodReference;

    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    invoke-interface {v4, v1}, Lorg/jf/dexlib2/writer/MethodSection;->getDefiningClass(Lorg/jf/dexlib2/iface/reference/MethodReference;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/jf/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->protoSection:Lorg/jf/dexlib2/writer/ProtoSection;

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    invoke-interface {v4, v1}, Lorg/jf/dexlib2/writer/MethodSection;->getPrototype(Lorg/jf/dexlib2/iface/reference/MethodReference;)Lorg/jf/dexlib2/iface/reference/MethodProtoReference;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/jf/dexlib2/writer/ProtoSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    invoke-interface {v4, v1}, Lorg/jf/dexlib2/writer/MethodSection;->getName(Lorg/jf/dexlib2/iface/reference/MethodReference;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/jf/dexlib2/writer/StringSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    move v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeProtos(Lorg/jf/dexlib2/writer/DexDataWriter;)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->protoSectionOffset:I

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->protoSection:Lorg/jf/dexlib2/writer/ProtoSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/ProtoSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lorg/jf/dexlib2/writer/DexWriter;->comparableKeyComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/reference/MethodProtoReference;

    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->protoSection:Lorg/jf/dexlib2/writer/ProtoSection;

    invoke-interface {v4, v1}, Lorg/jf/dexlib2/writer/ProtoSection;->getShorty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/jf/dexlib2/writer/StringSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->protoSection:Lorg/jf/dexlib2/writer/ProtoSection;

    invoke-interface {v4, v1}, Lorg/jf/dexlib2/writer/ProtoSection;->getReturnType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/jf/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeListSection:Lorg/jf/dexlib2/writer/TypeListSection;

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->protoSection:Lorg/jf/dexlib2/writer/ProtoSection;

    invoke-interface {v4, v1}, Lorg/jf/dexlib2/writer/ProtoSection;->getParameters(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/jf/dexlib2/writer/TypeListSection;->getNullableItemOffset(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    move v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeSectionInfo(Lorg/jf/dexlib2/writer/DexDataWriter;II)V
    .registers 4

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    if-lez p2, :cond_0

    invoke-virtual {p1, p3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    return-void

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    return-void
.end method

.method private writeStrings(Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/DexDataWriter;)V
    .registers 8
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringIndexSectionOffset:I

    invoke-virtual {p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringDataSectionOffset:I

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/StringSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lorg/jf/dexlib2/writer/DexWriter;->toStringKeyComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUleb128(I)V

    invoke-virtual {p2, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    move v2, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeTypeLists(Lorg/jf/dexlib2/writer/DexDataWriter;)V
    .registers 6
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->align()V

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeListSectionOffset:I

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeListSection:Lorg/jf/dexlib2/writer/TypeListSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/TypeListSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->align()V

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeListSection:Lorg/jf/dexlib2/writer/TypeListSection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/jf/dexlib2/writer/TypeListSection;->getTypes(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iget-object v3, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    invoke-interface {v3, v2}, Lorg/jf/dexlib2/writer/TypeSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeTypes(Lorg/jf/dexlib2/writer/DexDataWriter;)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSectionOffset:I

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/TypeSection;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lorg/jf/dexlib2/writer/DexWriter;->toStringKeyComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    iget-object v4, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/jf/dexlib2/writer/TypeSection;->getString(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jf/dexlib2/writer/StringSection;->getItemIndex(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    move v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getFieldReferences()Ljava/util/List;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    invoke-interface {v1}, Lorg/jf/dexlib2/writer/FieldSection;->getItems()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/iface/reference/FieldReference;

    invoke-static {v2}, Lorg/jf/dexlib2/util/ReferenceUtil;->getFieldDescriptor(Lorg/jf/dexlib2/iface/reference/FieldReference;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMethodReferences()Ljava/util/List;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    invoke-interface {v1}, Lorg/jf/dexlib2/writer/MethodSection;->getItems()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/iface/reference/MethodReference;

    invoke-static {v2}, Lorg/jf/dexlib2/util/ReferenceUtil;->getMethodDescriptor(Lorg/jf/dexlib2/iface/reference/MethodReference;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected abstract getSectionProvider()Lorg/jf/dexlib2/writer/DexWriter$SectionProvider;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public getTypeReferences()Ljava/util/List;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    invoke-interface {v1}, Lorg/jf/dexlib2/writer/TypeSection;->getItems()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hasOverflowed()Z
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/MethodSection;->getItemCount()I

    move-result v0

    const/high16 v1, 0x10000

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/TypeSection;->getItemCount()I

    move-result v0

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    invoke-interface {v0}, Lorg/jf/dexlib2/writer/FieldSection;->getItemCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract writeEncodedValue(Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;Ljava/lang/Object;)V
    .param p1    # Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public writeTo(Lorg/jf/dexlib2/writer/io/DexDataStore;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/writer/io/DexDataStore;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-static {}, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->getFactory()Lorg/jf/dexlib2/writer/io/DeferredOutputStreamFactory;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jf/dexlib2/writer/DexWriter;->writeTo(Lorg/jf/dexlib2/writer/io/DexDataStore;Lorg/jf/dexlib2/writer/io/DeferredOutputStreamFactory;)V

    return-void
.end method

.method public writeTo(Lorg/jf/dexlib2/writer/io/DexDataStore;Lorg/jf/dexlib2/writer/io/DeferredOutputStreamFactory;)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/writer/io/DexDataStore;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/writer/io/DeferredOutputStreamFactory;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    invoke-direct {p0}, Lorg/jf/dexlib2/writer/DexWriter;->getDataSectionOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/jf/dexlib2/writer/DexWriter;->outputAt(Lorg/jf/dexlib2/writer/io/DexDataStore;I)Lorg/jf/dexlib2/writer/DexDataWriter;

    move-result-object v1

    const/16 v2, 0x70

    invoke-static {p1, v2}, Lorg/jf/dexlib2/writer/DexWriter;->outputAt(Lorg/jf/dexlib2/writer/io/DexDataStore;I)Lorg/jf/dexlib2/writer/DexDataWriter;

    move-result-object v2

    invoke-static {p1, v0}, Lorg/jf/dexlib2/writer/DexWriter;->outputAt(Lorg/jf/dexlib2/writer/io/DexDataStore;I)Lorg/jf/dexlib2/writer/DexDataWriter;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v2, v3}, Lorg/jf/dexlib2/writer/DexWriter;->writeStrings(Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/DexDataWriter;)V

    invoke-direct {p0, v2}, Lorg/jf/dexlib2/writer/DexWriter;->writeTypes(Lorg/jf/dexlib2/writer/DexDataWriter;)V

    invoke-direct {p0, v3}, Lorg/jf/dexlib2/writer/DexWriter;->writeTypeLists(Lorg/jf/dexlib2/writer/DexDataWriter;)V

    invoke-direct {p0, v2}, Lorg/jf/dexlib2/writer/DexWriter;->writeProtos(Lorg/jf/dexlib2/writer/DexDataWriter;)V

    invoke-direct {p0, v2}, Lorg/jf/dexlib2/writer/DexWriter;->writeFields(Lorg/jf/dexlib2/writer/DexDataWriter;)V

    invoke-direct {p0, v2}, Lorg/jf/dexlib2/writer/DexWriter;->writeMethods(Lorg/jf/dexlib2/writer/DexDataWriter;)V

    invoke-direct {p0, v3}, Lorg/jf/dexlib2/writer/DexWriter;->writeEncodedArrays(Lorg/jf/dexlib2/writer/DexDataWriter;)V

    invoke-direct {p0, v3}, Lorg/jf/dexlib2/writer/DexWriter;->writeAnnotations(Lorg/jf/dexlib2/writer/DexDataWriter;)V

    invoke-direct {p0, v3}, Lorg/jf/dexlib2/writer/DexWriter;->writeAnnotationSets(Lorg/jf/dexlib2/writer/DexDataWriter;)V

    invoke-direct {p0, v3}, Lorg/jf/dexlib2/writer/DexWriter;->writeAnnotationSetRefs(Lorg/jf/dexlib2/writer/DexDataWriter;)V

    invoke-direct {p0, v3}, Lorg/jf/dexlib2/writer/DexWriter;->writeAnnotationDirectories(Lorg/jf/dexlib2/writer/DexDataWriter;)V

    invoke-interface {p2}, Lorg/jf/dexlib2/writer/io/DeferredOutputStreamFactory;->makeDeferredOutputStream()Lorg/jf/dexlib2/writer/io/DeferredOutputStream;

    move-result-object p2

    invoke-direct {p0, v3, p2}, Lorg/jf/dexlib2/writer/DexWriter;->writeDebugAndCodeItems(Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/io/DeferredOutputStream;)V

    invoke-direct {p0, v2, v3}, Lorg/jf/dexlib2/writer/DexWriter;->writeClasses(Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/DexDataWriter;)V

    invoke-direct {p0, v3}, Lorg/jf/dexlib2/writer/DexWriter;->writeMapItem(Lorg/jf/dexlib2/writer/DexDataWriter;)V

    invoke-virtual {v3}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result p2

    invoke-direct {p0, v1, v0, p2}, Lorg/jf/dexlib2/writer/DexWriter;->writeHeader(Lorg/jf/dexlib2/writer/DexDataWriter;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->close()V

    invoke-virtual {v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->close()V

    invoke-virtual {v3}, Lorg/jf/dexlib2/writer/DexDataWriter;->close()V

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/DexWriter;->updateSignature(Lorg/jf/dexlib2/writer/io/DexDataStore;)V

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/DexWriter;->updateChecksum(Lorg/jf/dexlib2/writer/io/DexDataStore;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {p1}, Lorg/jf/dexlib2/writer/io/DexDataStore;->close()V

    return-void

    :catchall_0
    move-exception p2

    :try_start_3
    invoke-virtual {v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->close()V

    invoke-virtual {v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->close()V

    invoke-virtual {v3}, Lorg/jf/dexlib2/writer/DexDataWriter;->close()V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    invoke-interface {p1}, Lorg/jf/dexlib2/writer/io/DexDataStore;->close()V

    throw p2
.end method
