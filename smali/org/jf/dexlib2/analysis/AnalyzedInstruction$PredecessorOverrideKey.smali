.class Lorg/jf/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;
.super Ljava/lang/Object;


# instance fields
.field public final analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

.field public final registerNumber:I


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/analysis/AnalyzedInstruction;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    iput p2, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;->registerNumber:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;

    iget v2, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;->registerNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;->registerNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    iget-object p1, p1, Lorg/jf/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;->analyzedInstruction:Lorg/jf/dexlib2/analysis/AnalyzedInstruction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lorg/jf/dexlib2/analysis/AnalyzedInstruction$PredecessorOverrideKey;->registerNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
