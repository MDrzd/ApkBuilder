.class final enum Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies$3;
.super Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;-><init>(Ljava/lang/String;ILcom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    return-void
.end method


# virtual methods
.method public final handlePotentialDeadlock(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;)V
    .registers 2

    return-void
.end method
