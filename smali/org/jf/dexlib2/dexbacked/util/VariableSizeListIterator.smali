.class public abstract Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field private index:I

.field private reader:Lorg/jf/dexlib2/dexbacked/DexReader;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final size:I

.field private final startOffset:I


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

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->reader:Lorg/jf/dexlib2/dexbacked/DexReader;

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->startOffset:I

    iput p3, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->size:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getReaderOffset()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->reader:Lorg/jf/dexlib2/dexbacked/DexReader;

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->index:I

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->index:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->index:I

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->size:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->reader:Lorg/jf/dexlib2/dexbacked/DexReader;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->index:I

    invoke-virtual {p0, v0, v1}, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->index:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->reader:Lorg/jf/dexlib2/dexbacked/DexReader;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->startOffset:I

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/DexReader;->setOffset(I)V

    const/4 v1, 0x0

    iput v1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->index:I

    :goto_0
    iget v1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->index:I

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->reader:Lorg/jf/dexlib2/dexbacked/DexReader;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->index:I

    invoke-virtual {p0, v1, v2}, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->reader:Lorg/jf/dexlib2/dexbacked/DexReader;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->index:I

    invoke-virtual {p0, v0, v1}, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0
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

.method public set(Ljava/lang/Object;)V
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
