.class Lcom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;
.super Lcom/google/common/reflect/TypeToken$TypeCollector;


# instance fields
.field private final delegate:Lcom/google/common/reflect/TypeToken$TypeCollector;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken$TypeCollector;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken$TypeCollector;-><init>(Lcom/google/common/reflect/TypeToken$1;)V

    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;->delegate:Lcom/google/common/reflect/TypeToken$TypeCollector;

    return-void
.end method


# virtual methods
.method getInterfaces(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 3

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;->delegate:Lcom/google/common/reflect/TypeToken$TypeCollector;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken$TypeCollector;->getInterfaces(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method getRawType(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 3

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;->delegate:Lcom/google/common/reflect/TypeToken$TypeCollector;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken$TypeCollector;->getRawType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method getSuperclass(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;->delegate:Lcom/google/common/reflect/TypeToken$TypeCollector;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken$TypeCollector;->getSuperclass(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
