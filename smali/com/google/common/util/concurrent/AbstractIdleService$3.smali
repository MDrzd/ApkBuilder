.class Lcom/google/common/util/concurrent/AbstractIdleService$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractIdleService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractIdleService;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$3;->this$0:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$3;->this$0:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractIdleService;->access$000(Lcom/google/common/util/concurrent/AbstractIdleService;)Lcom/google/common/base/Supplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/MoreExecutors;->newThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
