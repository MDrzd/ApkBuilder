.class Lcom/google/common/collect/StandardTable$RowMap$EntrySet$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/StandardTable$RowMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$RowMap$EntrySet;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet$1;->this$2:Lcom/google/common/collect/StandardTable$RowMap$EntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable$RowMap$EntrySet$1;->apply(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet$1;->this$2:Lcom/google/common/collect/StandardTable$RowMap$EntrySet;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$RowMap;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$RowMap;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
