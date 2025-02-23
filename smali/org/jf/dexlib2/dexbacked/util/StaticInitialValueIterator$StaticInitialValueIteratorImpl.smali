.class Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$StaticInitialValueIteratorImpl;
.super Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;


# instance fields
.field private index:I

.field private final reader:Lorg/jf/dexlib2/dexbacked/DexReader;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final size:I


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$StaticInitialValueIteratorImpl;->index:I

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$StaticInitialValueIteratorImpl;->reader:Lorg/jf/dexlib2/dexbacked/DexReader;

    iget-object p1, p0, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$StaticInitialValueIteratorImpl;->reader:Lorg/jf/dexlib2/dexbacked/DexReader;

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$StaticInitialValueIteratorImpl;->size:I

    return-void
.end method


# virtual methods
.method public getNextOrNull()Lorg/jf/dexlib2/iface/value/EncodedValue;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$StaticInitialValueIteratorImpl;->index:I

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$StaticInitialValueIteratorImpl;->size:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$StaticInitialValueIteratorImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$StaticInitialValueIteratorImpl;->index:I

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$StaticInitialValueIteratorImpl;->reader:Lorg/jf/dexlib2/dexbacked/DexReader;

    invoke-static {v0}, Lorg/jf/dexlib2/dexbacked/value/DexBackedEncodedValue;->readFrom(Lorg/jf/dexlib2/dexbacked/DexReader;)Lorg/jf/dexlib2/iface/value/EncodedValue;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public skipNext()V
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$StaticInitialValueIteratorImpl;->index:I

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$StaticInitialValueIteratorImpl;->size:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$StaticInitialValueIteratorImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$StaticInitialValueIteratorImpl;->index:I

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$StaticInitialValueIteratorImpl;->reader:Lorg/jf/dexlib2/dexbacked/DexReader;

    invoke-static {v0}, Lorg/jf/dexlib2/dexbacked/value/DexBackedEncodedValue;->skipFrom(Lorg/jf/dexlib2/dexbacked/DexReader;)V

    :cond_0
    return-void
.end method
