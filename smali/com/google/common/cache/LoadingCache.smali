.class public interface abstract Lcom/google/common/cache/LoadingCache;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;
.implements Lcom/google/common/cache/Cache;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# virtual methods
.method public abstract apply(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract asMap()Ljava/util/concurrent/ConcurrentMap;
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
.end method

.method public abstract getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract refresh(Ljava/lang/Object;)V
.end method
