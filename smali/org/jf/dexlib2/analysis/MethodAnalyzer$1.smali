.class Lorg/jf/dexlib2/analysis/MethodAnalyzer$1;
.super Lorg/jf/dexlib2/analysis/AnalyzedInstruction;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/analysis/MethodAnalyzer;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/analysis/MethodAnalyzer;Lorg/jf/dexlib2/analysis/MethodAnalyzer;Lorg/jf/dexlib2/iface/instruction/Instruction;II)V
    .registers 6

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer$1;->this$0:Lorg/jf/dexlib2/analysis/MethodAnalyzer;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/jf/dexlib2/analysis/AnalyzedInstruction;-><init>(Lorg/jf/dexlib2/analysis/MethodAnalyzer;Lorg/jf/dexlib2/iface/instruction/Instruction;II)V

    return-void
.end method


# virtual methods
.method protected addPredecessor(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getPredecessorRegisterType(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;I)Lorg/jf/dexlib2/analysis/RegisterType;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/analysis/AnalyzedInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
