.class public Lorg/jf/dexlib2/builder/MutableMethodImplementation;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/MethodImplementation;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private fixInstructions:Z

.field final instructionList:Ljava/util/ArrayList;

.field private final registerCount:I

.field private final tryBlocks:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/jf/dexlib2/builder/MethodLocation;

    new-instance v2, Lorg/jf/dexlib2/builder/MethodLocation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v3}, Lorg/jf/dexlib2/builder/MethodLocation;-><init>(Lorg/jf/dexlib2/builder/BuilderInstruction;II)V

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->tryBlocks:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    iput p1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->registerCount:I

    return-void
.end method

.method public constructor <init>(Lorg/jf/dexlib2/iface/MethodImplementation;)V
    .registers 10
    .param p1    # Lorg/jf/dexlib2/iface/MethodImplementation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/jf/dexlib2/builder/MethodLocation;

    new-instance v2, Lorg/jf/dexlib2/builder/MethodLocation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Lorg/jf/dexlib2/builder/MethodLocation;-><init>(Lorg/jf/dexlib2/builder/BuilderInstruction;II)V

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->tryBlocks:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result v1

    iput v1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->registerCount:I

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-interface {v6}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v6

    add-int/2addr v2, v6

    add-int/2addr v5, v0

    iget-object v6, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    new-instance v7, Lorg/jf/dexlib2/builder/MethodLocation;

    invoke-direct {v7, v3, v2, v5}, Lorg/jf/dexlib2/builder/MethodLocation;-><init>(Lorg/jf/dexlib2/builder/BuilderInstruction;II)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    add-int/2addr v2, v0

    new-array v0, v2, [I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/builder/MethodLocation;

    iget v2, v2, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    aput v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jf/dexlib2/iface/instruction/Instruction;

    iget-object v5, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jf/dexlib2/builder/MethodLocation;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v6

    sget-object v7, Lorg/jf/dexlib2/Opcode;->PACKED_SWITCH_PAYLOAD:Lorg/jf/dexlib2/Opcode;

    if-eq v6, v7, :cond_3

    sget-object v7, Lorg/jf/dexlib2/Opcode;->SPARSE_SWITCH_PAYLOAD:Lorg/jf/dexlib2/Opcode;

    if-ne v6, v7, :cond_2

    goto :goto_3

    :cond_2
    invoke-direct {p0, v5, v0, v3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->convertAndSetInstruction(Lorg/jf/dexlib2/builder/MethodLocation;[ILorg/jf/dexlib2/iface/instruction/Instruction;)V

    goto :goto_4

    :cond_3
    :goto_3
    new-instance v6, Lorg/jf/dexlib2/builder/MutableMethodImplementation$1;

    invoke-direct {v6, p0, v5, v0, v3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation$1;-><init>(Lorg/jf/dexlib2/builder/MutableMethodImplementation;Lorg/jf/dexlib2/builder/MethodLocation;[ILorg/jf/dexlib2/iface/instruction/Instruction;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/builder/MutableMethodImplementation$Task;

    invoke-interface {v2}, Lorg/jf/dexlib2/builder/MutableMethodImplementation$Task;->perform()V

    goto :goto_5

    :cond_5
    invoke-interface {p1}, Lorg/jf/dexlib2/iface/MethodImplementation;->getDebugItems()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/iface/debug/DebugItem;

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/debug/DebugItem;->getCodeAddress()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->mapCodeAddressToIndex([II)I

    move-result v3

    iget-object v4, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jf/dexlib2/builder/MethodLocation;

    invoke-direct {p0, v2}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->convertDebugItem(Lorg/jf/dexlib2/iface/debug/DebugItem;)Lorg/jf/dexlib2/builder/BuilderDebugItem;

    move-result-object v2

    invoke-virtual {v3}, Lorg/jf/dexlib2/builder/MethodLocation;->getDebugItems()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object v3, v2, Lorg/jf/dexlib2/builder/BuilderDebugItem;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    goto :goto_6

    :cond_6
    invoke-interface {p1}, Lorg/jf/dexlib2/iface/MethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/TryBlock;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/TryBlock;->getStartCodeAddress()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lorg/jf/dexlib2/builder/Label;

    move-result-object v2

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/TryBlock;->getStartCodeAddress()I

    move-result v3

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/TryBlock;->getCodeUnitCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, v0, v3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lorg/jf/dexlib2/builder/Label;

    move-result-object v3

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jf/dexlib2/iface/ExceptionHandler;

    iget-object v5, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->tryBlocks:Ljava/util/ArrayList;

    new-instance v6, Lorg/jf/dexlib2/builder/BuilderTryBlock;

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getExceptionTypeReference()Lorg/jf/dexlib2/iface/reference/TypeReference;

    move-result-object v7

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lorg/jf/dexlib2/builder/Label;

    move-result-object v4

    invoke-direct {v6, v2, v3, v7, v4}, Lorg/jf/dexlib2/builder/BuilderTryBlock;-><init>(Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/iface/reference/TypeReference;Lorg/jf/dexlib2/builder/Label;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    return-void
.end method

.method static synthetic access$000(Lorg/jf/dexlib2/builder/MutableMethodImplementation;Lorg/jf/dexlib2/builder/MethodLocation;[ILorg/jf/dexlib2/iface/instruction/Instruction;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->convertAndSetInstruction(Lorg/jf/dexlib2/builder/MethodLocation;[ILorg/jf/dexlib2/iface/instruction/Instruction;)V

    return-void
.end method

.method static synthetic access$100(Lorg/jf/dexlib2/builder/MutableMethodImplementation;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    return p0
.end method

.method static synthetic access$200(Lorg/jf/dexlib2/builder/MutableMethodImplementation;)V
    .registers 1

    invoke-direct {p0}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->fixInstructions()V

    return-void
.end method

.method private convertAndSetInstruction(Lorg/jf/dexlib2/builder/MethodLocation;[ILorg/jf/dexlib2/iface/instruction/Instruction;)V
    .registers 6
    .param p1    # Lorg/jf/dexlib2/builder/MethodLocation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/iface/instruction/Instruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lorg/jf/dexlib2/builder/MutableMethodImplementation$4;->$SwitchMap$org$jf$dexlib2$Format:[I

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    iget-object v1, v1, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    invoke-virtual {v1}, Lorg/jf/dexlib2/Format;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lorg/jf/util/ExceptionWithContext;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object p3

    iget-object p3, p3, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    aput-object p3, p2, v0

    const-string p3, "Instruction format %s not supported"

    invoke-direct {p1, p3, p2}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderArrayPayload(Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;)Lorg/jf/dexlib2/builder/instruction/BuilderArrayPayload;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->setInstruction(Lorg/jf/dexlib2/builder/MethodLocation;Lorg/jf/dexlib2/builder/BuilderInstruction;)V

    return-void

    :pswitch_1
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;

    invoke-direct {p0, p1, p2, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderSparseSwitchPayload(Lorg/jf/dexlib2/builder/MethodLocation;[ILorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;)Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload;

    move-result-object p2

    goto :goto_0

    :pswitch_2
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;

    invoke-direct {p0, p1, p2, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderPackedSwitchPayload(Lorg/jf/dexlib2/builder/MethodLocation;[ILorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;)Lorg/jf/dexlib2/builder/instruction/BuilderPackedSwitchPayload;

    move-result-object p2

    goto :goto_0

    :pswitch_3
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction51l;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction51l(Lorg/jf/dexlib2/iface/instruction/formats/Instruction51l;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction51l;

    move-result-object p2

    goto :goto_0

    :pswitch_4
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction3rc(Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction3rc;

    move-result-object p2

    goto :goto_0

    :pswitch_5
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction35c(Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction35c;

    move-result-object p2

    goto :goto_0

    :pswitch_6
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction32x;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction32x(Lorg/jf/dexlib2/iface/instruction/formats/Instruction32x;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction32x;

    move-result-object p2

    goto :goto_0

    :pswitch_7
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;

    invoke-direct {p0, p1, p2, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction31t(Lorg/jf/dexlib2/builder/MethodLocation;[ILorg/jf/dexlib2/iface/instruction/formats/Instruction31t;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction31t;

    move-result-object p2

    goto :goto_0

    :pswitch_8
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31i;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction31i(Lorg/jf/dexlib2/iface/instruction/formats/Instruction31i;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction31i;

    move-result-object p2

    goto :goto_0

    :pswitch_9
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31c;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction31c(Lorg/jf/dexlib2/iface/instruction/formats/Instruction31c;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction31c;

    move-result-object p2

    goto :goto_0

    :pswitch_a
    iget v0, p1, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction30t;

    invoke-direct {p0, v0, p2, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction30t(I[ILorg/jf/dexlib2/iface/instruction/formats/Instruction30t;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction30t;

    move-result-object p2

    goto :goto_0

    :pswitch_b
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction23x;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction23x(Lorg/jf/dexlib2/iface/instruction/formats/Instruction23x;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction23x;

    move-result-object p2

    goto :goto_0

    :pswitch_c
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22x;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction22x(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22x;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22x;

    move-result-object p2

    goto :goto_0

    :pswitch_d
    iget v0, p1, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22t;

    invoke-direct {p0, v0, p2, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction22t(I[ILorg/jf/dexlib2/iface/instruction/formats/Instruction22t;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22t;

    move-result-object p2

    goto :goto_0

    :pswitch_e
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22s;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction22s(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22s;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22s;

    move-result-object p2

    goto :goto_0

    :pswitch_f
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction22c(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22c;

    move-result-object p2

    goto :goto_0

    :pswitch_10
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22b;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction22b(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22b;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22b;

    move-result-object p2

    goto :goto_0

    :pswitch_11
    iget v0, p1, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21t;

    invoke-direct {p0, v0, p2, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction21t(I[ILorg/jf/dexlib2/iface/instruction/formats/Instruction21t;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21t;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_12
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21s;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction21s(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21s;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21s;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_13
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21lh;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction21lh(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21lh;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21lh;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_14
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21ih;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction21ih(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21ih;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21ih;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_15
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21c;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction21c(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21c;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21c;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_16
    iget v0, p1, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction20t;

    invoke-direct {p0, v0, p2, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction20t(I[ILorg/jf/dexlib2/iface/instruction/formats/Instruction20t;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction20t;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_17
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction20bc(Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction20bc;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_18
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction12x;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction12x(Lorg/jf/dexlib2/iface/instruction/formats/Instruction12x;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction12x;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_19
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction11x;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction11x(Lorg/jf/dexlib2/iface/instruction/formats/Instruction11x;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction11x;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_1a
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction11n;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction11n(Lorg/jf/dexlib2/iface/instruction/formats/Instruction11n;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction11n;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_1b
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction10x;

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction10x(Lorg/jf/dexlib2/iface/instruction/formats/Instruction10x;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction10x;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_1c
    iget v0, p1, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction10t;

    invoke-direct {p0, v0, p2, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newBuilderInstruction10t(I[ILorg/jf/dexlib2/iface/instruction/formats/Instruction10t;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction10t;

    move-result-object p2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertDebugItem(Lorg/jf/dexlib2/iface/debug/DebugItem;)Lorg/jf/dexlib2/builder/BuilderDebugItem;
    .registers 6
    .param p1    # Lorg/jf/dexlib2/iface/debug/DebugItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/debug/DebugItem;->getDebugItemType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid debug item type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/debug/DebugItem;->getDebugItemType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    check-cast p1, Lorg/jf/dexlib2/iface/debug/LineNumber;

    new-instance v0, Lorg/jf/dexlib2/builder/debug/BuilderLineNumber;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/debug/LineNumber;->getLineNumber()I

    move-result p1

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/builder/debug/BuilderLineNumber;-><init>(I)V

    return-object v0

    :pswitch_1
    check-cast p1, Lorg/jf/dexlib2/iface/debug/SetSourceFile;

    new-instance v0, Lorg/jf/dexlib2/builder/debug/BuilderSetSourceFile;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/debug/SetSourceFile;->getSourceFileReference()Lorg/jf/dexlib2/iface/reference/StringReference;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/builder/debug/BuilderSetSourceFile;-><init>(Lorg/jf/dexlib2/iface/reference/StringReference;)V

    return-object v0

    :pswitch_2
    new-instance p1, Lorg/jf/dexlib2/builder/debug/BuilderEpilogueBegin;

    invoke-direct {p1}, Lorg/jf/dexlib2/builder/debug/BuilderEpilogueBegin;-><init>()V

    return-object p1

    :pswitch_3
    new-instance p1, Lorg/jf/dexlib2/builder/debug/BuilderPrologueEnd;

    invoke-direct {p1}, Lorg/jf/dexlib2/builder/debug/BuilderPrologueEnd;-><init>()V

    return-object p1

    :pswitch_4
    check-cast p1, Lorg/jf/dexlib2/iface/debug/RestartLocal;

    new-instance v0, Lorg/jf/dexlib2/builder/debug/BuilderRestartLocal;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/debug/RestartLocal;->getRegister()I

    move-result p1

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/builder/debug/BuilderRestartLocal;-><init>(I)V

    return-object v0

    :pswitch_5
    check-cast p1, Lorg/jf/dexlib2/iface/debug/EndLocal;

    new-instance v0, Lorg/jf/dexlib2/builder/debug/BuilderEndLocal;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/debug/EndLocal;->getRegister()I

    move-result p1

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/builder/debug/BuilderEndLocal;-><init>(I)V

    return-object v0

    :cond_0
    check-cast p1, Lorg/jf/dexlib2/iface/debug/StartLocal;

    new-instance v0, Lorg/jf/dexlib2/builder/debug/BuilderStartLocal;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/debug/StartLocal;->getRegister()I

    move-result v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/debug/StartLocal;->getNameReference()Lorg/jf/dexlib2/iface/reference/StringReference;

    move-result-object v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/debug/StartLocal;->getTypeReference()Lorg/jf/dexlib2/iface/reference/TypeReference;

    move-result-object v3

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/debug/StartLocal;->getSignatureReference()Lorg/jf/dexlib2/iface/reference/StringReference;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/jf/dexlib2/builder/debug/BuilderStartLocal;-><init>(ILorg/jf/dexlib2/iface/reference/StringReference;Lorg/jf/dexlib2/iface/reference/TypeReference;Lorg/jf/dexlib2/iface/reference/StringReference;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findSwitchForPayload(Lorg/jf/dexlib2/builder/MethodLocation;)Lorg/jf/dexlib2/builder/MethodLocation;
    .registers 6
    .param p1    # Lorg/jf/dexlib2/builder/MethodLocation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1}, Lorg/jf/dexlib2/builder/MethodLocation;->getLabels()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/builder/Label;

    instance-of v3, v2, Lorg/jf/dexlib2/builder/MutableMethodImplementation$SwitchPayloadReferenceLabel;

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    check-cast v2, Lorg/jf/dexlib2/builder/MutableMethodImplementation$SwitchPayloadReferenceLabel;

    iget-object v0, v2, Lorg/jf/dexlib2/builder/MutableMethodImplementation$SwitchPayloadReferenceLabel;->switchLocation:Lorg/jf/dexlib2/builder/MethodLocation;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple switch instructions refer to the same payload. This is not currently supported. Please file a bug :)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget v1, p1, Lorg/jf/dexlib2/builder/MethodLocation;->index:I

    if-nez v1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    iget p1, p1, Lorg/jf/dexlib2/builder/MethodLocation;->index:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/builder/MethodLocation;

    iget-object v1, p1, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    invoke-virtual {v1}, Lorg/jf/dexlib2/builder/BuilderInstruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    sget-object v2, Lorg/jf/dexlib2/Opcode;->NOP:Lorg/jf/dexlib2/Opcode;

    if-eq v1, v2, :cond_0

    :cond_5
    return-object v0
.end method

.method private fixInstructions()V
    .registers 12

    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/builder/MethodLocation;

    iget-object v5, v2, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    if-eqz v5, :cond_0

    sget-object v6, Lorg/jf/dexlib2/builder/MutableMethodImplementation$4;->$SwitchMap$org$jf$dexlib2$Opcode:[I

    invoke-virtual {v5}, Lorg/jf/dexlib2/builder/BuilderInstruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jf/dexlib2/Opcode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v6, v5

    check-cast v6, Lorg/jf/dexlib2/builder/BuilderOffsetInstruction;

    invoke-virtual {v6}, Lorg/jf/dexlib2/builder/BuilderOffsetInstruction;->getTarget()Lorg/jf/dexlib2/builder/Label;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jf/dexlib2/builder/Label;->getLocation()Lorg/jf/dexlib2/builder/MethodLocation;

    move-result-object v6

    iget-object v7, v6, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    const/4 v8, 0x2

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lorg/jf/dexlib2/builder/BuilderInstruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v9

    sget-object v10, Lorg/jf/dexlib2/Opcode;->NOP:Lorg/jf/dexlib2/Opcode;

    if-ne v9, v10, :cond_1

    iget v7, v6, Lorg/jf/dexlib2/builder/MethodLocation;->index:I

    add-int/2addr v7, v4

    invoke-direct {p0, v7}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->getFirstNonNop(I)Lorg/jf/dexlib2/builder/BuilderInstruction;

    move-result-object v7

    :cond_1
    if-eqz v7, :cond_6

    instance-of v9, v7, Lorg/jf/dexlib2/builder/BuilderSwitchPayload;

    if-eqz v9, :cond_6

    iget-object v9, v5, Lorg/jf/dexlib2/builder/BuilderInstruction;->opcode:Lorg/jf/dexlib2/Opcode;

    sget-object v10, Lorg/jf/dexlib2/Opcode;->PACKED_SWITCH:Lorg/jf/dexlib2/Opcode;

    if-ne v9, v10, :cond_2

    invoke-virtual {v7}, Lorg/jf/dexlib2/builder/BuilderInstruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v9

    sget-object v10, Lorg/jf/dexlib2/Opcode;->PACKED_SWITCH_PAYLOAD:Lorg/jf/dexlib2/Opcode;

    if-ne v9, v10, :cond_3

    :cond_2
    iget-object v5, v5, Lorg/jf/dexlib2/builder/BuilderInstruction;->opcode:Lorg/jf/dexlib2/Opcode;

    sget-object v9, Lorg/jf/dexlib2/Opcode;->SPARSE_SWITCH:Lorg/jf/dexlib2/Opcode;

    if-ne v5, v9, :cond_4

    invoke-virtual {v7}, Lorg/jf/dexlib2/builder/BuilderInstruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v5

    sget-object v9, Lorg/jf/dexlib2/Opcode;->SPARSE_SWITCH_PAYLOAD:Lorg/jf/dexlib2/Opcode;

    if-ne v5, v9, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v8, [Ljava/lang/Object;

    iget v5, v2, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    iget v2, v2, Lorg/jf/dexlib2/builder/MethodLocation;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Switch instruction at address/index 0x%x/%d refers to the wrong type of payload instruction."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    check-cast v7, Lorg/jf/dexlib2/builder/BuilderSwitchPayload;

    iput-object v2, v7, Lorg/jf/dexlib2/builder/BuilderSwitchPayload;->referrer:Lorg/jf/dexlib2/builder/MethodLocation;

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multiple switch instructions refer to the same payload. This is not currently supported. Please file a bug :)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v8, [Ljava/lang/Object;

    iget v5, v2, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    iget v2, v2, Lorg/jf/dexlib2/builder/MethodLocation;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Switch instruction at address/index 0x%x/%d does not refer to a payload instruction."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v8, [Ljava/lang/Object;

    iget v5, v2, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    iget v2, v2, Lorg/jf/dexlib2/builder/MethodLocation;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Switch instruction at address/index 0x%x/%d points to the end of the method."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_10

    iget-object v2, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/builder/MethodLocation;

    iget-object v5, v2, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    if-eqz v5, :cond_f

    sget-object v6, Lorg/jf/dexlib2/builder/MutableMethodImplementation$4;->$SwitchMap$org$jf$dexlib2$Opcode:[I

    invoke-virtual {v5}, Lorg/jf/dexlib2/builder/BuilderInstruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jf/dexlib2/Opcode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/16 v7, 0x7fff

    const/16 v8, -0x8000

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_7

    :pswitch_1
    check-cast v5, Lorg/jf/dexlib2/builder/BuilderSwitchPayload;

    iget-object v5, v5, Lorg/jf/dexlib2/builder/BuilderSwitchPayload;->referrer:Lorg/jf/dexlib2/builder/MethodLocation;

    if-nez v5, :cond_9

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->removeInstruction(I)V

    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    :cond_9
    :pswitch_2
    iget v5, v2, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_f

    iget v1, v2, Lorg/jf/dexlib2/builder/MethodLocation;->index:I

    sub-int/2addr v1, v4

    iget-object v5, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jf/dexlib2/builder/MethodLocation;

    iget-object v5, v5, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    invoke-interface {v5}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v5

    sget-object v6, Lorg/jf/dexlib2/Opcode;->NOP:Lorg/jf/dexlib2/Opcode;

    if-ne v5, v6, :cond_a

    invoke-virtual {p0, v1}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->removeInstruction(I)V

    goto :goto_3

    :cond_a
    iget v1, v2, Lorg/jf/dexlib2/builder/MethodLocation;->index:I

    new-instance v2, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction10x;

    sget-object v5, Lorg/jf/dexlib2/Opcode;->NOP:Lorg/jf/dexlib2/Opcode;

    invoke-direct {v2, v5}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction10x;-><init>(Lorg/jf/dexlib2/Opcode;)V

    invoke-virtual {p0, v1, v2}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->addInstruction(ILorg/jf/dexlib2/builder/BuilderInstruction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :pswitch_3
    check-cast v5, Lorg/jf/dexlib2/builder/BuilderOffsetInstruction;

    invoke-virtual {v5}, Lorg/jf/dexlib2/builder/BuilderOffsetInstruction;->internalGetCodeOffset()I

    move-result v6

    if-lt v6, v8, :cond_b

    if-le v6, v7, :cond_f

    :cond_b
    new-instance v1, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction30t;

    sget-object v6, Lorg/jf/dexlib2/Opcode;->GOTO_32:Lorg/jf/dexlib2/Opcode;

    invoke-virtual {v5}, Lorg/jf/dexlib2/builder/BuilderOffsetInstruction;->getTarget()Lorg/jf/dexlib2/builder/Label;

    move-result-object v5

    invoke-direct {v1, v6, v5}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction30t;-><init>(Lorg/jf/dexlib2/Opcode;Lorg/jf/dexlib2/builder/Label;)V

    :goto_4
    iget v2, v2, Lorg/jf/dexlib2/builder/MethodLocation;->index:I

    invoke-virtual {p0, v2, v1}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->replaceInstruction(ILorg/jf/dexlib2/builder/BuilderInstruction;)V

    goto :goto_6

    :pswitch_4
    check-cast v5, Lorg/jf/dexlib2/builder/BuilderOffsetInstruction;

    invoke-virtual {v5}, Lorg/jf/dexlib2/builder/BuilderOffsetInstruction;->internalGetCodeOffset()I

    move-result v6

    const/16 v9, -0x80

    if-lt v6, v9, :cond_c

    const/16 v9, 0x7f

    if-le v6, v9, :cond_f

    :cond_c
    if-lt v6, v8, :cond_e

    if-le v6, v7, :cond_d

    goto :goto_5

    :cond_d
    new-instance v1, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction20t;

    sget-object v6, Lorg/jf/dexlib2/Opcode;->GOTO_16:Lorg/jf/dexlib2/Opcode;

    invoke-virtual {v5}, Lorg/jf/dexlib2/builder/BuilderOffsetInstruction;->getTarget()Lorg/jf/dexlib2/builder/Label;

    move-result-object v5

    invoke-direct {v1, v6, v5}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction20t;-><init>(Lorg/jf/dexlib2/Opcode;Lorg/jf/dexlib2/builder/Label;)V

    goto :goto_4

    :cond_e
    :goto_5
    new-instance v1, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction30t;

    sget-object v6, Lorg/jf/dexlib2/Opcode;->GOTO_32:Lorg/jf/dexlib2/Opcode;

    invoke-virtual {v5}, Lorg/jf/dexlib2/builder/BuilderOffsetInstruction;->getTarget()Lorg/jf/dexlib2/builder/Label;

    move-result-object v5

    invoke-direct {v1, v6, v5}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction30t;-><init>(Lorg/jf/dexlib2/Opcode;Lorg/jf/dexlib2/builder/Label;)V

    goto :goto_4

    :goto_6
    const/4 v1, 0x1

    :cond_f
    :goto_7
    add-int/2addr v0, v4

    goto/16 :goto_2

    :cond_10
    if-nez v1, :cond_8

    iput-boolean v3, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getFirstNonNop(I)Lorg/jf/dexlib2/builder/BuilderInstruction;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    :goto_0
    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/builder/MethodLocation;

    iget-object v0, v0, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    invoke-virtual {v0}, Lorg/jf/dexlib2/builder/BuilderInstruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    sget-object v2, Lorg/jf/dexlib2/Opcode;->NOP:Lorg/jf/dexlib2/Opcode;

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private mapCodeAddressToIndex(I)I
    .registers 5

    int-to-float v0, p1

    const v1, 0x3ff33333    # 1.9f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-object v1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/builder/MethodLocation;

    iget v2, v1, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    if-ne v2, p1, :cond_1

    return v0

    :cond_1
    iget v1, v1, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    if-le v1, p1, :cond_3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/builder/MethodLocation;

    iget v1, v1, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    if-gt v1, p1, :cond_2

    return v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/builder/MethodLocation;

    iget v1, v1, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    if-le v1, p1, :cond_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private mapCodeAddressToIndex([II)I
    .registers 4
    .param p1    # [I
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :goto_0
    aget v0, p1, p2

    if-gez v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private newBuilderArrayPayload(Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;)Lorg/jf/dexlib2/builder/instruction/BuilderArrayPayload;
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderArrayPayload;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;->getElementWidth()I

    move-result v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;->getArrayElements()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderArrayPayload;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method private newBuilderInstruction10t(I[ILorg/jf/dexlib2/iface/instruction/formats/Instruction10t;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction10t;
    .registers 6
    .param p3    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction10t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction10t;

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction10t;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction10t;->getCodeOffset()I

    move-result p3

    add-int/2addr p1, p3

    invoke-direct {p0, p2, p1}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lorg/jf/dexlib2/builder/Label;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction10t;-><init>(Lorg/jf/dexlib2/Opcode;Lorg/jf/dexlib2/builder/Label;)V

    return-object v0
.end method

.method private newBuilderInstruction10x(Lorg/jf/dexlib2/iface/instruction/formats/Instruction10x;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction10x;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction10x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction10x;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction10x;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction10x;-><init>(Lorg/jf/dexlib2/Opcode;)V

    return-object v0
.end method

.method private newBuilderInstruction11n(Lorg/jf/dexlib2/iface/instruction/formats/Instruction11n;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction11n;
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction11n;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction11n;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction11n;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction11n;->getRegisterA()I

    move-result v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction11n;->getNarrowLiteral()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction11n;-><init>(Lorg/jf/dexlib2/Opcode;II)V

    return-object v0
.end method

.method private newBuilderInstruction11x(Lorg/jf/dexlib2/iface/instruction/formats/Instruction11x;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction11x;
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction11x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction11x;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction11x;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction11x;->getRegisterA()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction11x;-><init>(Lorg/jf/dexlib2/Opcode;I)V

    return-object v0
.end method

.method private newBuilderInstruction12x(Lorg/jf/dexlib2/iface/instruction/formats/Instruction12x;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction12x;
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction12x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction12x;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction12x;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction12x;->getRegisterA()I

    move-result v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction12x;->getRegisterB()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction12x;-><init>(Lorg/jf/dexlib2/Opcode;II)V

    return-object v0
.end method

.method private newBuilderInstruction20bc(Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction20bc;
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction20bc;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;->getVerificationError()I

    move-result v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction20bc;-><init>(Lorg/jf/dexlib2/Opcode;ILorg/jf/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method

.method private newBuilderInstruction20t(I[ILorg/jf/dexlib2/iface/instruction/formats/Instruction20t;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction20t;
    .registers 6
    .param p3    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction20t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction20t;

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction20t;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction20t;->getCodeOffset()I

    move-result p3

    add-int/2addr p1, p3

    invoke-direct {p0, p2, p1}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lorg/jf/dexlib2/builder/Label;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction20t;-><init>(Lorg/jf/dexlib2/Opcode;Lorg/jf/dexlib2/builder/Label;)V

    return-object v0
.end method

.method private newBuilderInstruction21c(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21c;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21c;
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction21c;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21c;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21c;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21c;->getRegisterA()I

    move-result v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21c;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21c;-><init>(Lorg/jf/dexlib2/Opcode;ILorg/jf/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method

.method private newBuilderInstruction21ih(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21ih;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21ih;
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction21ih;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21ih;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21ih;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21ih;->getRegisterA()I

    move-result v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21ih;->getNarrowLiteral()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21ih;-><init>(Lorg/jf/dexlib2/Opcode;II)V

    return-object v0
.end method

.method private newBuilderInstruction21lh(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21lh;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21lh;
    .registers 7
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction21lh;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21lh;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21lh;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21lh;->getRegisterA()I

    move-result v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21lh;->getWideLiteral()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21lh;-><init>(Lorg/jf/dexlib2/Opcode;IJ)V

    return-object v0
.end method

.method private newBuilderInstruction21s(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21s;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21s;
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction21s;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21s;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21s;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21s;->getRegisterA()I

    move-result v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21s;->getNarrowLiteral()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21s;-><init>(Lorg/jf/dexlib2/Opcode;II)V

    return-object v0
.end method

.method private newBuilderInstruction21t(I[ILorg/jf/dexlib2/iface/instruction/formats/Instruction21t;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21t;
    .registers 7
    .param p3    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction21t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21t;

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21t;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21t;->getRegisterA()I

    move-result v2

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21t;->getCodeOffset()I

    move-result p3

    add-int/2addr p1, p3

    invoke-direct {p0, p2, p1}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lorg/jf/dexlib2/builder/Label;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction21t;-><init>(Lorg/jf/dexlib2/Opcode;ILorg/jf/dexlib2/builder/Label;)V

    return-object v0
.end method

.method private newBuilderInstruction22b(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22b;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22b;
    .registers 6
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction22b;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22b;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22b;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22b;->getRegisterA()I

    move-result v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22b;->getRegisterB()I

    move-result v3

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22b;->getNarrowLiteral()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22b;-><init>(Lorg/jf/dexlib2/Opcode;III)V

    return-object v0
.end method

.method private newBuilderInstruction22c(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22c;
    .registers 6
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22c;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterA()I

    move-result v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterB()I

    move-result v3

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22c;-><init>(Lorg/jf/dexlib2/Opcode;IILorg/jf/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method

.method private newBuilderInstruction22s(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22s;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22s;
    .registers 6
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction22s;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22s;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22s;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22s;->getRegisterA()I

    move-result v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22s;->getRegisterB()I

    move-result v3

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22s;->getNarrowLiteral()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22s;-><init>(Lorg/jf/dexlib2/Opcode;III)V

    return-object v0
.end method

.method private newBuilderInstruction22t(I[ILorg/jf/dexlib2/iface/instruction/formats/Instruction22t;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22t;
    .registers 8
    .param p3    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction22t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22t;

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22t;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22t;->getRegisterA()I

    move-result v2

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22t;->getRegisterB()I

    move-result v3

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22t;->getCodeOffset()I

    move-result p3

    add-int/2addr p1, p3

    invoke-direct {p0, p2, p1}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lorg/jf/dexlib2/builder/Label;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22t;-><init>(Lorg/jf/dexlib2/Opcode;IILorg/jf/dexlib2/builder/Label;)V

    return-object v0
.end method

.method private newBuilderInstruction22x(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22x;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22x;
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction22x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22x;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22x;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22x;->getRegisterA()I

    move-result v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22x;->getRegisterB()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction22x;-><init>(Lorg/jf/dexlib2/Opcode;II)V

    return-object v0
.end method

.method private newBuilderInstruction23x(Lorg/jf/dexlib2/iface/instruction/formats/Instruction23x;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction23x;
    .registers 6
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction23x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction23x;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction23x;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction23x;->getRegisterA()I

    move-result v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction23x;->getRegisterB()I

    move-result v3

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction23x;->getRegisterC()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction23x;-><init>(Lorg/jf/dexlib2/Opcode;III)V

    return-object v0
.end method

.method private newBuilderInstruction30t(I[ILorg/jf/dexlib2/iface/instruction/formats/Instruction30t;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction30t;
    .registers 6
    .param p3    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction30t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction30t;

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction30t;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction30t;->getCodeOffset()I

    move-result p3

    add-int/2addr p1, p3

    invoke-direct {p0, p2, p1}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lorg/jf/dexlib2/builder/Label;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction30t;-><init>(Lorg/jf/dexlib2/Opcode;Lorg/jf/dexlib2/builder/Label;)V

    return-object v0
.end method

.method private newBuilderInstruction31c(Lorg/jf/dexlib2/iface/instruction/formats/Instruction31c;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction31c;
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction31c;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction31c;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31c;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31c;->getRegisterA()I

    move-result v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31c;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction31c;-><init>(Lorg/jf/dexlib2/Opcode;ILorg/jf/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method

.method private newBuilderInstruction31i(Lorg/jf/dexlib2/iface/instruction/formats/Instruction31i;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction31i;
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction31i;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction31i;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31i;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31i;->getRegisterA()I

    move-result v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31i;->getNarrowLiteral()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction31i;-><init>(Lorg/jf/dexlib2/Opcode;II)V

    return-object v0
.end method

.method private newBuilderInstruction31t(Lorg/jf/dexlib2/builder/MethodLocation;[ILorg/jf/dexlib2/iface/instruction/formats/Instruction31t;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction31t;
    .registers 7
    .param p1    # Lorg/jf/dexlib2/builder/MethodLocation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p1}, Lorg/jf/dexlib2/builder/MethodLocation;->getCodeAddress()I

    move-result v0

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    sget-object v2, Lorg/jf/dexlib2/Opcode;->FILL_ARRAY_DATA:Lorg/jf/dexlib2/Opcode;

    if-eq v1, v2, :cond_0

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;->getCodeOffset()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newSwitchPayloadReferenceLabel(Lorg/jf/dexlib2/builder/MethodLocation;[II)Lorg/jf/dexlib2/builder/Label;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;->getCodeOffset()I

    move-result p1

    add-int/2addr v0, p1

    invoke-direct {p0, p2, v0}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lorg/jf/dexlib2/builder/Label;

    move-result-object p1

    :goto_0
    new-instance p2, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction31t;

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v0

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;->getRegisterA()I

    move-result p3

    invoke-direct {p2, v0, p3, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction31t;-><init>(Lorg/jf/dexlib2/Opcode;ILorg/jf/dexlib2/builder/Label;)V

    return-object p2
.end method

.method private newBuilderInstruction32x(Lorg/jf/dexlib2/iface/instruction/formats/Instruction32x;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction32x;
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction32x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction32x;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction32x;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction32x;->getRegisterA()I

    move-result v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction32x;->getRegisterB()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction32x;-><init>(Lorg/jf/dexlib2/Opcode;II)V

    return-object v0
.end method

.method private newBuilderInstruction35c(Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction35c;
    .registers 12
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v9, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction35c;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterCount()I

    move-result v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterC()I

    move-result v3

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterD()I

    move-result v4

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterE()I

    move-result v5

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterF()I

    move-result v6

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterG()I

    move-result v7

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction35c;-><init>(Lorg/jf/dexlib2/Opcode;IIIIIILorg/jf/dexlib2/iface/reference/Reference;)V

    return-object v9
.end method

.method private newBuilderInstruction3rc(Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction3rc;
    .registers 6
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction3rc;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;->getStartRegister()I

    move-result v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;->getRegisterCount()I

    move-result v3

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction3rc;-><init>(Lorg/jf/dexlib2/Opcode;IILorg/jf/dexlib2/iface/reference/Reference;)V

    return-object v0
.end method

.method private newBuilderInstruction51l(Lorg/jf/dexlib2/iface/instruction/formats/Instruction51l;)Lorg/jf/dexlib2/builder/instruction/BuilderInstruction51l;
    .registers 7
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction51l;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction51l;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction51l;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction51l;->getRegisterA()I

    move-result v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction51l;->getWideLiteral()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jf/dexlib2/builder/instruction/BuilderInstruction51l;-><init>(Lorg/jf/dexlib2/Opcode;IJ)V

    return-object v0
.end method

.method private newBuilderPackedSwitchPayload(Lorg/jf/dexlib2/builder/MethodLocation;[ILorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;)Lorg/jf/dexlib2/builder/instruction/BuilderPackedSwitchPayload;
    .registers 8
    .param p1    # Lorg/jf/dexlib2/builder/MethodLocation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p1, Lorg/jf/dexlib2/builder/instruction/BuilderPackedSwitchPayload;

    const/4 p2, 0x0

    invoke-direct {p1, v1, p2}, Lorg/jf/dexlib2/builder/instruction/BuilderPackedSwitchPayload;-><init>(ILjava/util/List;)V

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->findSwitchForPayload(Lorg/jf/dexlib2/builder/MethodLocation;)Lorg/jf/dexlib2/builder/MethodLocation;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget p1, p1, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    :goto_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jf/dexlib2/iface/instruction/SwitchElement;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result v3

    add-int/2addr v3, p1

    invoke-direct {p0, p2, v3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lorg/jf/dexlib2/builder/Label;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/jf/dexlib2/builder/instruction/BuilderPackedSwitchPayload;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jf/dexlib2/iface/instruction/SwitchElement;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result p2

    invoke-direct {p1, p2, v0}, Lorg/jf/dexlib2/builder/instruction/BuilderPackedSwitchPayload;-><init>(ILjava/util/List;)V

    return-object p1
.end method

.method private newBuilderSparseSwitchPayload(Lorg/jf/dexlib2/builder/MethodLocation;[ILorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;)Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload;
    .registers 8
    .param p1    # Lorg/jf/dexlib2/builder/MethodLocation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->findSwitchForPayload(Lorg/jf/dexlib2/builder/MethodLocation;)Lorg/jf/dexlib2/builder/MethodLocation;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget p1, p1, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    :goto_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/SwitchElement;

    new-instance v2, Lorg/jf/dexlib2/builder/SwitchLabelElement;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result v3

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {p0, p2, v1}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->newLabel([II)Lorg/jf/dexlib2/builder/Label;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/jf/dexlib2/builder/SwitchLabelElement;-><init>(ILorg/jf/dexlib2/builder/Label;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload;

    invoke-direct {p1, v0}, Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method private newLabel([II)Lorg/jf/dexlib2/builder/Label;
    .registers 4
    .param p1    # [I
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->mapCodeAddressToIndex([II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/builder/MethodLocation;

    invoke-virtual {p1}, Lorg/jf/dexlib2/builder/MethodLocation;->addNewLabel()Lorg/jf/dexlib2/builder/Label;

    move-result-object p1

    return-object p1
.end method

.method private setInstruction(Lorg/jf/dexlib2/builder/MethodLocation;Lorg/jf/dexlib2/builder/BuilderInstruction;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/builder/MethodLocation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/builder/BuilderInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p2, p1, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    iput-object p1, p2, Lorg/jf/dexlib2/builder/BuilderInstruction;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    return-void
.end method


# virtual methods
.method public addCatch(Ljava/lang/String;Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/builder/Label;)V
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->tryBlocks:Ljava/util/ArrayList;

    new-instance v1, Lorg/jf/dexlib2/builder/BuilderTryBlock;

    invoke-direct {v1, p2, p3, p1, p4}, Lorg/jf/dexlib2/builder/BuilderTryBlock;-><init>(Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/builder/Label;Ljava/lang/String;Lorg/jf/dexlib2/builder/Label;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCatch(Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/builder/Label;)V
    .registers 6
    .param p1    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->tryBlocks:Ljava/util/ArrayList;

    new-instance v1, Lorg/jf/dexlib2/builder/BuilderTryBlock;

    invoke-direct {v1, p1, p2, p3}, Lorg/jf/dexlib2/builder/BuilderTryBlock;-><init>(Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/builder/Label;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCatch(Lorg/jf/dexlib2/iface/reference/TypeReference;Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/builder/Label;)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->tryBlocks:Ljava/util/ArrayList;

    new-instance v1, Lorg/jf/dexlib2/builder/BuilderTryBlock;

    invoke-direct {v1, p2, p3, p1, p4}, Lorg/jf/dexlib2/builder/BuilderTryBlock;-><init>(Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/iface/reference/TypeReference;Lorg/jf/dexlib2/builder/Label;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInstruction(ILorg/jf/dexlib2/builder/BuilderInstruction;)V
    .registers 7

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->addInstruction(Lorg/jf/dexlib2/builder/BuilderInstruction;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/builder/MethodLocation;

    invoke-virtual {v0}, Lorg/jf/dexlib2/builder/MethodLocation;->getCodeAddress()I

    move-result v0

    new-instance v2, Lorg/jf/dexlib2/builder/MethodLocation;

    invoke-direct {v2, p2, v0, p1}, Lorg/jf/dexlib2/builder/MethodLocation;-><init>(Lorg/jf/dexlib2/builder/BuilderInstruction;II)V

    iget-object v3, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput-object v2, p2, Lorg/jf/dexlib2/builder/BuilderInstruction;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    invoke-virtual {p2}, Lorg/jf/dexlib2/builder/BuilderInstruction;->getCodeUnits()I

    move-result p2

    add-int/2addr v0, p2

    add-int/2addr p1, v1

    :goto_0
    iget-object p2, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    iget-object p2, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jf/dexlib2/builder/MethodLocation;

    iget v2, p2, Lorg/jf/dexlib2/builder/MethodLocation;->index:I

    add-int/2addr v2, v1

    iput v2, p2, Lorg/jf/dexlib2/builder/MethodLocation;->index:I

    iput v0, p2, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    iget-object v2, p2, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    if-eqz v2, :cond_1

    iget-object p2, p2, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    invoke-virtual {p2}, Lorg/jf/dexlib2/builder/BuilderInstruction;->getCodeUnits()I

    move-result p2

    add-int/2addr v0, p2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public addInstruction(Lorg/jf/dexlib2/builder/BuilderInstruction;)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/builder/BuilderInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/builder/MethodLocation;

    iput-object p1, v0, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    iput-object v0, p1, Lorg/jf/dexlib2/builder/BuilderInstruction;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    iget v0, v0, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    invoke-virtual {p1}, Lorg/jf/dexlib2/builder/BuilderInstruction;->getCodeUnits()I

    move-result p1

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    new-instance v1, Lorg/jf/dexlib2/builder/MethodLocation;

    iget-object v3, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v0, v3}, Lorg/jf/dexlib2/builder/MethodLocation;-><init>(Lorg/jf/dexlib2/builder/BuilderInstruction;II)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    return-void
.end method

.method public getDebugItems()Ljava/lang/Iterable;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-boolean v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->fixInstructions()V

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    new-instance v1, Lorg/jf/dexlib2/builder/MutableMethodImplementation$3;

    invoke-direct {v1, p0}, Lorg/jf/dexlib2/builder/MutableMethodImplementation$3;-><init>(Lorg/jf/dexlib2/builder/MutableMethodImplementation;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInstructions()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->getInstructions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstructions()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-boolean v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->fixInstructions()V

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/builder/MutableMethodImplementation$2;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/builder/MutableMethodImplementation$2;-><init>(Lorg/jf/dexlib2/builder/MutableMethodImplementation;)V

    return-object v0
.end method

.method public getRegisterCount()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->registerCount:I

    return v0
.end method

.method public getTryBlocks()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-boolean v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->fixInstructions()V

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->tryBlocks:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public newLabelForAddress(I)Lorg/jf/dexlib2/builder/Label;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/builder/MethodLocation;

    iget v1, v1, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    if-gt p1, v1, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->mapCodeAddressToIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/builder/MethodLocation;

    invoke-virtual {p1}, Lorg/jf/dexlib2/builder/MethodLocation;->addNewLabel()Lorg/jf/dexlib2/builder/Label;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "codeAddress %d out of bounds"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public newLabelForIndex(I)Lorg/jf/dexlib2/builder/Label;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/builder/MethodLocation;

    invoke-virtual {p1}, Lorg/jf/dexlib2/builder/MethodLocation;->addNewLabel()Lorg/jf/dexlib2/builder/Label;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "instruction index %d out of bounds"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newSwitchPayloadReferenceLabel(Lorg/jf/dexlib2/builder/MethodLocation;[II)Lorg/jf/dexlib2/builder/Label;
    .registers 5
    .param p1    # Lorg/jf/dexlib2/builder/MethodLocation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->mapCodeAddressToIndex([II)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jf/dexlib2/builder/MethodLocation;

    new-instance p3, Lorg/jf/dexlib2/builder/MutableMethodImplementation$SwitchPayloadReferenceLabel;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lorg/jf/dexlib2/builder/MutableMethodImplementation$SwitchPayloadReferenceLabel;-><init>(Lorg/jf/dexlib2/builder/MutableMethodImplementation$1;)V

    iput-object p1, p3, Lorg/jf/dexlib2/builder/MutableMethodImplementation$SwitchPayloadReferenceLabel;->switchLocation:Lorg/jf/dexlib2/builder/MethodLocation;

    invoke-virtual {p2}, Lorg/jf/dexlib2/builder/MethodLocation;->getLabels()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p3
.end method

.method public removeInstruction(I)V
    .registers 6

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/builder/MethodLocation;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    iget-object v2, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/builder/MethodLocation;

    invoke-virtual {v0, v2}, Lorg/jf/dexlib2/builder/MethodLocation;->mergeInto(Lorg/jf/dexlib2/builder/MethodLocation;)V

    iget-object v2, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v0, v0, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    :goto_0
    iget-object v2, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/builder/MethodLocation;

    iput p1, v2, Lorg/jf/dexlib2/builder/MethodLocation;->index:I

    iput v0, v2, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    invoke-virtual {v2}, Lorg/jf/dexlib2/builder/MethodLocation;->getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public replaceInstruction(ILorg/jf/dexlib2/builder/BuilderInstruction;)V
    .registers 7
    .param p2    # Lorg/jf/dexlib2/builder/BuilderInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/builder/MethodLocation;

    iput-object v0, p2, Lorg/jf/dexlib2/builder/BuilderInstruction;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    iget-object v2, v0, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/jf/dexlib2/builder/BuilderInstruction;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    iput-object p2, v0, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    iget p2, v0, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    iget-object v0, v0, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    invoke-virtual {v0}, Lorg/jf/dexlib2/builder/BuilderInstruction;->getCodeUnits()I

    move-result v0

    add-int/2addr p2, v0

    add-int/2addr p1, v1

    :goto_0
    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/builder/MethodLocation;

    iput p2, v0, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    invoke-virtual {v0}, Lorg/jf/dexlib2/builder/MethodLocation;->getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v0

    add-int/2addr p2, v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public swapInstructions(II)V
    .registers 9

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/builder/MethodLocation;

    iget-object v2, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/builder/MethodLocation;

    iget-object v3, v0, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    iput-object v2, v3, Lorg/jf/dexlib2/builder/BuilderInstruction;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    iget-object v3, v2, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    iput-object v0, v3, Lorg/jf/dexlib2/builder/BuilderInstruction;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    iget-object v3, v2, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    iget-object v4, v0, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    iput-object v4, v2, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    iput-object v3, v0, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    if-ge p2, p1, :cond_0

    move v5, p2

    move p2, p1

    move p1, v5

    :cond_0
    iget v2, v0, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    iget-object v0, v0, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    invoke-virtual {v0}, Lorg/jf/dexlib2/builder/BuilderInstruction;->getCodeUnits()I

    move-result v0

    add-int/2addr v2, v0

    add-int/2addr p1, v1

    :goto_0
    if-gt p1, p2, :cond_1

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/builder/MethodLocation;

    iput v2, v0, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    iget-object v3, v0, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    iget-object v0, v0, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    invoke-virtual {v0}, Lorg/jf/dexlib2/builder/BuilderInstruction;->getCodeUnits()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->fixInstructions:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
