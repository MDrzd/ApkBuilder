.class final Lcom/google/common/reflect/TypeToken$TypeCollector$1;
.super Lcom/google/common/reflect/TypeToken$TypeCollector;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken$TypeCollector;-><init>(Lcom/google/common/reflect/TypeToken$1;)V

    return-void
.end method


# virtual methods
.method final getInterfaces(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Iterable;
    .registers 2

    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->getGenericInterfaces()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method final bridge synthetic getInterfaces(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 2

    check-cast p1, Lcom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeCollector$1;->getInterfaces(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method final getRawType(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Class;
    .registers 2

    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method final bridge synthetic getRawType(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 2

    check-cast p1, Lcom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeCollector$1;->getRawType(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method final getSuperclass(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeToken;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->getGenericSuperclass()Lcom/google/common/reflect/TypeToken;

    move-result-object p1

    return-object p1
.end method

.method final bridge synthetic getSuperclass(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeCollector$1;->getSuperclass(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeToken;

    move-result-object p1

    return-object p1
.end method
