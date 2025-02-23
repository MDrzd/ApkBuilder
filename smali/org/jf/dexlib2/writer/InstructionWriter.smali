.class public Lorg/jf/dexlib2/writer/InstructionWriter;
.super Ljava/lang/Object;


# instance fields
.field private final fieldSection:Lorg/jf/dexlib2/writer/FieldSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final methodSection:Lorg/jf/dexlib2/writer/MethodSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final opcodes:Lorg/jf/dexlib2/Opcodes;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final protoSection:Lorg/jf/dexlib2/writer/ProtoSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final stringSection:Lorg/jf/dexlib2/writer/StringSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final switchElementComparator:Ljava/util/Comparator;

.field private final typeSection:Lorg/jf/dexlib2/writer/TypeSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final writer:Lorg/jf/dexlib2/writer/DexDataWriter;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/Opcodes;Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/StringSection;Lorg/jf/dexlib2/writer/TypeSection;Lorg/jf/dexlib2/writer/FieldSection;Lorg/jf/dexlib2/writer/MethodSection;Lorg/jf/dexlib2/writer/ProtoSection;)V
    .registers 9
    .param p1    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/writer/StringSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/writer/TypeSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lorg/jf/dexlib2/writer/FieldSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p6    # Lorg/jf/dexlib2/writer/MethodSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p7    # Lorg/jf/dexlib2/writer/ProtoSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jf/dexlib2/writer/InstructionWriter$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/writer/InstructionWriter$1;-><init>(Lorg/jf/dexlib2/writer/InstructionWriter;)V

    iput-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->switchElementComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->opcodes:Lorg/jf/dexlib2/Opcodes;

    iput-object p2, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    iput-object p3, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    iput-object p4, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    iput-object p5, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    iput-object p6, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    iput-object p7, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->protoSection:Lorg/jf/dexlib2/writer/ProtoSection;

    return-void
.end method

