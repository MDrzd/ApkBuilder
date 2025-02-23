.class final Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;
.super Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;


# instance fields
.field private classDataAnnotator:Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;-><init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;->classDataAnnotator:Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    return-void
.end method

.method private addClassDataIdentity(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;->classDataAnnotator:Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;->classDataAnnotator:Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    invoke-virtual {v0, p1, p2}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->setItemIdentity(ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final annotateItem(Lorg/jf/dexlib2/util/AnnotatedBytes;ILjava/lang/String;)V
    .registers 10
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object p2, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result p2

    const-string p3, "class_idx = %s"

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v2, p2}, Lorg/jf/dexlib2/dexbacked/raw/TypeIdItem;->getReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x4

    invoke-virtual {p1, v2, p3, v1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result p3

    const-string v1, "access_flags = 0x%x: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v5, 0x7c

    invoke-static {v5}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v5

    invoke-static {p3}, Lorg/jf/dexlib2/AccessFlags;->getAccessFlagsForClass(I)[Lorg/jf/dexlib2/AccessFlags;

    move-result-object p3

    invoke-virtual {v5, p3}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v0

    invoke-virtual {p1, v2, v1, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readOptionalUint(I)I

    move-result p3

    const-string v1, "superclass_idx = %s"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v5, p3}, Lorg/jf/dexlib2/dexbacked/raw/TypeIdItem;->getOptionalReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v3

    invoke-virtual {p1, v2, v1, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result p3

    const-string v1, "interfaces_off = %s"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v5, p3}, Lorg/jf/dexlib2/dexbacked/raw/TypeListItem;->getReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v3

    invoke-virtual {p1, v2, v1, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readOptionalUint(I)I

    move-result p3

    const-string v1, "source_file_idx = %s"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v5, p3}, Lorg/jf/dexlib2/dexbacked/raw/StringIdItem;->getOptionalReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v3

    invoke-virtual {p1, v2, v1, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "annotations_off = annotations_directory_item[NO_OFFSET]"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v2, p3, v1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "annotations_off = annotations_directory_item[0x%x]"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v4, v3

    invoke-virtual {p1, v2, v1, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object p3, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result p3

    if-nez p3, :cond_1

    const-string p2, "class_data_off = class_data_item[NO_OFFSET]"

    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v2, p2, p3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v1, "class_data_off = class_data_item[0x%x]"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p1, v2, v1, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {v1, p2}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->getType(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p2}, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;->addClassDataIdentity(ILjava/lang/String;)V

    :goto_1
    iget-object p2, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "static_values_off = encoded_array_item[NO_OFFSET]"

    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v2, p2, p3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string p3, "static_values_off = encoded_array_item[0x%x]"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-virtual {p1, v2, p3, v0}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final annotateSection(Lorg/jf/dexlib2/util/AnnotatedBytes;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;->annotator:Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->getAnnotator(I)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem$1;->classDataAnnotator:Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    invoke-super {p0, p1}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->annotateSection(Lorg/jf/dexlib2/util/AnnotatedBytes;)V

    return-void
.end method

.method public final getItemName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const-string v0, "class_def_item"

    return-object v0
.end method
