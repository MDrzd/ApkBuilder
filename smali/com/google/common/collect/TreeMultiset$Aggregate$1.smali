.class final enum Lcom/google/common/collect/TreeMultiset$Aggregate$1;
.super Lcom/google/common/collect/TreeMultiset$Aggregate;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/TreeMultiset$Aggregate;-><init>(Ljava/lang/String;ILcom/google/common/collect/TreeMultiset$1;)V

    return-void
.end method


# virtual methods
.method final nodeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)I
    .registers 2

    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$200(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result p1

    return p1
.end method

.method final treeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)J
    .registers 4
    .param p1    # Lcom/google/common/collect/TreeMultiset$AvlNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$300(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v0

    return-wide v0
.end method
