.class final Lcom/google/common/util/concurrent/MoreExecutors$3;
.super Lcom/google/common/util/concurrent/WrappingExecutorService;


# instance fields
.field final synthetic val$nameSupplier:Lcom/google/common/base/Supplier;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/common/base/Supplier;)V
    .registers 3

    iput-object p2, p0, Lcom/google/common/util/concurrent/MoreExecutors$3;->val$nameSupplier:Lcom/google/common/base/Supplier;

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/WrappingExecutorService;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method protected final wrapTask(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$3;->val$nameSupplier:Lcom/google/common/base/Supplier;

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/Callables;->threadRenaming(Ljava/lang/Runnable;Lcom/google/common/base/Supplier;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method protected final wrapTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$3;->val$nameSupplier:Lcom/google/common/base/Supplier;

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/Callables;->threadRenaming(Ljava/util/concurrent/Callable;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Callable;

    move-result-object p1

    return-object p1
.end method
