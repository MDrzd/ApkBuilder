.class final Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;
.super Lcom/google/common/util/concurrent/SmoothRateLimiter;


# instance fields
.field final maxBurstSeconds:D


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;D)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/SmoothRateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;Lcom/google/common/util/concurrent/SmoothRateLimiter$1;)V

    iput-wide p2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxBurstSeconds:D

    return-void
.end method


# virtual methods
.method final doSetRate(DD)V
    .registers 7

    iget-wide p3, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxPermits:D

    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxBurstSeconds:D

    mul-double v0, v0, p1

    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxPermits:D

    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p3, p1

    const-wide/16 p1, 0x0

    if-nez v0, :cond_0

    iget-wide p1, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxPermits:D

    goto :goto_0

    :cond_0
    cmpl-double v0, p3, p1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide p1, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->storedPermits:D

    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxPermits:D

    mul-double p1, p1, v0

    div-double/2addr p1, p3

    :goto_0
    iput-wide p1, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->storedPermits:D

    return-void
.end method

.method final storedPermitsToWaitTime(DD)J
    .registers 5

    const-wide/16 p1, 0x0

    return-wide p1
.end method
