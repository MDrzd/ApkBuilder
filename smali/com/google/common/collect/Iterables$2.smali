.class final Lcom/google/common/collect/Iterables$2;
.super Lcom/google/common/collect/FluentIterable;


# instance fields
.field final synthetic val$inputs:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Iterables$2;->val$inputs:Ljava/lang/Iterable;

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Iterables$2;->val$inputs:Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->access$100(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
