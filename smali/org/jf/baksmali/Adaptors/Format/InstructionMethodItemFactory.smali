.class public Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItemFactory;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeInstructionFormatMethodItem(Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/iface/instruction/Instruction;)Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;
    .registers 5

    instance-of v0, p2, Lorg/jf/dexlib2/iface/instruction/OffsetInstruction;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jf/baksmali/Adaptors/Format/OffsetInstructionFormatMethodItem;

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v1, v1, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    check-cast p2, Lorg/jf/dexlib2/iface/instruction/OffsetInstruction;

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/jf/baksmali/Adaptors/Format/OffsetInstructionFormatMethodItem;-><init>(Lorg/jf/baksmali/BaksmaliOptions;Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/iface/instruction/OffsetInstruction;)V

    return-object v0

    :cond_0
    instance-of v0, p2, Lorg/jf/dexlib2/analysis/UnresolvedOdexInstruction;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/jf/baksmali/Adaptors/Format/UnresolvedOdexInstructionMethodItem;

    check-cast p2, Lorg/jf/dexlib2/analysis/UnresolvedOdexInstruction;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/baksmali/Adaptors/Format/UnresolvedOdexInstructionMethodItem;-><init>(Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/analysis/UnresolvedOdexInstruction;)V

    return-object v0

    :cond_1
    sget-object v0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItemFactory$1;->$SwitchMap$org$jf$dexlib2$Format:[I

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    iget-object v1, v1, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    invoke-virtual {v1}, Lorg/jf/dexlib2/Format;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;-><init>(Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/iface/instruction/Instruction;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem;

    check-cast p2, Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem;-><init>(Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem;

    check-cast p2, Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem;-><init>(Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lorg/jf/baksmali/Adaptors/Format/ArrayDataMethodItem;

    check-cast p2, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/baksmali/Adaptors/Format/ArrayDataMethodItem;-><init>(Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
