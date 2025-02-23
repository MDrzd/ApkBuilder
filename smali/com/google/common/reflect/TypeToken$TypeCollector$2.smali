.class final Lcom/google/common/reflect/TypeToken$TypeCollector$2;
.super Lcom/google/common/reflect/TypeToken$TypeCollector;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken$TypeCollector;-><init>(Lcom/google/common/reflect/TypeToken$1;)V

    return-void
.end method


# virtual methods
.method final getInterfaces(Ljava/lang/Class;)Ljava/lang/Iterable;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final bridge synthetic getInterfaces(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 2

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeCollector$2;->getInterfaces(Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method final getRawType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2

    return-object p1
.end method

.method final bridge synthetic getRawType(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 2

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeCollector$2;->getRawType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method final getSuperclass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method final bridge synthetic getSuperclass(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeCollector$2;->getSuperclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
