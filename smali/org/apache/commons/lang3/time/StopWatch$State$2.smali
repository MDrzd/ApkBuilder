.class final enum Lorg/apache/commons/lang3/time/StopWatch$State$2;
.super Lorg/apache/commons/lang3/time/StopWatch$State;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/StopWatch$State;-><init>(Ljava/lang/String;ILorg/apache/commons/lang3/time/StopWatch$1;)V

    return-void
.end method


# virtual methods
.method final isStarted()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final isStopped()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final isSuspended()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
