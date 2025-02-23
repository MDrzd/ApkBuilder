.class Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload$2;
.super Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload$1ReturnedList;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;

.field final synthetic val$elementsStart:I


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;I)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload$2;->this$0:Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload$2;->val$elementsStart:I

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload$1ReturnedList;-><init>(Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;)V

    return-void
.end method


# virtual methods
.method public readItem(I)Ljava/lang/Number;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload$2;->this$0:Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;

    iget-object v0, v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload$2;->val$elementsStart:I

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readShort(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readItem(I)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload$2;->readItem(I)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method
