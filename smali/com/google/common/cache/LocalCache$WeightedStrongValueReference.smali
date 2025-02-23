.class final Lcom/google/common/cache/LocalCache$WeightedStrongValueReference;
.super Lcom/google/common/cache/LocalCache$StrongValueReference;


# instance fields
.field final weight:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache$StrongValueReference;-><init>(Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/common/cache/LocalCache$WeightedStrongValueReference;->weight:I

    return-void
.end method


# virtual methods
.method public final getWeight()I
    .registers 2

    iget v0, p0, Lcom/google/common/cache/LocalCache$WeightedStrongValueReference;->weight:I

    return v0
.end method
