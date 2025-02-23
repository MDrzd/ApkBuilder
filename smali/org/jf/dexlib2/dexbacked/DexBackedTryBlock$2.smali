.class Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock$2;
.super Lorg/jf/dexlib2/dexbacked/util/VariableSizeList;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;

.field final synthetic val$sizeWithCatchAll:I


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;III)V
    .registers 6

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock$2;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;

    iput p5, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock$2;->val$sizeWithCatchAll:I

    invoke-direct {p0, p2, p3, p4}, Lorg/jf/dexlib2/dexbacked/util/VariableSizeList;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock$2;->readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;I)Lorg/jf/dexlib2/dexbacked/DexBackedExceptionHandler;

    move-result-object p1

    return-object p1
.end method

.method protected readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;I)Lorg/jf/dexlib2/dexbacked/DexBackedExceptionHandler;
    .registers 4
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock$2;->val$sizeWithCatchAll:I

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    new-instance p2, Lorg/jf/dexlib2/dexbacked/DexBackedCatchAllExceptionHandler;

    invoke-direct {p2, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedCatchAllExceptionHandler;-><init>(Lorg/jf/dexlib2/dexbacked/DexReader;)V

    return-object p2

    :cond_0
    new-instance p2, Lorg/jf/dexlib2/dexbacked/DexBackedTypedExceptionHandler;

    invoke-direct {p2, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedTypedExceptionHandler;-><init>(Lorg/jf/dexlib2/dexbacked/DexReader;)V

    return-object p2
.end method
