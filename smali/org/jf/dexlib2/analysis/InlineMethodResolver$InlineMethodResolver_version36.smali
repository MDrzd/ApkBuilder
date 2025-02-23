.class Lorg/jf/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;
.super Lorg/jf/dexlib2/analysis/InlineMethodResolver;


# instance fields
.field private final fastIndexOfMethod:Lorg/jf/dexlib2/iface/Method;

.field private final indexOfIIMethod:Lorg/jf/dexlib2/iface/Method;

.field private final indexOfIMethod:Lorg/jf/dexlib2/iface/Method;

.field private final inlineMethods:[Lorg/jf/dexlib2/iface/Method;

.field private final isEmptyMethod:Lorg/jf/dexlib2/iface/Method;


# direct methods
.method public constructor <init>()V
    .registers 9

    invoke-direct {p0}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;-><init>()V

    const-string v0, "Ljava/lang/String;"

    const-string v1, "indexOf"

    const-string v2, "I"

    const-string v3, "I"

    const/4 v4, 0x1

    invoke-static {v4, v0, v1, v2, v3}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->indexOfIMethod:Lorg/jf/dexlib2/iface/Method;

    const-string v0, "Ljava/lang/String;"

    const-string v1, "indexOf"

    const-string v2, "II"

    const-string v3, "I"

    invoke-static {v4, v0, v1, v2, v3}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->indexOfIIMethod:Lorg/jf/dexlib2/iface/Method;

    const-string v0, "Ljava/lang/String;"

    const-string v1, "fastIndexOf"

    const-string v2, "II"

    const-string v3, "I"

    const/4 v5, 0x2

    invoke-static {v5, v0, v1, v2, v3}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->fastIndexOfMethod:Lorg/jf/dexlib2/iface/Method;

    const-string v0, "Ljava/lang/String;"

    const-string v1, "isEmpty"

    const-string v2, ""

    const-string v3, "Z"

    invoke-static {v4, v0, v1, v2, v3}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->isEmptyMethod:Lorg/jf/dexlib2/iface/Method;

    const/16 v0, 0x1d

    new-array v0, v0, [Lorg/jf/dexlib2/iface/Method;

    const-string v1, "Lorg/apache/harmony/dalvik/NativeTestTarget;"

    const-string v2, "emptyInlineMethod"

    const-string v3, ""

    const-string v6, "V"

    const/16 v7, 0x8

    invoke-static {v7, v1, v2, v3, v6}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/String;"

    const-string v2, "charAt"

    const-string v3, "I"

    const-string v6, "C"

    invoke-static {v4, v1, v2, v3, v6}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Ljava/lang/String;"

    const-string v2, "compareTo"

    const-string v3, "Ljava/lang/String;"

    const-string v6, "I"

    invoke-static {v4, v1, v2, v3, v6}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Ljava/lang/String;"

    const-string v2, "equals"

    const-string v3, "Ljava/lang/Object;"

    const-string v5, "Z"

    invoke-static {v4, v1, v2, v3, v5}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/String;"

    const-string v2, "length"

    const-string v3, ""

    const-string v5, "I"

    invoke-static {v4, v1, v2, v3, v5}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Math;"

    const-string v2, "abs"

    const-string v3, "I"

    const-string v4, "I"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Math;"

    const-string v2, "abs"

    const-string v3, "J"

    const-string v4, "J"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "Ljava/lang/Math;"

    const-string v2, "abs"

    const-string v3, "F"

    const-string v4, "F"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Math;"

    const-string v2, "abs"

    const-string v3, "D"

    const-string v4, "D"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Math;"

    const-string v2, "min"

    const-string v3, "II"

    const-string v4, "I"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Math;"

    const-string v2, "max"

    const-string v3, "II"

    const-string v4, "I"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Math;"

    const-string v2, "sqrt"

    const-string v3, "D"

    const-string v4, "D"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Math;"

    const-string v2, "cos"

    const-string v3, "D"

    const-string v4, "D"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Math;"

    const-string v2, "sin"

    const-string v3, "D"

    const-string v4, "D"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Float;"

    const-string v2, "floatToIntBits"

    const-string v3, "F"

    const-string v4, "I"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Float;"

    const-string v2, "floatToRawIntBits"

    const-string v3, "F"

    const-string v4, "I"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Float;"

    const-string v2, "intBitsToFloat"

    const-string v3, "I"

    const-string v4, "F"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Double;"

    const-string v2, "doubleToLongBits"

    const-string v3, "D"

    const-string v4, "J"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Double;"

    const-string v2, "doubleToRawLongBits"

    const-string v3, "D"

    const-string v4, "J"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Double;"

    const-string v2, "longBitsToDouble"

    const-string v3, "J"

    const-string v4, "D"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/StrictMath;"

    const-string v2, "abs"

    const-string v3, "I"

    const-string v4, "I"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/StrictMath;"

    const-string v2, "abs"

    const-string v3, "J"

    const-string v4, "J"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/StrictMath;"

    const-string v2, "abs"

    const-string v3, "F"

    const-string v4, "F"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/StrictMath;"

    const-string v2, "abs"

    const-string v3, "D"

    const-string v4, "D"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/StrictMath;"

    const-string v2, "min"

    const-string v3, "II"

    const-string v4, "I"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/StrictMath;"

    const-string v2, "max"

    const-string v3, "II"

    const-string v4, "I"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/StrictMath;"

    const-string v2, "sqrt"

    const-string v3, "D"

    const-string v4, "D"

    invoke-static {v7, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/jf/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->inlineMethods:[Lorg/jf/dexlib2/iface/Method;

    return-void
.end method


# virtual methods
.method public resolveExecuteInline(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Lorg/jf/dexlib2/iface/Method;
    .registers 5
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object p1, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast p1, Lorg/jf/dexlib2/iface/instruction/InlineIndexInstruction;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/InlineIndexInstruction;->getInlineIndex()I

    move-result v0

    if-ltz v0, :cond_6

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->inlineMethods:[Lorg/jf/dexlib2/iface/Method;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-ne v0, v1, :cond_2

    check-cast p1, Lorg/jf/dexlib2/iface/instruction/VariableRegisterInstruction;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/VariableRegisterInstruction;->getRegisterCount()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/jf/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->indexOfIMethod:Lorg/jf/dexlib2/iface/Method;

    return-object p1

    :cond_0
    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lorg/jf/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->fastIndexOfMethod:Lorg/jf/dexlib2/iface/Method;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not determine the correct inline method to use"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    check-cast p1, Lorg/jf/dexlib2/iface/instruction/VariableRegisterInstruction;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/VariableRegisterInstruction;->getRegisterCount()I

    move-result p1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lorg/jf/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->indexOfIIMethod:Lorg/jf/dexlib2/iface/Method;

    return-object p1

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lorg/jf/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->isEmptyMethod:Lorg/jf/dexlib2/iface/Method;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not determine the correct inline method to use"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object p1, p0, Lorg/jf/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version36;->inlineMethods:[Lorg/jf/dexlib2/iface/Method;

    aget-object p1, p1, v0

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid method index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
