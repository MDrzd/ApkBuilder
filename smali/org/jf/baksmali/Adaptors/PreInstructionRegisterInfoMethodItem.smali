.class public Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;
.super Lorg/jf/baksmali/Adaptors/MethodItem;


# instance fields
.field private final analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final methodAnalyzer:Lorg/jf/dexlib2/analysis/MethodAnalyzer;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final registerFormatter:Lorg/jf/baksmali/Adaptors/RegisterFormatter;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final registerInfo:I


# direct methods
.method public constructor <init>(ILorg/jf/dexlib2/analysis/MethodAnalyzer;Lorg/jf/baksmali/Adaptors/RegisterFormatter;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;I)V
    .registers 6
    .param p2    # Lorg/jf/dexlib2/analysis/MethodAnalyzer;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/baksmali/Adaptors/RegisterFormatter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p5}, Lorg/jf/baksmali/Adaptors/MethodItem;-><init>(I)V

    iput p1, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->registerInfo:I

    iput-object p2, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->methodAnalyzer:Lorg/jf/dexlib2/analysis/MethodAnalyzer;

    iput-object p3, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->registerFormatter:Lorg/jf/baksmali/Adaptors/RegisterFormatter;

    iput-object p4, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    return-void
.end method

.method private addArgsRegs(Ljava/util/BitSet;)V
    .registers 5

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v0

    instance-of v0, v0, Lorg/jf/dexlib2/iface/instruction/RegisterRangeInstruction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/RegisterRangeInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/RegisterRangeInstruction;->getStartRegister()I

    move-result v1

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/RegisterRangeInstruction;->getStartRegister()I

    move-result v2

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/RegisterRangeInstruction;->getRegisterCount()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/util/BitSet;->set(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v0

    instance-of v0, v0, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterCount()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterG()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    :pswitch_1
    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterF()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    :pswitch_2
    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterE()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    :pswitch_3
    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterD()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    :pswitch_4
    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterC()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v0

    instance-of v0, v0, Lorg/jf/dexlib2/iface/instruction/ThreeRegisterInstruction;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/ThreeRegisterInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterA()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v0

    instance-of v0, v0, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v0

    instance-of v0, v0, Lorg/jf/dexlib2/iface/instruction/OneRegisterInstruction;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addMergeRegs(Ljava/util/BitSet;I)V
    .registers 8

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPredecessorCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v2}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPredecessors()Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    iget-object v4, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v4, v3, v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPredecessorRegisterType(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v3

    iget-byte v4, v3, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Lorg/jf/dexlib2/analysis/RegisterType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private addParamRegs(Ljava/util/BitSet;I)V
    .registers 4

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->methodAnalyzer:Lorg/jf/dexlib2/analysis/MethodAnalyzer;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getParamRegisterCount()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p1, v0, p2}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method private writeFullMerge(Lorg/jf/util/IndentingWriter;I)V
    .registers 8

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->registerFormatter:Lorg/jf/baksmali/Adaptors/RegisterFormatter;

    invoke-virtual {v0, p1, p2}, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->writeTo(Lorg/jf/util/IndentingWriter;I)V

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v0, p2}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/analysis/RegisterType;->writeTo(Ljava/io/Writer;)V

    const-string v0, ":merge{"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPredecessors()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    iget-object v3, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v3, v2, p2}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPredecessorRegisterType(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v3

    if-nez v1, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(I)V

    :cond_0
    invoke-virtual {v2}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstructionIndex()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    const-string v1, "Start:"

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "0x"

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->methodAnalyzer:Lorg/jf/dexlib2/analysis/MethodAnalyzer;

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getInstructionAddress(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lorg/jf/util/IndentingWriter;->printUnsignedLongAsHex(J)V

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(I)V

    :goto_1
    invoke-virtual {v3, p1}, Lorg/jf/dexlib2/analysis/RegisterType;->writeTo(Ljava/io/Writer;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 p2, 0x7d

    invoke-virtual {p1, p2}, Lorg/jf/util/IndentingWriter;->write(I)V

    return-void
.end method

.method private writeRegisterInfo(Lorg/jf/util/IndentingWriter;Ljava/util/BitSet;Ljava/util/BitSet;)Z
    .registers 12

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-gez v1, :cond_0

    return v0

    :cond_0
    const/16 v2, 0x23

    invoke-virtual {p1, v2}, Lorg/jf/util/IndentingWriter;->write(I)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    if-ltz v1, :cond_5

    if-eqz p3, :cond_1

    invoke-virtual {p3, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0xa

    if-eqz v6, :cond_3

    if-nez v4, :cond_2

    invoke-virtual {p1, v7}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p1, v2}, Lorg/jf/util/IndentingWriter;->write(I)V

    :cond_2
    invoke-direct {p0, p1, v1}, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->writeFullMerge(Lorg/jf/util/IndentingWriter;I)V

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {p1, v7}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {p1, v2}, Lorg/jf/util/IndentingWriter;->write(I)V

    const/4 v5, 0x0

    :cond_4
    iget-object v4, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v4, v1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v4

    iget-object v6, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->registerFormatter:Lorg/jf/baksmali/Adaptors/RegisterFormatter;

    invoke-virtual {v6, p1, v1}, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->writeTo(Lorg/jf/util/IndentingWriter;I)V

    const/16 v6, 0x3d

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {v4, p1}, Lorg/jf/dexlib2/analysis/RegisterType;->writeTo(Ljava/io/Writer;)V

    const/16 v4, 0x3b

    invoke-virtual {p1, v4}, Lorg/jf/util/IndentingWriter;->write(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    return v3
.end method


# virtual methods
.method public getSortOrder()D
    .registers 3

    const-wide v0, 0x4058f9999999999aL    # 99.9

    return-wide v0
.end method

.method public writeTo(Lorg/jf/util/IndentingWriter;)Z
    .registers 7

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getRegisterCount()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iget v2, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->registerInfo:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v3, v0}, Ljava/util/BitSet;->set(II)V

    goto :goto_1

    :cond_0
    iget v2, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->registerInfo:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->registerInfo:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->addArgsRegs(Ljava/util/BitSet;)V

    :cond_2
    iget v2, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->registerInfo:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v2}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->isBeginningInstruction()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1, v0}, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->addParamRegs(Ljava/util/BitSet;I)V

    :cond_3
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v0}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {p0, v2, v0}, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->addMergeRegs(Ljava/util/BitSet;I)V

    goto :goto_2

    :cond_4
    iget v2, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->registerInfo:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v2}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->isBeginningInstruction()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v1, v0}, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->addParamRegs(Ljava/util/BitSet;I)V

    :cond_5
    :goto_1
    move-object v2, v4

    :goto_2
    iget v3, p0, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->registerInfo:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_7

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v0}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {p0, v2, v0}, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->addMergeRegs(Ljava/util/BitSet;I)V

    :cond_6
    move-object v4, v2

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    goto :goto_3

    :cond_8
    move-object v4, v2

    :goto_3
    invoke-direct {p0, p1, v1, v4}, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;->writeRegisterInfo(Lorg/jf/util/IndentingWriter;Ljava/util/BitSet;Ljava/util/BitSet;)Z

    move-result p1

    return p1
.end method
