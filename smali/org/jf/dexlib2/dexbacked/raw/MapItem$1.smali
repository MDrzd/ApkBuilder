.class final Lorg/jf/dexlib2/dexbacked/raw/MapItem$1;
.super Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;-><init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V

    return-void
.end method


# virtual methods
.method protected final annotateItem(Lorg/jf/dexlib2/util/AnnotatedBytes;ILjava/lang/String;)V
    .registers 8
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object p2, p0, Lorg/jf/dexlib2/dexbacked/raw/MapItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readUshort(I)I

    move-result p2

    const-string p3, "type = 0x%x: %s"

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Lorg/jf/dexlib2/dexbacked/raw/ItemType;->getItemTypeName(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, p3, v1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "unused"

    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/jf/dexlib2/dexbacked/raw/MapItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result p2

    const-string p3, "size = %d"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p3, v0}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lorg/jf/dexlib2/dexbacked/raw/MapItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v0

    invoke-virtual {p3, v0}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result p3

    const-string v0, "offset = 0x%x"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v3

    invoke-virtual {p1, p2, v0, v1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final annotateSection(Lorg/jf/dexlib2/util/AnnotatedBytes;)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/raw/MapItem$1;->sectionOffset:I

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/MapItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result v0

    const-string v1, "size = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v1, v2}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, v0}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->annotateSectionInner(Lorg/jf/dexlib2/util/AnnotatedBytes;I)V

    return-void
.end method

.method public final getItemName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const-string v0, "map_item"

    return-object v0
.end method
