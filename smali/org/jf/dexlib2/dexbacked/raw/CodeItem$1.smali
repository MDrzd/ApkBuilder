.class final Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;
.super Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private debugInfoAnnotator:Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/jf/dexlib2/dexbacked/raw/CodeItem;

    return-void
.end method

.method constructor <init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;-><init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->debugInfoAnnotator:Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    return-void
.end method

.method private addDebugInfoIdentity(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->debugInfoAnnotator:Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->debugInfoAnnotator:Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    invoke-virtual {v0, p1, p2}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->setItemIdentity(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private annotateArrayPayload(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;)V
    .registers 13
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;->getArrayElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;->getElementWidth()I

    move-result v1

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object p2

    iget-object p2, p2, Lorg/jf/dexlib2/Opcode;->name:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-virtual {p1, v4, p2, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    const-string p2, "element_width = %d"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p1, v4, p2, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "size = %d"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x4

    invoke-virtual {p1, v6, p2, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "elements:"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v2, p2, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 p2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge p2, v5, :cond_3

    const/16 v5, 0x8

    const/4 v6, 0x3

    if-ne v1, v5, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/jf/util/NumberUtils;->isLikelyDouble(J)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "element[%d] = %d # %f"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v4

    :goto_1
    invoke-virtual {p1, v1, v5, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string v5, "element[%d] = %d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    goto :goto_1

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Lorg/jf/util/NumberUtils;->isLikelyFloat(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "element[%d] = %d # %f"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-virtual {p1, v1, v7, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const-string v6, "element[%d] = %d"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-virtual {p1, v1, v6, v7}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result p2

    rem-int/2addr p2, v4

    if-eqz p2, :cond_4

    const-string p2, "padding"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v3, p2, v0}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    return-void
.end method

.method private annotateDefaultInstruction(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/iface/instruction/Instruction;)V
    .registers 12
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/iface/instruction/Instruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    instance-of v1, p2, Lorg/jf/dexlib2/iface/instruction/OneRegisterInstruction;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/OneRegisterInstruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/OneRegisterInstruction;->getRegisterA()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v1, p2, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/TwoRegisterInstruction;->getRegisterB()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v1, p2, Lorg/jf/dexlib2/iface/instruction/ThreeRegisterInstruction;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/ThreeRegisterInstruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/ThreeRegisterInstruction;->getRegisterC()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of v1, p2, Lorg/jf/dexlib2/iface/instruction/VerificationErrorInstruction;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/VerificationErrorInstruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/VerificationErrorInstruction;->getVerificationError()I

    move-result v1

    invoke-static {v1}, Lorg/jf/dexlib2/VerificationError;->getVerificationErrorName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "invalid verification error type"

    goto :goto_0

    :cond_2
    :goto_1
    instance-of v1, p2, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v1

    invoke-static {v1}, Lorg/jf/dexlib2/util/ReferenceUtil;->getReferenceString(Lorg/jf/dexlib2/iface/reference/Reference;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_3
    instance-of v1, p2, Lorg/jf/dexlib2/iface/instruction/OffsetInstruction;

    if-eqz v1, :cond_5

    move-object v1, p2

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/OffsetInstruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/OffsetInstruction;->getCodeOffset()I

    move-result v1

    if-ltz v1, :cond_4

    const-string v5, "+"

    goto :goto_3

    :cond_4
    const-string v5, "-"

    :goto_3
    const-string v6, "%s0x%x"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    instance-of v1, p2, Lorg/jf/dexlib2/iface/instruction/NarrowLiteralInstruction;

    if-eqz v1, :cond_7

    move-object v1, p2

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/NarrowLiteralInstruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/NarrowLiteralInstruction;->getNarrowLiteral()I

    move-result v1

    invoke-static {v1}, Lorg/jf/util/NumberUtils;->isLikelyFloat(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "%d # %f"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v6, v4

    :goto_4
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    const-string v5, "%d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    goto :goto_4

    :cond_7
    instance-of v1, p2, Lorg/jf/dexlib2/iface/instruction/WideLiteralInstruction;

    if-eqz v1, :cond_9

    move-object v1, p2

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/WideLiteralInstruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/WideLiteralInstruction;->getWideLiteral()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/jf/util/NumberUtils;->isLikelyDouble(J)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "%d # %f"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v7, v4

    :goto_5
    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_8
    const-string v1, "%d"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v3

    goto :goto_5

    :cond_9
    instance-of v1, p2, Lorg/jf/dexlib2/iface/instruction/FieldOffsetInstruction;

    if-eqz v1, :cond_a

    move-object v1, p2

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/FieldOffsetInstruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/FieldOffsetInstruction;->getFieldOffset()I

    move-result v1

    const-string v5, "field@0x%x"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    goto :goto_4

    :cond_a
    instance-of v1, p2, Lorg/jf/dexlib2/iface/instruction/VtableIndexInstruction;

    if-eqz v1, :cond_b

    move-object v1, p2

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/VtableIndexInstruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/VtableIndexInstruction;->getVtableIndex()I

    move-result v1

    const-string v5, "vtable@%d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    goto :goto_4

    :cond_b
    instance-of v1, p2, Lorg/jf/dexlib2/iface/instruction/InlineIndexInstruction;

    if-eqz v1, :cond_c

    move-object v1, p2

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/InlineIndexInstruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/InlineIndexInstruction;->getInlineIndex()I

    move-result v1

    const-string v5, "inline@%d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    goto/16 :goto_4

    :cond_c
    :goto_6
    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getCodeUnits()I

    move-result v1

    shl-int/2addr v1, v4

    const-string v5, "%s %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object p2

    iget-object p2, p2, Lorg/jf/dexlib2/Opcode;->name:Ljava/lang/String;

    aput-object p2, v2, v3

    const-string p2, ", "

    invoke-static {p2}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v4

    invoke-virtual {p1, v1, v5, v2}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private annotateInstruction10x(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/iface/instruction/Instruction;)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/iface/instruction/Instruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object p2

    iget-object p2, p2, Lorg/jf/dexlib2/Opcode;->name:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p2, v0}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private annotateInstruction35c(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;)V
    .registers 11
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterCount()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterC()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_0
    if-ne v1, v3, :cond_1

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterC()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterD()I

    move-result v1

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterC()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterD()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterE()I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    if-ne v1, v5, :cond_3

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterC()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterD()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterE()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterF()I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v5, 0x5

    if-ne v1, v5, :cond_4

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterC()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterD()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterE()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterF()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->formatRegister(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getRegisterG()I

    move-result v1

    goto/16 :goto_0

    :cond_4
    :goto_1
    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v1

    invoke-static {v1}, Lorg/jf/dexlib2/util/ReferenceUtil;->getReferenceString(Lorg/jf/dexlib2/iface/reference/Reference;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x6

    const-string v6, "%s {%s}, %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object p2

    iget-object p2, p2, Lorg/jf/dexlib2/Opcode;->name:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v2, v7

    const-string p2, ", "

    invoke-static {p2}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v4

    aput-object v1, v2, v3

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v5, p2, v0}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private annotateInstruction3rc(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;)V
    .registers 10
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;->getStartRegister()I

    move-result v0

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;->getRegisterCount()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v3

    invoke-static {v3}, Lorg/jf/dexlib2/util/ReferenceUtil;->getReferenceString(Lorg/jf/dexlib2/iface/reference/Reference;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s {%s .. %s}, %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object p2

    iget-object p2, p2, Lorg/jf/dexlib2/Opcode;->name:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->formatRegister(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v2

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->formatRegister(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, v5, v0

    const/4 p2, 0x3

    aput-object v3, v5, p2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v6, [Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, p2, v0}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private annotatePackedSwitchPayload(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;)V
    .registers 11
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object p2

    iget-object p2, p2, Lorg/jf/dexlib2/Opcode;->name:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, p2, v2}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    const-string p2, "size = %d"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1, v3, p2, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v4, 0x4

    if-nez p2, :cond_0

    const-string p2, "first_key"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v4, p2, v0}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p2, "first_key = %d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jf/dexlib2/iface/instruction/SwitchElement;

    invoke-interface {v6}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1, v4, p2, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "targets:"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p2, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 p2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge p2, v5, :cond_1

    const-string v5, "target[%d] = %d"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jf/dexlib2/iface/instruction/SwitchElement;

    invoke-interface {v7}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p1, v4, v5, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    :goto_1
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    return-void
.end method

.method private annotateSparseSwitchPayload(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;)V
    .registers 11
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object p2

    iget-object p2, p2, Lorg/jf/dexlib2/Opcode;->name:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, p2, v2}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    const-string p2, "size = %d"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1, v3, p2, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    const-string p2, "keys:"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p2, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 p2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge p2, v4, :cond_0

    const-string v4, "key[%d] = %d"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jf/dexlib2/iface/instruction/SwitchElement;

    invoke-interface {v7}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p1, v5, v4, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    const-string p2, "targets:"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p2, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 p2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_1

    const-string v4, "target[%d] = %d"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jf/dexlib2/iface/instruction/SwitchElement;

    invoke-interface {v7}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p1, v5, v4, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    :cond_2
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    return-void
.end method

.method private formatRegister(I)Ljava/lang/String;
    .registers 5

    const-string v0, "v%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final annotateItem(Lorg/jf/dexlib2/util/AnnotatedBytes;ILjava/lang/String;)V
    .registers 14
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 p2, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v2

    const-string v3, "registers_size = %d"

    new-array v4, p2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v3, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v3

    const-string v4, "ins_size = %d"

    new-array v5, p2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-virtual {p1, v2, v4, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v3

    const-string v4, "outs_size = %d"

    new-array v5, p2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-virtual {p1, v2, v4, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v3

    const-string v4, "tries_size = %d"

    new-array v5, p2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {p1, v2, v4, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readInt()I

    move-result v4

    const-string v5, "debug_info_off = 0x%x"

    new-array v6, p2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x4

    invoke-virtual {p1, v7, v5, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    if-lez v4, :cond_0

    invoke-direct {p0, v4, p3}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->addDebugInfoIdentity(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUint()I

    move-result p3

    const-string v4, "insns_size = 0x%x"

    new-array v5, p2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {p1, v7, v4, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "instructions:"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v4

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    shl-int/2addr p3, p2

    add-int/2addr v5, p3

    invoke-virtual {p1, v4, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->setLimit(II)V

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v4
    :try_end_0
    .catch Lorg/jf/util/ExceptionWithContext; {:try_start_0 .. :try_end_0} :catch_1

    add-int/2addr v4, p3

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p3

    if-ge p3, v4, :cond_2

    invoke-static {v1}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction;->readFrom(Lorg/jf/dexlib2/dexbacked/DexReader;)Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object p3

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v5

    if-le v5, v4, :cond_1

    const-string p3, "truncated instruction"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v4, p3, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lorg/jf/dexlib2/dexbacked/DexReader;->setOffset(I)V

    goto :goto_0

    :cond_1
    sget-object v5, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$2;->$SwitchMap$org$jf$dexlib2$Format:[I

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v6

    iget-object v6, v6, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    invoke-virtual {v6}, Lorg/jf/dexlib2/Format;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    invoke-direct {p0, p1, p3}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->annotateDefaultInstruction(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/iface/instruction/Instruction;)V

    goto :goto_0

    :pswitch_0
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;

    invoke-direct {p0, p1, p3}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->annotateSparseSwitchPayload(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;)V

    goto :goto_0

    :pswitch_1
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;

    invoke-direct {p0, p1, p3}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->annotatePackedSwitchPayload(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;)V

    goto :goto_0

    :pswitch_2
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;

    invoke-direct {p0, p1, p3}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->annotateArrayPayload(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;)V

    goto :goto_0

    :pswitch_3
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;

    invoke-direct {p0, p1, p3}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->annotateInstruction3rc(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;)V

    goto :goto_0

    :pswitch_4
    check-cast p3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;

    invoke-direct {p0, p1, p3}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->annotateInstruction35c(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, p3}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->annotateInstruction10x(Lorg/jf/dexlib2/util/AnnotatedBytes;Lorg/jf/dexlib2/iface/instruction/Instruction;)V
    :try_end_1
    .catch Lorg/jf/util/ExceptionWithContext; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->clearLimit()V

    :goto_1
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V
    :try_end_2
    .catch Lorg/jf/util/ExceptionWithContext; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception p3

    goto/16 :goto_7

    :catch_0
    move-exception p3

    :try_start_3
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p3, v5}, Lorg/jf/util/ExceptionWithContext;->printStackTrace(Ljava/io/PrintStream;)V

    const-string v5, "annotation error: %s"

    new-array v6, p2, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/jf/util/ExceptionWithContext;->getMessage()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v6, v0

    invoke-virtual {p1, v0, v5, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    invoke-virtual {v1, v4}, Lorg/jf/dexlib2/dexbacked/DexReader;->setOffset(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->clearLimit()V

    goto :goto_1

    :goto_2
    if-lez v3, :cond_a

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p3

    rem-int/2addr p3, v7

    if-eqz p3, :cond_3

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readUshort()I

    const-string p3, "padding"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v2, p3, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const-string p3, "try_items:"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p3, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V
    :try_end_4
    .catch Lorg/jf/util/ExceptionWithContext; {:try_start_4 .. :try_end_4} :catch_1

    const/4 p3, 0x0

    :goto_3
    if-ge p3, v3, :cond_4

    :try_start_5
    const-string v4, "try_item[%d]:"

    new-array v5, p2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {p1, v0, v4, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUint()I

    move-result v4

    const-string v5, "start_addr = 0x%x"

    new-array v6, p2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v0

    invoke-virtual {p1, v7, v5, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v4

    const-string v5, "insn_count = 0x%x"

    new-array v6, p2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v0

    invoke-virtual {p1, v2, v5, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readUshort()I

    move-result v4

    const-string v5, "handler_off = 0x%x"

    new-array v6, p2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v0

    invoke-virtual {p1, v2, v5, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :catchall_1
    move-exception p3

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    throw p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p3

    :try_start_8
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    throw p3

    :cond_4
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p3

    const-string v2, "encoded_catch_handler_list:"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v2

    const-string v3, "size = %d"

    new-array v4, p2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p1, v2, v3, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V
    :try_end_8
    .catch Lorg/jf/util/ExceptionWithContext; {:try_start_8 .. :try_end_8} :catch_1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p3, :cond_9

    :try_start_9
    const-string v3, "encoded_catch_handler[%d]"

    new-array v4, p2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p1, v0, v3, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSleb128()I

    move-result v3

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v4

    const-string v5, "size = %d"

    new-array v6, p2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {p1, v4, v5, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    if-gtz v3, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-eqz v3, :cond_7

    const-string v5, "handlers:"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v5, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_6

    :try_start_b
    const-string v6, "encoded_type_addr_pair[%d]"

    new-array v7, p2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-virtual {p1, v0, v6, v7}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v6

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v7

    iget-object v8, p0, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v8, v6}, Lorg/jf/dexlib2/dexbacked/raw/TypeIdItem;->getReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v6

    new-array v8, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v7, v6, v8}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v6

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v7

    const-string v8, "addr = 0x%x"

    new-array v9, p2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v0

    invoke-virtual {p1, v7, v8, v9}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :catchall_3
    move-exception p3

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    throw p3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception p3

    :try_start_e
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    throw p3

    :cond_6
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v3

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v4

    const-string v5, "catch_all_addr = 0x%x"

    new-array v6, p2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v0

    invoke-virtual {p1, v4, v5, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :cond_8
    :try_start_f
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :catchall_5
    move-exception p3

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    throw p3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catchall_6
    move-exception p3

    :try_start_10
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    throw p3

    :cond_9
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    goto :goto_8

    :cond_a
    return-void

    :goto_7
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->clearLimit()V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    throw p3
    :try_end_10
    .catch Lorg/jf/util/ExceptionWithContext; {:try_start_10 .. :try_end_10} :catch_1

    :catch_1
    move-exception p3

    const-string v1, "annotation error: %s"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/jf/util/ExceptionWithContext;->getMessage()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-virtual {p1, v0, v1, p2}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final annotateSection(Lorg/jf/dexlib2/util/AnnotatedBytes;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->annotator:Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;

    const/16 v1, 0x2003

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->getAnnotator(I)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;->debugInfoAnnotator:Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    invoke-super {p0, p1}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->annotateSection(Lorg/jf/dexlib2/util/AnnotatedBytes;)V

    return-void
.end method

.method public final getItemAlignment()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public final getItemName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const-string v0, "code_item"

    return-object v0
.end method
