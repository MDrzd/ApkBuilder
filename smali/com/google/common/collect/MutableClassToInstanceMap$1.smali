.class final Lcom/google/common/collect/MutableClassToInstanceMap$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/collect/MapConstraint;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkKeyValue(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/google/common/collect/MutableClassToInstanceMap;->access$000(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MutableClassToInstanceMap$1;->checkKeyValue(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
