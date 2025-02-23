.class Lcom/google/common/collect/ArrayTable$1$1;
.super Lcom/google/common/collect/Tables$AbstractCell;


# instance fields
.field final columnIndex:I

.field final rowIndex:I

.field final synthetic this$1:Lcom/google/common/collect/ArrayTable$1;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable$1;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$1$1;->this$1:Lcom/google/common/collect/ArrayTable$1;

    iput p2, p0, Lcom/google/common/collect/ArrayTable$1$1;->val$index:I

    invoke-direct {p0}, Lcom/google/common/collect/Tables$AbstractCell;-><init>()V

    iget p1, p0, Lcom/google/common/collect/ArrayTable$1$1;->val$index:I

    iget-object p2, p0, Lcom/google/common/collect/ArrayTable$1$1;->this$1:Lcom/google/common/collect/ArrayTable$1;

    iget-object p2, p2, Lcom/google/common/collect/ArrayTable$1;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {p2}, Lcom/google/common/collect/ArrayTable;->access$000(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p2

    div-int/2addr p1, p2

    iput p1, p0, Lcom/google/common/collect/ArrayTable$1$1;->rowIndex:I

    iget p1, p0, Lcom/google/common/collect/ArrayTable$1$1;->val$index:I

    iget-object p2, p0, Lcom/google/common/collect/ArrayTable$1$1;->this$1:Lcom/google/common/collect/ArrayTable$1;

    iget-object p2, p2, Lcom/google/common/collect/ArrayTable$1;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {p2}, Lcom/google/common/collect/ArrayTable;->access$000(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p2

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/google/common/collect/ArrayTable$1$1;->columnIndex:I

    return-void
.end method


# virtual methods
.method public getColumnKey()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$1$1;->this$1:Lcom/google/common/collect/ArrayTable$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$1;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$000(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ArrayTable$1$1;->columnIndex:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRowKey()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$1$1;->this$1:Lcom/google/common/collect/ArrayTable$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$1;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ArrayTable$1$1;->rowIndex:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$1$1;->this$1:Lcom/google/common/collect/ArrayTable$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$1;->this$0:Lcom/google/common/collect/ArrayTable;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$1$1;->rowIndex:I

    iget v2, p0, Lcom/google/common/collect/ArrayTable$1$1;->columnIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
