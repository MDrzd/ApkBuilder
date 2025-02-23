.class public Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;
.super Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/formats/Instruction35mi;


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
.method public getInlineIndex()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->instructionStart:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUshort(I)I

    move-result v0

    return v0
.end method

.method public getRegisterC()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->instructionStart:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUbyte(I)I

    move-result v0

    invoke-static {v0}, Lorg/jf/util/NibbleUtils;->extractLowUnsignedNibble(I)I

    move-result v0

    return v0
.end method

.method public getRegisterCount()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->instructionStart:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUbyte(I)I

    move-result v0

    invoke-static {v0}, Lorg/jf/util/NibbleUtils;->extractHighUnsignedNibble(I)I

    move-result v0

    return v0
.end method

.method public getRegisterD()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->instructionStart:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUbyte(I)I

    move-result v0

    invoke-static {v0}, Lorg/jf/util/NibbleUtils;->extractHighUnsignedNibble(I)I

    move-result v0

    return v0
.end method

.method public getRegisterE()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->instructionStart:I

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUbyte(I)I

    move-result v0

    invoke-static {v0}, Lorg/jf/util/NibbleUtils;->extractLowUnsignedNibble(I)I

    move-result v0

    return v0
.end method

.method public getRegisterF()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->instructionStart:I

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUbyte(I)I

    move-result v0

    invoke-static {v0}, Lorg/jf/util/NibbleUtils;->extractHighUnsignedNibble(I)I

    move-result v0

    return v0
.end method

.method public getRegisterG()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction35mi;->instructionStart:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUbyte(I)I

    move-result v0

    invoke-static {v0}, Lorg/jf/util/NibbleUtils;->extractLowUnsignedNibble(I)I

    move-result v0

    return v0
.end method
