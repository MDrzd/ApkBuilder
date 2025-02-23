.class public Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;
.super Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;


# instance fields
.field public final headerItem:Lorg/jf/dexlib2/dexbacked/raw/HeaderItem;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/Opcodes;Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;-><init>(Lorg/jf/dexlib2/Opcodes;Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;)V

    new-instance p1, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem;

    invoke-direct {p1, p0}, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem;-><init>(Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;)V

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->headerItem:Lorg/jf/dexlib2/dexbacked/raw/HeaderItem;

    return-void
.end method

.method public constructor <init>(Lorg/jf/dexlib2/Opcodes;[B)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;-><init>(Lorg/jf/dexlib2/Opcodes;[B)V

    new-instance p1, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem;

    invoke-direct {p1, p0}, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem;-><init>(Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;)V

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->headerItem:Lorg/jf/dexlib2/dexbacked/raw/HeaderItem;

    return-void
.end method


# virtual methods
.method public getMapItemForSection(I)Lorg/jf/dexlib2/dexbacked/raw/MapItem;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->getMapItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/dexbacked/raw/MapItem;

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMapItems()Ljava/util/List;
    .registers 4

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->getMapOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readSmallUint(I)I

    move-result v1

    new-instance v2, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile$1;-><init>(Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;II)V

    return-object v2
.end method

.method public getMapOffset()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->headerItem:Lorg/jf/dexlib2/dexbacked/raw/HeaderItem;

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem;->getMapOffset()I

    move-result v0

    return v0
.end method

.method public readByteRange(II)[B
    .registers 6
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->getBuf()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->getBaseOffset()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->getBaseOffset()I

    move-result v2

    add-int/2addr v2, p1

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public writeAnnotations(Ljava/io/Writer;Lorg/jf/dexlib2/util/AnnotatedBytes;)V
    .registers 4
    .param p1    # Ljava/io/Writer;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->getBuf()[B

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/jf/dexlib2/util/AnnotatedBytes;->writeAnnotations(Ljava/io/Writer;[B)V

    return-void
.end method
