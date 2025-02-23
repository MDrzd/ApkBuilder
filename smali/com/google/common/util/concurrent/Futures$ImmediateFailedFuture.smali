.class Lcom/google/common/util/concurrent/Futures$ImmediateFailedFuture;
.super Lcom/google/common/util/concurrent/Futures$ImmediateFuture;


# instance fields
.field private final thrown:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$ImmediateFuture;-><init>(Lcom/google/common/util/concurrent/Futures$1;)V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ImmediateFailedFuture;->thrown:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ImmediateFailedFuture;->thrown:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
