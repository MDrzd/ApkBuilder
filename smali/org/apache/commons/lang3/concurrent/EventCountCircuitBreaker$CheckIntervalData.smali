.class Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;
.super Ljava/lang/Object;


# instance fields
.field private final checkIntervalStart:J

.field private final eventCount:I


# direct methods
.method constructor <init>(IJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->eventCount:I

    iput-wide p2, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->checkIntervalStart:J

    return-void
.end method


# virtual methods
.method public getCheckIntervalStart()J
    .registers 3

    iget-wide v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->checkIntervalStart:J

    return-wide v0
.end method

.method public getEventCount()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->eventCount:I

    return v0
.end method

.method public increment(I)Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    .registers 6

    if-eqz p1, :cond_0

    new-instance v0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getEventCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getCheckIntervalStart()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;-><init>(IJ)V

    return-object v0

    :cond_0
    return-object p0
.end method
