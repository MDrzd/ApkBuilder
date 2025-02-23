.class interface abstract Lcom/google/common/collect/MapMakerInternalMap$ValueReference;
.super Ljava/lang/Object;


# virtual methods
.method public abstract clear(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V
    .param p1    # Lcom/google/common/collect/MapMakerInternalMap$ValueReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ValueReference;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract get()Ljava/lang/Object;
.end method

.method public abstract getEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
.end method

.method public abstract isComputingReference()Z
.end method

.method public abstract waitForValue()Ljava/lang/Object;
.end method
