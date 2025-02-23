.class final Lcom/google/common/collect/MapConstraints$2;
.super Lcom/google/common/collect/ForwardingMapEntry;


# instance fields
.field final synthetic val$constraint:Lcom/google/common/collect/MapConstraint;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$2;->val$entry:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$2;->val$constraint:Lcom/google/common/collect/MapConstraint;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$2;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Map$Entry;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$2;->val$entry:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$2;->getValue()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/util/Collection;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$2;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lcom/google/common/collect/MapConstraints$2$1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/MapConstraints$2$1;-><init>(Lcom/google/common/collect/MapConstraints$2;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Constraints;->constrainedTypePreservingCollection(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
