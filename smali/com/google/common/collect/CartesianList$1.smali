.class Lcom/google/common/collect/CartesianList$1;
.super Lcom/google/common/collect/ImmutableList;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CartesianList;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/CartesianList;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/CartesianList$1;->this$0:Lcom/google/common/collect/CartesianList;

    iput p2, p0, Lcom/google/common/collect/CartesianList$1;->val$index:I

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/collect/CartesianList$1;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    iget-object v0, p0, Lcom/google/common/collect/CartesianList$1;->this$0:Lcom/google/common/collect/CartesianList;

    iget v1, p0, Lcom/google/common/collect/CartesianList$1;->val$index:I

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/CartesianList;->access$100(Lcom/google/common/collect/CartesianList;II)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/CartesianList$1;->this$0:Lcom/google/common/collect/CartesianList;

    invoke-static {v1}, Lcom/google/common/collect/CartesianList;->access$000(Lcom/google/common/collect/CartesianList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/CartesianList$1;->this$0:Lcom/google/common/collect/CartesianList;

    invoke-static {v0}, Lcom/google/common/collect/CartesianList;->access$000(Lcom/google/common/collect/CartesianList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method
