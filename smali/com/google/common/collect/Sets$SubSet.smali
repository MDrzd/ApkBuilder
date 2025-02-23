.class final Lcom/google/common/collect/Sets$SubSet;
.super Ljava/util/AbstractSet;


# instance fields
.field private final inputSet:Lcom/google/common/collect/ImmutableMap;

.field private final mask:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Sets$SubSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    iput p2, p0, Lcom/google/common/collect/Sets$SubSet;->mask:I

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/Sets$SubSet;)Lcom/google/common/collect/ImmutableMap;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/Sets$SubSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/common/collect/Sets$SubSet;)I
    .registers 1

    iget p0, p0, Lcom/google/common/collect/Sets$SubSet;->mask:I

    return p0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/Sets$SubSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/common/collect/Sets$SubSet;->mask:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lcom/google/common/collect/Sets$SubSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$SubSet$1;-><init>(Lcom/google/common/collect/Sets$SubSet;)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/Sets$SubSet;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method
