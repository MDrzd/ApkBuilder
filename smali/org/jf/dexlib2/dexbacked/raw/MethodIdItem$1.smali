.class final Lorg/jf/dexlib2/dexbacked/raw/MethodIdItem$1;
.super Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;-><init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V

    return-void
.end method


# virtual methods
.method public final annotateItem(Lorg/jf/dexlib2/util/AnnotatedBytes;ILjava/lang/String;)V
    .registers 9
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object p2, p0, Lorg/jf/dexlib2/dexbacked/raw/MethodIdItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readUshort(I)I

    move-result p2

    const-string p3, "class_idx = %s"

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/raw/MethodIdItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v2, p2}, Lorg/jf/dexlib2/dexbacked/raw/TypeIdItem;->getReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3, v1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lorg/jf/dexlib2/dexbacked/raw/MethodIdItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readUshort(I)I

    move-result p3

    const-string v1, "proto_idx = %s"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/raw/MethodIdItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v4, p3}, Lorg/jf/dexlib2/dexbacked/raw/ProtoIdItem;->getReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, v2

    invoke-virtual {p1, p2, v1, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/jf/dexlib2/dexbacked/raw/MethodIdItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result p2

    const-string p3, "name_idx = %s"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/raw/MethodIdItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v1, p2}, Lorg/jf/dexlib2/dexbacked/raw/StringIdItem;->getReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p3, v0}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final getItemName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const-string v0, "method_id_item"

    return-object v0
.end method
