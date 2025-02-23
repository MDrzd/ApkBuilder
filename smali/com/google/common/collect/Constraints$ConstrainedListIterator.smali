.class Lcom/google/common/collect/Constraints$ConstrainedListIterator;
.super Lcom/google/common/collect/ForwardingListIterator;


# instance fields
.field private final constraint:Lcom/google/common/collect/Constraint;

.field private final delegate:Ljava/util/ListIterator;


# direct methods
.method public constructor <init>(Ljava/util/ListIterator;Lcom/google/common/collect/Constraint;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingListIterator;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->delegate:Ljava/util/ListIterator;

    iput-object p2, p0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->constraint:Lcom/google/common/collect/Constraint;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->constraint:Lcom/google/common/collect/Constraint;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Constraint;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->delegate:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/ListIterator;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->delegate:Ljava/util/ListIterator;

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->constraint:Lcom/google/common/collect/Constraint;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Constraint;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->delegate:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
