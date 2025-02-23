.class final Lorg/apache/commons/lang3/concurrent/ConcurrentUtils$ConstantFuture;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Future;


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils$ConstantFuture;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils$ConstantFuture;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4

    iget-object p1, p0, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils$ConstantFuture;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public final isCancelled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isDone()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
