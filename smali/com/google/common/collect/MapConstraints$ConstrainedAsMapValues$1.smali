.class Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;->this$0:Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;->next()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public remove()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
