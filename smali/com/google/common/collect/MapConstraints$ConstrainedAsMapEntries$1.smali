.class Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries$1;
.super Lcom/google/common/collect/ForwardingIterator;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries$1;->this$0:Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries;

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries$1;->delegate()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries$1;->val$iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries$1;->this$0:Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries;

    invoke-static {v1}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries;->access$600(Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries;)Lcom/google/common/collect/MapConstraint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/MapConstraints;->access$700(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
