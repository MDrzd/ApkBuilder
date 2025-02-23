.class Lorg/jf/dexlib2/analysis/MethodAnalyzer$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/analysis/MethodAnalyzer;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/analysis/MethodAnalyzer;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer$2;->this$0:Lorg/jf/dexlib2/analysis/MethodAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/analysis/MethodAnalyzer$2;->apply(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Lorg/jf/dexlib2/iface/instruction/Instruction;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    return-object p1
.end method
