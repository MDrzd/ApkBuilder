.class final Lcom/google/common/collect/Iterables$5;
.super Lcom/google/common/collect/FluentIterable;


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Ljava/lang/Iterable;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Iterables$5;->val$iterable:Ljava/lang/Iterable;

    iput p2, p0, Lcom/google/common/collect/Iterables$5;->val$size:I

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Iterables$5;->val$iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/Iterables$5;->val$size:I

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->paddedPartition(Ljava/util/Iterator;I)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
