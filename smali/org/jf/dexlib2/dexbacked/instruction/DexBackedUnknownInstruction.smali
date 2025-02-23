.class public Lorg/jf/dexlib2/dexbacked/instruction/DexBackedUnknownInstruction;
.super Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/formats/UnknownInstruction;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lorg/jf/dexlib2/Opcode;->NOP:Lorg/jf/dexlib2/Opcode;

    invoke-direct {p0, p1, v0, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    return-void
.end method


# virtual methods
.method public getOriginalOpcode()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedUnknownInstruction;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedUnknownInstruction;->instructionStart:I

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUbyte(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedUnknownInstruction;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedUnknownInstruction;->instructionStart:I

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUshort(I)I

    move-result v0

    :cond_0
    return v0
.end method
