.class public Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;
.super Lorg/jf/baksmali/Adaptors/MethodItem;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final methodDef:Lorg/jf/baksmali/Adaptors/MethodDefinition;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/iface/instruction/Instruction;)V
    .registers 4
    .param p1    # Lorg/jf/baksmali/Adaptors/MethodDefinition;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/iface/instruction/Instruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lorg/jf/baksmali/Adaptors/MethodItem;-><init>(I)V

    iput-object p1, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->methodDef:Lorg/jf/baksmali/Adaptors/MethodDefinition;

    iput-object p3, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    return-void
.end method

.method private isAllowedOdex(Lorg/jf/dexlib2/Opcode;)Z
    .registers 6
    .param p1    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->methodDef:Lorg/jf/baksmali/Adaptors/MethodDefinition;

    iget-object v0, v0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v0, v0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-boolean v0, v0, Lorg/jf/baksmali/BaksmaliOptions;->allowOdex:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->methodDef:Lorg/jf/baksmali/Adaptors/MethodDefinition;

    iget-object v0, v0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v0, v0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget v0, v0, Lorg/jf/baksmali/BaksmaliOptions;->apiLevel:I

    const/16 v2, 0xe

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Lorg/jf/dexlib2/Opcode;->isVolatileFieldAccessor()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/jf/dexlib2/Opcode;->THROW_VERIFICATION_ERROR:Lorg/jf/dexlib2/Opcode;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v1
.end method

