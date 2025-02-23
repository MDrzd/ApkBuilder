.class final Lcom/google/common/collect/Sets$CartesianSet$1;
.super Lcom/google/common/collect/ImmutableList;


# instance fields
.field final synthetic val$axes:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->val$axes:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$CartesianSet$1;->get(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final get(I)Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->val$axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method final isPartialView()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->val$axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method
