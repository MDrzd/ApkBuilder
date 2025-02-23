.class Lcom/google/common/collect/MapConstraints$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/collect/Constraint;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/MapConstraints$2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapConstraints$2;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$2$1;->this$0:Lcom/google/common/collect/MapConstraints$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkElement(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$2$1;->this$0:Lcom/google/common/collect/MapConstraints$2;

    iget-object v0, v0, Lcom/google/common/collect/MapConstraints$2;->val$constraint:Lcom/google/common/collect/MapConstraint;

    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$2$1;->this$0:Lcom/google/common/collect/MapConstraints$2;

    invoke-virtual {v1}, Lcom/google/common/collect/MapConstraints$2;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/MapConstraint;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