.method private getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->opcodes:Lorg/jf/dexlib2/Opcodes;

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/Opcodes;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)Ljava/lang/Short;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1

    :cond_0
    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p1, p1, Lorg/jf/dexlib2/Opcode;->name:Ljava/lang/String;

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object v2, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->opcodes:Lorg/jf/dexlib2/Opcodes;

    iget v2, v2, Lorg/jf/dexlib2/Opcodes;->api:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "Instruction %s is invalid for api %d"

    invoke-direct {v0, p1, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private getReference2Index(Lorg/jf/dexlib2/iface/instruction/DualReferenceInstruction;)I
    .registers 3

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/DualReferenceInstruction;->getReferenceType2()I

    move-result v0

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/DualReferenceInstruction;->getReference2()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getReferenceIndex(ILorg/jf/dexlib2/iface/reference/Reference;)I

    move-result p1

    return p1
.end method

.method private getReferenceIndex(ILorg/jf/dexlib2/iface/reference/Reference;)I
    .registers 5

    packed-switch p1, :pswitch_data_0

    new-instance p2, Lorg/jf/util/ExceptionWithContext;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Unknown reference type: %d"

    invoke-direct {p2, p1, v0}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :pswitch_0
    iget-object p1, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->protoSection:Lorg/jf/dexlib2/writer/ProtoSection;

    check-cast p2, Lorg/jf/dexlib2/iface/reference/MethodProtoReference;

    invoke-interface {p1, p2}, Lorg/jf/dexlib2/writer/ProtoSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_1
    iget-object p1, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    check-cast p2, Lorg/jf/dexlib2/iface/reference/MethodReference;

    invoke-interface {p1, p2}, Lorg/jf/dexlib2/writer/MethodSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_2
    iget-object p1, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    check-cast p2, Lorg/jf/dexlib2/iface/reference/FieldReference;

    invoke-interface {p1, p2}, Lorg/jf/dexlib2/writer/FieldSection;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_3
    iget-object p1, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    check-cast p2, Lorg/jf/dexlib2/iface/reference/TypeReference;

    invoke-interface {p1, p2}, Lorg/jf/dexlib2/writer/TypeSection;->getItemIndex(Lorg/jf/dexlib2/iface/reference/TypeReference;)I

    move-result p1

    return p1

    :pswitch_4
    iget-object p1, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    check-cast p2, Lorg/jf/dexlib2/iface/reference/StringReference;

    invoke-interface {p1, p2}, Lorg/jf/dexlib2/writer/StringSection;->getItemIndex(Lorg/jf/dexlib2/iface/reference/StringReference;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getReferenceIndex(Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;)I
    .registers 3

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReferenceType()I

    move-result v0

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getReferenceIndex(ILorg/jf/dexlib2/iface/reference/Reference;)I

    move-result p1

    return p1
.end method

.method static makeInstructionWriter(Lorg/jf/dexlib2/Opcodes;Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/StringSection;Lorg/jf/dexlib2/writer/TypeSection;Lorg/jf/dexlib2/writer/FieldSection;Lorg/jf/dexlib2/writer/MethodSection;Lorg/jf/dexlib2/writer/ProtoSection;)Lorg/jf/dexlib2/writer/InstructionWriter;
    .registers 16
    .param p0    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/writer/StringSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/writer/TypeSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/writer/FieldSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lorg/jf/dexlib2/writer/MethodSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p6    # Lorg/jf/dexlib2/writer/ProtoSection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v8, Lorg/jf/dexlib2/writer/InstructionWriter;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/jf/dexlib2/writer/InstructionWriter;-><init>(Lorg/jf/dexlib2/Opcodes;Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/StringSection;Lorg/jf/dexlib2/writer/TypeSection;Lorg/jf/dexlib2/writer/FieldSection;Lorg/jf/dexlib2/writer/MethodSection;Lorg/jf/dexlib2/writer/ProtoSection;)V

    return-object v8
.end method

.method private static packNibbles(II)I
    .registers 2

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public write(Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;)V
    .registers 6
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;->getElementWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;->getArrayElements()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;->getElementWidth()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeShort(I)V

    goto :goto_0

    :pswitch_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeLong(J)V

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    goto :goto_3

    :cond_2
    :goto_4
    iget-object p1, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->getPosition()I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction10t;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction10t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction10t;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction10t;->getCodeOffset()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction10x;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction10x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction10x;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction11n;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction11n;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction11n;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction11n;->getRegisterA()I

    move-result v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction11n;->getNarrowLiteral()I

    move-result p1

    invoke-static {v1, p1}, Lorg/jf/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction11x;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction11x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction11x;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction11x;->getRegisterA()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction12x;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction12x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction12x;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction12x;->getRegisterA()I

    move-result v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction12x;->getRegisterB()I

    move-result p1

    invoke-static {v1, p1}, Lorg/jf/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;->getVerificationError()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getReferenceIndex(Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction20t;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction20t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction20t;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction20t;->getCodeOffset()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21c;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction21c;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21c;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21c;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getReferenceIndex(Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21ih;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction21ih;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21ih;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21ih;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21ih;->getHatLiteral()S

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21lh;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction21lh;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21lh;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21lh;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21lh;->getHatLiteral()S

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21s;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction21s;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21s;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21s;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21s;->getNarrowLiteral()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction21t;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction21t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21t;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21t;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21t;->getCodeOffset()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22b;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction22b;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22b;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22b;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22b;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22b;->getNarrowLiteral()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterA()I

    move-result v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;->getRegisterB()I

    move-result v2

    invoke-static {v1, v2}, Lorg/jf/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getReferenceIndex(Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22s;)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction22s;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22s;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22s;->getRegisterA()I

    move-result v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22s;->getRegisterB()I

    move-result v2

    invoke-static {v1, v2}, Lorg/jf/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22s;->getNarrowLiteral()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22t;)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction22t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22t;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22t;->getRegisterA()I

    move-result v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22t;->getRegisterB()I

    move-result v2

    invoke-static {v1, v2}, Lorg/jf/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22t;->getCodeOffset()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction22x;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction22x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22x;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22x;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22x;->getRegisterB()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction23x;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction23x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction23x;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction23x;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction23x;->getRegisterB()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction23x;->getRegisterC()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction30t;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction30t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction30t;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction30t;->getCodeOffset()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction31c;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction31c;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31c;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31c;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getReferenceIndex(Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction31i;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction31i;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31i;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31i;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31i;->getNarrowLiteral()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31t;->getCodeOffset()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction32x;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction32x;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction32x;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction32x;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction32x;->getRegisterB()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterG()I

    move-result v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterCount()I

    move-result v2

    invoke-static {v1, v2}, Lorg/jf/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getReferenceIndex(Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterC()I

    move-result v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterD()I

    move-result v2

    invoke-static {v1, v2}, Lorg/jf/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterE()I

    move-result v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterF()I

    move-result p1

    invoke-static {v1, p1}, Lorg/jf/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;->getRegisterCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getReferenceIndex(Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;->getStartRegister()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction45cc;)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction45cc;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction45cc;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction45cc;->getRegisterG()I

    move-result v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction45cc;->getRegisterCount()I

    move-result v2

    invoke-static {v1, v2}, Lorg/jf/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getReferenceIndex(Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction45cc;->getRegisterC()I

    move-result v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction45cc;->getRegisterD()I

    move-result v2

    invoke-static {v1, v2}, Lorg/jf/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction45cc;->getRegisterE()I

    move-result v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction45cc;->getRegisterF()I

    move-result v2

    invoke-static {v1, v2}, Lorg/jf/dexlib2/writer/InstructionWriter;->packNibbles(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getReference2Index(Lorg/jf/dexlib2/iface/instruction/DualReferenceInstruction;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction4rcc;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction4rcc;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction4rcc;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction4rcc;->getRegisterCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getReferenceIndex(Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction4rcc;->getStartRegister()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getReference2Index(Lorg/jf/dexlib2/iface/instruction/DualReferenceInstruction;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/Instruction51l;)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction51l;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction51l;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction51l;->getRegisterA()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction51l;->getWideLiteral()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUbyte(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUbyte(I)V

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-virtual {p1, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/SwitchElement;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/SwitchElement;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUbyte(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/InstructionWriter;->getOpcodeValue(Lorg/jf/dexlib2/Opcode;)S

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUbyte(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->switchElementComparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iget-object v0, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeUshort(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/SwitchElement;

    iget-object v2, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/SwitchElement;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/InstructionWriter;->writer:Lorg/jf/dexlib2/writer/DexDataWriter;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/writer/DexDataWriter;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
