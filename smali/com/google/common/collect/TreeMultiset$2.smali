.class Lcom/google/common/collect/TreeMultiset$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field current:Lcom/google/common/collect/TreeMultiset$AvlNode;

.field prevEntry:Lcom/google/common/collect/Multiset$Entry;

.field final synthetic this$0:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$2;->this$0:Lcom/google/common/collect/TreeMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$2;->this$0:Lcom/google/common/collect/TreeMultiset;

    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset;->access$1200(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$2;->current:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->current:Lcom/google/common/collect/TreeMultiset$AvlNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->this$0:Lcom/google/common/collect/TreeMultiset;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->access$1300(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/GeneralRange;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$2;->current:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-virtual {v2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/GeneralRange;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->current:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public next()Lcom/google/common/collect/Multiset$Entry;
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$2;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->this$0:Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$2;->current:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v0, v1}, Lcom/google/common/collect/TreeMultiset;->access$1400(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->prevEntry:Lcom/google/common/collect/Multiset$Entry;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$2;->current:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$900(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$2;->this$0:Lcom/google/common/collect/TreeMultiset;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset;->access$1500(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$2;->current:Lcom/google/common/collect/TreeMultiset$AvlNode;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$2;->current:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$900(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    goto :goto_0

    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$2;->next()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->prevEntry:Lcom/google/common/collect/Multiset$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->this$0:Lcom/google/common/collect/TreeMultiset;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$2;->prevEntry:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/TreeMultiset;->setCount(Ljava/lang/Object;I)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->prevEntry:Lcom/google/common/collect/Multiset$Entry;

    return-void
.end method
