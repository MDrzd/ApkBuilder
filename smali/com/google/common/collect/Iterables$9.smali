.class final Lcom/google/common/collect/Iterables$9;
.super Lcom/google/common/collect/FluentIterable;


# instance fields
.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$numberToSkip:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Iterables$9;->val$list:Ljava/util/List;

    iput p2, p0, Lcom/google/common/collect/Iterables$9;->val$numberToSkip:I

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/Iterables$9;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/Iterables$9;->val$numberToSkip:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/Iterables$9;->val$list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
