.class public Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction21ih;
.super Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/formats/Instruction21ih;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-void
.end method


# virtual methods
.method public getHatLiteral()S
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction21ih;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction21ih;->instructionStart:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readShort(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getNarrowLiteral()I
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction21ih;->getHatLiteral()S

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getRegisterA()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction21ih;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction21ih;->instructionStart:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUbyte(I)I

    move-result v0

    return v0
.end method

.method public getWideLiteral()J
    .registers 3

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction21ih;->getNarrowLiteral()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
