.class final Lcom/google/common/collect/Interners$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/collect/Interner;


# instance fields
.field final synthetic val$map:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentMap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Interners$1;->val$map:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intern(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/Interners$1;->val$map:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    return-object v0
.end method
