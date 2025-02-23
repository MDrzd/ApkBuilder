.class Lorg/jf/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload$1;
.super Lorg/jf/dexlib2/dexbacked/util/FixedSizeList;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload$1;->this$0:Lorg/jf/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload;

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/util/FixedSizeList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic readItem(I)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload$1;->readItem(I)Lorg/jf/dexlib2/iface/instruction/SwitchElement;

    move-result-object p1

    return-object p1
.end method

.method public readItem(I)Lorg/jf/dexlib2/iface/instruction/SwitchElement;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload$1$1;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload$1$1;-><init>(Lorg/jf/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload$1;I)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload$1;->this$0:Lorg/jf/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload;

    iget v0, v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedSparseSwitchPayload;->elementCount:I

    return v0
.end method
