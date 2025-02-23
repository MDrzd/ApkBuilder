.class Lcom/google/common/collect/ArrayTable$ArrayMap$1$1$1;
.super Lcom/google/common/collect/AbstractMapEntry;


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/ArrayTable$ArrayMap$1$1;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable$ArrayMap$1$1;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$1$1$1;->this$2:Lcom/google/common/collect/ArrayTable$ArrayMap$1$1;

    iput p2, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$1$1$1;->val$index:I

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$1$1$1;->this$2:Lcom/google/common/collect/ArrayTable$ArrayMap$1$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$ArrayMap$1$1;->this$1:Lcom/google/common/collect/ArrayTable$ArrayMap$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$ArrayMap$1;->this$0:Lcom/google/common/collect/ArrayTable$ArrayMap;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$1$1$1;->val$index:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ArrayTable$ArrayMap;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$1$1$1;->this$2:Lcom/google/common/collect/ArrayTable$ArrayMap$1$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$ArrayMap$1$1;->this$1:Lcom/google/common/collect/ArrayTable$ArrayMap$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$ArrayMap$1;->this$0:Lcom/google/common/collect/ArrayTable$ArrayMap;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$1$1$1;->val$index:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ArrayTable$ArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$1$1$1;->this$2:Lcom/google/common/collect/ArrayTable$ArrayMap$1$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$ArrayMap$1$1;->this$1:Lcom/google/common/collect/ArrayTable$ArrayMap$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$ArrayMap$1;->this$0:Lcom/google/common/collect/ArrayTable$ArrayMap;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$1$1$1;->val$index:I

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/ArrayTable$ArrayMap;->setValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
