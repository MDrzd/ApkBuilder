.class public Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload;
.super Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;


# static fields
.field private static final ELEMENT_COUNT_OFFSET:I = 0x2

.field private static final FIRST_KEY_OFFSET:I = 0x4

.field private static final TARGETS_OFFSET:I = 0x8


# instance fields
.field public final elementCount:I


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lorg/jf/dexlib2/Opcode;->PACKED_SWITCH_PAYLOAD:Lorg/jf/dexlib2/Opcode;

    invoke-direct {p0, p1, v0, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUshort(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload;->elementCount:I

    return-void
.end method


# virtual methods
.method public getCodeUnits()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload;->elementCount:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getSwitchElements()Ljava/util/List;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload;->instructionStart:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readInt(I)I

    move-result v0

    new-instance v1, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;

    invoke-direct {v1, p0, v0}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload$1;-><init>(Lorg/jf/dexlib2/dexbacked/instruction/DexBackedPackedSwitchPayload;I)V

    return-object v1
.end method
