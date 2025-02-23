.class Lcom/google/common/util/concurrent/Futures$ImmediateCancelledFuture;
.super Lcom/google/common/util/concurrent/Futures$ImmediateFuture;


# instance fields
.field private final thrown:Ljava/util/concurrent/CancellationException;


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$ImmediateFuture;-><init>(Lcom/google/common/util/concurrent/Futures$1;)V

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Immediate cancelled future."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ImmediateCancelledFuture;->thrown:Ljava/util/concurrent/CancellationException;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ImmediateCancelledFuture;->thrown:Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0
.end method

.method public isCancelled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
