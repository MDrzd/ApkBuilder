.class Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v1, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->shutDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->notifyStopped()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->notifyFailed(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
