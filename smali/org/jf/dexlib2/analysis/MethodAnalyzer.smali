.class public Lorg/jf/dexlib2/analysis/MethodAnalyzer;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BooleanCategories:Ljava/util/BitSet;

.field private static final Primitive32BitCategories:Ljava/util/BitSet;

.field private static final ReferenceOrUninitCategories:Ljava/util/BitSet;

.field private static final WideHighCategories:Ljava/util/BitSet;

.field private static final WideLowCategories:Ljava/util/BitSet;


# instance fields
.field private analysisException:Lorg/jf/dexlib2/analysis/AnalysisException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final analyzedInstructions:Lorg/jf/util/SparseArray;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final analyzedState:Ljava/util/BitSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final classPath:Lorg/jf/dexlib2/analysis/ClassPath;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final inlineResolver:Lorg/jf/dexlib2/analysis/InlineMethodResolver;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final method:Lorg/jf/dexlib2/iface/Method;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final methodImpl:Lorg/jf/dexlib2/iface/MethodImplementation;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final normalizeVirtualMethods:Z

.field private final paramRegisterCount:I

.field private final startOfMethod:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lorg/jf/util/BitSetUtils;->bitSetOfIndexes([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->Primitive32BitCategories:Ljava/util/BitSet;

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Lorg/jf/util/BitSetUtils;->bitSetOfIndexes([I)Ljava/util/BitSet;

    move-result-object v1

    sput-object v1, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->WideLowCategories:Ljava/util/BitSet;

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lorg/jf/util/BitSetUtils;->bitSetOfIndexes([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->WideHighCategories:Ljava/util/BitSet;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lorg/jf/util/BitSetUtils;->bitSetOfIndexes([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->ReferenceOrUninitCategories:Ljava/util/BitSet;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Lorg/jf/util/BitSetUtils;->bitSetOfIndexes([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->BooleanCategories:Ljava/util/BitSet;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0xc
        0xe
    .end array-data

    :array_2
    .array-data 4
        0xd
        0xf
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x10
        0x11
        0x12
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>(Lorg/jf/dexlib2/analysis/ClassPath;Lorg/jf/dexlib2/iface/Method;Lorg/jf/dexlib2/analysis/InlineMethodResolver;Z)V
    .registers 11
    .param p1    # Lorg/jf/dexlib2/analysis/ClassPath;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/analysis/InlineMethodResolver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jf/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jf/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analysisException:Lorg/jf/dexlib2/analysis/AnalysisException;

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    iput-object p3, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->inlineResolver:Lorg/jf/dexlib2/analysis/InlineMethodResolver;

    iput-boolean p4, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->normalizeVirtualMethods:Z

    iput-object p2, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/Method;->getImplementation()Lorg/jf/dexlib2/iface/MethodImplementation;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->methodImpl:Lorg/jf/dexlib2/iface/MethodImplementation;

    new-instance p3, Lorg/jf/dexlib2/analysis/MethodAnalyzer$1;

    new-instance v3, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction10x;

    sget-object p4, Lorg/jf/dexlib2/Opcode;->NOP:Lorg/jf/dexlib2/Opcode;

    invoke-direct {v3, p4}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction10x;-><init>(Lorg/jf/dexlib2/Opcode;)V

    const/4 v4, -0x1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result v5

    move-object v0, p3

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/jf/dexlib2/analysis/MethodAnalyzer$1;-><init>(Lorg/jf/dexlib2/analysis/MethodAnalyzer;Lorg/jf/dexlib2/analysis/MethodAnalyzer;Lorg/jf/dexlib2/iface/instruction/Instruction;II)V

    iput-object p3, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->startOfMethod:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-direct {p0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->buildInstructionList()V

    new-instance p1, Ljava/util/BitSet;

    iget-object p3, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {p3}, Lorg/jf/util/SparseArray;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedState:Ljava/util/BitSet;

    invoke-static {p2}, Lorg/jf/dexlib2/util/MethodUtil;->getParameterRegisterCount(Lorg/jf/dexlib2/iface/Method;)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->paramRegisterCount:I

    invoke-direct {p0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyze()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The method has no implementation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addPredecessorSuccessor(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;[[Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Ljava/util/BitSet;)V
    .registers 11
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # [[Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Ljava/util/BitSet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->addPredecessorSuccessor(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;[[Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Ljava/util/BitSet;Z)V

    return-void
.end method

.method private addPredecessorSuccessor(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;[[Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Ljava/util/BitSet;Z)V
    .registers 13
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # [[Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Ljava/util/BitSet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p5, :cond_1

    iget-object p5, p2, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {p5}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object p5

    sget-object v1, Lorg/jf/dexlib2/Opcode;->MOVE_EXCEPTION:Lorg/jf/dexlib2/Opcode;

    if-eq p5, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Lorg/jf/dexlib2/analysis/AnalysisException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Execution can pass from the "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p5, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {p5}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object p5

    iget-object p5, p5, Lorg/jf/dexlib2/Opcode;->name:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " instruction at code address 0x"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getInstructionAddress(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to the move-exception instruction at address 0x"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getInstructionAddress(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-direct {p3, p1, p2}, Lorg/jf/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3

    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->addPredecessor(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Z

    move-result p5

    if-nez p5, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->addSuccessor(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    invoke-virtual {p2}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstructionIndex()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/util/BitSet;->set(I)V

    iget p2, p2, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    aget-object p2, p3, p2

    if-eqz p2, :cond_3

    array-length p5, p2

    :goto_1
    if-ge v0, p5, :cond_3

    aget-object v3, p2, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->addPredecessorSuccessor(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;[[Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Ljava/util/BitSet;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private analyze()V
    .registers 12

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->method:Lorg/jf/dexlib2/iface/Method;

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->methodImpl:Lorg/jf/dexlib2/iface/MethodImplementation;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result v1

    iget v2, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->paramRegisterCount:I

    sub-int/2addr v1, v2

    invoke-static {v0}, Lorg/jf/dexlib2/util/MethodUtil;->isStatic(Lorg/jf/dexlib2/iface/Method;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lorg/jf/dexlib2/util/MethodUtil;->isConstructor(Lorg/jf/dexlib2/iface/reference/MethodReference;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->startOfMethod:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    const/16 v3, 0x11

    :goto_0
    iget-object v4, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(BLorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->startOfMethod:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    const/16 v3, 0x12

    goto :goto_0

    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->propagateParameterTypes(I)V

    goto :goto_2

    :cond_1
    invoke-direct {p0, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->propagateParameterTypes(I)V

    :goto_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(BLorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_2

    iget-object v6, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->startOfMethod:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-direct {p0, v6, v5, v2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    new-instance v1, Ljava/util/BitSet;

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {v2}, Lorg/jf/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->startOfMethod:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    iget-object v2, v2, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->successors:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    iget v5, v5, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_4

    :cond_3
    new-instance v2, Ljava/util/BitSet;

    iget-object v5, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {v5}, Lorg/jf/util/SparseArray;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    :cond_4
    const/4 v5, 0x0

    :cond_5
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    :goto_5
    if-ltz v6, :cond_a

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->clear(I)V

    iget-object v7, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedState:Ljava/util/BitSet;

    invoke-virtual {v7, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {v7, v6}, Lorg/jf/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    :try_start_0
    iget-object v8, v7, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->originalInstruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v8}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jf/dexlib2/Opcode;->odexOnly()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->restoreOdexedInstruction()V

    :cond_6
    invoke-direct {p0, v7}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInstruction(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V
    :try_end_0
    .catch Lorg/jf/dexlib2/analysis/AnalysisException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_8

    :cond_7
    :try_start_1
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->clear(I)V
    :try_end_1
    .catch Lorg/jf/dexlib2/analysis/AnalysisException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v5, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedState:Ljava/util/BitSet;

    invoke-virtual {v7}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstructionIndex()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->set(I)V

    iget-object v5, v7, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->successors:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v7}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstructionIndex()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    goto :goto_6

    :cond_8
    const/4 v5, 0x1

    goto :goto_8

    :catch_0
    move-exception v6

    const/4 v5, 0x1

    goto :goto_7

    :catch_1
    move-exception v6

    :goto_7
    iput-object v6, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analysisException:Lorg/jf/dexlib2/analysis/AnalysisException;

    invoke-virtual {p0, v7}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getInstructionAddress(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)I

    move-result v8

    iput v8, v6, Lorg/jf/dexlib2/analysis/AnalysisException;->codeAddress:I

    const-string v9, "opcode: %s"

    new-array v10, v3, [Ljava/lang/Object;

    iget-object v7, v7, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v7}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v7

    iget-object v7, v7, Lorg/jf/dexlib2/Opcode;->name:Ljava/lang/String;

    aput-object v7, v10, v4

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jf/dexlib2/analysis/AnalysisException;->addContext(Ljava/lang/String;)V

    const-string v7, "code address: %d"

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v4

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jf/dexlib2/analysis/AnalysisException;->addContext(Ljava/lang/String;)V

    const-string v7, "method: %s"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/jf/dexlib2/util/ReferenceUtil;->getReferenceString(Lorg/jf/dexlib2/iface/reference/Reference;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jf/dexlib2/analysis/AnalysisException;->addContext(Ljava/lang/String;)V

    goto :goto_9

    :cond_9
    :goto_8
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    goto/16 :goto_5

    :cond_a
    :goto_9
    iget-object v6, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analysisException:Lorg/jf/dexlib2/analysis/AnalysisException;

    if-eqz v6, :cond_5

    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {v2}, Ljava/util/BitSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    :goto_a
    if-ltz v5, :cond_4

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    goto :goto_a

    :cond_c
    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {v1}, Lorg/jf/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {v1, v0}, Lorg/jf/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {v1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v2

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jf/dexlib2/Opcode;->odexOnly()Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Lorg/jf/dexlib2/analysis/MethodAnalyzer$3;->$SwitchMap$org$jf$dexlib2$Format:[I

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v5

    iget-object v5, v5, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    invoke-virtual {v5}, Lorg/jf/dexlib2/Format;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    goto :goto_d

    :pswitch_0
    move-object v3, v2

    check-cast v3, Lorg/jf/dexlib2/iface/instruction/RegisterRangeInstruction;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/RegisterRangeInstruction;->getStartRegister()I

    move-result v3

    goto :goto_c

    :pswitch_1
    move-object v3, v2

    check-cast v3, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterC()I

    move-result v3

    goto :goto_c

    :pswitch_2
    move-object v3, v2

    check-cast v3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22cs;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22cs;->getRegisterB()I

    move-result v3

    :goto_c
    new-instance v5, Lorg/jf/dexlib2/analysis/UnresolvedOdexInstruction;

    invoke-direct {v5, v2, v3}, Lorg/jf/dexlib2/analysis/UnresolvedOdexInstruction;-><init>(Lorg/jf/dexlib2/iface/instruction/Instruction;I)V

    invoke-virtual {v1, v5}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lorg/jf/dexlib2/iface/instruction/Instruction;)V

    goto :goto_d

    :pswitch_3
    invoke-direct {p0, v1, v4}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeObjectInitRange(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)V

    goto :goto_d

    :pswitch_4
    invoke-direct {p0, v1, v4}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeDirectEmpty(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)V

    goto :goto_d

    :pswitch_5
    invoke-direct {p0, v1, v4}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzePutGetVolatile(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)Z

    goto :goto_d

    :pswitch_6
    invoke-direct {p0, v1, v4}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeOdexReturnVoid(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)V

    :cond_d
    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_e
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private analyze32BitPrimitiveAget(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyze32BitPrimitiveIgetSget(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeAgetObject(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/ThreeRegisterInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    iget-byte v1, v0, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-byte v1, v0, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    instance-of v1, v1, Lorg/jf/dexlib2/analysis/ArrayProto;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    check-cast v0, Lorg/jf/dexlib2/analysis/ArrayProto;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/ArrayProto;->getImmediateElementType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(BLorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void

    :cond_0
    new-instance p1, Lorg/jf/dexlib2/analysis/AnalysisException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/RegisterType;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "aget-object used with non-array register: %s"

    invoke-direct {p1, v0, v1}, Lorg/jf/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->NULL_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    goto :goto_0
.end method

.method private analyzeAgetWide(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/ThreeRegisterInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    iget-byte v1, v0, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    iget-byte v1, v0, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    instance-of v1, v1, Lorg/jf/dexlib2/analysis/ArrayProto;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    check-cast v1, Lorg/jf/dexlib2/analysis/ArrayProto;

    iget v2, v1, Lorg/jf/dexlib2/analysis/ArrayProto;->dimensions:I

    if-ne v2, v4, :cond_2

    invoke-virtual {v1}, Lorg/jf/dexlib2/analysis/ArrayProto;->getElementType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4a

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x44

    if-ne v1, v2, :cond_1

    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/jf/dexlib2/analysis/AnalysisException;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "aget-wide used with narrow array: %s"

    invoke-direct {p1, v0, v1}, Lorg/jf/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/jf/dexlib2/analysis/AnalysisException;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/RegisterType;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "aget-wide used with multi-dimensional array: %s"

    invoke-direct {p1, v0, v1}, Lorg/jf/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/jf/dexlib2/analysis/AnalysisException;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/RegisterType;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "aget-wide used with non-array register: %s"

    invoke-direct {p1, v0, v1}, Lorg/jf/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_0
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    :goto_1
    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeArrayLength(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeBinary2AddrOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;Z)V
    .registers 6
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    iget-object p3, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast p3, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result p3

    invoke-virtual {p1, p3}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object p3

    sget-object v1, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->BooleanCategories:Ljava/util/BitSet;

    iget-byte v0, v0, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->BooleanCategories:Ljava/util/BitSet;

    iget-byte p3, p3, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    invoke-virtual {v0, p3}, Ljava/util/BitSet;->get(I)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p2, Lorg/jf/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeBinaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;Z)V
    .registers 6
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    iget-object p3, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast p3, Lorg/jf/dexlib2/iface/instruction/ThreeRegisterInstruction;

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterB()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result p3

    invoke-virtual {p1, p3}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object p3

    sget-object v1, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->BooleanCategories:Ljava/util/BitSet;

    iget-byte v0, v0, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->BooleanCategories:Ljava/util/BitSet;

    iget-byte p3, p3, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    invoke-virtual {v0, p3}, Ljava/util/BitSet;->get(I)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p2, Lorg/jf/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeCheckCast(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/reference/TypeReference;

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-static {v1, v0}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(Lorg/jf/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeConst(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/NarrowLiteralInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/NarrowLiteralInstruction;->getNarrowLiteral()I

    move-result v0

    invoke-static {v0}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterTypeForLiteral(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeConstClass(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    const-string v1, "Ljava/lang/Class;"

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {v1, v0}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(BLorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeConstString(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    const-string v1, "Ljava/lang/String;"

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {v1, v0}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(BLorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeExecuteInline(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 13
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->inlineResolver:Lorg/jf/dexlib2/analysis/InlineMethodResolver;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35mi;

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->inlineResolver:Lorg/jf/dexlib2/analysis/InlineMethodResolver;

    invoke-virtual {v1, p1}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->resolveExecuteInline(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v10

    invoke-interface {v10}, Lorg/jf/dexlib2/iface/Method;->getAccessFlags()I

    move-result v1

    sget-object v2, Lorg/jf/dexlib2/AccessFlags;->STATIC:Lorg/jf/dexlib2/AccessFlags;

    invoke-virtual {v2, v1}, Lorg/jf/dexlib2/AccessFlags;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lorg/jf/dexlib2/Opcode;->INVOKE_STATIC:Lorg/jf/dexlib2/Opcode;

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_0
    sget-object v2, Lorg/jf/dexlib2/AccessFlags;->PRIVATE:Lorg/jf/dexlib2/AccessFlags;

    invoke-virtual {v2, v1}, Lorg/jf/dexlib2/AccessFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/jf/dexlib2/Opcode;->INVOKE_DIRECT:Lorg/jf/dexlib2/Opcode;

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/jf/dexlib2/Opcode;->INVOKE_VIRTUAL:Lorg/jf/dexlib2/Opcode;

    goto :goto_0

    :goto_1
    new-instance v1, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35c;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterCount()I

    move-result v4

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterC()I

    move-result v5

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterD()I

    move-result v6

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterE()I

    move-result v7

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterF()I

    move-result v8

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35mi;->getRegisterG()I

    move-result v9

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35c;-><init>(Lorg/jf/dexlib2/Opcode;IIIIIILorg/jf/dexlib2/iface/reference/Reference;)V

    invoke-virtual {p1, v1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lorg/jf/dexlib2/iface/instruction/Instruction;)V

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInstruction(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Z

    return-void

    :cond_2
    new-instance p1, Lorg/jf/dexlib2/analysis/AnalysisException;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot analyze an odexed instruction unless we are deodexing"

    invoke-direct {p1, v1, v0}, Lorg/jf/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private analyzeExecuteInlineRange(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->inlineResolver:Lorg/jf/dexlib2/analysis/InlineMethodResolver;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rmi;

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->inlineResolver:Lorg/jf/dexlib2/analysis/InlineMethodResolver;

    invoke-virtual {v1, p1}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->resolveExecuteInline(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/Method;->getAccessFlags()I

    move-result v2

    sget-object v3, Lorg/jf/dexlib2/AccessFlags;->STATIC:Lorg/jf/dexlib2/AccessFlags;

    invoke-virtual {v3, v2}, Lorg/jf/dexlib2/AccessFlags;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lorg/jf/dexlib2/Opcode;->INVOKE_STATIC_RANGE:Lorg/jf/dexlib2/Opcode;

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/jf/dexlib2/AccessFlags;->PRIVATE:Lorg/jf/dexlib2/AccessFlags;

    invoke-virtual {v3, v2}, Lorg/jf/dexlib2/AccessFlags;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/jf/dexlib2/Opcode;->INVOKE_DIRECT_RANGE:Lorg/jf/dexlib2/Opcode;

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/jf/dexlib2/Opcode;->INVOKE_VIRTUAL_RANGE:Lorg/jf/dexlib2/Opcode;

    :goto_0
    new-instance v3, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rc;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rmi;->getStartRegister()I

    move-result v4

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rmi;->getRegisterCount()I

    move-result v0

    invoke-direct {v3, v2, v4, v0, v1}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rc;-><init>(Lorg/jf/dexlib2/Opcode;IILorg/jf/dexlib2/iface/reference/Reference;)V

    invoke-virtual {p1, v3}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lorg/jf/dexlib2/iface/instruction/Instruction;)V

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInstruction(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Z

    return-void

    :cond_2
    new-instance p1, Lorg/jf/dexlib2/analysis/AnalysisException;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot analyze an odexed instruction unless we are deodexing"

    invoke-direct {p1, v1, v0}, Lorg/jf/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private analyzeFloatWideCmp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeIfEqzNez(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 10
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/ClassPath;->isArt()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstructionIndex()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPredecessorCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPredecessors()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    iget-object v2, v0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v2

    sget-object v3, Lorg/jf/dexlib2/Opcode;->INSTANCE_OF:Lorg/jf/dexlib2/Opcode;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {p1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstructionIndex()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lorg/jf/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getInstructionAddress(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)I

    move-result v2

    iget-object v3, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21t;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21t;->getCodeOffset()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {v3, v2}, Lorg/jf/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    iget-object v3, v0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterB()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v3

    iget-object v0, v0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;

    iget-object v4, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/reference/TypeReference;

    invoke-static {v4, v0}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(Lorg/jf/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getSetRegisters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v6}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v6

    sget-object v7, Lorg/jf/dexlib2/Opcode;->IF_EQZ:Lorg/jf/dexlib2/Opcode;

    if-ne v6, v7, :cond_1

    invoke-direct {p0, v1, p1, v5, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->overridePredecessorRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;)V

    invoke-direct {p0, v2, p1, v5, v3}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->overridePredecessorRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, p1, v5, v3}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->overridePredecessorRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;)V

    invoke-direct {p0, v2, p1, v5, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->overridePredecessorRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private analyzeIgetSgetWideObject(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/reference/FieldReference;

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(Lorg/jf/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeInstanceOf(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeInstruction(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Z
    .registers 5
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    sget-object v1, Lorg/jf/dexlib2/analysis/MethodAnalyzer$3;->$SwitchMap$org$jf$dexlib2$Opcode:[I

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jf/dexlib2/Opcode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzePutGetVolatile(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Z

    return v2

    :pswitch_1
    invoke-direct {p0, p1, v2, v2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeVirtualQuick(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ZZ)Z

    move-result p1

    return p1

    :pswitch_2
    invoke-direct {p0, p1, v1, v2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeVirtualQuick(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ZZ)Z

    move-result p1

    return p1

    :pswitch_3
    invoke-direct {p0, p1, v2, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeVirtualQuick(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ZZ)Z

    move-result p1

    return p1

    :pswitch_4
    invoke-direct {p0, p1, v1, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeVirtualQuick(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ZZ)Z

    move-result p1

    return p1

    :pswitch_5
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeIputIgetQuick(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Z

    move-result p1

    return p1

    :pswitch_6
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeObjectInitRange(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    :pswitch_7
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeDirectEmpty(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    :pswitch_8
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeExecuteInlineRange(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    :pswitch_9
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeExecuteInline(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    :pswitch_a
    return v2

    :pswitch_b
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzePutGetVolatile(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Z

    return v2

    :pswitch_c
    invoke-direct {p0, p1, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getDestTypeForLiteralShiftRight(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeLiteralBinaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;Z)V

    return v2

    :pswitch_d
    invoke-direct {p0, p1, v2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getDestTypeForLiteralShiftRight(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeLiteralBinaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;Z)V

    return v2

    :pswitch_e
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeLiteralBinaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;Z)V

    return v2

    :pswitch_f
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeLiteralBinaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;Z)V

    return v2

    :pswitch_10
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeLiteralBinaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;Z)V

    return v2

    :pswitch_11
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeLiteralBinaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;Z)V

    return v2

    :pswitch_12
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeBinary2AddrOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;Z)V

    return v2

    :pswitch_13
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->FLOAT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeBinary2AddrOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;Z)V

    return v2

    :pswitch_14
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeBinary2AddrOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;Z)V

    return v2

    :pswitch_15
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeBinary2AddrOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;Z)V

    return v2

    :pswitch_16
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeBinary2AddrOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;Z)V

    return v2

    :pswitch_17
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeBinaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;Z)V

    return v2

    :pswitch_18
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->FLOAT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeBinaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;Z)V

    return v2

    :pswitch_19
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeBinaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;Z)V

    return v2

    :pswitch_1a
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeBinaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;Z)V

    return v2

    :pswitch_1b
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeBinaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;Z)V

    return v2

    :pswitch_1c
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->SHORT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_1d
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->CHAR_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_1e
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_1f
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_20
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_21
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_22
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_23
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_24
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->FLOAT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_25
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_26
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_27
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->FLOAT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_28
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_29
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_2a
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->FLOAT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_2b
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_2c
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeUnaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    :pswitch_2d
    return v2

    :pswitch_2e
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeDirectRange(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    :pswitch_2f
    invoke-direct {p0, p1, v2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeVirtual(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)Z

    return v2

    :pswitch_30
    invoke-direct {p0, p1, v2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeVirtual(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)Z

    :pswitch_31
    return v2

    :pswitch_32
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeDirect(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    :pswitch_33
    invoke-direct {p0, p1, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeVirtual(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)Z

    return v2

    :pswitch_34
    invoke-direct {p0, p1, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeVirtual(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)Z

    :pswitch_35
    return v2

    :pswitch_36
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeIgetSgetWideObject(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    :pswitch_37
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->SHORT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_38
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->CHAR_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_39
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_3a
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_3b
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    :pswitch_3c
    return v2

    :pswitch_3d
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeIgetSgetWideObject(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    :pswitch_3e
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->SHORT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_3f
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->CHAR_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_40
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_41
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_42
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveIgetSget(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    :pswitch_43
    return v2

    :pswitch_44
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeAgetObject(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    :pswitch_45
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeAgetWide(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    :pswitch_46
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->SHORT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveAget(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_47
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->CHAR_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveAget(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_48
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveAget(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_49
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveAget(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_4a
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyze32BitPrimitiveAget(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return v2

    :pswitch_4b
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeIfEqzNez(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    :pswitch_4c
    return v2

    :pswitch_4d
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeFloatWideCmp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    :pswitch_4e
    return v2

    :pswitch_4f
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeNewArray(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    :pswitch_50
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeNewInstance(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    :pswitch_51
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeArrayLength(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    :pswitch_52
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInstanceOf(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    :pswitch_53
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeCheckCast(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    :pswitch_54
    return v2

    :pswitch_55
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeConstClass(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    :pswitch_56
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeConstString(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    :pswitch_57
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeWideConst(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    :pswitch_58
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeConst(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    :pswitch_59
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeOdexReturnVoid(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    :pswitch_5a
    return v2

    :pswitch_5b
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeMoveException(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    :pswitch_5c
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeMoveResult(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    return v2

    :pswitch_5d
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeMove(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    :goto_0
    :pswitch_5e
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_59
        :pswitch_59
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_56
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4b
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
        :pswitch_2b
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private analyzeInvokeDirect(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/FiveRegisterInstruction;->getRegisterC()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeDirectCommon(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;I)V

    return-void
.end method

.method private analyzeInvokeDirectCommon(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;I)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->isInvokeInit()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object p2

    iget-byte v0, p2, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    iget-byte v0, p2, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x12

    iget-object v1, p2, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-static {v0, v1}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(BLorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getSetRegisters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v3

    if-ne v3, p2, :cond_1

    invoke-direct {p0, p1, v2, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v2, v3}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private analyzeInvokeDirectEmpty(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeDirectEmpty(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)V

    return-void
.end method

.method private analyzeInvokeDirectEmpty(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)V
    .registers 14
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;

    new-instance v10, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35c;

    sget-object v2, Lorg/jf/dexlib2/Opcode;->INVOKE_DIRECT:Lorg/jf/dexlib2/Opcode;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterCount()I

    move-result v3

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterC()I

    move-result v4

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterD()I

    move-result v5

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterE()I

    move-result v6

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterF()I

    move-result v7

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterG()I

    move-result v8

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35c;-><init>(Lorg/jf/dexlib2/Opcode;IIIIIILorg/jf/dexlib2/iface/reference/Reference;)V

    invoke-virtual {p1, v10}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lorg/jf/dexlib2/iface/instruction/Instruction;)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInstruction(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Z

    :cond_0
    return-void
.end method

.method private analyzeInvokeDirectRange(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/RegisterRangeInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/RegisterRangeInstruction;->getStartRegister()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeDirectCommon(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;I)V

    return-void
.end method

.method private analyzeInvokeObjectInitRange(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInvokeObjectInitRange(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)V

    return-void
.end method

.method private analyzeInvokeObjectInitRange(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)V
    .registers 14
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;->getStartRegister()I

    move-result v4

    const/16 v1, 0x10

    if-ge v4, v1, :cond_0

    new-instance v10, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35c;

    sget-object v2, Lorg/jf/dexlib2/Opcode;->INVOKE_DIRECT:Lorg/jf/dexlib2/Opcode;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35c;-><init>(Lorg/jf/dexlib2/Opcode;IIIIIILorg/jf/dexlib2/iface/reference/Reference;)V

    goto :goto_0

    :cond_0
    new-instance v10, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rc;

    sget-object v1, Lorg/jf/dexlib2/Opcode;->INVOKE_DIRECT_RANGE:Lorg/jf/dexlib2/Opcode;

    const/4 v2, 0x1

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v0

    invoke-direct {v10, v1, v4, v2, v0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rc;-><init>(Lorg/jf/dexlib2/Opcode;IILorg/jf/dexlib2/iface/reference/Reference;)V

    :goto_0
    invoke-virtual {p1, v10}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lorg/jf/dexlib2/iface/instruction/Instruction;)V

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInstruction(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Z

    :cond_1
    return-void
.end method

.method private analyzeInvokeVirtual(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)Z
    .registers 14
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->normalizeVirtualMethods:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v0

    :goto_0
    check-cast v0, Lorg/jf/dexlib2/iface/reference/MethodReference;

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-direct {p0, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->normalizeMethodReference(Lorg/jf/dexlib2/iface/reference/MethodReference;)Lorg/jf/dexlib2/iface/reference/MethodReference;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-interface {v10, v0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    iget-object p2, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast p2, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;

    new-instance v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rc;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v2

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;->getStartRegister()I

    move-result v3

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;->getRegisterCount()I

    move-result p2

    invoke-direct {v0, v2, v3, p2, v10}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rc;-><init>(Lorg/jf/dexlib2/Opcode;IILorg/jf/dexlib2/iface/reference/Reference;)V

    goto :goto_2

    :cond_3
    iget-object p2, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast p2, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;

    new-instance v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35c;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v3

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterCount()I

    move-result v4

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterC()I

    move-result v5

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterD()I

    move-result v6

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterE()I

    move-result v7

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterF()I

    move-result v8

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterG()I

    move-result v9

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35c;-><init>(Lorg/jf/dexlib2/Opcode;IIIIIILorg/jf/dexlib2/iface/reference/Reference;)V

    :goto_2
    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lorg/jf/dexlib2/iface/instruction/Instruction;)V

    :cond_4
    :goto_3
    return v1
.end method

.method private analyzeInvokeVirtualQuick(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ZZ)Z
    .registers 24
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p3, :cond_0

    iget-object v4, v1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v4, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rms;

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rms;->getVtableIndex()I

    move-result v5

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rms;->getStartRegister()I

    move-result v4

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v4, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;->getVtableIndex()I

    move-result v5

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterC()I

    move-result v4

    :goto_0
    sget-object v6, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->ReferenceOrUninitCategories:Ljava/util/BitSet;

    invoke-static {v1, v4, v6}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getAndCheckSourceRegister(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILjava/util/BitSet;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v4

    iget-object v6, v4, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    iget-byte v7, v4, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne v7, v8, :cond_1

    return v9

    :cond_1
    if-eqz p2, :cond_3

    iget-object v7, v0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    iget-object v10, v0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v10}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v7

    invoke-interface {v7}, Lorg/jf/dexlib2/analysis/TypeProto;->getSuperclass()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v7, v0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v7, v10}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v7

    :cond_2
    invoke-interface {v7, v5}, Lorg/jf/dexlib2/analysis/TypeProto;->getMethodByVtableIndex(I)Lorg/jf/dexlib2/iface/Method;

    move-result-object v7

    goto :goto_1

    :cond_3
    invoke-interface {v6, v5}, Lorg/jf/dexlib2/analysis/TypeProto;->getMethodByVtableIndex(I)Lorg/jf/dexlib2/iface/Method;

    move-result-object v7

    :goto_1
    const/4 v10, 0x1

    if-eqz v7, :cond_d

    iget-object v4, v0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    iget-object v8, v0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v8}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/jf/dexlib2/analysis/ClassPath;->getClassDef(Ljava/lang/String;)Lorg/jf/dexlib2/iface/ClassDef;

    move-result-object v4

    iget-object v8, v0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-interface {v7}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v8

    invoke-interface {v8}, Lorg/jf/dexlib2/analysis/TypeProto;->isInterface()Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v4, Lorg/jf/dexlib2/analysis/MethodAnalyzer$ReparentedMethodReference;

    invoke-interface {v6}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lorg/jf/dexlib2/analysis/MethodAnalyzer$ReparentedMethodReference;-><init>(Lorg/jf/dexlib2/iface/reference/MethodReference;Ljava/lang/String;)V

    move-object v7, v4

    goto/16 :goto_3

    :cond_4
    if-nez p2, :cond_8

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v8

    iget-object v11, v0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-interface {v7}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jf/dexlib2/analysis/ClassPath;->getClassDef(Ljava/lang/String;)Lorg/jf/dexlib2/iface/ClassDef;

    move-result-object v11

    invoke-static {v8, v11}, Lorg/jf/dexlib2/util/TypeUtils;->canAccessClass(Ljava/lang/String;Lorg/jf/dexlib2/iface/ClassDef;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-interface {v6}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v8, v6}, Lorg/jf/dexlib2/analysis/ClassPath;->getClassDef(Ljava/lang/String;)Lorg/jf/dexlib2/iface/ClassDef;

    move-result-object v6

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lorg/jf/dexlib2/util/TypeUtils;->canAccessClass(Ljava/lang/String;Lorg/jf/dexlib2/iface/ClassDef;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-interface {v6}, Lorg/jf/dexlib2/iface/ClassDef;->getSuperclass()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v8, v0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    goto :goto_2

    :cond_5
    new-instance v1, Lorg/jf/util/ExceptionWithContext;

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v7, v10}, Lorg/jf/dexlib2/util/ReferenceUtil;->getMethodDescriptor(Lorg/jf/dexlib2/iface/reference/MethodReference;Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v3, "Couldn\'t find accessible class while resolving method %s"

    invoke-direct {v1, v3, v2}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_6
    iget-object v4, v0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-interface {v6}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v4

    invoke-interface {v4, v5}, Lorg/jf/dexlib2/analysis/TypeProto;->getMethodByVtableIndex(I)Lorg/jf/dexlib2/iface/Method;

    move-result-object v4

    if-eqz v4, :cond_7

    new-instance v7, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;

    invoke-interface {v6}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v5, v6, v8, v4}, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    new-instance v1, Lorg/jf/util/ExceptionWithContext;

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v7, v10}, Lorg/jf/dexlib2/util/ReferenceUtil;->getMethodDescriptor(Lorg/jf/dexlib2/iface/reference/MethodReference;Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v3, "Couldn\'t find accessible class while resolving method %s"

    invoke-direct {v1, v3, v2}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_8
    :goto_3
    iget-boolean v4, v0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->normalizeVirtualMethods:Z

    if-eqz v4, :cond_9

    invoke-direct {v0, v7}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->normalizeMethodReference(Lorg/jf/dexlib2/iface/reference/MethodReference;)Lorg/jf/dexlib2/iface/reference/MethodReference;

    move-result-object v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    move-object v4, v7

    :goto_4
    if-eqz p3, :cond_b

    iget-object v3, v1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rms;

    if-eqz p2, :cond_a

    sget-object v2, Lorg/jf/dexlib2/Opcode;->INVOKE_SUPER_RANGE:Lorg/jf/dexlib2/Opcode;

    goto :goto_5

    :cond_a
    sget-object v2, Lorg/jf/dexlib2/Opcode;->INVOKE_VIRTUAL_RANGE:Lorg/jf/dexlib2/Opcode;

    :goto_5
    new-instance v5, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rc;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rms;->getStartRegister()I

    move-result v6

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rms;->getRegisterCount()I

    move-result v3

    invoke-direct {v5, v2, v6, v3, v4}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction3rc;-><init>(Lorg/jf/dexlib2/Opcode;IILorg/jf/dexlib2/iface/reference/Reference;)V

    move-object v2, v5

    goto :goto_8

    :cond_b
    iget-object v3, v1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;

    if-eqz p2, :cond_c

    sget-object v2, Lorg/jf/dexlib2/Opcode;->INVOKE_SUPER:Lorg/jf/dexlib2/Opcode;

    :goto_6
    move-object v12, v2

    goto :goto_7

    :cond_c
    sget-object v2, Lorg/jf/dexlib2/Opcode;->INVOKE_VIRTUAL:Lorg/jf/dexlib2/Opcode;

    goto :goto_6

    :goto_7
    new-instance v2, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35c;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterCount()I

    move-result v13

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterC()I

    move-result v14

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterD()I

    move-result v15

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterE()I

    move-result v16

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterF()I

    move-result v17

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35ms;->getRegisterG()I

    move-result v18

    move-object v11, v2

    move-object/from16 v19, v4

    invoke-direct/range {v11 .. v19}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction35c;-><init>(Lorg/jf/dexlib2/Opcode;IIIIIILorg/jf/dexlib2/iface/reference/Reference;)V

    :goto_8
    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lorg/jf/dexlib2/iface/instruction/Instruction;)V

    invoke-direct/range {p0 .. p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInstruction(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Z

    return v10

    :cond_d
    new-instance v1, Lorg/jf/dexlib2/analysis/AnalysisException;

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, v4, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-interface {v3}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const-string v3, "Could not resolve the method in class %s at index %d"

    invoke-direct {v1, v3, v2}, Lorg/jf/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private analyzeIputIgetQuick(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Z
    .registers 12
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22cs;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22cs;->getFieldOffset()I

    move-result v1

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22cs;->getRegisterB()I

    move-result v2

    sget-object v3, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->ReferenceOrUninitCategories:Ljava/util/BitSet;

    invoke-static {p1, v2, v3}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getAndCheckSourceRegister(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILjava/util/BitSet;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v2

    iget-byte v3, v2, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    return v5

    :cond_0
    iget-object v3, v2, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    iget-object v6, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-interface {v3}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/jf/dexlib2/analysis/TypeProto;->getFieldByOffset(I)Lorg/jf/dexlib2/iface/reference/FieldReference;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    iget-object v4, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jf/dexlib2/analysis/ClassPath;->getClassDef(Ljava/lang/String;)Lorg/jf/dexlib2/iface/ClassDef;

    move-result-object v2

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-interface {v6}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jf/dexlib2/analysis/ClassPath;->getClassDef(Ljava/lang/String;)Lorg/jf/dexlib2/iface/ClassDef;

    move-result-object v8

    invoke-static {v4, v8}, Lorg/jf/dexlib2/util/TypeUtils;->canAccessClass(Ljava/lang/String;Lorg/jf/dexlib2/iface/ClassDef;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-interface {v3}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Lorg/jf/dexlib2/analysis/ClassPath;->getClassDef(Ljava/lang/String;)Lorg/jf/dexlib2/iface/ClassDef;

    move-result-object v3

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/jf/dexlib2/util/TypeUtils;->canAccessClass(Ljava/lang/String;Lorg/jf/dexlib2/iface/ClassDef;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/ClassDef;->getSuperclass()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/jf/util/ExceptionWithContext;

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v6}, Lorg/jf/dexlib2/util/ReferenceUtil;->getShortFieldDescriptor(Lorg/jf/dexlib2/iface/reference/FieldReference;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Couldn\'t find accessible class while resolving field %s"

    invoke-direct {p1, v1, v0}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    iget-object v2, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/jf/dexlib2/analysis/TypeProto;->getFieldByOffset(I)Lorg/jf/dexlib2/iface/reference/FieldReference;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v6, Lorg/jf/dexlib2/immutable/reference/ImmutableFieldReference;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v2, v3, v1}, Lorg/jf/dexlib2/immutable/reference/ImmutableFieldReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/jf/util/ExceptionWithContext;

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v6}, Lorg/jf/dexlib2/util/ReferenceUtil;->getShortFieldDescriptor(Lorg/jf/dexlib2/iface/reference/FieldReference;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Couldn\'t find accessible class while resolving field %s"

    invoke-direct {p1, v1, v0}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_1
    invoke-interface {v6}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v2}, Lorg/jf/dexlib2/analysis/ClassPath;->getFieldInstructionMapper()Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper;

    move-result-object v2

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22cs;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper;->getAndCheckDeodexedOpcode(Ljava/lang/String;Lorg/jf/dexlib2/Opcode;)Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    new-instance v2, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction22c;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22cs;->getRegisterA()I

    move-result v3

    int-to-byte v3, v3

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22cs;->getRegisterB()I

    move-result v0

    int-to-byte v0, v0

    invoke-direct {v2, v1, v3, v0, v6}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction22c;-><init>(Lorg/jf/dexlib2/Opcode;IILorg/jf/dexlib2/iface/reference/Reference;)V

    invoke-virtual {p1, v2}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lorg/jf/dexlib2/iface/instruction/Instruction;)V

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInstruction(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Z

    return v7

    :cond_5
    new-instance p1, Lorg/jf/dexlib2/analysis/AnalysisException;

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v2, v2, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-interface {v2}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "Could not resolve the field in class %s at offset %d"

    invoke-direct {p1, v1, v0}, Lorg/jf/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private analyzeLiteralBinaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;Z)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p3, :cond_1

    iget-object p3, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast p3, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result p3

    invoke-virtual {p1, p3}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object p3

    sget-object v0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->BooleanCategories:Ljava/util/BitSet;

    iget-byte p3, p3, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    invoke-virtual {v0, p3}, Ljava/util/BitSet;->get(I)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast p3, Lorg/jf/dexlib2/iface/instruction/NarrowLiteralInstruction;

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/NarrowLiteralInstruction;->getNarrowLiteral()I

    move-result p3

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    :cond_0
    sget-object p2, Lorg/jf/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeMove(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeMoveException(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 9
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getInstructionAddress(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)I

    move-result v0

    sget-object v1, Lorg/jf/dexlib2/analysis/RegisterType;->UNKNOWN_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->methodImpl:Lorg/jf/dexlib2/iface/MethodImplementation;

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/MethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jf/dexlib2/iface/TryBlock;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jf/dexlib2/iface/ExceptionHandler;

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result v5

    if-ne v5, v0, :cond_1

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x12

    if-nez v4, :cond_2

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    const-string v4, "Ljava/lang/Throwable;"

    invoke-virtual {v1, v4}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v1

    invoke-static {v5, v1}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(BLorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v6, v4}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v4

    invoke-static {v5, v4}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(BLorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/jf/dexlib2/analysis/RegisterType;->merge(Lorg/jf/dexlib2/analysis/RegisterType;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-byte v0, v1, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void

    :cond_4
    new-instance p1, Lorg/jf/dexlib2/analysis/AnalysisException;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "move-exception must be the first instruction in an exception handler block"

    invoke-direct {p1, v1, v0}, Lorg/jf/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private analyzeMoveResult(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    iget v1, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/jf/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jf/dexlib2/Opcode;->setsResult()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v0

    instance-of v1, v0, Lorg/jf/dexlib2/iface/reference/MethodReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    check-cast v0, Lorg/jf/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(Lorg/jf/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    check-cast v0, Lorg/jf/dexlib2/iface/reference/TypeReference;

    goto :goto_1

    :goto_2
    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void

    :cond_2
    new-instance v0, Lorg/jf/dexlib2/analysis/AnalysisException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object p1

    iget-object p1, p1, Lorg/jf/dexlib2/Opcode;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must occur after an invoke-*/fill-new-array instruction"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lorg/jf/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private analyzeNewArray(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 6
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/reference/TypeReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5b

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-static {v1, v0}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(Lorg/jf/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void

    :cond_0
    new-instance p1, Lorg/jf/dexlib2/analysis/AnalysisException;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "new-array used with non-array type"

    invoke-direct {p1, v1, v0}, Lorg/jf/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private analyzeNewInstance(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    iget-object v1, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPostInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v1

    iget-byte v1, v1, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/reference/TypeReference;

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-static {v1, v0}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(Lorg/jf/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    const/16 v1, 0x10

    iget-object v0, v0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-static {v1, v0}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(BLorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeOdexReturnVoid(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeOdexReturnVoid(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)V

    return-void
.end method

.method private analyzeOdexReturnVoid(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction10x;

    sget-object v1, Lorg/jf/dexlib2/Opcode;->RETURN_VOID:Lorg/jf/dexlib2/Opcode;

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction10x;-><init>(Lorg/jf/dexlib2/Opcode;)V

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lorg/jf/dexlib2/iface/instruction/Instruction;)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInstruction(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Z

    :cond_0
    return-void
.end method

.method private analyzePutGetVolatile(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Z
    .registers 3
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzePutGetVolatile(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)Z

    move-result p1

    return p1
.end method

.method private analyzePutGetVolatile(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)Z
    .registers 8
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/reference/FieldReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v2

    iget-object v3, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v3}, Lorg/jf/dexlib2/analysis/ClassPath;->getFieldInstructionMapper()Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper;->getAndCheckDeodexedOpcode(Ljava/lang/String;Lorg/jf/dexlib2/Opcode;)Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-virtual {v2}, Lorg/jf/dexlib2/Opcode;->isStaticFieldAccessor()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v2, Lorg/jf/dexlib2/iface/instruction/OneRegisterInstruction;

    new-instance v3, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction21c;

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v2

    invoke-direct {v3, v1, v2, v0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction21c;-><init>(Lorg/jf/dexlib2/Opcode;ILorg/jf/dexlib2/iface/reference/Reference;)V

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v2, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;

    new-instance v3, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction22c;

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterA()I

    move-result v4

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v2

    invoke-direct {v3, v1, v4, v2, v0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction22c;-><init>(Lorg/jf/dexlib2/Opcode;IILorg/jf/dexlib2/iface/reference/Reference;)V

    :goto_0
    invoke-virtual {p1, v3}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->setDeodexedInstruction(Lorg/jf/dexlib2/iface/instruction/Instruction;)V

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzeInstruction(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private analyzeUnaryOp(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private analyzeWideConst(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private buildExceptionHandlerArray(Lorg/jf/dexlib2/iface/TryBlock;)[Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
    .registers 6
    .param p1    # Lorg/jf/dexlib2/iface/TryBlock;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jf/dexlib2/iface/ExceptionHandler;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/jf/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private buildInstructionList()V
    .registers 14

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->methodImpl:Lorg/jf/dexlib2/iface/MethodImplementation;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result v0

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->methodImpl:Lorg/jf/dexlib2/iface/MethodImplementation;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/jf/util/SparseArray;->ensureCapacity(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jf/dexlib2/iface/instruction/Instruction;

    iget-object v6, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    new-instance v7, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-direct {v7, p0, v5, v3, v0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;-><init>(Lorg/jf/dexlib2/analysis/MethodAnalyzer;Lorg/jf/dexlib2/iface/instruction/Instruction;II)V

    invoke-virtual {v6, v4, v7}, Lorg/jf/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-interface {v5}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->methodImpl:Lorg/jf/dexlib2/iface/MethodImplementation;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/MethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/jf/dexlib2/writer/util/TryListBuilder;->massageTryBlocks(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    new-array v3, v3, [[Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    if-eqz v0, :cond_4

    const/4 v4, 0x0

    move-object v6, v4

    move-object v8, v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    iget-object v9, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {v9}, Lorg/jf/util/SparseArray;->size()I

    move-result v9

    if-ge v5, v9, :cond_4

    iget-object v9, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {v9, v5}, Lorg/jf/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    iget-object v10, v9, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v10}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v10

    invoke-virtual {p0, v9}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getInstructionAddress(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)I

    move-result v9

    if-eqz v6, :cond_1

    invoke-interface {v6}, Lorg/jf/dexlib2/iface/TryBlock;->getStartCodeAddress()I

    move-result v11

    invoke-interface {v6}, Lorg/jf/dexlib2/iface/TryBlock;->getCodeUnitCount()I

    move-result v12

    add-int/2addr v11, v12

    if-gt v11, v9, :cond_1

    add-int/lit8 v7, v7, 0x1

    move-object v6, v4

    :cond_1
    if-nez v6, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jf/dexlib2/iface/TryBlock;

    invoke-interface {v11}, Lorg/jf/dexlib2/iface/TryBlock;->getStartCodeAddress()I

    move-result v12

    if-gt v12, v9, :cond_2

    invoke-direct {p0, v11}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->buildExceptionHandlerArray(Lorg/jf/dexlib2/iface/TryBlock;)[Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    move-result-object v6

    move-object v8, v6

    move-object v6, v11

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v10}, Lorg/jf/dexlib2/Opcode;->canThrow()Z

    move-result v9

    if-eqz v9, :cond_3

    aput-object v8, v3, v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->startOfMethod:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    iget-object v4, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {v4, v2}, Lorg/jf/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-direct {p0, v1, v4, v3, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->addPredecessorSuccessor(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;[[Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Ljava/util/BitSet;)V

    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    iget-object v4, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {v4, v1}, Lorg/jf/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    iget-object v5, v4, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v5}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v5

    invoke-virtual {p0, v4}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getInstructionAddress(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)I

    move-result v6

    iget-object v7, v4, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v7}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jf/dexlib2/Opcode;->canContinue()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {v7}, Lorg/jf/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v1, v7, :cond_6

    iget-object v7, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Lorg/jf/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-direct {p0, v4, v1, v3, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->addPredecessorSuccessor(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;[[Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Ljava/util/BitSet;)V

    goto :goto_3

    :cond_6
    new-instance v0, Lorg/jf/dexlib2/analysis/AnalysisException;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Execution can continue past the last instruction"

    invoke-direct {v0, v2, v1}, Lorg/jf/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_7
    :goto_3
    iget-object v1, v4, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    instance-of v1, v1, Lorg/jf/dexlib2/iface/instruction/OffsetInstruction;

    if-eqz v1, :cond_5

    iget-object v1, v4, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/OffsetInstruction;

    sget-object v7, Lorg/jf/dexlib2/Opcode;->PACKED_SWITCH:Lorg/jf/dexlib2/Opcode;

    if-eq v5, v7, :cond_9

    sget-object v7, Lorg/jf/dexlib2/Opcode;->SPARSE_SWITCH:Lorg/jf/dexlib2/Opcode;

    if-ne v5, v7, :cond_8

    goto :goto_4

    :cond_8
    sget-object v7, Lorg/jf/dexlib2/Opcode;->FILL_ARRAY_DATA:Lorg/jf/dexlib2/Opcode;

    if-eq v5, v7, :cond_5

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/OffsetInstruction;->getCodeOffset()I

    move-result v1

    iget-object v5, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    add-int/2addr v6, v1

    invoke-virtual {v5, v6}, Lorg/jf/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-direct {p0, v4, v1, v3, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->addPredecessorSuccessor(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;[[Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Ljava/util/BitSet;)V

    goto :goto_2

    :cond_9
    :goto_4
    iget-object v5, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/OffsetInstruction;->getCodeOffset()I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {v5, v1}, Lorg/jf/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    if-eqz v1, :cond_b

    iget-object v1, v1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/SwitchPayload;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/SwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jf/dexlib2/iface/instruction/SwitchElement;

    iget-object v7, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-interface {v5}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v7, v5}, Lorg/jf/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    if-eqz v5, :cond_a

    invoke-direct {p0, v4, v5, v3, v0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->addPredecessorSuccessor(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;[[Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Ljava/util/BitSet;)V

    goto :goto_5

    :cond_a
    new-instance v0, Lorg/jf/dexlib2/analysis/AnalysisException;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Invalid switch target offset"

    invoke-direct {v0, v2, v1}, Lorg/jf/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_b
    new-instance v0, Lorg/jf/dexlib2/analysis/AnalysisException;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Invalid switch payload offset"

    invoke-direct {v0, v2, v1}, Lorg/jf/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_c
    return-void
.end method

.method static canPropagateTypeAfterInstanceOf(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/ClassPath;)Z
    .registers 6

    invoke-virtual {p2}, Lorg/jf/dexlib2/analysis/ClassPath;->isArt()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21t;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21t;->getRegisterA()I

    move-result v0

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getDestinationRegister()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/reference/TypeReference;

    invoke-static {p2, v0}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(Lorg/jf/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object p2

    :try_start_0
    iget-object v0, p2, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-interface {v0}, Lorg/jf/dexlib2/analysis/TypeProto;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object p0

    check-cast p0, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->isNotWideningConversion(Lorg/jf/dexlib2/analysis/RegisterType;Lorg/jf/dexlib2/analysis/RegisterType;)Z

    move-result p0
    :try_end_0
    .catch Lorg/jf/dexlib2/analysis/UnresolvedClassException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    return v1
.end method

.method private static checkRegister(Lorg/jf/dexlib2/analysis/RegisterType;ILjava/util/BitSet;)V
    .registers 5

    iget-byte v0, p0, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lorg/jf/dexlib2/analysis/AnalysisException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/RegisterType;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "Invalid register type %s for register v%d."

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-direct {p2, p0, p1}, Lorg/jf/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method private static checkWidePair(ILorg/jf/dexlib2/analysis/AnalyzedInstruction;)V
    .registers 4

    add-int/lit8 v0, p0, 0x1

    iget-object p1, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->postRegisterMap:[Lorg/jf/dexlib2/analysis/RegisterType;

    array-length p1, p1

    if-ge v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/jf/dexlib2/analysis/AnalysisException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "v%d cannot be used as the first register in a wide registerpair because it is the last register."

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p1, p0, v0}, Lorg/jf/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private static getAndCheckSourceRegister(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILjava/util/BitSet;)Lorg/jf/dexlib2/analysis/RegisterType;
    .registers 5
    .param p0    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->checkRegister(Lorg/jf/dexlib2/analysis/RegisterType;ILjava/util/BitSet;)V

    sget-object v1, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->WideLowCategories:Ljava/util/BitSet;

    if-ne p2, v1, :cond_0

    sget-object p2, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->WideLowCategories:Ljava/util/BitSet;

    invoke-static {v0, p1, p2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->checkRegister(Lorg/jf/dexlib2/analysis/RegisterType;ILjava/util/BitSet;)V

    invoke-static {p1, p0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->checkWidePair(ILorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPreInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object p0

    sget-object p2, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->WideHighCategories:Ljava/util/BitSet;

    invoke-static {p0, p1, p2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->checkRegister(Lorg/jf/dexlib2/analysis/RegisterType;ILjava/util/BitSet;)V

    :cond_0
    return-object v0
.end method

.method private getDestTypeForLiteralShiftRight(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Z)Lorg/jf/dexlib2/analysis/RegisterType;
    .registers 10
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v0

    sget-object v1, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->Primitive32BitCategories:Ljava/util/BitSet;

    invoke-static {p1, v0, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->getAndCheckSourceRegister(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILjava/util/BitSet;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    iget-object p1, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast p1, Lorg/jf/dexlib2/iface/instruction/NarrowLiteralInstruction;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/NarrowLiteralInstruction;->getNarrowLiteral()I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    sget-object p1, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    const-wide/16 v3, 0x1f

    and-long/2addr v1, v3

    iget-byte v0, v0, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    const-wide/16 v3, 0x8

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-wide/16 v3, 0x10

    const-wide/16 v5, 0x18

    if-nez p2, :cond_3

    cmp-long p2, v1, v5

    if-lez p2, :cond_2

    sget-object p1, Lorg/jf/dexlib2/analysis/RegisterType;->POS_BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p1

    :cond_2
    cmp-long p2, v1, v3

    if-ltz p2, :cond_5

    sget-object p1, Lorg/jf/dexlib2/analysis/RegisterType;->CHAR_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p1

    :cond_3
    cmp-long p2, v1, v5

    if-ltz p2, :cond_4

    sget-object p1, Lorg/jf/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p1

    :cond_4
    cmp-long p2, v1, v3

    if-ltz p2, :cond_5

    sget-object p1, Lorg/jf/dexlib2/analysis/RegisterType;->SHORT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p1

    :pswitch_1
    cmp-long p2, v1, v3

    if-lez p2, :cond_5

    sget-object p1, Lorg/jf/dexlib2/analysis/RegisterType;->POS_BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p1

    :pswitch_2
    cmp-long p2, v1, v3

    if-ltz p2, :cond_5

    sget-object p1, Lorg/jf/dexlib2/analysis/RegisterType;->POS_BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p1

    :pswitch_3
    if-eqz p2, :cond_5

    cmp-long p2, v1, v3

    if-ltz p2, :cond_5

    sget-object p1, Lorg/jf/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p1

    :pswitch_4
    sget-object p1, Lorg/jf/dexlib2/analysis/RegisterType;->POS_BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p1

    :pswitch_5
    sget-object p1, Lorg/jf/dexlib2/analysis/RegisterType;->NULL_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    :cond_5
    :goto_1
    :pswitch_6
    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initializeRefAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;)V
    .registers 6
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {v1}, Lorg/jf/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {p1, p2, p3}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->setPostRegisterType(ILorg/jf/dexlib2/analysis/RegisterType;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->propagateRegisterToSuccessors(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILjava/util/BitSet;Z)V

    invoke-direct {p0, v0, p2, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->propagateChanges(Ljava/util/BitSet;IZ)V

    iget-byte v0, p3, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    invoke-static {p2, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->checkWidePair(ILorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    add-int/lit8 p2, p2, 0x1

    sget-object p3, Lorg/jf/dexlib2/analysis/RegisterType;->LONG_HI_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, p2, p3}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;)V

    return-void

    :cond_1
    iget-byte p3, p3, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    const/16 v0, 0xe

    if-ne p3, v0, :cond_2

    invoke-static {p2, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->checkWidePair(ILorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    add-int/lit8 p2, p2, 0x1

    sget-object p3, Lorg/jf/dexlib2/analysis/RegisterType;->DOUBLE_HI_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, p2, p3}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;)V

    :cond_2
    return-void
.end method

.method public static isNotWideningConversion(Lorg/jf/dexlib2/analysis/RegisterType;Lorg/jf/dexlib2/analysis/RegisterType;)Z
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-interface {v0}, Lorg/jf/dexlib2/analysis/TypeProto;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    iget-object p0, p0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-interface {p0}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/jf/dexlib2/analysis/TypeProto;->implementsInterface(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    iget-object v0, p1, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-interface {v0, v2}, Lorg/jf/dexlib2/analysis/TypeProto;->getCommonSuperclass(Lorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v0

    invoke-interface {v0}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-interface {p0}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    invoke-interface {v0}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-interface {p1}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private normalizeMethodReference(Lorg/jf/dexlib2/iface/reference/MethodReference;)Lorg/jf/dexlib2/iface/reference/MethodReference;
    .registers 8
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1}, Lorg/jf/dexlib2/analysis/TypeProto;->findMethodIndexInVtable(Lorg/jf/dexlib2/iface/reference/MethodReference;)I

    move-result p1
    :try_end_0
    .catch Lorg/jf/dexlib2/analysis/UnresolvedClassException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-interface {v0, p1}, Lorg/jf/dexlib2/analysis/TypeProto;->getMethodByVtableIndex(I)Lorg/jf/dexlib2/iface/Method;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Lorg/jf/dexlib2/analysis/TypeProto;->getSuperclass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v3, v0}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jf/dexlib2/analysis/TypeProto;->getMethodByVtableIndex(I)Lorg/jf/dexlib2/iface/Method;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v3, v5, v5, v4}, Lorg/jf/dexlib2/analysis/AnalyzedMethodUtil;->canAccess(Lorg/jf/dexlib2/analysis/TypeProto;Lorg/jf/dexlib2/iface/Method;ZZZ)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_2
    return-object v2

    :catch_0
    return-object v1
.end method

.method private overridePredecessorRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;)V
    .registers 8
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :goto_0
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {v1}, Lorg/jf/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedState:Ljava/util/BitSet;

    invoke-virtual {p1, p2, p3, p4, v1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->overridePredecessorRegisterType(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;Ljava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->propagateChanges(Ljava/util/BitSet;IZ)V

    iget-byte v0, p4, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    invoke-static {p3, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->checkWidePair(ILorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    add-int/2addr p3, v1

    sget-object p4, Lorg/jf/dexlib2/analysis/RegisterType;->LONG_HI_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->overridePredecessorRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;)V

    return-void

    :cond_1
    iget-byte p4, p4, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    const/16 v0, 0xe

    if-ne p4, v0, :cond_2

    invoke-static {p3, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->checkWidePair(ILorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    add-int/lit8 p3, p3, 0x1

    sget-object p4, Lorg/jf/dexlib2/analysis/RegisterType;->DOUBLE_HI_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private propagateChanges(Ljava/util/BitSet;IZ)V
    .registers 6
    .param p1    # Ljava/util/BitSet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->clear(I)V

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {v1, v0}, Lorg/jf/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-direct {p0, v1, p2, p1, p3}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->propagateRegisterToSuccessors(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILjava/util/BitSet;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private propagateParameterTypes(I)V
    .registers 9

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/Method;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jf/dexlib2/iface/MethodParameter;

    invoke-static {v3}, Lorg/jf/dexlib2/util/TypeUtils;->isWideType(Lorg/jf/dexlib2/iface/reference/TypeReference;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->startOfMethod:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v2, p1

    const/4 v6, 0x1

    invoke-static {v3, v6}, Lorg/jf/dexlib2/analysis/RegisterType;->getWideRegisterType(Ljava/lang/CharSequence;Z)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v6

    invoke-direct {p0, v4, v2, v6}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;)V

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->startOfMethod:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    add-int/lit8 v4, v5, 0x1

    add-int/2addr v5, p1

    invoke-static {v3, v1}, Lorg/jf/dexlib2/analysis/RegisterType;->getWideRegisterType(Ljava/lang/CharSequence;Z)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v3

    invoke-direct {p0, v2, v5, v3}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;)V

    move v2, v4

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->startOfMethod:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v2, p1

    iget-object v6, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-static {v6, v3}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(Lorg/jf/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v3

    invoke-direct {p0, v4, v2, v3}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;)V

    move v2, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method private propagateRegisterToSuccessors(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILjava/util/BitSet;Z)V
    .registers 8
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/util/BitSet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getPostInstructionRegisterType(I)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object v0

    iget-object p1, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->successors:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedState:Ljava/util/BitSet;

    invoke-virtual {v1, p2, v0, v2, p4}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->mergeRegister(ILorg/jf/dexlib2/analysis/RegisterType;Ljava/util/BitSet;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    invoke-virtual {p3, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setDestinationRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;Lorg/jf/dexlib2/analysis/RegisterType;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->getDestinationRegister()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;)V

    return-void
.end method

.method private setPostRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;)V
    .registers 6
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :goto_0
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {v1}, Lorg/jf/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {p1, p2, p3}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->setPostRegisterType(ILorg/jf/dexlib2/analysis/RegisterType;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->propagateRegisterToSuccessors(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILjava/util/BitSet;Z)V

    invoke-direct {p0, v0, p2, v1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->propagateChanges(Ljava/util/BitSet;IZ)V

    iget-byte v0, p3, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    invoke-static {p2, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->checkWidePair(ILorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    add-int/lit8 p2, p2, 0x1

    sget-object p3, Lorg/jf/dexlib2/analysis/RegisterType;->LONG_HI_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {p0, p1, p2, p3}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->setPostRegisterTypeAndPropagateChanges(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;ILorg/jf/dexlib2/analysis/RegisterType;)V

    return-void

    :cond_1
    iget-byte p3, p3, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    const/16 v0, 0xe

    if-ne p3, v0, :cond_2

    invoke-static {p2, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->checkWidePair(ILorg/jf/dexlib2/analysis/AnalyzedInstruction;)V

    add-int/lit8 p2, p2, 0x1

    sget-object p3, Lorg/jf/dexlib2/analysis/RegisterType;->DOUBLE_HI_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getAnalysisException()Lorg/jf/dexlib2/analysis/AnalysisException;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analysisException:Lorg/jf/dexlib2/analysis/AnalysisException;

    return-object v0
.end method

.method public getAnalyzedInstructions()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {v0}, Lorg/jf/util/SparseArray;->getValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClassPath()Lorg/jf/dexlib2/analysis/ClassPath;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    return-object v0
.end method

.method public getInstructionAddress(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)I
    .registers 3
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    iget p1, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instructionIndex:I

    invoke-virtual {v0, p1}, Lorg/jf/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1
.end method

.method public getInstructions()Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->analyzedInstructions:Lorg/jf/util/SparseArray;

    invoke-virtual {v0}, Lorg/jf/util/SparseArray;->getValues()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/jf/dexlib2/analysis/MethodAnalyzer$2;

    invoke-direct {v1, p0}, Lorg/jf/dexlib2/analysis/MethodAnalyzer$2;-><init>(Lorg/jf/dexlib2/analysis/MethodAnalyzer;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParamRegisterCount()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer;->paramRegisterCount:I

    return v0
.end method
