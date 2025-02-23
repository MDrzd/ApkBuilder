.class final Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;
.super Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;-><init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V

    return-void
.end method


# virtual methods
.method protected final annotateItem(Lorg/jf/dexlib2/util/AnnotatedBytes;ILjava/lang/String;)V
    .registers 13
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object p2, p0, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result p2

    const-string p3, "class_annotations_off = %s"

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v2, p2}, Lorg/jf/dexlib2/dexbacked/raw/AnnotationSetItem;->getReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p3, v1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result p3

    const-string v1, "fields_size = %d"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p1, p2, v1, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result v1

    const-string v3, "annotated_methods_size = %d"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1, p2, v3, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result v3

    const-string v4, "annotated_parameters_size = %d"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p1, p2, v4, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    if-lez p3, :cond_1

    const-string v4, "field_annotations:"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v4, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p3, :cond_0

    const-string v5, "field_annotation[%d]"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p1, v2, v5, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    iget-object v5, p0, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result v5

    const-string v6, "%s"

    new-array v7, v0, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v8, v5}, Lorg/jf/dexlib2/dexbacked/raw/FieldIdItem;->getReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-virtual {p1, p2, v6, v7}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result v5

    const-string v6, "%s"

    new-array v7, v0, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v8, v5}, Lorg/jf/dexlib2/dexbacked/raw/AnnotationSetItem;->getReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-virtual {p1, p2, v6, v7}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    :cond_1
    if-lez v1, :cond_3

    const-string p3, "method_annotations:"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v2, p3, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 p3, 0x0

    :goto_1
    if-ge p3, v1, :cond_2

    const-string v4, "method_annotation[%d]"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p1, v2, v4, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result v4

    const-string v5, "%s"

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v7, v4}, Lorg/jf/dexlib2/dexbacked/raw/MethodIdItem;->getReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-virtual {p1, p2, v5, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result v4

    const-string v5, "%s"

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v7, v4}, Lorg/jf/dexlib2/dexbacked/raw/AnnotationSetItem;->getReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-virtual {p1, p2, v5, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    :cond_3
    if-lez v3, :cond_5

    const-string p3, "parameter_annotations:"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v2, p3, v1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 p3, 0x0

    :goto_2
    if-ge p3, v3, :cond_4

    const-string v1, "parameter_annotation[%d]"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1, v2, v1, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result v1

    const-string v4, "%s"

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v6, v1}, Lorg/jf/dexlib2/dexbacked/raw/MethodIdItem;->getReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {p1, p2, v4, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result v1

    const-string v4, "%s"

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v6, v1}, Lorg/jf/dexlib2/dexbacked/raw/AnnotationSetRefList;->getReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {p1, p2, v4, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    :cond_5
    return-void
.end method

.method public final getItemAlignment()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public final getItemName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const-string v0, "annotation_directory_item"

    return-object v0
.end method
