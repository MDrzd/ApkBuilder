.class public abstract Lcom/google/common/util/concurrent/ForwardingBlockingQueue;
.super Lcom/google/common/collect/ForwardingQueue;

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingQueue;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Queue;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/concurrent/BlockingQueue;
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    move-result p1

    return p1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result p1

    return p1
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 6

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public remainingCapacity()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
