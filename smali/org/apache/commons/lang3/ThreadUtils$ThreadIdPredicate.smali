.class public Lorg/apache/commons/lang3/ThreadUtils$ThreadIdPredicate;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;


# instance fields
.field private final threadId:J


# direct methods
.method public constructor <init>(J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iput-wide p1, p0, Lorg/apache/commons/lang3/ThreadUtils$ThreadIdPredicate;->threadId:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The thread id must be greater than zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public test(Ljava/lang/Thread;)Z
    .registers 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/lang3/ThreadUtils$ThreadIdPredicate;->threadId:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
