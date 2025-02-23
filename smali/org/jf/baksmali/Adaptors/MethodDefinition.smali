.class public Lorg/jf/baksmali/Adaptors/MethodDefinition;
.super Ljava/lang/Object;


# instance fields
.field public final classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final effectiveInstructions:Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final instructionOffsetMap:Lorg/jf/dexlib2/util/InstructionOffsetMap;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final instructions:Lcom/google/common/collect/ImmutableList;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final labelCache:Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final method:Lorg/jf/dexlib2/iface/Method;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final methodImpl:Lorg/jf/dexlib2/iface/MethodImplementation;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final methodParameters:Lcom/google/common/collect/ImmutableList;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final packedSwitchMap:Lorg/jf/util/SparseIntArray;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public registerFormatter:Lorg/jf/baksmali/Adaptors/RegisterFormatter;

.field private final sparseSwitchMap:Lorg/jf/util/SparseIntArray;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/baksmali/Adaptors/ClassDefinition;Lorg/jf/dexlib2/iface/Method;Lorg/jf/dexlib2/iface/MethodImplementation;)V
    .registers 13
    .param p1    # Lorg/jf/baksmali/Adaptors/ClassDefinition;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/iface/MethodImplementation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;

    invoke-direct {v0}, Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;-><init>()V

    iput-object v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->labelCache:Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;

    iput-object p1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iput-object p2, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->method:Lorg/jf/dexlib2/iface/Method;

    iput-object p3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->methodImpl:Lorg/jf/dexlib2/iface/MethodImplementation;

    const/4 p1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p3}, Lorg/jf/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object p3

    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    iput-object p3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructions:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/Method;->getParameters()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    iput-object p3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->methodParameters:Lcom/google/common/collect/ImmutableList;

    iget-object p3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructions:Lcom/google/common/collect/ImmutableList;

    invoke-static {p3}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->effectiveInstructions:Ljava/util/List;

    new-instance p3, Lorg/jf/util/SparseIntArray;

    invoke-direct {p3, v0}, Lorg/jf/util/SparseIntArray;-><init>(I)V

    iput-object p3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->packedSwitchMap:Lorg/jf/util/SparseIntArray;

    new-instance p3, Lorg/jf/util/SparseIntArray;

    invoke-direct {p3, v0}, Lorg/jf/util/SparseIntArray;-><init>(I)V

    iput-object p3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->sparseSwitchMap:Lorg/jf/util/SparseIntArray;

    new-instance p3, Lorg/jf/dexlib2/util/InstructionOffsetMap;

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructions:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p3, v1}, Lorg/jf/dexlib2/util/InstructionOffsetMap;-><init>(Ljava/util/List;)V

    iput-object p3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructionOffsetMap:Lorg/jf/dexlib2/util/InstructionOffsetMap;

    iget-object p3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructionOffsetMap:Lorg/jf/dexlib2/util/InstructionOffsetMap;

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p3, v1}, Lorg/jf/dexlib2/util/InstructionOffsetMap;->getInstructionCodeOffset(I)I

    move-result p3

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructions:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v1

    add-int/2addr p3, v1

    move v1, p3

    const/4 p3, 0x0

    :goto_0
    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge p3, v2, :cond_4

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, p3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v3

    sget-object v4, Lorg/jf/dexlib2/Opcode;->PACKED_SWITCH:Lorg/jf/dexlib2/Opcode;

    const/4 v5, -0x1

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructionOffsetMap:Lorg/jf/dexlib2/util/InstructionOffsetMap;

    invoke-virtual {v4, p3}, Lorg/jf/dexlib2/util/InstructionOffsetMap;->getInstructionCodeOffset(I)I

    move-result v4

    move-object v6, v2

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/OffsetInstruction;

    invoke-interface {v6}, Lorg/jf/dexlib2/iface/instruction/OffsetInstruction;->getCodeOffset()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    add-int/2addr v6, v4

    :try_start_1
    sget-object v7, Lorg/jf/dexlib2/Opcode;->PACKED_SWITCH_PAYLOAD:Lorg/jf/dexlib2/Opcode;

    invoke-virtual {p0, v6, v7}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->findPayloadOffset(ILorg/jf/dexlib2/Opcode;)I

    move-result v7
    :try_end_1
    .catch Lorg/jf/baksmali/Adaptors/MethodDefinition$InvalidSwitchPayload; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v6, 0x1

    goto :goto_1

    :catch_0
    move v7, v6

    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_3

    :try_start_2
    iget-object v6, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->packedSwitchMap:Lorg/jf/util/SparseIntArray;

    invoke-virtual {v6, v7, v5}, Lorg/jf/util/SparseIntArray;->get(II)I

    move-result v6

    if-eq v6, v5, :cond_0

    sget-object v5, Lorg/jf/dexlib2/Opcode;->PACKED_SWITCH_PAYLOAD:Lorg/jf/dexlib2/Opcode;

    invoke-virtual {p0, v7, v5}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->findSwitchPayload(ILorg/jf/dexlib2/Opcode;)Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v5

    iget-object v6, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->effectiveInstructions:Ljava/util/List;

    new-instance v7, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction31t;

    check-cast v2, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;->getRegisterA()I

    move-result v2

    sub-int v8, v1, v4

    invoke-direct {v7, v3, v2, v8}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction31t;-><init>(Lorg/jf/dexlib2/Opcode;II)V

    invoke-interface {v6, p3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->effectiveInstructions:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_2

    :cond_0
    move v2, v1

    move v1, v7

    :goto_2
    iget-object v3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->packedSwitchMap:Lorg/jf/util/SparseIntArray;

    goto :goto_5

    :cond_1
    sget-object v4, Lorg/jf/dexlib2/Opcode;->SPARSE_SWITCH:Lorg/jf/dexlib2/Opcode;

    if-ne v3, v4, :cond_3

    iget-object v4, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructionOffsetMap:Lorg/jf/dexlib2/util/InstructionOffsetMap;

    invoke-virtual {v4, p3}, Lorg/jf/dexlib2/util/InstructionOffsetMap;->getInstructionCodeOffset(I)I

    move-result v4

    move-object v6, v2

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/OffsetInstruction;

    invoke-interface {v6}, Lorg/jf/dexlib2/iface/instruction/OffsetInstruction;->getCodeOffset()I

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/2addr v6, v4

    :try_start_3
    sget-object v7, Lorg/jf/dexlib2/Opcode;->SPARSE_SWITCH_PAYLOAD:Lorg/jf/dexlib2/Opcode;

    invoke-virtual {p0, v6, v7}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->findPayloadOffset(ILorg/jf/dexlib2/Opcode;)I

    move-result v7
    :try_end_3
    .catch Lorg/jf/baksmali/Adaptors/MethodDefinition$InvalidSwitchPayload; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v6, 0x1

    goto :goto_3

    :catch_1
    move v7, v6

    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_3

    :try_start_4
    iget-object v6, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->sparseSwitchMap:Lorg/jf/util/SparseIntArray;

    invoke-virtual {v6, v7, v5}, Lorg/jf/util/SparseIntArray;->get(II)I

    move-result v6

    if-eq v6, v5, :cond_2

    sget-object v5, Lorg/jf/dexlib2/Opcode;->SPARSE_SWITCH_PAYLOAD:Lorg/jf/dexlib2/Opcode;

    invoke-virtual {p0, v7, v5}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->findSwitchPayload(ILorg/jf/dexlib2/Opcode;)Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v5

    iget-object v6, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->effectiveInstructions:Ljava/util/List;

    new-instance v7, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction31t;

    check-cast v2, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;->getRegisterA()I

    move-result v2

    sub-int v8, v1, v4

    invoke-direct {v7, v3, v2, v8}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction31t;-><init>(Lorg/jf/dexlib2/Opcode;II)V

    invoke-interface {v6, p3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->effectiveInstructions:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_4

    :cond_2
    move v2, v1

    move v1, v7

    :goto_4
    iget-object v3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->sparseSwitchMap:Lorg/jf/util/SparseIntArray;

    :goto_5
    invoke-virtual {v3, v1, v4}, Lorg/jf/util/SparseIntArray;->append(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move v1, v2

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    :catch_2
    move-exception p3

    :try_start_5
    invoke-static {p2}, Lorg/jf/dexlib2/util/ReferenceUtil;->getMethodDescriptor(Lorg/jf/dexlib2/iface/reference/MethodReference;)Ljava/lang/String;

    move-result-object p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v0

    const-string p2, "Error while processing method %s"

    invoke-static {p3, p2, p1}, Lorg/jf/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jf/util/ExceptionWithContext;

    move-result-object p1

    throw p1

    :catch_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Error while processing method"

    invoke-static {p3, p2, p1}, Lorg/jf/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jf/util/ExceptionWithContext;

    move-result-object p1

    throw p1
.end method

.method private addAnalyzedInstructionMethodItems(Ljava/util/List;)V
    .registers 15

    new-instance v6, Lorg/jf/dexlib2/analysis/MethodAnalyzer;

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v0, v0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-object v0, v0, Lorg/jf/baksmali/BaksmaliOptions;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->method:Lorg/jf/dexlib2/iface/Method;

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v2, v2, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-object v2, v2, Lorg/jf/baksmali/BaksmaliOptions;->inlineResolver:Lorg/jf/dexlib2/analysis/InlineMethodResolver;

    iget-object v3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v3, v3, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-boolean v3, v3, Lorg/jf/baksmali/BaksmaliOptions;->normalizeVirtualMethods:Z

    invoke-direct {v6, v0, v1, v2, v3}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;-><init>(Lorg/jf/dexlib2/analysis/ClassPath;Lorg/jf/dexlib2/iface/Method;Lorg/jf/dexlib2/analysis/InlineMethodResolver;Z)V

    invoke-virtual {v6}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getAnalysisException()Lorg/jf/dexlib2/analysis/AnalysisException;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    new-instance v2, Lorg/jf/baksmali/Adaptors/CommentMethodItem;

    const-string v3, "AnalysisException: %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/AnalysisException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lorg/jf/dexlib2/analysis/AnalysisException;->codeAddress:I

    const-wide/high16 v8, -0x3e20000000000000L    # -2.147483648E9

    invoke-direct {v2, v3, v4, v8, v9}, Lorg/jf/baksmali/Adaptors/CommentMethodItem;-><init>(Ljava/lang/String;ID)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Lorg/jf/dexlib2/analysis/AnalysisException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    invoke-virtual {v6}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getAnalyzedInstructions()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v11}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v0

    invoke-static {p0, v10, v0}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItemFactory;->makeInstructionFormatMethodItem(Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/iface/instruction/Instruction;)Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v0

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v0

    iget-object v0, v0, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    sget-object v1, Lorg/jf/dexlib2/Format;->UnresolvedOdexInstruction:Lorg/jf/dexlib2/Format;

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/jf/baksmali/Adaptors/CommentedOutMethodItem;

    invoke-virtual {v11}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getOriginalInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v1

    invoke-static {p0, v10, v1}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItemFactory;->makeInstructionFormatMethodItem(Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/iface/instruction/Instruction;)Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jf/baksmali/Adaptors/CommentedOutMethodItem;-><init>(Lorg/jf/baksmali/Adaptors/MethodItem;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v7

    if-eq v9, v0, :cond_2

    new-instance v0, Lorg/jf/baksmali/Adaptors/BlankMethodItem;

    invoke-direct {v0, v10}, Lorg/jf/baksmali/Adaptors/BlankMethodItem;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v0, v0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-boolean v0, v0, Lorg/jf/baksmali/BaksmaliOptions;->codeOffsets:Z

    if-eqz v0, :cond_3

    new-instance v0, Lorg/jf/baksmali/Adaptors/MethodDefinition$2;

    invoke-direct {v0, p0, v10}, Lorg/jf/baksmali/Adaptors/MethodDefinition$2;-><init>(Lorg/jf/baksmali/Adaptors/MethodDefinition;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v0, v0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget v0, v0, Lorg/jf/baksmali/BaksmaliOptions;->registerInfo:I

    if-eqz v0, :cond_4

    invoke-virtual {v11}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v0

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v0

    iget-object v0, v0, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    iget-boolean v0, v0, Lorg/jf/dexlib2/Format;->isPayloadFormat:Z

    if-nez v0, :cond_4

    new-instance v12, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v0, v0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->registerInfo:I

    iget-object v3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->registerFormatter:Lorg/jf/baksmali/Adaptors/RegisterFormatter;

    move-object v0, v12

    move-object v2, v6

    move-object v4, v11

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lorg/jf/baksmali/Adaptors/PreInstructionRegisterInfoMethodItem;-><init>(ILorg/jf/dexlib2/analysis/MethodAnalyzer;Lorg/jf/baksmali/Adaptors/RegisterFormatter;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;I)V

    invoke-interface {p1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/jf/baksmali/Adaptors/PostInstructionRegisterInfoMethodItem;

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->registerFormatter:Lorg/jf/baksmali/Adaptors/RegisterFormatter;

    invoke-direct {v0, v1, v11, v10}, Lorg/jf/baksmali/Adaptors/PostInstructionRegisterInfoMethodItem;-><init>(Lorg/jf/baksmali/Adaptors/RegisterFormatter;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v11}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v0

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v0

    add-int/2addr v10, v0

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private addDebugInfo(Ljava/util/List;)V
    .registers 5

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->methodImpl:Lorg/jf/dexlib2/iface/MethodImplementation;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/MethodImplementation;->getDebugItems()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/debug/DebugItem;

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->registerFormatter:Lorg/jf/baksmali/Adaptors/RegisterFormatter;

    invoke-static {v2, v1}, Lorg/jf/baksmali/Adaptors/Debug/DebugMethodItem;->build(Lorg/jf/baksmali/Adaptors/RegisterFormatter;Lorg/jf/dexlib2/iface/debug/DebugItem;)Lorg/jf/baksmali/Adaptors/Debug/DebugMethodItem;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addInstructionMethodItems(Ljava/util/List;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->effectiveInstructions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->effectiveInstructions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-static {p0, v1, v2}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItemFactory;->makeInstructionFormatMethodItem(Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/iface/instruction/Instruction;)Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->effectiveInstructions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    new-instance v3, Lorg/jf/baksmali/Adaptors/BlankMethodItem;

    invoke-direct {v3, v1}, Lorg/jf/baksmali/Adaptors/BlankMethodItem;-><init>(I)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v3, v3, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-boolean v3, v3, Lorg/jf/baksmali/BaksmaliOptions;->codeOffsets:Z

    if-eqz v3, :cond_1

    new-instance v3, Lorg/jf/baksmali/Adaptors/MethodDefinition$1;

    invoke-direct {v3, p0, v1}, Lorg/jf/baksmali/Adaptors/MethodDefinition$1;-><init>(Lorg/jf/baksmali/Adaptors/MethodDefinition;I)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v3, v3, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-boolean v3, v3, Lorg/jf/baksmali/BaksmaliOptions;->accessorComments:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v3, v3, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-object v3, v3, Lorg/jf/baksmali/BaksmaliOptions;->syntheticAccessorResolver:Lorg/jf/dexlib2/util/SyntheticAccessorResolver;

    if-eqz v3, :cond_2

    instance-of v3, v2, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v3

    iget v3, v3, Lorg/jf/dexlib2/Opcode;->referenceType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    :try_start_0
    move-object v4, v2

    check-cast v4, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v4

    check-cast v4, Lorg/jf/dexlib2/iface/reference/MethodReference;
    :try_end_0
    .catch Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    :catch_0
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jf/dexlib2/util/SyntheticAccessorResolver;->looksLikeSyntheticAccessor(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v4, v4, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-object v4, v4, Lorg/jf/baksmali/BaksmaliOptions;->syntheticAccessorResolver:Lorg/jf/dexlib2/util/SyntheticAccessorResolver;

    invoke-virtual {v4, v3}, Lorg/jf/dexlib2/util/SyntheticAccessorResolver;->getAccessedMember(Lorg/jf/dexlib2/iface/reference/MethodReference;)Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Lorg/jf/baksmali/Adaptors/SyntheticAccessCommentMethodItem;

    invoke-direct {v4, v3, v1}, Lorg/jf/baksmali/Adaptors/SyntheticAccessCommentMethodItem;-><init>(Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;I)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v2}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private addTries(Ljava/util/List;)V
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->methodImpl:Lorg/jf/dexlib2/iface/MethodImplementation;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/MethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructionOffsetMap:Lorg/jf/dexlib2/util/InstructionOffsetMap;

    iget-object v3, v0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/jf/dexlib2/util/InstructionOffsetMap;->getInstructionCodeOffset(I)I

    move-result v2

    iget-object v3, v0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructions:Lcom/google/common/collect/ImmutableList;

    iget-object v5, v0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jf/dexlib2/iface/TryBlock;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/TryBlock;->getStartCodeAddress()I

    move-result v13

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/TryBlock;->getCodeUnitCount()I

    move-result v5

    add-int v14, v13, v5

    const/4 v15, 0x0

    if-ge v13, v2, :cond_4

    if-gt v14, v2, :cond_3

    iget-object v5, v0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructionOffsetMap:Lorg/jf/dexlib2/util/InstructionOffsetMap;

    add-int/lit8 v6, v14, -0x1

    invoke-virtual {v5, v6, v15}, Lorg/jf/dexlib2/util/InstructionOffsetMap;->getInstructionIndexAtCodeOffset(IZ)I

    move-result v5

    iget-object v6, v0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructionOffsetMap:Lorg/jf/dexlib2/util/InstructionOffsetMap;

    invoke-virtual {v6, v5}, Lorg/jf/dexlib2/util/InstructionOffsetMap;->getInstructionCodeOffset(I)I

    move-result v16

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jf/dexlib2/iface/ExceptionHandler;

    invoke-interface {v5}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result v12

    if-ge v12, v2, :cond_1

    new-instance v11, Lorg/jf/baksmali/Adaptors/CatchMethodItem;

    iget-object v6, v0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v6, v6, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-object v7, v0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->labelCache:Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;

    invoke-interface {v5}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v9

    move-object v5, v11

    move/from16 v8, v16

    move v10, v13

    move-object v15, v11

    move v11, v14

    invoke-direct/range {v5 .. v12}, Lorg/jf/baksmali/Adaptors/CatchMethodItem;-><init>(Lorg/jf/baksmali/BaksmaliOptions;Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;ILjava/lang/String;III)V

    move-object/from16 v5, p1

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x0

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/jf/util/ExceptionWithContext;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const-string v3, "Exception handler offset %d is past the end of the code block."

    invoke-direct {v1, v3, v2}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_2
    move-object/from16 v5, p1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    new-instance v1, Ljava/lang/RuntimeException;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "Try end offset %d is past the end of the code block."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v6, 0x0

    new-instance v1, Ljava/lang/RuntimeException;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "Try start offset %d is past the end of the code block."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    return-void
.end method

.method private getContainingClassForImplicitReference()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v0, v0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-boolean v0, v0, Lorg/jf/baksmali/BaksmaliOptions;->implicitReferences:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v0, v0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMethodItems()Ljava/util/List;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v1, v1, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget v1, v1, Lorg/jf/baksmali/BaksmaliOptions;->registerInfo:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v1, v1, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-boolean v1, v1, Lorg/jf/baksmali/BaksmaliOptions;->normalizeVirtualMethods:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v1, v1, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-boolean v1, v1, Lorg/jf/baksmali/BaksmaliOptions;->deodex:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->needsAnalyzed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->addInstructionMethodItems(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->addAnalyzedInstructionMethodItems(Ljava/util/List;)V

    :goto_1
    invoke-direct {p0, v0}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->addTries(Ljava/util/List;)V

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v1, v1, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-boolean v1, v1, Lorg/jf/baksmali/BaksmaliOptions;->debugInfo:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->addDebugInfo(Ljava/util/List;)V

    :cond_2
    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v1, v1, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-boolean v1, v1, Lorg/jf/baksmali/BaksmaliOptions;->sequentialLabels:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->setLabelSequentialNumbers()V

    :cond_3
    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->labelCache:Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;

    invoke-virtual {v1}, Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;->getLabels()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private needsAnalyzed()Z
    .registers 3

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->methodImpl:Lorg/jf/dexlib2/iface/MethodImplementation;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jf/dexlib2/Opcode;->odexOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private setLabelSequentialNumbers()V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->labelCache:Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;

    invoke-virtual {v2}, Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;->getLabels()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    invoke-virtual {v2}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->getLabelPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->setLabelSequence(I)V

    invoke-virtual {v2}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->getLabelPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static writeAccessFlags(Lorg/jf/util/IndentingWriter;I)V
    .registers 5

    invoke-static {p1}, Lorg/jf/dexlib2/AccessFlags;->getAccessFlagsForMethod(I)[Lorg/jf/dexlib2/AccessFlags;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/jf/dexlib2/AccessFlags;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lorg/jf/util/IndentingWriter;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeEmptyMethodTo(Lorg/jf/util/IndentingWriter;Lorg/jf/dexlib2/iface/Method;Lorg/jf/baksmali/BaksmaliOptions;)V
    .registers 6

    const-string v0, ".method "

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Method;->getAccessFlags()I

    move-result v0

    invoke-static {p0, v0}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->writeAccessFlags(Lorg/jf/util/IndentingWriter;I)V

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Method;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/iface/MethodParameter;

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/MethodParameter;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, ")"

    invoke-virtual {p0, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Method;->getReturnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lorg/jf/util/IndentingWriter;->write(I)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/jf/util/IndentingWriter;->indent(I)V

    invoke-static {p0, p1, v0, p2}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->writeParameters(Lorg/jf/util/IndentingWriter;Lorg/jf/dexlib2/iface/Method;Ljava/util/List;Lorg/jf/baksmali/BaksmaliOptions;)V

    const/4 v0, 0x0

    iget-boolean p2, p2, Lorg/jf/baksmali/BaksmaliOptions;->implicitReferences:Z

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Method;->getAnnotations()Ljava/util/Set;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lorg/jf/baksmali/Adaptors/AnnotationFormatter;->writeTo(Lorg/jf/util/IndentingWriter;Ljava/util/Collection;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/jf/util/IndentingWriter;->deindent(I)V

    const-string p1, ".end method\n"

    invoke-virtual {p0, p1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method private static writeParameters(Lorg/jf/util/IndentingWriter;Lorg/jf/dexlib2/iface/Method;Ljava/util/List;Lorg/jf/baksmali/BaksmaliOptions;)V
    .registers 10

    sget-object v0, Lorg/jf/dexlib2/AccessFlags;->STATIC:Lorg/jf/dexlib2/AccessFlags;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Method;->getAccessFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/AccessFlags;->isSet(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/MethodParameter;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/MethodParameter;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/MethodParameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/MethodParameter;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    iget-boolean v4, p3, Lorg/jf/baksmali/BaksmaliOptions;->debugInfo:Z

    if-eqz v4, :cond_1

    if-nez v3, :cond_2

    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    const-string v4, ".param p"

    invoke-virtual {p0, v4}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->printSignedIntAsDec(I)V

    if-eqz v3, :cond_3

    iget-boolean v4, p3, Lorg/jf/baksmali/BaksmaliOptions;->debugInfo:Z

    if-eqz v4, :cond_3

    const-string v4, ", "

    invoke-virtual {p0, v4}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-static {p0, v3}, Lorg/jf/baksmali/Adaptors/ReferenceFormatter;->writeStringReference(Lorg/jf/util/IndentingWriter;Ljava/lang/String;)V

    :cond_3
    const-string v3, "    # "

    invoke-virtual {p0, v3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {p0, v3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lorg/jf/util/IndentingWriter;->indent(I)V

    const/4 v4, 0x0

    iget-boolean v5, p3, Lorg/jf/baksmali/BaksmaliOptions;->implicitReferences:Z

    if-eqz v5, :cond_4

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-static {p0, v1, v4}, Lorg/jf/baksmali/Adaptors/AnnotationFormatter;->writeTo(Lorg/jf/util/IndentingWriter;Ljava/util/Collection;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/jf/util/IndentingWriter;->deindent(I)V

    const-string v1, ".end param\n"

    invoke-virtual {p0, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lorg/jf/dexlib2/util/TypeUtils;->isWideType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public findPayloadOffset(ILorg/jf/dexlib2/Opcode;)I
    .registers 6

    :try_start_0
    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructionOffsetMap:Lorg/jf/dexlib2/util/InstructionOffsetMap;

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/util/InstructionOffsetMap;->getInstructionIndexAtCodeOffset(I)I

    move-result v0
    :try_end_0
    .catch Lorg/jf/dexlib2/util/InstructionOffsetMap$InvalidInstructionOffset; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v2

    if-eq v2, p2, :cond_1

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    sget-object v2, Lorg/jf/dexlib2/Opcode;->NOP:Lorg/jf/dexlib2/Opcode;

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    if-ne v1, p2, :cond_0

    iget-object p1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructionOffsetMap:Lorg/jf/dexlib2/util/InstructionOffsetMap;

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/util/InstructionOffsetMap;->getInstructionCodeOffset(I)I

    move-result p1

    return p1

    :cond_0
    new-instance p2, Lorg/jf/baksmali/Adaptors/MethodDefinition$InvalidSwitchPayload;

    invoke-direct {p2, p1}, Lorg/jf/baksmali/Adaptors/MethodDefinition$InvalidSwitchPayload;-><init>(I)V

    throw p2

    :cond_1
    return p1

    :catch_0
    new-instance p2, Lorg/jf/baksmali/Adaptors/MethodDefinition$InvalidSwitchPayload;

    invoke-direct {p2, p1}, Lorg/jf/baksmali/Adaptors/MethodDefinition$InvalidSwitchPayload;-><init>(I)V

    throw p2
.end method

.method public findSwitchPayload(ILorg/jf/dexlib2/Opcode;)Lorg/jf/dexlib2/iface/instruction/Instruction;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructionOffsetMap:Lorg/jf/dexlib2/util/InstructionOffsetMap;

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/util/InstructionOffsetMap;->getInstructionIndexAtCodeOffset(I)I

    move-result v0
    :try_end_0
    .catch Lorg/jf/dexlib2/util/InstructionOffsetMap$InvalidInstructionOffset; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v2

    if-eq v2, p2, :cond_1

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    sget-object v2, Lorg/jf/dexlib2/Opcode;->NOP:Lorg/jf/dexlib2/Opcode;

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->instructions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    if-ne v1, p2, :cond_0

    return-object v0

    :cond_0
    new-instance p2, Lorg/jf/baksmali/Adaptors/MethodDefinition$InvalidSwitchPayload;

    invoke-direct {p2, p1}, Lorg/jf/baksmali/Adaptors/MethodDefinition$InvalidSwitchPayload;-><init>(I)V

    throw p2

    :cond_1
    return-object v1

    :catch_0
    new-instance p2, Lorg/jf/baksmali/Adaptors/MethodDefinition$InvalidSwitchPayload;

    invoke-direct {p2, p1}, Lorg/jf/baksmali/Adaptors/MethodDefinition$InvalidSwitchPayload;-><init>(I)V

    throw p2
.end method

.method public getLabelCache()Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->labelCache:Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;

    return-object v0
.end method

.method public getPackedSwitchBaseAddress(I)I
    .registers 4

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->packedSwitchMap:Lorg/jf/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/jf/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public getSparseSwitchBaseAddress(I)I
    .registers 4

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->sparseSwitchMap:Lorg/jf/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/jf/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public writeTo(Lorg/jf/util/IndentingWriter;)V
    .registers 8

    sget-object v0, Lorg/jf/dexlib2/AccessFlags;->STATIC:Lorg/jf/dexlib2/AccessFlags;

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/Method;->getAccessFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/AccessFlags;->isSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, ".method "

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/Method;->getAccessFlags()I

    move-result v1

    invoke-static {p1, v1}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->writeAccessFlags(Lorg/jf/util/IndentingWriter;I)V

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->methodParameters:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/iface/MethodParameter;

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/MethodParameter;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lorg/jf/dexlib2/util/TypeUtils;->isWideType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v1, ")"

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/Method;->getReturnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(I)V

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lorg/jf/util/IndentingWriter;->indent(I)V

    iget-object v3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v3, v3, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-boolean v3, v3, Lorg/jf/baksmali/BaksmaliOptions;->localsDirective:Z

    if-eqz v3, :cond_3

    const-string v3, ".locals "

    invoke-virtual {p1, v3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->methodImpl:Lorg/jf/dexlib2/iface/MethodImplementation;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_2
    invoke-virtual {p1, v3}, Lorg/jf/util/IndentingWriter;->printSignedIntAsDec(I)V

    goto :goto_3

    :cond_3
    const-string v3, ".registers "

    invoke-virtual {p1, v3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->methodImpl:Lorg/jf/dexlib2/iface/MethodImplementation;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result v3

    goto :goto_2

    :goto_3
    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(I)V

    iget-object v3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->method:Lorg/jf/dexlib2/iface/Method;

    iget-object v4, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->methodParameters:Lcom/google/common/collect/ImmutableList;

    iget-object v5, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v5, v5, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    invoke-static {p1, v3, v4, v5}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->writeParameters(Lorg/jf/util/IndentingWriter;Lorg/jf/dexlib2/iface/Method;Ljava/util/List;Lorg/jf/baksmali/BaksmaliOptions;)V

    iget-object v3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->registerFormatter:Lorg/jf/baksmali/Adaptors/RegisterFormatter;

    if-nez v3, :cond_4

    new-instance v3, Lorg/jf/baksmali/Adaptors/RegisterFormatter;

    iget-object v4, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v4, v4, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-object v5, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->methodImpl:Lorg/jf/dexlib2/iface/MethodImplementation;

    invoke-interface {v5}, Lorg/jf/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result v5

    invoke-direct {v3, v4, v5, v0}, Lorg/jf/baksmali/Adaptors/RegisterFormatter;-><init>(Lorg/jf/baksmali/BaksmaliOptions;II)V

    iput-object v3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->registerFormatter:Lorg/jf/baksmali/Adaptors/RegisterFormatter;

    :cond_4
    const/4 v0, 0x0

    iget-object v3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v3, v3, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-boolean v3, v3, Lorg/jf/baksmali/BaksmaliOptions;->implicitReferences:Z

    if-eqz v3, :cond_5

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-object v3, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/Method;->getAnnotations()Ljava/util/Set;

    move-result-object v3

    invoke-static {p1, v3, v0}, Lorg/jf/baksmali/Adaptors/AnnotationFormatter;->writeTo(Lorg/jf/util/IndentingWriter;Ljava/util/Collection;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-direct {p0}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->getMethodItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jf/baksmali/Adaptors/MethodItem;

    invoke-virtual {v3, p1}, Lorg/jf/baksmali/Adaptors/MethodItem;->writeTo(Lorg/jf/util/IndentingWriter;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1, v2}, Lorg/jf/util/IndentingWriter;->deindent(I)V

    const-string v0, ".end method\n"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    return-void
.end method
