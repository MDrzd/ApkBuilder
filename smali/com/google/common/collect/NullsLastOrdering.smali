.class final Lcom/google/common/collect/NullsLastOrdering;
.super Lcom/google/common/collect/Ordering;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final ordering:Lcom/google/common/collect/Ordering;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Ordering;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/NullsLastOrdering;->ordering:Lcom/google/common/collect/Ordering;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/NullsLastOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/NullsLastOrdering;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/common/collect/NullsLastOrdering;

    iget-object v0, p0, Lcom/google/common/collect/NullsLastOrdering;->ordering:Lcom/google/common/collect/Ordering;

    iget-object p1, p1, Lcom/google/common/collect/NullsLastOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/NullsLastOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x36e88db8    # -620324.5f

    xor-int/2addr v0, v1

    return v0
.end method

.method public final nullsFirst()Lcom/google/common/collect/Ordering;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/NullsLastOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->nullsFirst()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public final nullsLast()Lcom/google/common/collect/Ordering;
    .registers 1

    return-object p0
.end method

.method public final reverse()Lcom/google/common/collect/Ordering;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/NullsLastOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->nullsFirst()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/NullsLastOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".nullsLast()"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
