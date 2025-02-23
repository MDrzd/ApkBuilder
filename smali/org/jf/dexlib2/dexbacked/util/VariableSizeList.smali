.class public abstract Lorg/jf/dexlib2/dexbacked/util/VariableSizeList;
.super Ljava/util/AbstractSequentialList;


# instance fields
.field private final dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final offset:I

.field private final size:I


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeList;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeList;->offset:I

    iput p3, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeList;->size:I

    return-void
.end method


# virtual methods
.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/util/VariableSizeList;->listIterator()Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/util/VariableSizeList;->listIterator(I)Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;

    move-result-object p1

    return-object p1
.end method

.method public listIterator()Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/dexbacked/util/VariableSizeList;->listIterator(I)Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;
    .registers 6
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeList$1;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeList;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeList;->offset:I

    iget v3, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeList;->size:I

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/jf/dexlib2/dexbacked/util/VariableSizeList$1;-><init>(Lorg/jf/dexlib2/dexbacked/util/VariableSizeList;Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/util/VariableSizeListIterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected abstract readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeList;->size:I

    return v0
.end method
