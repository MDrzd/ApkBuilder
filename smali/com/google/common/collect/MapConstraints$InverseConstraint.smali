.class Lcom/google/common/collect/MapConstraints$InverseConstraint;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/collect/MapConstraint;


# instance fields
.field final constraint:Lcom/google/common/collect/MapConstraint;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/MapConstraint;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/MapConstraint;

    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$InverseConstraint;->constraint:Lcom/google/common/collect/MapConstraint;

    return-void
.end method


# virtual methods
.method public checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$InverseConstraint;->constraint:Lcom/google/common/collect/MapConstraint;

    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/MapConstraint;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
