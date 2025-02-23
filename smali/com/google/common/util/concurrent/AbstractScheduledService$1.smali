.class Lcom/google/common/util/concurrent/AbstractScheduledService$1;
.super Lcom/google/common/util/concurrent/AbstractService;


# instance fields
.field private volatile executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile runningTask:Ljava/util/concurrent/Future;

.field private final task:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;-><init>()V

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance p1, Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;

    invoke-direct {p1, p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->task:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/common/util/concurrent/AbstractScheduledService$1;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .registers 2

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->runningTask:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->task:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method protected final doStart()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->executor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/AbstractScheduledService$1$2;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1$2;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/MoreExecutors;->renamingDecorator(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/common/util/concurrent/AbstractScheduledService$1$3;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1$3;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final doStop()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->runningTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
