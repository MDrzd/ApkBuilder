.class Lcom/google/common/util/concurrent/Futures$ImmediateFailedCheckedFuture;
.super Lcom/google/common/util/concurrent/Futures$ImmediateFuture;

# interfaces
.implements Lcom/google/common/util/concurrent/CheckedFuture;


# instance fields
.field private final thrown:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/Exception;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$ImmediateFuture;-><init>(Lcom/google/common/util/concurrent/Futures$1;)V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ImmediateFailedCheckedFuture;->thrown:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public checkedGet()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ImmediateFailedCheckedFuture;->thrown:Ljava/lang/Exception;

    throw v0
.end method

.method public checkedGet(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/common/util/concurrent/Futures$ImmediateFailedCheckedFuture;->thrown:Ljava/lang/Exception;

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ImmediateFailedCheckedFuture;->thrown:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
