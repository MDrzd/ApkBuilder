.class Lorg/jf/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version35;
.super Lorg/jf/dexlib2/analysis/InlineMethodResolver;


# instance fields
.field private final inlineMethods:[Lorg/jf/dexlib2/iface/Method;


# direct methods
.method public constructor <init>()V
    .registers 8

    invoke-direct {p0}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;-><init>()V

    const/16 v0, 0xe

    new-array v0, v0, [Lorg/jf/dexlib2/iface/Method;

    const-string v1, "Lorg/apache/harmony/dalvik/NativeTestTarget;"

    const-string v2, "emptyInlineMethod"

    const-string v3, ""

    const-string v4, "V"

    const/16 v5, 0x8

    invoke-static {v5, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/String;"

    const-string v2, "charAt"

    const-string v3, "I"

    const-string v4, "C"

    const/4 v6, 0x1

    invoke-static {v6, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "Ljava/lang/String;"

    const-string v2, "compareTo"

    const-string v3, "Ljava/lang/String;"

    const-string v4, "I"

    invoke-static {v6, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/String;"

    const-string v2, "equals"

    const-string v3, "Ljava/lang/Object;"

    const-string v4, "Z"

    invoke-static {v6, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/String;"

    const-string v2, "length"

    const-string v3, ""

    const-string v4, "I"

    invoke-static {v6, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Math;"

    const-string v2, "abs"

    const-string v3, "I"

    const-string v4, "I"

    invoke-static {v5, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Math;"

    const-string v2, "abs"

    const-string v3, "J"

    const-string v4, "J"

    invoke-static {v5, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Math;"

    const-string v2, "abs"

    const-string v3, "F"

    const-string v4, "F"

    invoke-static {v5, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Math;"

    const-string v2, "abs"

    const-string v3, "D"

    const-string v4, "D"

    invoke-static {v5, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Ljava/lang/Math;"

    const-string v2, "min"

    const-string v3, "II"

    const-string v4, "I"

    invoke-static {v5, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Math;"

    const-string v2, "max"

    const-string v3, "II"

    const-string v4, "I"

    invoke-static {v5, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Math;"

    const-string v2, "sqrt"

    const-string v3, "D"

    const-string v4, "D"

    invoke-static {v5, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Math;"

    const-string v2, "cos"

    const-string v3, "D"

    const-string v4, "D"

    invoke-static {v5, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "Ljava/lang/Math;"

    const-string v2, "sin"

    const-string v3, "D"

    const-string v4, "D"

    invoke-static {v5, v1, v2, v3, v4}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->access$000(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/iface/Method;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/jf/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version35;->inlineMethods:[Lorg/jf/dexlib2/iface/Method;

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

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version35;->inlineMethods:[Lorg/jf/dexlib2/iface/Method;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/InlineMethodResolver$InlineMethodResolver_version35;->inlineMethods:[Lorg/jf/dexlib2/iface/Method;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid inline index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
