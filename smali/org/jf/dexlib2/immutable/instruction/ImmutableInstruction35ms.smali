.class public Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;
.super Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;


# static fields
.field public static final FORMAT:Lorg/jf/dexlib2/Format;


# instance fields
.field protected final registerC:I

.field protected final registerCount:I

.field protected final registerD:I

.field protected final registerE:I

.field protected final registerF:I

.field protected final registerG:I

.field protected final vtableIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/jf/dexlib2/Format;->Format35ms:Lorg/jf/dexlib2/Format;

    sput-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;->FORMAT:Lorg/jf/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(Lorg/jf/dexlib2/Opcode;IIIIIII)V
    .registers 9
    .param p1    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;-><init>(Lorg/jf/dexlib2/Opcode;)V

    invoke-static {p2}, Lorg/jf/dexlib2/util/Preconditions;->check35cAnd45ccRegisterCount(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;->registerCount:I

    const/4 p1, 0x0

    if-lez p2, :cond_0

    invoke-static {p3}, Lorg/jf/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput p3, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;->registerC:I

    const/4 p3, 0x1

    if-le p2, p3, :cond_1

    invoke-static {p4}, Lorg/jf/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p3

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    iput p3, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;->registerD:I

    const/4 p3, 0x2

    if-le p2, p3, :cond_2

    invoke-static {p5}, Lorg/jf/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p3

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    iput p3, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;->registerE:I

    const/4 p3, 0x3

    if-le p2, p3, :cond_3

    invoke-static {p6}, Lorg/jf/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p3

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    :goto_3
    iput p3, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;->registerF:I

    const/4 p3, 0x4

    if-le p2, p3, :cond_4

    invoke-static {p7}, Lorg/jf/dexlib2/util/Preconditions;->checkNibbleRegister(I)I

    move-result p1

    :cond_4
    iput p1, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;->registerG:I

    invoke-static {p8}, Lorg/jf/dexlib2/util/Preconditions;->checkVtableIndex(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;->vtableIndex:I

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;
    .registers 11

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;

    return-object p0

    :cond_0
    new-instance v9, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterCount()I

    move-result v2

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterC()I

    move-result v3

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterD()I

    move-result v4

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterE()I

    move-result v5

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterF()I

    move-result v6

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterG()I

    move-result v7

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;->getVtableIndex()I

    move-result v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;-><init>(Lorg/jf/dexlib2/Opcode;IIIIIII)V

    return-object v9
.end method


# virtual methods
.method public getFormat()Lorg/jf/dexlib2/Format;
    .registers 2

    sget-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;->FORMAT:Lorg/jf/dexlib2/Format;

    return-object v0
.end method

.method public getRegisterC()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;->registerC:I

    return v0
.end method

.method public getRegisterCount()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;->registerCount:I

    return v0
.end method

.method public getRegisterD()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;->registerD:I

    return v0
.end method

.method public getRegisterE()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;->registerE:I

    return v0
.end method

.method public getRegisterF()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;->registerF:I

    return v0
.end method

.method public getRegisterG()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;->registerG:I

    return v0
.end method

.method public getVtableIndex()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35ms;->vtableIndex:I

    return v0
.end method
