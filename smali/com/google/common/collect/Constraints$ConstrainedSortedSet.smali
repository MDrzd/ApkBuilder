.class Lcom/google/common/collect/Constraints$ConstrainedSortedSet;
.super Lcom/google/common/collect/ForwardingSortedSet;


# instance fields
.field final constraint:Lcom/google/common/collect/Constraint;

.field final delegate:Ljava/util/SortedSet;


# direct methods
.method constructor <init>(Ljava/util/SortedSet;Lcom/google/common/collect/Constraint;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSortedSet;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/SortedSet;

    iput-object p1, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate:Ljava/util/SortedSet;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Constraint;

    iput-object p1, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->constraint:Lcom/google/common/collect/Constraint;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->constraint:Lcom/google/common/collect/Constraint;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Constraint;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate:Ljava/util/SortedSet;

    iget-object v1, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->constraint:Lcom/google/common/collect/Constraint;

    invoke-static {p1, v1}, Lcom/google/common/collect/Constraints;->access$000(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/SortedSet;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate:Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->constraint:Lcom/google/common/collect/Constraint;

    invoke-static {p1, v0}, Lcom/google/common/collect/Constraints;->constrainedSortedSet(Ljava/util/SortedSet;Lcom/google/common/collect/Constraint;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate:Ljava/util/SortedSet;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->constraint:Lcom/google/common/collect/Constraint;

    invoke-static {p1, p2}, Lcom/google/common/collect/Constraints;->constrainedSortedSet(Ljava/util/SortedSet;Lcom/google/common/collect/Constraint;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->constraint:Lcom/google/common/collect/Constraint;

    invoke-static {p1, v0}, Lcom/google/common/collect/Constraints;->constrainedSortedSet(Ljava/util/SortedSet;Lcom/google/common/collect/Constraint;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method
