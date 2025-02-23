.class abstract Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract fetchCheckInterval(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;)J
.end method

.method public isCheckIntervalFinished(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;J)Z
    .registers 7

    invoke-virtual {p2}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getCheckIntervalStart()J

    move-result-wide v0

    sub-long/2addr p3, v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;->fetchCheckInterval(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;)J

    move-result-wide p1

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract isStateTransition(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;)Z
.end method
