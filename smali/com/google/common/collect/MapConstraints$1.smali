.class final Lcom/google/common/collect/MapConstraints$1;
.super Lcom/google/common/collect/ForwardingMapEntry;


# instance fields
.field final synthetic val$constraint:Lcom/google/common/collect/MapConstraint;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$1;->val$entry:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$1;->val$constraint:Lcom/google/common/collect/MapConstraint;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$1;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Map$Entry;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$1;->val$entry:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$1;->val$constraint:Lcom/google/common/collect/MapConstraint;

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$1;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/MapConstraint;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$1;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
