.class Lcom/google/common/util/concurrent/AbstractService$8;
.super Lcom/google/common/util/concurrent/Monitor$Guard;


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractService;Lcom/google/common/util/concurrent/Monitor;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$8;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-direct {p0, p2}, Lcom/google/common/util/concurrent/Monitor$Guard;-><init>(Lcom/google/common/util/concurrent/Monitor;)V

    return-void
.end method


# virtual methods
.method public isSatisfied()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$8;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Service$State;->isTerminal()Z

    move-result v0

    return v0
.end method
