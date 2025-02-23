.class Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyOpen;
.super Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;-><init>(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyOpen;-><init>()V

    return-void
.end method


# virtual methods
.method protected fetchCheckInterval(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;)J
    .registers 4

    invoke-virtual {p1}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->getClosingInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public isStateTransition(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;)Z
    .registers 8

    invoke-virtual {p3}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getCheckIntervalStart()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getCheckIntervalStart()J

    move-result-wide v2

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getEventCount()I

    move-result p2

    invoke-virtual {p1}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->getClosingThreshold()I

    move-result p1

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
