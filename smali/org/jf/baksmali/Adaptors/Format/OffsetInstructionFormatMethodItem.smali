.class public Lorg/jf/baksmali/Adaptors/Format/OffsetInstructionFormatMethodItem;
.super Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected label:Lorg/jf/baksmali/Adaptors/LabelMethodItem;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lorg/jf/baksmali/BaksmaliOptions;Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/iface/instruction/OffsetInstruction;)V
    .registers 6
    .param p1    # Lorg/jf/baksmali/BaksmaliOptions;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/baksmali/Adaptors/MethodDefinition;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p2, p3, p4}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;-><init>(Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/iface/instruction/Instruction;)V

    new-instance v0, Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    invoke-interface {p4}, Lorg/jf/dexlib2/iface/instruction/OffsetInstruction;->getCodeOffset()I

    move-result p4

    add-int/2addr p3, p4

    invoke-direct {p0}, Lorg/jf/baksmali/Adaptors/Format/OffsetInstructionFormatMethodItem;->getLabelPrefix()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v0, p1, p3, p4}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;-><init>(Lorg/jf/baksmali/BaksmaliOptions;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/OffsetInstructionFormatMethodItem;->label:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    invoke-virtual {p2}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->getLabelCache()Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;

    move-result-object p1

    iget-object p2, p0, Lorg/jf/baksmali/Adaptors/Format/OffsetInstructionFormatMethodItem;->label:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    invoke-virtual {p1, p2}, Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;->internLabel(Lorg/jf/baksmali/Adaptors/LabelMethodItem;)Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/baksmali/Adaptors/Format/OffsetInstructionFormatMethodItem;->label:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    return-void
.end method

.method private getLabelPrefix()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/OffsetInstructionFormatMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/OffsetInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/OffsetInstruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v0

    sget-object v1, Lorg/jf/baksmali/Adaptors/Format/OffsetInstructionFormatMethodItem$1;->$SwitchMap$org$jf$dexlib2$Format:[I

    iget-object v2, v0, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    invoke-virtual {v2}, Lorg/jf/dexlib2/Format;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v1, Lorg/jf/dexlib2/Opcode;->FILL_ARRAY_DATA:Lorg/jf/dexlib2/Opcode;

    if-ne v0, v1, :cond_0

    const-string v0, "array_"

    return-object v0

    :cond_0
    sget-object v1, Lorg/jf/dexlib2/Opcode;->PACKED_SWITCH:Lorg/jf/dexlib2/Opcode;

    if-ne v0, v1, :cond_1

    const-string v0, "pswitch_data_"

    return-object v0

    :cond_1
    const-string v0, "sswitch_data_"

    return-object v0

    :pswitch_1
    const-string v0, "cond_"

    return-object v0

    :pswitch_2
    const-string v0, "goto_"

    return-object v0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getLabel()Lorg/jf/baksmali/Adaptors/LabelMethodItem;
    .registers 2

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/OffsetInstructionFormatMethodItem;->label:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    return-object v0
.end method

.method protected writeTargetLabel(Lorg/jf/util/IndentingWriter;)V
    .registers 3

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/OffsetInstructionFormatMethodItem;->label:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    invoke-virtual {v0, p1}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->writeTo(Lorg/jf/util/IndentingWriter;)Z

    return-void
.end method
