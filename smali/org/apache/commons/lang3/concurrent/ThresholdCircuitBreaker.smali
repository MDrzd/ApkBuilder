.class public Lorg/apache/commons/lang3/concurrent/ThresholdCircuitBreaker;
.super Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;


# static fields
.field private static final INITIAL_COUNT:J


# instance fields
.field private final threshold:J

.field private final used:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(J)V
    .registers 6

    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/ThresholdCircuitBreaker;->used:Ljava/util/concurrent/atomic/AtomicLong;

    iput-wide p1, p0, Lorg/apache/commons/lang3/concurrent/ThresholdCircuitBreaker;->threshold:J

    return-void
.end method


# virtual methods
.method public checkState()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/ThresholdCircuitBreaker;->isOpen()Z

    move-result v0

    return v0
.end method

.method public close()V
    .registers 4

    invoke-super {p0}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->close()V

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/ThresholdCircuitBreaker;->used:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public getThreshold()J
    .registers 3

    iget-wide v0, p0, Lorg/apache/commons/lang3/concurrent/ThresholdCircuitBreaker;->threshold:J

    return-wide v0
.end method

.method public incrementAndCheckState(Ljava/lang/Long;)Z
    .registers 7

    iget-wide v0, p0, Lorg/apache/commons/lang3/concurrent/ThresholdCircuitBreaker;->threshold:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/ThresholdCircuitBreaker;->open()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/ThresholdCircuitBreaker;->used:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/lang3/concurrent/ThresholdCircuitBreaker;->threshold:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/ThresholdCircuitBreaker;->open()V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/ThresholdCircuitBreaker;->checkState()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic incrementAndCheckState(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/concurrent/ThresholdCircuitBreaker;->incrementAndCheckState(Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method
