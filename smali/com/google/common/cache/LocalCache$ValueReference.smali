.class interface abstract Lcom/google/common/cache/LocalCache$ValueReference;
.super Ljava/lang/Object;


# virtual methods
.method public abstract copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ValueReference;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract get()Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getWeight()I
.end method

.method public abstract isActive()Z
.end method

.method public abstract isLoading()Z
.end method

.method public abstract notifyNewValue(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract waitForValue()Ljava/lang/Object;
.end method
