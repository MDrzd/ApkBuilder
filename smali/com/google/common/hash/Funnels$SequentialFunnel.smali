.class Lcom/google/common/hash/Funnels$SequentialFunnel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/hash/Funnel;
.implements Ljava/io/Serializable;


# instance fields
.field private final elementFunnel:Lcom/google/common/hash/Funnel;


# direct methods
.method constructor <init>(Lcom/google/common/hash/Funnel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/hash/Funnel;

    iput-object p1, p0, Lcom/google/common/hash/Funnels$SequentialFunnel;->elementFunnel:Lcom/google/common/hash/Funnel;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/hash/Funnels$SequentialFunnel;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/hash/Funnels$SequentialFunnel;

    iget-object v0, p0, Lcom/google/common/hash/Funnels$SequentialFunnel;->elementFunnel:Lcom/google/common/hash/Funnel;

    iget-object p1, p1, Lcom/google/common/hash/Funnels$SequentialFunnel;->elementFunnel:Lcom/google/common/hash/Funnel;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public funnel(Ljava/lang/Iterable;Lcom/google/common/hash/PrimitiveSink;)V
    .registers 5

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/hash/Funnels$SequentialFunnel;->elementFunnel:Lcom/google/common/hash/Funnel;

    invoke-interface {v1, v0, p2}, Lcom/google/common/hash/Funnel;->funnel(Ljava/lang/Object;Lcom/google/common/hash/PrimitiveSink;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic funnel(Ljava/lang/Object;Lcom/google/common/hash/PrimitiveSink;)V
    .registers 3

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Funnels$SequentialFunnel;->funnel(Ljava/lang/Iterable;Lcom/google/common/hash/PrimitiveSink;)V

    return-void
.end method

.method public hashCode()I
    .registers 3

    const-class v0, Lcom/google/common/hash/Funnels$SequentialFunnel;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/hash/Funnels$SequentialFunnel;->elementFunnel:Lcom/google/common/hash/Funnel;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/common/hash/Funnels$SequentialFunnel;->elementFunnel:Lcom/google/common/hash/Funnel;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Funnels.sequentialFunnel("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
