.class Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$3;
.super Lcom/google/common/util/concurrent/Monitor$Guard;


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Monitor;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$3;->this$0:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-direct {p0, p2}, Lcom/google/common/util/concurrent/Monitor$Guard;-><init>(Lcom/google/common/util/concurrent/Monitor;)V

    return-void
.end method


# virtual methods
.method public isSatisfied()Z
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$3;->this$0:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lcom/google/common/collect/Multiset;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$3;->this$0:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, v1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lcom/google/common/collect/Multiset;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v1, v2}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$3;->this$0:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget v1, v1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->numberOfServices:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
