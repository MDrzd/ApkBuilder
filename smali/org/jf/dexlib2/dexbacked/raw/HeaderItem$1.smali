.class final Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;
.super Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;-><init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V

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

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    add-int v3, p2, v1

    invoke-virtual {v2, v3}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readUbyte(I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "magic: %s"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/jf/util/StringUtils;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, v0

    invoke-virtual {p1, v2, p2, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "checksum"

    new-array p3, v0, [Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, p2, p3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 p2, 0x14

    const-string p3, "signature"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "file_size: %d"

    new-array p3, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p3, v0

    invoke-virtual {p1, v2, p2, p3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result p2

    const-string p3, "header_size: %d"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, p3, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v3

    invoke-virtual {p3, v3}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result p3

    const-string v3, "endian_tag: 0x%x (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p3}, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem;->access$000(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v1

    invoke-virtual {p1, v2, v3, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "link_size: %d"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, p3, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "link_offset: 0x%x"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, p3, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "map_off: 0x%x"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, p3, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "string_ids_size: %d"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, p3, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "string_ids_off: 0x%x"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, p3, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "type_ids_size: %d"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, p3, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "type_ids_off: 0x%x"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, p3, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "proto_ids_size: %d"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, p3, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "proto_ids_off: 0x%x"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, p3, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "field_ids_size: %d"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, p3, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "field_ids_off: 0x%x"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, p3, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "method_ids_size: %d"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, p3, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "method_ids_off: 0x%x"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, p3, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "class_defs_size: %d"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, p3, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "class_defs_off: 0x%x"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, p3, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "data_size: %d"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, p3, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "data_off: 0x%x"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p1, v2, p3, v1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 p3, 0x70

    if-le p2, p3, :cond_1

    const-string p3, "header padding"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3, v0}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final getItemName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const-string v0, "header_item"

    return-object v0
.end method
