.class final Lcom/google/common/collect/Iterables$7;
.super Lcom/google/common/collect/FluentIterable;


# instance fields
.field final synthetic val$type:Ljava/lang/Class;

.field final synthetic val$unfiltered:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Ljava/lang/Class;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Iterables$7;->val$unfiltered:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/common/collect/Iterables$7;->val$type:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Iterables$7;->val$unfiltered:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Iterables$7;->val$type:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Ljava/lang/Class;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
