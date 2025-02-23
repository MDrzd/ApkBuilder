.class public final Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;
.super Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field private final conflictingStackTrace:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;)V

    iput-object p3, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;->conflictingStackTrace:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    invoke-virtual {p0, p3}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;)V

    return-void
.end method


# virtual methods
.method public final getConflictingStackTrace()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;->conflictingStackTrace:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;->conflictingStackTrace:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
