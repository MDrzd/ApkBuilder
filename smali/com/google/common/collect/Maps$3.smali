.class final Lcom/google/common/collect/Maps$3;
.super Lcom/google/common/collect/ForwardingSet;


# instance fields
.field final synthetic val$set:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Maps$3;->val$set:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$3;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$3;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Maps$3;->val$set:Ljava/util/Set;

    return-object v0
.end method
