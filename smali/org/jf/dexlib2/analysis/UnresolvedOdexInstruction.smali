.class public Lorg/jf/dexlib2/analysis/UnresolvedOdexInstruction;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/Instruction;


# instance fields
.field public final objectRegisterNum:I

.field public final originalInstruction:Lorg/jf/dexlib2/iface/instruction/Instruction;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/iface/instruction/Instruction;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/UnresolvedOdexInstruction;->originalInstruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    iput p2, p0, Lorg/jf/dexlib2/analysis/UnresolvedOdexInstruction;->objectRegisterNum:I

    return-void
.end method


# virtual methods
.method public getCodeUnits()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/UnresolvedOdexInstruction;->originalInstruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v0

    return v0
.end method

.method public getOpcode()Lorg/jf/dexlib2/Opcode;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/UnresolvedOdexInstruction;->originalInstruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v0

    return-object v0
.end method
