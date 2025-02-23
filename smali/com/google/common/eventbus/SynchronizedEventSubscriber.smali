.class final Lcom/google/common/eventbus/SynchronizedEventSubscriber;
.super Lcom/google/common/eventbus/EventSubscriber;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/eventbus/EventSubscriber;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public final handleEvent(Ljava/lang/Object;)V
    .registers 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/google/common/eventbus/EventSubscriber;->handleEvent(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
