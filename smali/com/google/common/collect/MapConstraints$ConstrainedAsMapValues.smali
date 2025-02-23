.class Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;
.super Lcom/google/common/collect/ForwardingCollection;


# instance fields
.field final delegate:Ljava/util/Collection;

.field final entrySet:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->delegate:Ljava/util/Collection;

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->entrySet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->standardContains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->standardContainsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->delegate:Ljava/util/Collection;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->entrySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;-><init>(Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->standardRemove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->standardRemoveAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->standardRetainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
