.class public abstract Lorg/jf/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;
.super Lcom/google/common/collect/AbstractIterator;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final reader:Lorg/jf/dexlib2/dexbacked/DexReader;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->reader:Lorg/jf/dexlib2/dexbacked/DexReader;

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->reader:Lorg/jf/dexlib2/dexbacked/DexReader;

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;->readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;)Ljava/lang/Object;
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
