.class Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/SwitchElement;


# instance fields
.field final synthetic this$1:Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;I)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1$1;->this$1:Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1$1;->this$1:Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;

    iget v0, v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;->val$firstKey:I

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1$1;->val$index:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getOffset()I
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1$1;->this$1:Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;

    iget-object v0, v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;->this$0:Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload;

    iget-object v0, v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1$1;->this$1:Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;->this$0:Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload;

    iget v1, v1, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload;->instructionStart:I

    add-int/lit8 v1, v1, 0x8

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1$1;->val$index:I

    shl-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readInt(I)I

    move-result v0

    return v0
.end method
