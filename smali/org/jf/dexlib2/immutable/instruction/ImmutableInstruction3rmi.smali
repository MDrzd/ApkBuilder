.class public Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rmi;
.super Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rmi;


# static fields
.field public static final FORMAT:Lorg/jf/dexlib2/Format;


# instance fields
.field protected final inlineIndex:I

.field protected final registerCount:I

.field protected final startRegister:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/jf/dexlib2/Format;->Format3rmi:Lorg/jf/dexlib2/Format;

    sput-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rmi;->FORMAT:Lorg/jf/dexlib2/Format;

    return-void
.end method

.method public constructor <init>(Lorg/jf/dexlib2/Opcode;III)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;-><init>(Lorg/jf/dexlib2/Opcode;)V

    invoke-static {p2}, Lorg/jf/dexlib2/util/Preconditions;->checkShortRegister(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rmi;->startRegister:I

    invoke-static {p3}, Lorg/jf/dexlib2/util/Preconditions;->checkRegisterRangeCount(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rmi;->registerCount:I

    invoke-static {p4}, Lorg/jf/dexlib2/util/Preconditions;->checkInlineIndex(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rmi;->inlineIndex:I

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rmi;)Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rmi;
    .registers 5

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rmi;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rmi;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rmi;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rmi;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rmi;->getStartRegister()I

    move-result v2

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rmi;->getRegisterCount()I

    move-result v3

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rmi;->getInlineIndex()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rmi;-><init>(Lorg/jf/dexlib2/Opcode;III)V

    return-object v0
.end method


# virtual methods
.method public getFormat()Lorg/jf/dexlib2/Format;
    .registers 2

    sget-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rmi;->FORMAT:Lorg/jf/dexlib2/Format;

    return-object v0
.end method

.method public getInlineIndex()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rmi;->inlineIndex:I

    return v0
.end method

.method public getRegisterCount()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rmi;->registerCount:I

    return v0
.end method

.method public getStartRegister()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rmi;->startRegister:I

    return v0
.end method
