.class public interface abstract Lcom/google/common/cache/AbstractCache$StatsCounter;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# virtual methods
.method public abstract recordEviction()V
.end method

.method public abstract recordHits(I)V
.end method

.method public abstract recordLoadException(J)V
.end method

.method public abstract recordLoadSuccess(J)V
.end method

.method public abstract recordMisses(I)V
.end method

.method public abstract snapshot()Lcom/google/common/cache/CacheStats;
.end method
