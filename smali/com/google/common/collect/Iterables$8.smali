.class final Lcom/google/common/collect/Iterables$8;
.super Lcom/google/common/collect/FluentIterable;


# instance fields
.field final synthetic val$fromIterable:Ljava/lang/Iterable;

.field final synthetic val$function:Lcom/google/common/base/Function;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/Function;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Iterables$8;->val$fromIterable:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/common/collect/Iterables$8;->val$function:Lcom/google/common/base/Function;

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Iterables$8;->val$fromIterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Iterables$8;->val$function:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
