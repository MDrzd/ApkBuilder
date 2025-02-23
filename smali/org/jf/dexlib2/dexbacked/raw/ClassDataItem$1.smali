.class final Lorg/jf/dexlib2/dexbacked/raw/ClassDataItem$1;
.super Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;


# instance fields
.field private codeItemAnnotator:Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;-><init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDataItem$1;->codeItemAnnotator:Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    return-void
.end method

.method private addCodeItemIdentity(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDataItem$1;->codeItemAnnotator:Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDataItem$1;->codeItemAnnotator:Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    invoke-virtual {v0, p1, p2}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->setItemIdentity(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private annotateEncodedField(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;Lorg/jf/dexlib2/dexbacked/DexReader;I)I
    .registers 11
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p3}, Lorg/jf/dexlib2/dexbacked/DexReader;->readLargeUleb128()I

    move-result v0

    add-int/2addr p4, v0

    invoke-virtual {p3}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    const-string v2, "field_idx_diff = %d: %s"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {p2, p4}, Lorg/jf/dexlib2/dexbacked/raw/FieldIdItem;->getReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v4, v0

    invoke-virtual {p1, v1, v2, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p2

    invoke-virtual {p3}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p3

    const-string v1, "access_flags = 0x%x: %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x7c

    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v3

    invoke-static {p2}, Lorg/jf/dexlib2/AccessFlags;->getAccessFlagsForField(I)[Lorg/jf/dexlib2/AccessFlags;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v0

    invoke-virtual {p1, p3, v1, v2}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    return p4
.end method

.method private annotateEncodedMethod(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;Lorg/jf/dexlib2/dexbacked/DexReader;I)I
    .registers 12
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p3}, Lorg/jf/dexlib2/dexbacked/DexReader;->readLargeUleb128()I

    move-result v0

    add-int/2addr p4, v0

    invoke-virtual {p3}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    const-string v2, "method_idx_diff = %d: %s"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {p2, p4}, Lorg/jf/dexlib2/dexbacked/raw/MethodIdItem;->getReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v4, v6

    invoke-virtual {p1, v1, v2, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v0

    invoke-virtual {p3}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    const-string v2, "access_flags = 0x%x: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x7c

    invoke-static {v4}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v4

    invoke-static {v0}, Lorg/jf/dexlib2/AccessFlags;->getAccessFlagsForMethod(I)[Lorg/jf/dexlib2/AccessFlags;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {p1, v1, v2, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p2

    const-string p3, "code_off = code_item[NO_OFFSET]"

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3, v0}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p3

    const-string v1, "code_off = code_item[0x%x]"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1, p3, v1, v2}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2, p4}, Lorg/jf/dexlib2/dexbacked/raw/MethodIdItem;->asString(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/jf/dexlib2/dexbacked/raw/ClassDataItem$1;->addCodeItemIdentity(ILjava/lang/String;)V

    :goto_0
    return p4
.end method


# virtual methods
.method protected final annotateItem(Lorg/jf/dexlib2/util/AnnotatedBytes;ILjava/lang/String;)V
    .registers 14
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object p2, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDataItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p3

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    const-string v1, "static_fields_size = %d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v0, v1, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v0

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    const-string v3, "instance_fields_size = %d"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v1, v3, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v1

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v3

    const-string v4, "direct_methods_size = %d"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {p1, v3, v4, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v3

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v4

    const-string v6, "virtual_methods_size = %d"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p1, v4, v6, v7}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    if-lez p3, :cond_1

    const-string v4, "static_fields:"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v5, v4, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, p3, :cond_0

    const-string v7, "static_field[%d]"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {p1, v5, v7, v8}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    iget-object v7, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDataItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-direct {p0, p1, v7, p2, v6}, Lorg/jf/dexlib2/dexbacked/raw/ClassDataItem$1;->annotateEncodedField(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;Lorg/jf/dexlib2/dexbacked/DexReader;I)I

    move-result v6

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    :cond_1
    if-lez v0, :cond_3

    const-string p3, "instance_fields:"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v5, p3, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 p3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge p3, v0, :cond_2

    const-string v6, "instance_field[%d]"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p1, v5, v6, v7}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    iget-object v6, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDataItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-direct {p0, p1, v6, p2, v4}, Lorg/jf/dexlib2/dexbacked/raw/ClassDataItem$1;->annotateEncodedField(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;Lorg/jf/dexlib2/dexbacked/DexReader;I)I

    move-result v4

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    :cond_3
    if-lez v1, :cond_5

    const-string p3, "direct_methods:"

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v5, p3, v0}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_2
    if-ge p3, v1, :cond_4

    const-string v4, "direct_method[%d]"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {p1, v5, v4, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDataItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-direct {p0, p1, v4, p2, v0}, Lorg/jf/dexlib2/dexbacked/raw/ClassDataItem$1;->annotateEncodedMethod(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;Lorg/jf/dexlib2/dexbacked/DexReader;I)I

    move-result v0

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    :cond_5
    if-lez v3, :cond_7

    const-string p3, "virtual_methods:"

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v5, p3, v0}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_3
    if-ge p3, v3, :cond_6

    const-string v1, "virtual_method[%d]"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v5, v1, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDataItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-direct {p0, p1, v1, p2, v0}, Lorg/jf/dexlib2/dexbacked/raw/ClassDataItem$1;->annotateEncodedMethod(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;Lorg/jf/dexlib2/dexbacked/DexReader;I)I

    move-result v0

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    :cond_7
    return-void
.end method

.method public final annotateSection(Lorg/jf/dexlib2/util/AnnotatedBytes;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDataItem$1;->annotator:Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;

    const/16 v1, 0x2001

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->getAnnotator(I)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/ClassDataItem$1;->codeItemAnnotator:Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    invoke-super {p0, p1}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->annotateSection(Lorg/jf/dexlib2/util/AnnotatedBytes;)V

    return-void
.end method

.method public final getItemName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const-string v0, "class_data_item"

    return-object v0
.end method
