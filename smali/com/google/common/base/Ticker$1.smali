.class final Lcom/google/common/base/Ticker$1;
.super Lcom/google/common/base/Ticker;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/base/Ticker;-><init>()V

    return-void
.end method


# virtual methods
.method public final read()J
    .registers 3

    invoke-static {}, Lcom/google/common/base/Platform;->systemNanoTime()J

    move-result-wide v0

    return-wide v0
.end method
