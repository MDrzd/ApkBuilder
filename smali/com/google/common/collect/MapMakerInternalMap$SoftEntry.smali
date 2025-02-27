.class Lcom/google/common/collect/MapMakerInternalMap$SoftEntry;
.super Ljava/lang/ref/SoftReference;

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;


# instance fields
.field final hash:I

.field final next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

.field volatile valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .registers 5
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->unset()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftEntry;->valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    iput p3, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftEntry;->hash:I

    iput-object p4, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftEntry;->next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHash()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$SoftEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftEntry;->next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public getNextEvictable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousEvictable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftEntry;->valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setNextEvictable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setNextExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setPreviousEvictable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setPreviousExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setValueReference(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftEntry;->valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftEntry;->valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    invoke-interface {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->clear(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V

    return-void
.end method
