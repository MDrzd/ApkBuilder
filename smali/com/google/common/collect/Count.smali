.class final Lcom/google/common/collect/Count;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private value:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    return-void
.end method


# virtual methods
.method public final addAndGet(I)I
    .registers 3

    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/collect/Count;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/Count;

    iget p1, p1, Lcom/google/common/collect/Count;->value:I

    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final get()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public final getAndAdd(I)I
    .registers 3

    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public final getAndSet(I)I
    .registers 3

    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public final set(I)V
    .registers 2

    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
