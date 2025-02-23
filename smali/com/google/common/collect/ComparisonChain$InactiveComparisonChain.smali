.class final Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;
.super Lcom/google/common/collect/ComparisonChain;


# instance fields
.field final result:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ComparisonChain;-><init>(Lcom/google/common/collect/ComparisonChain$1;)V

    iput p1, p0, Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;->result:I

    return-void
.end method


# virtual methods
.method public final compare(DD)Lcom/google/common/collect/ComparisonChain;
    .registers 5

    return-object p0
.end method

.method public final compare(FF)Lcom/google/common/collect/ComparisonChain;
    .registers 3

    return-object p0
.end method

.method public final compare(II)Lcom/google/common/collect/ComparisonChain;
    .registers 3

    return-object p0
.end method

.method public final compare(JJ)Lcom/google/common/collect/ComparisonChain;
    .registers 5

    return-object p0
.end method

.method public final compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;
    .registers 3
    .param p1    # Ljava/lang/Comparable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Comparable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-object p0
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-object p0
.end method

.method public final compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
    .registers 3

    return-object p0
.end method

.method public final compareTrueFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
    .registers 3

    return-object p0
.end method

.method public final result()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;->result:I

    return v0
.end method
