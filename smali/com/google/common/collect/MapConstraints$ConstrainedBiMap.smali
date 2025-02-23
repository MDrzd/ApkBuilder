.class Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;
.super Lcom/google/common/collect/MapConstraints$ConstrainedMap;

# interfaces
.implements Lcom/google/common/collect/BiMap;


# instance fields
.field volatile inverse:Lcom/google/common/collect/BiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/BiMap;Lcom/google/common/collect/BiMap;Lcom/google/common/collect/MapConstraint;)V
    .registers 4
    .param p2    # Lcom/google/common/collect/BiMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/MapConstraints$ConstrainedMap;-><init>(Ljava/util/Map;Lcom/google/common/collect/MapConstraint;)V

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->inverse:Lcom/google/common/collect/BiMap;

    return-void
.end method


# virtual methods
.method protected delegate()Lcom/google/common/collect/BiMap;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BiMap;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->delegate()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Map;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->delegate()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->constraint:Lcom/google/common/collect/MapConstraint;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/MapConstraint;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->delegate()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/BiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .registers 5

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->inverse:Lcom/google/common/collect/BiMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->delegate()Lcom/google/common/collect/BiMap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/MapConstraints$InverseConstraint;

    iget-object v3, p0, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->constraint:Lcom/google/common/collect/MapConstraint;

    invoke-direct {v2, v3}, Lcom/google/common/collect/MapConstraints$InverseConstraint;-><init>(Lcom/google/common/collect/MapConstraint;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;-><init>(Lcom/google/common/collect/BiMap;Lcom/google/common/collect/BiMap;Lcom/google/common/collect/MapConstraint;)V

    iput-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->inverse:Lcom/google/common/collect/BiMap;

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->inverse:Lcom/google/common/collect/BiMap;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->delegate()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
