.class Lcom/google/common/collect/Constraints$ConstrainedCollection;
.super Lcom/google/common/collect/ForwardingCollection;


# instance fields
.field private final constraint:Lcom/google/common/collect/Constraint;

.field private final delegate:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/common/collect/Constraints$ConstrainedCollection;->delegate:Ljava/util/Collection;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Constraint;

    iput-object p1, p0, Lcom/google/common/collect/Constraints$ConstrainedCollection;->constraint:Lcom/google/common/collect/Constraint;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedCollection;->constraint:Lcom/google/common/collect/Constraint;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Constraint;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedCollection;->delegate:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/Constraints$ConstrainedCollection;->constraint:Lcom/google/common/collect/Constraint;

    invoke-static {p1, v1}, Lcom/google/common/collect/Constraints;->access$000(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Constraints$ConstrainedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedCollection;->delegate:Ljava/util/Collection;

    return-object v0
.end method
