.class Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/StandardTable$Row$RowEntrySet;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$Row$RowEntrySet;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->this$2:Lcom/google/common/collect/StandardTable$Row$RowEntrySet;

    iput-object p2, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;-><init>(Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public remove()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->this$2:Lcom/google/common/collect/StandardTable$Row$RowEntrySet;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable$Row;->maintainEmptyInvariant()V

    return-void
.end method
