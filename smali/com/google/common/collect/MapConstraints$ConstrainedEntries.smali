.class Lcom/google/common/collect/MapConstraints$ConstrainedEntries;
.super Lcom/google/common/collect/ForwardingCollection;


# instance fields
.field final constraint:Lcom/google/common/collect/MapConstraint;

.field final entries:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/google/common/collect/MapConstraint;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->entries:Ljava/util/Collection;

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->constraint:Lcom/google/common/collect/MapConstraint;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->standardContainsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->entries:Ljava/util/Collection;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->entries:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;-><init>(Lcom/google/common/collect/MapConstraints$ConstrainedEntries;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->removeEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->standardRemoveAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->standardRetainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
