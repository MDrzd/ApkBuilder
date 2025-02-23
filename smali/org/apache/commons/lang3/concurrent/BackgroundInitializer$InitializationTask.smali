.class Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final execFinally:Ljava/util/concurrent/ExecutorService;

.field final synthetic this$0:Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->this$0:Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->execFinally:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->this$0:Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->initialize()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->execFinally:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->execFinally:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->execFinally:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->execFinally:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    throw v0
.end method
