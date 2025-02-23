.class Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation$2;
.super Lorg/jf/dexlib2/dexbacked/util/FixedSizeList;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;

.field final synthetic val$handlersStartOffset:I

.field final synthetic val$triesSize:I

.field final synthetic val$triesStartOffset:I


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;III)V
    .registers 5

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation$2;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation$2;->val$triesStartOffset:I

    iput p3, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation$2;->val$handlersStartOffset:I

    iput p4, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation$2;->val$triesSize:I

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/util/FixedSizeList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic readItem(I)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation$2;->readItem(I)Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;

    move-result-object p1

    return-object p1
.end method

.method public readItem(I)Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation$2;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation$2;->val$triesStartOffset:I

    shl-int/lit8 p1, p1, 0x3

    add-int/2addr v2, p1

    iget p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation$2;->val$handlersStartOffset:I

    invoke-direct {v0, v1, v2, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedTryBlock;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation$2;->val$triesSize:I

    return v0
.end method
