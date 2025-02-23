.class Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;
.super Lcom/google/common/collect/ForwardingMap;


# instance fields
.field entrySet:Ljava/util/Set;

.field final synthetic this$0:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

.field final synthetic val$asMapDelegate:Ljava/util/Map;

.field values:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->this$0:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->val$asMapDelegate:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    return-void
.end method


# virtual methods
.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->val$asMapDelegate:Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->val$asMapDelegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->this$0:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

    iget-object v1, v1, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->constraint:Lcom/google/common/collect/MapConstraint;

    invoke-static {v0, v1}, Lcom/google/common/collect/MapConstraints;->access$200(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->this$0:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    return-object p1

    :catch_0
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;-><init>(Ljava/util/Collection;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->values:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
