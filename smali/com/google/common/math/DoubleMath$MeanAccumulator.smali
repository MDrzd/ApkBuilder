.class final Lcom/google/common/math/DoubleMath$MeanAccumulator;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "com.google.common.math.DoubleUtils"
.end annotation


# instance fields
.field private count:J

.field private mean:D


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->count:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/math/DoubleMath$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>()V

    return-void
.end method


# virtual methods
.method final add(D)V
    .registers 7

    invoke-static {p1, p2}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->count:J

    iget-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean:D

    iget-wide v2, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean:D

    sub-double/2addr p1, v2

    iget-wide v2, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->count:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v2

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean:D

    return-void
.end method

.method final mean()D
    .registers 6

    iget-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannot take mean of 0 values"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean:D

    return-wide v0
.end method
