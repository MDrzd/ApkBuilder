.class public Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final instructionIndex:I

.field protected final methodAnalyzer:Lorg/jf/dexlib2/analysis/MethodAnalyzer;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final originalInstruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

.field protected final postRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final preRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected predecessorRegisterOverrides:Ljava/util/Map;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final predecessors:Ljava/util/TreeSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final successors:Ljava/util/LinkedList;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lorg/jf/dexlib2/analysis/MethodAnalyzer;Lorg/jf/dexlib2/iface/instruction/Instruction;II)V
    .registers 6
    .param p1    # Lorg/jf/dexlib2/analysis/MethodAnalyzer;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/iface/instruction/Instruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->successors:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->predecessorRegisterOverrides:Ljava/util/Map;

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->methodAnalyzer:Lorg/jf/dexlib2/analysis/MethodAnalyzer;

    iput-object p2, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    iput-object p2, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->originalInstruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    iput p3, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    new-array p1, p4, [Lorg/jf/dexlib2/analysis/RegisterType;

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    new-array p1, p4, [Lorg/jf/dexlib2/analysis/RegisterType;

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    const/4 p1, 0x0

    invoke-static {p1, v0}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(BLorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object p2

    :goto_0
    if-ge p1, p4, :cond_0

    iget-object p3, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    aput-object p2, p3, p1

    iget-object p3, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    aput-object p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected addPredecessor(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Z
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected addSuccessor(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->successors:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->compareTo(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)I
    .registers 4
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    iget v1, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    iget p1, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getDestinationRegister()I
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jf/dexlib2/Opcode;->setsRegister()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot call getDestinationRegister() for an instruction that doesn\'t store a value"

    invoke-direct {v0, v2, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    return-object v0
.end method

.method public getInstructionIndex()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    return v0
.end method

.method protected getMergedPreRegisterTypeFromPredecessors(I)Lorg/jf/dexlib2/analysis/RegisterType;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {p0, v2, p1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPredecessorRegisterType(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Lorg/jf/dexlib2/analysis/RegisterType;->merge(Lorg/jf/dexlib2/analysis/RegisterType;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getOriginalInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->originalInstruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    return-object v0
.end method

.method public getPostInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPredecessorCount()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method

.method public getPredecessorRegisterType(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;I)Lorg/jf/dexlib2/analysis/RegisterType;
    .registers 5
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->predecessorRegisterOverrides:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->predecessorRegisterOverrides:Ljava/util/Map;

    new-instance v1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;

    invoke-direct {v1, p1, p2}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;-><init>(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/analysis/RegisterType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    aget-object p1, p1, p2

    return-object p1
.end method

.method public getPredecessors()Ljava/util/SortedSet;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getRegisterCount()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    array-length v0, v0

    return v0
.end method

.method public getSetRegisters()Ljava/util/List;
    .registers 11

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jf/dexlib2/Opcode;->setsRegister()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getDestinationRegister()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jf/dexlib2/Opcode;->setsWideRegister()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getDestinationRegister()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->isInvokeInit()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    instance-of v1, v1, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterC()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/RegisterRangeInstruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/RegisterRangeInstruction;->getStartRegister()I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v3

    iget-byte v4, v3, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    const/4 v5, 0x0

    const/16 v6, 0x11

    const/16 v7, 0x10

    if-eq v4, v7, :cond_6

    iget-byte v4, v3, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    if-ne v4, v6, :cond_3

    goto :goto_2

    :cond_3
    iget-byte v1, v3, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    if-nez v1, :cond_a

    :goto_1
    iget-object v1, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    array-length v1, v1

    if-ge v5, v1, :cond_a

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    aget-object v1, v1, v5

    iget-byte v3, v1, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    if-eq v3, v7, :cond_4

    iget-byte v1, v1, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    if-ne v1, v6, :cond_5

    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    aget-object v3, v3, v1

    :goto_3
    iget-object v4, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    array-length v4, v4

    if-ge v5, v4, :cond_a

    if-eq v5, v1, :cond_9

    iget-object v4, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    aget-object v4, v4, v5

    invoke-virtual {v4, v3}, Lorg/jf/dexlib2/analysis/RegisterType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    iget-byte v8, v4, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    if-eq v8, v7, :cond_8

    iget-byte v4, v4, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    if-ne v4, v6, :cond_9

    :cond_8
    iget-object v4, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    aget-object v4, v4, v5

    iget-byte v4, v4, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    if-nez v4, :cond_9

    goto :goto_4

    :cond_9
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    iget v1, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    if-lez v1, :cond_14

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->methodAnalyzer:Lorg/jf/dexlib2/analysis/MethodAnalyzer;

    invoke-virtual {v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getClassPath()Lorg/jf/dexlib2/analysis/ClassPath;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jf/dexlib2/analysis/ClassPath;->isArt()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPredecessorCount()I

    move-result v1

    if-ne v1, v2, :cond_14

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    sget-object v3, Lorg/jf/dexlib2/Opcode;->IF_EQZ:Lorg/jf/dexlib2/Opcode;

    if-eq v1, v3, :cond_b

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    sget-object v3, Lorg/jf/dexlib2/Opcode;->IF_NEZ:Lorg/jf/dexlib2/Opcode;

    if-ne v1, v3, :cond_14

    :cond_b
    iget-object v1, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    iget-object v3, v1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v3

    sget-object v4, Lorg/jf/dexlib2/Opcode;->INSTANCE_OF:Lorg/jf/dexlib2/Opcode;

    if-ne v3, v4, :cond_14

    iget-object v3, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->methodAnalyzer:Lorg/jf/dexlib2/analysis/MethodAnalyzer;

    invoke-virtual {v3}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getClassPath()Lorg/jf/dexlib2/analysis/ClassPath;

    move-result-object v3

    invoke-static {v1, p0, v3}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->canPropagateTypeAfterInstanceOf(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/ClassPath;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, v1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterB()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    if-le v4, v2, :cond_14

    const/4 v2, 0x0

    iget-object v1, v1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, -0x1

    const/4 v5, -0x1

    :cond_c
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    iget-object v7, v6, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v7}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v7

    sget-object v8, Lorg/jf/dexlib2/Opcode;->MOVE_OBJECT:Lorg/jf/dexlib2/Opcode;

    if-eq v7, v8, :cond_d

    sget-object v8, Lorg/jf/dexlib2/Opcode;->MOVE_OBJECT_16:Lorg/jf/dexlib2/Opcode;

    if-eq v7, v8, :cond_d

    sget-object v8, Lorg/jf/dexlib2/Opcode;->MOVE_OBJECT_FROM16:Lorg/jf/dexlib2/Opcode;

    if-ne v7, v8, :cond_e

    :cond_d
    iget-object v7, v6, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v7, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;

    invoke-interface {v7}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v8

    invoke-virtual {v6, v8}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPostInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v6

    invoke-interface {v7}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v8

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterB()I

    move-result v9

    if-eq v8, v9, :cond_f

    :cond_e
    :goto_7
    const/4 v5, -0x1

    goto :goto_8

    :cond_f
    iget-object v8, v6, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    if-nez v8, :cond_10

    goto :goto_7

    :cond_10
    if-nez v2, :cond_11

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->methodAnalyzer:Lorg/jf/dexlib2/analysis/MethodAnalyzer;

    invoke-virtual {v2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getClassPath()Lorg/jf/dexlib2/analysis/ClassPath;

    move-result-object v2

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v8

    check-cast v8, Lorg/jf/dexlib2/iface/reference/TypeReference;

    invoke-static {v2, v8}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(Lorg/jf/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v2

    :cond_11
    invoke-static {v6, v2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->isNotWideningConversion(Lorg/jf/dexlib2/analysis/RegisterType;Lorg/jf/dexlib2/analysis/RegisterType;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eq v5, v4, :cond_12

    invoke-interface {v7}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v6

    if-eq v5, v6, :cond_c

    goto :goto_7

    :cond_12
    invoke-interface {v7}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v5

    goto :goto_6

    :cond_13
    :goto_8
    if-eq v5, v4, :cond_14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    return-object v0
.end method

.method public getSuccessors()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->successors:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isBeginningInstruction()Z
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    iget v0, v0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isInvokeInit()Z
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jf/dexlib2/Opcode;->canInitializeReference()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v0

    instance-of v2, v0, Lorg/jf/dexlib2/iface/reference/MethodReference;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/jf/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method protected mergeRegister(ILorg/jf/dexlib2/analysis/RegisterType;Ljava/util/BitSet;Z)Z
    .registers 6

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    aget-object v0, v0, p1

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getMergedPreRegisterTypeFromPredecessors(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lorg/jf/dexlib2/analysis/RegisterType;->merge(Lorg/jf/dexlib2/analysis/RegisterType;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object p2

    :goto_0
    invoke-virtual {p2, v0}, Lorg/jf/dexlib2/analysis/RegisterType;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    return v0

    :cond_1
    iget-object p4, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    aput-object p2, p4, p1

    iget p4, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    invoke-virtual {p3, p4}, Ljava/util/BitSet;->clear(I)V

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->setsRegister(I)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    aput-object p2, p3, p1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method protected overridePredecessorRegisterType(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;Ljava/util/BitSet;)Z
    .registers 7
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->predecessorRegisterOverrides:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->predecessorRegisterOverrides:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->predecessorRegisterOverrides:Ljava/util/Map;

    new-instance v1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;

    invoke-direct {v1, p1, p2}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;-><init>(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;I)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getMergedPreRegisterTypeFromPredecessors(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object p1

    iget-object p3, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    aget-object p3, p3, p2

    invoke-virtual {p3, p1}, Lorg/jf/dexlib2/analysis/RegisterType;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    return v0

    :cond_1
    iget-object p3, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->preRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    aput-object p1, p3, p2

    iget p3, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    invoke-virtual {p4, p3}, Ljava/util/BitSet;->clear(I)V

    invoke-virtual {p0, p2}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->setsRegister(I)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    aget-object p3, p3, p2

    invoke-virtual {p3, p1}, Lorg/jf/dexlib2/analysis/RegisterType;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    aput-object p1, p3, p2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method protected restoreOdexedInstruction()V
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->originalInstruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    iput-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    return-void
.end method

.method protected setDeodexedInstruction(Lorg/jf/dexlib2/iface/instruction/Instruction;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    return-void
.end method

.method protected setPostRegisterType(ILorg/jf/dexlib2/analysis/RegisterType;)Z
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/jf/dexlib2/analysis/RegisterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    aput-object p2, v0, p1

    const/4 p1, 0x1

    return p1
.end method

.method public setsRegister(I)Z
    .registers 13

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->isInvokeInit()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    instance-of v0, v0, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterC()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/RegisterRangeInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/RegisterRangeInstruction;->getStartRegister()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v3

    iget-byte v4, v3, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    const/16 v5, 0x11

    const/16 v6, 0x10

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v4

    iget-byte v7, v4, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    if-eq v7, v6, :cond_1

    iget-byte v4, v4, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    if-ne v4, v5, :cond_2

    :cond_1
    return v2

    :cond_2
    iget-byte v4, v3, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    if-eq v4, v6, :cond_3

    iget-byte v4, v3, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    if-eq v4, v5, :cond_3

    return v1

    :cond_3
    if-ne p1, v0, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/jf/dexlib2/analysis/RegisterType;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    iget v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    if-lez v0, :cond_10

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->methodAnalyzer:Lorg/jf/dexlib2/analysis/MethodAnalyzer;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getClassPath()Lorg/jf/dexlib2/analysis/ClassPath;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/ClassPath;->isArt()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPredecessorCount()I

    move-result v0

    if-ne v0, v2, :cond_10

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v0

    sget-object v3, Lorg/jf/dexlib2/Opcode;->IF_EQZ:Lorg/jf/dexlib2/Opcode;

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v0

    sget-object v3, Lorg/jf/dexlib2/Opcode;->IF_NEZ:Lorg/jf/dexlib2/Opcode;

    if-ne v0, v3, :cond_10

    :cond_6
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    iget-object v3, v0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v3

    sget-object v4, Lorg/jf/dexlib2/Opcode;->INSTANCE_OF:Lorg/jf/dexlib2/Opcode;

    if-ne v3, v4, :cond_10

    iget-object v3, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->methodAnalyzer:Lorg/jf/dexlib2/analysis/MethodAnalyzer;

    invoke-virtual {v3}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getClassPath()Lorg/jf/dexlib2/analysis/ClassPath;

    move-result-object v3

    invoke-static {v0, p0, v3}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->canPropagateTypeAfterInstanceOf(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/ClassPath;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterB()I

    move-result v4

    if-ne p1, v4, :cond_7

    return v2

    :cond_7
    iget v4, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    if-le v4, v2, :cond_10

    const/4 v4, 0x0

    iget-object v0, v0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->predecessors:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, -0x1

    const/4 v6, -0x1

    :cond_8
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    iget-object v8, v7, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v8}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v8

    sget-object v9, Lorg/jf/dexlib2/Opcode;->MOVE_OBJECT:Lorg/jf/dexlib2/Opcode;

    if-eq v8, v9, :cond_9

    sget-object v9, Lorg/jf/dexlib2/Opcode;->MOVE_OBJECT_16:Lorg/jf/dexlib2/Opcode;

    if-eq v8, v9, :cond_9

    sget-object v9, Lorg/jf/dexlib2/Opcode;->MOVE_OBJECT_FROM16:Lorg/jf/dexlib2/Opcode;

    if-ne v8, v9, :cond_a

    :cond_9
    iget-object v8, v7, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v8, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;

    invoke-interface {v8}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v9

    invoke-virtual {v7, v9}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPostInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v7

    invoke-interface {v8}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v9

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterB()I

    move-result v10

    if-eq v9, v10, :cond_b

    :cond_a
    :goto_2
    const/4 v6, -0x1

    goto :goto_3

    :cond_b
    iget-object v9, v7, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    if-nez v9, :cond_c

    goto :goto_2

    :cond_c
    if-nez v4, :cond_d

    iget-object v4, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->methodAnalyzer:Lorg/jf/dexlib2/analysis/MethodAnalyzer;

    invoke-virtual {v4}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getClassPath()Lorg/jf/dexlib2/analysis/ClassPath;

    move-result-object v4

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v9

    check-cast v9, Lorg/jf/dexlib2/iface/reference/TypeReference;

    invoke-static {v4, v9}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(Lorg/jf/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v4

    :cond_d
    invoke-static {v7, v4}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->isNotWideningConversion(Lorg/jf/dexlib2/analysis/RegisterType;Lorg/jf/dexlib2/analysis/RegisterType;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eq v6, v5, :cond_e

    invoke-interface {v8}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v7

    if-eq v6, v7, :cond_8

    goto :goto_2

    :cond_e
    invoke-interface {v8}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v6

    goto :goto_1

    :cond_f
    :goto_3
    if-eq v6, v5, :cond_10

    if-ne p1, v6, :cond_10

    return v2

    :cond_10
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jf/dexlib2/Opcode;->setsRegister()Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    :cond_11
    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getDestinationRegister()I

    move-result v0

    if-ne p1, v0, :cond_12

    return v2

    :cond_12
    iget-object v3, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jf/dexlib2/Opcode;->setsWideRegister()Z

    move-result v3

    if-eqz v3, :cond_13

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_13

    return v2

    :cond_13
    return v1
.end method
