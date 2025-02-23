.class public Lorg/jf/dexlib2/util/InstructionOffsetMap;
.super Ljava/lang/Object;


# instance fields
.field private final instructionCodeOffsets:[I
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 5
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jf/dexlib2/util/InstructionOffsetMap;->instructionCodeOffsets:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/jf/dexlib2/util/InstructionOffsetMap;->instructionCodeOffsets:[I

    aput v1, v2, v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getInstructionCodeOffset(I)I
    .registers 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/util/InstructionOffsetMap;->instructionCodeOffsets:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/util/InstructionOffsetMap;->instructionCodeOffsets:[I

    aget p1, v0, p1

    return p1

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/util/InstructionOffsetMap$InvalidInstructionIndex;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/util/InstructionOffsetMap$InvalidInstructionIndex;-><init>(I)V

    throw v0
.end method

.method public getInstructionIndexAtCodeOffset(I)I
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/jf/dexlib2/util/InstructionOffsetMap;->getInstructionIndexAtCodeOffset(IZ)I

    move-result p1

    return p1
.end method

.method public getInstructionIndexAtCodeOffset(IZ)I
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/util/InstructionOffsetMap;->instructionCodeOffsets:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_1

    if-nez p2, :cond_0

    xor-int/lit8 p1, v0, -0x1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    new-instance p2, Lorg/jf/dexlib2/util/InstructionOffsetMap$InvalidInstructionOffset;

    invoke-direct {p2, p1}, Lorg/jf/dexlib2/util/InstructionOffsetMap$InvalidInstructionOffset;-><init>(I)V

    throw p2

    :cond_1
    return v0
.end method
