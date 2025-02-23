.class public Lorg/jf/baksmali/Adaptors/Format/UnresolvedOdexInstructionMethodItem;
.super Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;


# direct methods
.method public constructor <init>(Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/analysis/UnresolvedOdexInstruction;)V
    .registers 4
    .param p1    # Lorg/jf/baksmali/Adaptors/MethodDefinition;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/analysis/UnresolvedOdexInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;-><init>(Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/iface/instruction/Instruction;)V

    return-void
.end method

.method private writeThrowTo(Lorg/jf/util/IndentingWriter;)V
    .registers 3

    const-string v0, "#Replaced unresolvable odex instruction with a throw\n"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const-string v0, "throw "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/UnresolvedOdexInstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/analysis/UnresolvedOdexInstruction;

    iget v0, v0, Lorg/jf/dexlib2/analysis/UnresolvedOdexInstruction;->objectRegisterNum:I

    invoke-virtual {p0, p1, v0}, Lorg/jf/baksmali/Adaptors/Format/UnresolvedOdexInstructionMethodItem;->writeRegister(Lorg/jf/util/IndentingWriter;I)V

    return-void
.end method


# virtual methods
.method public writeTo(Lorg/jf/util/IndentingWriter;)Z
    .registers 2

    invoke-direct {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/UnresolvedOdexInstructionMethodItem;->writeThrowTo(Lorg/jf/util/IndentingWriter;)V

    const/4 p1, 0x1

    return p1
.end method
