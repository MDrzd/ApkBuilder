.class public abstract Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private index:I

.field private final reader:Lorg/jf/dexlib2/dexbacked/DexReader;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final size:I


# direct methods
.method protected constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;->reader:Lorg/jf/dexlib2/dexbacked/DexReader;

    iput p3, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;->size:I

    return-void
.end method

.method protected constructor <init>(Lorg/jf/dexlib2/dexbacked/DexReader;I)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;->reader:Lorg/jf/dexlib2/dexbacked/DexReader;

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;->size:I

    return-void
.end method


# virtual methods
.method public getReaderOffset()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;->reader:Lorg/jf/dexlib2/dexbacked/DexReader;

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;->index:I

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;->index:I

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;->size:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;->reader:Lorg/jf/dexlib2/dexbacked/DexReader;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;->index:I

    invoke-virtual {p0, v0, v1}, Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;->readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method protected abstract readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
