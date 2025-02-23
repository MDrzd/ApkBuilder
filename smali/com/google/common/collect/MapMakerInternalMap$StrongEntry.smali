.class Lcom/google/common/collect/MapMakerInternalMap$StrongEntry;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;

.field final next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

.field volatile valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .registers 5
    .param p3    # Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->unset()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongEntry;->valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongEntry;->key:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongEntry;->hash:I

    iput-object p3, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongEntry;->next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

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

    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongEntry;->next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

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

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongEntry;->valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

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

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongEntry;->valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongEntry;->valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    invoke-interface {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->clear(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V

    return-void
.end method
