.class public Lorg/jf/baksmali/Adaptors/PostInstructionRegisterInfoMethodItem;
.super Lorg/jf/baksmali/Adaptors/MethodItem;


# instance fields
.field private final analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final registerFormatter:Lorg/jf/baksmali/Adaptors/RegisterFormatter;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/baksmali/Adaptors/RegisterFormatter;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;I)V
    .registers 4
    .param p1    # Lorg/jf/baksmali/Adaptors/RegisterFormatter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p3}, Lorg/jf/baksmali/Adaptors/MethodItem;-><init>(I)V

    iput-object p1, p0, Lorg/jf/baksmali/Adaptors/PostInstructionRegisterInfoMethodItem;->registerFormatter:Lorg/jf/baksmali/Adaptors/RegisterFormatter;

    iput-object p2, p0, Lorg/jf/baksmali/Adaptors/PostInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    return-void
.end method

.method private addDestRegs(Ljava/util/BitSet;I)V
    .registers 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/PostInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/PostInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v2, v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPostInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/analysis/RegisterType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeRegisterInfo(Lorg/jf/util/IndentingWriter;Ljava/util/BitSet;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-gez v1, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/PostInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPostInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/PostInstructionRegisterInfoMethodItem;->registerFormatter:Lorg/jf/baksmali/Adaptors/RegisterFormatter;

    invoke-virtual {v2, p1, v1}, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->writeTo(Lorg/jf/util/IndentingWriter;I)V

    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/analysis/RegisterType;->writeTo(Ljava/io/Writer;)V

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getSortOrder()D
    .registers 3

    const-wide v0, 0x4059066666666666L    # 100.1

    return-wide v0
.end method

.method public writeTo(Lorg/jf/util/IndentingWriter;)Z
    .registers 7

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/PostInstructionRegisterInfoMethodItem;->registerFormatter:Lorg/jf/baksmali/Adaptors/RegisterFormatter;

    iget-object v0, v0, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget v0, v0, Lorg/jf/baksmali/BaksmaliOptions;->registerInfo:I

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/PostInstructionRegisterInfoMethodItem;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getRegisterCount()I

    move-result v1

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v4, v1}, Ljava/util/BitSet;->set(II)V

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    invoke-direct {p0, v2, v1}, Lorg/jf/baksmali/Adaptors/PostInstructionRegisterInfoMethodItem;->addDestRegs(Ljava/util/BitSet;I)V

    :cond_2
    :goto_1
    invoke-direct {p0, p1, v2}, Lorg/jf/baksmali/Adaptors/PostInstructionRegisterInfoMethodItem;->writeRegisterInfo(Lorg/jf/util/IndentingWriter;Ljava/util/BitSet;)Z

    move-result p1

    return p1
.end method
