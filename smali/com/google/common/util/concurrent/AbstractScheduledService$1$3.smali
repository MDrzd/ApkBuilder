.class Lcom/google/common/util/concurrent/AbstractScheduledService$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->startUp()V

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService;->scheduler()Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-static {v2}, Lcom/google/common/util/concurrent/AbstractScheduledService;->access$400(Lcom/google/common/util/concurrent/AbstractScheduledService;)Lcom/google/common/util/concurrent/AbstractService;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-static {v3}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$500(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-static {v4}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$600(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;->schedule(Lcom/google/common/util/concurrent/AbstractService;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$302(Lcom/google/common/util/concurrent/AbstractScheduledService$1;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->notifyStarted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->notifyFailed(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$3;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
