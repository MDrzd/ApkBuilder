.class final Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;
.implements Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/ThreadUtils$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Thread;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public final test(Ljava/lang/ThreadGroup;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
