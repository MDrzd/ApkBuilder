.class Lcom/google/common/collect/Sets$SubSet$1;
.super Lcom/google/common/collect/UnmodifiableIterator;


# instance fields
.field final elements:Lcom/google/common/collect/ImmutableList;

.field remainingSetBits:I

.field final synthetic this$0:Lcom/google/common/collect/Sets$SubSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$SubSet;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Sets$SubSet$1;->this$0:Lcom/google/common/collect/Sets$SubSet;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    iget-object p1, p0, Lcom/google/common/collect/Sets$SubSet$1;->this$0:Lcom/google/common/collect/Sets$SubSet;

    invoke-static {p1}, Lcom/google/common/collect/Sets$SubSet;->access$100(Lcom/google/common/collect/Sets$SubSet;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Sets$SubSet$1;->elements:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p0, Lcom/google/common/collect/Sets$SubSet$1;->this$0:Lcom/google/common/collect/Sets$SubSet;

    invoke-static {p1}, Lcom/google/common/collect/Sets$SubSet;->access$200(Lcom/google/common/collect/Sets$SubSet;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/Sets$SubSet$1;->remainingSetBits:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget v0, p0, Lcom/google/common/collect/Sets$SubSet$1;->remainingSetBits:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/google/common/collect/Sets$SubSet$1;->remainingSetBits:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/google/common/collect/Sets$SubSet$1;->remainingSetBits:I

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/collect/Sets$SubSet$1;->remainingSetBits:I

    iget-object v1, p0, Lcom/google/common/collect/Sets$SubSet$1;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
