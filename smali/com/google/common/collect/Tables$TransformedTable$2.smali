.class Lcom/google/common/collect/Tables$TransformedTable$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Tables$TransformedTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Tables$TransformedTable;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Tables$TransformedTable$2;->this$0:Lcom/google/common/collect/Tables$TransformedTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Tables$TransformedTable$2;->apply(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/Map;)Ljava/util/Map;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Tables$TransformedTable$2;->this$0:Lcom/google/common/collect/Tables$TransformedTable;

    iget-object v0, v0, Lcom/google/common/collect/Tables$TransformedTable;->function:Lcom/google/common/base/Function;

    invoke-static {p1, v0}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
