.class final Lcom/google/common/cache/CacheBuilder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/cache/AbstractCache$StatsCounter;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final recordEviction()V
    .registers 1

    return-void
.end method

.method public final recordHits(I)V
    .registers 2

    return-void
.end method

.method public final recordLoadException(J)V
    .registers 3

    return-void
.end method

.method public final recordLoadSuccess(J)V
    .registers 3

    return-void
.end method

.method public final recordMisses(I)V
    .registers 2

    return-void
.end method

.method public final snapshot()Lcom/google/common/cache/CacheStats;
    .registers 2

    sget-object v0, Lcom/google/common/cache/CacheBuilder;->EMPTY_STATS:Lcom/google/common/cache/CacheStats;

    return-object v0
.end method
