.class final enum Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$1;
.super Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;-><init>(Ljava/lang/String;ILorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$1;)V

    return-void
.end method


# virtual methods
.method public final oppositeState()Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
    .registers 2

    sget-object v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$1;->OPEN:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    return-object v0
.end method
