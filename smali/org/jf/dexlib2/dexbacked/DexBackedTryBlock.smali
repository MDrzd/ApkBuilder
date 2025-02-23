.class public Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;
.super Lorg/jf/dexlib2/base/BaseTryBlock;


# instance fields
.field public final dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final handlersStartOffset:I

.field private final tryItemOffset:I


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseTryBlock;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;->tryItemOffset:I

    iput p3, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;->handlersStartOffset:I

    return-void
.end method


# virtual methods
.method public getCodeUnitCount()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;->tryItemOffset:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUshort(I)I

    move-result v0

    return v0
.end method

.method public getExceptionHandlers()Ljava/util/List;
    .registers 9
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;->handlersStartOffset:I

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v3, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;->tryItemOffset:I

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v2, v3}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUshort(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSleb128()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v2, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock$1;

    iget-object v3, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    invoke-direct {v2, p0, v3, v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock$1;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V

    return-object v2

    :cond_0
    mul-int/lit8 v1, v1, -0x1

    add-int/lit8 v7, v1, 0x1

    new-instance v1, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock$2;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v5

    move-object v2, v1

    move-object v3, p0

    move v6, v7

    invoke-direct/range {v2 .. v7}, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock$2;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;III)V

    return-object v1
.end method

.method public getStartCodeAddress()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;->tryItemOffset:I

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v0

    return v0
.end method
