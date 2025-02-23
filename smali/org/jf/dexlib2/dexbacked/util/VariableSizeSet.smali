.class public abstract Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet;
.super Ljava/util/AbstractSet;


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

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet;->offset:I

    iput p3, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet;->size:I

    return-void
.end method


# virtual methods
.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet;->iterator()Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet$1;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet;->offset:I

    iget v3, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet;->size:I

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet$1;-><init>(Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet;Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V

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

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet;->size:I

    return v0
.end method
