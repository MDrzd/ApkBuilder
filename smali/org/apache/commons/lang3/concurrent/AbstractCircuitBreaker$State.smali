.class public abstract enum Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

.field public static final enum CLOSED:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

.field public static final enum OPEN:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$1;

    const-string v1, "CLOSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->CLOSED:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    new-instance v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$2;

    const-string v1, "OPEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->OPEN:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    sget-object v1, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->CLOSED:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->OPEN:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->$VALUES:[Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
    .registers 2

    const-class v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
    .registers 1

    sget-object v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->$VALUES:[Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-virtual {v0}, [Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    return-object v0
.end method


# virtual methods
.method public abstract oppositeState()Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
.end method
