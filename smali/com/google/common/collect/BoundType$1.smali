.class final enum Lcom/google/common/collect/BoundType$1;
.super Lcom/google/common/collect/BoundType;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/BoundType;-><init>(Ljava/lang/String;ILcom/google/common/collect/BoundType$1;)V

    return-void
.end method


# virtual methods
.method final flip()Lcom/google/common/collect/BoundType;
    .registers 2

    sget-object v0, Lcom/google/common/collect/BoundType$1;->CLOSED:Lcom/google/common/collect/BoundType;

    return-object v0
.end method