.method private writeInvalidItemIndex(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;ILorg/jf/util/IndentingWriter;)Ljava/lang/String;
    .registers 6

    const-string v0, "#"

    invoke-virtual {p3, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {p3, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const-string p3, "%s@%d"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Lorg/jf/dexlib2/ReferenceType;->toString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;->getInvalidIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getSortOrder()D
    .registers 3

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    return-wide v0
.end method

.method protected writeCommentIfLikelyDouble(Lorg/jf/util/IndentingWriter;)V
    .registers 4

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/WideLiteralInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/WideLiteralInstruction;->getWideLiteral()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeCommentIfLikelyDouble(Lorg/jf/util/IndentingWriter;J)V

    return-void
.end method

.method protected writeCommentIfLikelyDouble(Lorg/jf/util/IndentingWriter;J)V
    .registers 7

    invoke-static {p2, p3}, Lorg/jf/util/NumberUtils;->isLikelyDouble(J)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "    # "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    const-string p2, "Double.POSITIVE_INFINITY"

    :goto_0
    invoke-virtual {p1, p2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, p2, v0

    if-nez v2, :cond_1

    const-string p2, "Double.NEGATIVE_INFINITY"

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v2, p2, v0

    if-nez v2, :cond_2

    const-string p2, "Double.NaN"

    goto :goto_0

    :cond_2
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v2, p2, v0

    if-nez v2, :cond_3

    const-string p2, "Double.MAX_VALUE"

    goto :goto_0

    :cond_3
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    cmpl-double v2, p2, v0

    if-nez v2, :cond_4

    const-string p2, "Math.PI"

    goto :goto_0

    :cond_4
    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    cmpl-double v2, p2, v0

    if-nez v2, :cond_5

    const-string p2, "Math.E"

    goto :goto_0

    :cond_5
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method protected writeCommentIfLikelyFloat(Lorg/jf/util/IndentingWriter;)V
    .registers 3

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/NarrowLiteralInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/NarrowLiteralInstruction;->getNarrowLiteral()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeCommentIfLikelyFloat(Lorg/jf/util/IndentingWriter;I)V

    return-void
.end method

.method protected writeCommentIfLikelyFloat(Lorg/jf/util/IndentingWriter;I)V
    .registers 4

    invoke-static {p2}, Lorg/jf/util/NumberUtils;->isLikelyFloat(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "    # "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    const-string p2, "Float.POSITIVE_INFINITY"

    :goto_0
    invoke-virtual {p1, p2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    const-string p2, "Float.NEGATIVE_INFINITY"

    goto :goto_0

    :cond_1
    const/high16 v0, 0x7fc00000    # Float.NaN

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    const-string p2, "Float.NaN"

    goto :goto_0

    :cond_2
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, p2, v0

    if-nez v0, :cond_3

    const-string p2, "Float.MAX_VALUE"

    goto :goto_0

    :cond_3
    const v0, 0x40490fdb    # (float)Math.PI

    cmpl-float v0, p2, v0

    if-nez v0, :cond_4

    const-string p2, "(float)Math.PI"

    goto :goto_0

    :cond_4
    const v0, 0x402df854    # (float)Math.E

    cmpl-float v0, p2, v0

    if-nez v0, :cond_5

    const-string p2, "(float)Math.E"

    goto :goto_0

    :cond_5
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/16 p2, 0x66

    invoke-virtual {p1, p2}, Lorg/jf/util/IndentingWriter;->write(I)V

    :cond_6
    return-void
.end method

.method protected writeCommentIfResourceId(Lorg/jf/util/IndentingWriter;)Z
    .registers 3

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/NarrowLiteralInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/NarrowLiteralInstruction;->getNarrowLiteral()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeCommentIfResourceId(Lorg/jf/util/IndentingWriter;I)Z

    move-result p1

    return p1
.end method

.method protected writeCommentIfResourceId(Lorg/jf/util/IndentingWriter;I)Z
    .registers 4

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->methodDef:Lorg/jf/baksmali/Adaptors/MethodDefinition;

    iget-object v0, v0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v0, v0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-object v0, v0, Lorg/jf/baksmali/BaksmaliOptions;->resourceIds:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string v0, "    # "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected writeFieldOffset(Lorg/jf/util/IndentingWriter;)V
    .registers 4

    const-string v0, "field@0x"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/FieldOffsetInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FieldOffsetInstruction;->getFieldOffset()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/jf/util/IndentingWriter;->printUnsignedLongAsHex(J)V

    return-void
.end method

.method protected writeFirstRegister(Lorg/jf/util/IndentingWriter;)V
    .registers 3

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeRegister(Lorg/jf/util/IndentingWriter;I)V

    return-void
.end method

.method protected writeInlineIndex(Lorg/jf/util/IndentingWriter;)V
    .registers 3

    const-string v0, "inline@"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/InlineIndexInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/InlineIndexInstruction;->getInlineIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->printSignedIntAsDec(I)V

    return-void
.end method

.method protected writeInvokeRangeRegisters(Lorg/jf/util/IndentingWriter;)V
    .registers 5

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/RegisterRangeInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/RegisterRangeInstruction;->getRegisterCount()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "{}"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/RegisterRangeInstruction;->getStartRegister()I

    move-result v0

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->methodDef:Lorg/jf/baksmali/Adaptors/MethodDefinition;

    iget-object v2, v2, Lorg/jf/baksmali/Adaptors/MethodDefinition;->registerFormatter:Lorg/jf/baksmali/Adaptors/RegisterFormatter;

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, p1, v0, v1}, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->writeRegisterRange(Lorg/jf/util/IndentingWriter;II)V

    return-void
.end method

.method protected writeInvokeRegisters(Lorg/jf/util/IndentingWriter;)V
    .registers 5

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterCount()I

    move-result v1

    const/16 v2, 0x7b

    invoke-virtual {p1, v2}, Lorg/jf/util/IndentingWriter;->write(I)V

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterC()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeRegister(Lorg/jf/util/IndentingWriter;I)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterD()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeRegister(Lorg/jf/util/IndentingWriter;I)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterE()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeRegister(Lorg/jf/util/IndentingWriter;I)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterF()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeRegister(Lorg/jf/util/IndentingWriter;I)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterG()I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterC()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeRegister(Lorg/jf/util/IndentingWriter;I)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterD()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeRegister(Lorg/jf/util/IndentingWriter;I)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterE()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeRegister(Lorg/jf/util/IndentingWriter;I)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterF()I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterC()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeRegister(Lorg/jf/util/IndentingWriter;I)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterD()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeRegister(Lorg/jf/util/IndentingWriter;I)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterE()I

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterC()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeRegister(Lorg/jf/util/IndentingWriter;I)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterD()I

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterC()I

    move-result v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeRegister(Lorg/jf/util/IndentingWriter;I)V

    :goto_1
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected writeLiteral(Lorg/jf/util/IndentingWriter;)V
    .registers 4

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/WideLiteralInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/WideLiteralInstruction;->getWideLiteral()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/jf/baksmali/Renderers/LongRenderer;->writeSignedIntOrLongTo(Lorg/jf/util/IndentingWriter;J)V

    return-void
.end method

.method protected writeOpcode(Lorg/jf/util/IndentingWriter;)V
    .registers 3

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v0

    iget-object v0, v0, Lorg/jf/dexlib2/Opcode;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected writeRegister(Lorg/jf/util/IndentingWriter;I)V
    .registers 4

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->methodDef:Lorg/jf/baksmali/Adaptors/MethodDefinition;

    iget-object v0, v0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->registerFormatter:Lorg/jf/baksmali/Adaptors/RegisterFormatter;

    invoke-virtual {v0, p1, p2}, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->writeTo(Lorg/jf/util/IndentingWriter;I)V

    return-void
.end method

.method protected writeSecondRegister(Lorg/jf/util/IndentingWriter;)V
    .registers 3

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeRegister(Lorg/jf/util/IndentingWriter;I)V

    return-void
.end method

.method protected writeTargetLabel(Lorg/jf/util/IndentingWriter;)V
    .registers 2

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method protected writeThirdRegister(Lorg/jf/util/IndentingWriter;)V
    .registers 3

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/ThreeRegisterInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeRegister(Lorg/jf/util/IndentingWriter;I)V

    return-void
.end method

.method public writeTo(Lorg/jf/util/IndentingWriter;)Z
    .registers 13

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    instance-of v1, v1, Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;->getVerificationError()I

    move-result v1

    invoke-static {v1}, Lorg/jf/dexlib2/VerificationError;->getVerificationErrorName(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "#was invalid verification error type: "

    invoke-virtual {p1, v3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->printSignedIntAsDec(I)V

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const-string v1, "generic-error"

    goto :goto_0

    :cond_0
    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    instance-of v3, v3, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v3, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    iget-object v6, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->methodDef:Lorg/jf/baksmali/Adaptors/MethodDefinition;

    iget-object v6, v6, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v6, v6, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-boolean v6, v6, Lorg/jf/baksmali/BaksmaliOptions;->implicitReferences:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->methodDef:Lorg/jf/baksmali/Adaptors/MethodDefinition;

    iget-object v6, v6, Lorg/jf/baksmali/Adaptors/MethodDefinition;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v6}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    :try_start_0
    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/jf/dexlib2/util/ReferenceUtil;->getReferenceString(Lorg/jf/dexlib2/iface/reference/Reference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jf/dexlib2/ReferenceType$InvalidReferenceTypeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_3

    :catch_0
    move-exception v3

    const-string v7, "#invalid reference type: "

    invoke-virtual {p1, v7}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/jf/dexlib2/ReferenceType$InvalidReferenceTypeException;->getReferenceType()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/jf/util/IndentingWriter;->printSignedIntAsDec(I)V

    const-string v3, "invalid_reference"

    goto :goto_2

    :catch_1
    move-exception v7

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReferenceType()I

    move-result v3

    invoke-direct {p0, v7, v3, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeInvalidItemIndex(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;ILorg/jf/util/IndentingWriter;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v7, v3

    const/4 v3, 0x1

    :goto_3
    iget-object v8, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    instance-of v8, v8, Lorg/jf/dexlib2/iface/instruction/DualReferenceInstruction;

    if-eqz v8, :cond_4

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v2, Lorg/jf/dexlib2/iface/instruction/DualReferenceInstruction;

    :try_start_1
    invoke-interface {v2}, Lorg/jf/dexlib2/iface/instruction/DualReferenceInstruction;->getReference2()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v8

    invoke-static {v8, v6}, Lorg/jf/dexlib2/util/ReferenceUtil;->getReferenceString(Lorg/jf/dexlib2/iface/reference/Reference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/jf/dexlib2/ReferenceType$InvalidReferenceTypeException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v6

    goto :goto_5

    :catch_2
    move-exception v2

    const-string v3, "#invalid reference type: "

    invoke-virtual {p1, v3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/jf/dexlib2/ReferenceType$InvalidReferenceTypeException;->getReferenceType()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jf/util/IndentingWriter;->printSignedIntAsDec(I)V

    const-string v2, "invalid_reference"

    goto :goto_4

    :catch_3
    move-exception v3

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/instruction/DualReferenceInstruction;->getReferenceType2()I

    move-result v2

    invoke-direct {p0, v3, v2, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeInvalidItemIndex(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;ILorg/jf/util/IndentingWriter;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    const/4 v3, 0x1

    goto :goto_5

    :cond_3
    move-object v7, v2

    const/4 v3, 0x0

    :cond_4
    :goto_5
    iget-object v6, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    instance-of v6, v6, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;

    if-eqz v6, :cond_6

    sget-object v6, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem$1;->$SwitchMap$org$jf$dexlib2$Opcode:[I

    iget-object v8, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v8}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jf/dexlib2/Opcode;->ordinal()I

    move-result v8

    aget v6, v6, v8

    const/4 v8, -0x1

    packed-switch v6, :pswitch_data_0

    new-instance p1, Lorg/jf/util/ExceptionWithContext;

    new-array v0, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Invalid 31t opcode: %s"

    invoke-direct {p1, v1, v0}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    :try_start_2
    iget-object v6, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->methodDef:Lorg/jf/baksmali/Adaptors/MethodDefinition;

    iget v8, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->codeAddress:I

    iget-object v9, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v9, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;

    invoke-interface {v9}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;->getCodeOffset()I

    move-result v9

    add-int/2addr v8, v9

    sget-object v9, Lorg/jf/dexlib2/Opcode;->ARRAY_PAYLOAD:Lorg/jf/dexlib2/Opcode;

    invoke-virtual {v6, v8, v9}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->findPayloadOffset(ILorg/jf/dexlib2/Opcode;)I
    :try_end_2
    .catch Lorg/jf/baksmali/Adaptors/MethodDefinition$InvalidSwitchPayload; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_7

    :pswitch_1
    iget-object v6, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->methodDef:Lorg/jf/baksmali/Adaptors/MethodDefinition;

    iget v9, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->codeAddress:I

    iget-object v10, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v10, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;

    invoke-interface {v10}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;->getCodeOffset()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6, v9}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->getSparseSwitchBaseAddress(I)I

    move-result v6

    if-ne v6, v8, :cond_5

    goto :goto_6

    :pswitch_2
    iget-object v6, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->methodDef:Lorg/jf/baksmali/Adaptors/MethodDefinition;

    iget v9, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->codeAddress:I

    iget-object v10, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v10, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;

    invoke-interface {v10}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;->getCodeOffset()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6, v9}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->getPackedSwitchBaseAddress(I)I

    move-result v6

    if-ne v6, v8, :cond_5

    :catch_4
    :goto_6
    const/4 v6, 0x0

    goto :goto_8

    :cond_5
    :goto_7
    const/4 v6, 0x1

    :goto_8
    if-nez v6, :cond_6

    const-string v3, "#invalid payload reference\n"

    invoke-virtual {p1, v3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_6
    invoke-virtual {v0}, Lorg/jf/dexlib2/Opcode;->odexOnly()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-direct {p0, v0}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->isAllowedOdex(Lorg/jf/dexlib2/Opcode;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "#disallowed odex opcode\n"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_7
    if-eqz v3, :cond_8

    const-string v0, "#"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    :cond_8
    sget-object v0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem$1;->$SwitchMap$org$jf$dexlib2$Format:[I

    iget-object v6, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v6}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v6

    iget-object v6, v6, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    invoke-virtual {v6}, Lorg/jf/dexlib2/Format;->ordinal()I

    move-result v6

    aget v0, v0, v6

    const/16 v6, 0x20

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_11

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeInvokeRangeRegisters(Lorg/jf/util/IndentingWriter;)V

    goto :goto_9

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeInvokeRegisters(Lorg/jf/util/IndentingWriter;)V

    :goto_9
    const-string v0, ", "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeInvokeRangeRegisters(Lorg/jf/util/IndentingWriter;)V

    goto :goto_a

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeInvokeRangeRegisters(Lorg/jf/util/IndentingWriter;)V

    goto :goto_b

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeInvokeRangeRegisters(Lorg/jf/util/IndentingWriter;)V

    goto/16 :goto_d

    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeInvokeRegisters(Lorg/jf/util/IndentingWriter;)V

    :goto_a
    const-string v0, ", "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeVtableIndex(Lorg/jf/util/IndentingWriter;)V

    goto/16 :goto_10

    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeInvokeRegisters(Lorg/jf/util/IndentingWriter;)V

    :goto_b
    const-string v0, ", "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeInlineIndex(Lorg/jf/util/IndentingWriter;)V

    goto/16 :goto_10

    :pswitch_a
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeInvokeRegisters(Lorg/jf/util/IndentingWriter;)V

    goto/16 :goto_d

    :pswitch_b
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeFirstRegister(Lorg/jf/util/IndentingWriter;)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeSecondRegister(Lorg/jf/util/IndentingWriter;)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeThirdRegister(Lorg/jf/util/IndentingWriter;)V

    goto/16 :goto_10

    :pswitch_c
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeFirstRegister(Lorg/jf/util/IndentingWriter;)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeSecondRegister(Lorg/jf/util/IndentingWriter;)V

    goto :goto_c

    :pswitch_d
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeFirstRegister(Lorg/jf/util/IndentingWriter;)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeSecondRegister(Lorg/jf/util/IndentingWriter;)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeFieldOffset(Lorg/jf/util/IndentingWriter;)V

    goto/16 :goto_10

    :pswitch_e
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeFirstRegister(Lorg/jf/util/IndentingWriter;)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeSecondRegister(Lorg/jf/util/IndentingWriter;)V

    goto :goto_d

    :pswitch_f
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeFirstRegister(Lorg/jf/util/IndentingWriter;)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeSecondRegister(Lorg/jf/util/IndentingWriter;)V

    goto/16 :goto_e

    :pswitch_10
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeFirstRegister(Lorg/jf/util/IndentingWriter;)V

    :goto_c
    const-string v0, ", "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_f

    :pswitch_11
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeFirstRegister(Lorg/jf/util/IndentingWriter;)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeLiteral(Lorg/jf/util/IndentingWriter;)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jf/dexlib2/Opcode;->setsWideRegister()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeCommentIfLikelyDouble(Lorg/jf/util/IndentingWriter;)V

    goto/16 :goto_10

    :cond_9
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeCommentIfResourceId(Lorg/jf/util/IndentingWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeCommentIfLikelyFloat(Lorg/jf/util/IndentingWriter;)V

    goto/16 :goto_10

    :pswitch_12
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeFirstRegister(Lorg/jf/util/IndentingWriter;)V

    goto :goto_d

    :pswitch_13
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    :goto_d
    const-string v0, ", "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    goto :goto_10

    :pswitch_14
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeFirstRegister(Lorg/jf/util/IndentingWriter;)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeSecondRegister(Lorg/jf/util/IndentingWriter;)V

    goto :goto_10

    :pswitch_15
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeFirstRegister(Lorg/jf/util/IndentingWriter;)V

    goto :goto_10

    :pswitch_16
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeFirstRegister(Lorg/jf/util/IndentingWriter;)V

    :goto_e
    const-string v0, ", "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeLiteral(Lorg/jf/util/IndentingWriter;)V

    goto :goto_10

    :pswitch_17
    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    instance-of v0, v0, Lorg/jf/dexlib2/iface/instruction/formats/UnknownInstruction;

    if-eqz v0, :cond_a

    const-string v0, "#unknown opcode: 0x"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/formats/UnknownInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/UnknownInstruction;->getOriginalOpcode()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/jf/util/IndentingWriter;->printUnsignedLongAsHex(J)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    :cond_a
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    goto :goto_10

    :pswitch_18
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeOpcode(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    :goto_f
    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->writeTargetLabel(Lorg/jf/util/IndentingWriter;)V

    :cond_b
    :goto_10
    if-eqz v3, :cond_c

    const-string v0, "\nnop"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    :cond_c
    return v5

    :goto_11
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_18
        :pswitch_18
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_14
        :pswitch_14
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected writeVtableIndex(Lorg/jf/util/IndentingWriter;)V
    .registers 3

    const-string v0, "vtable@"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/VtableIndexInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/VtableIndexInstruction;->getVtableIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->printSignedIntAsDec(I)V

    return-void
.end method
