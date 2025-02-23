.class final enum Lcom/google/common/reflect/TypeToken$TypeFilter$2;
.super Lcom/google/common/reflect/TypeToken$TypeFilter;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/reflect/TypeToken$TypeFilter;-><init>(Ljava/lang/String;ILcom/google/common/reflect/TypeToken$1;)V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/google/common/reflect/TypeToken;)Z
    .registers 2

    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeFilter$2;->apply(Lcom/google/common/reflect/TypeToken;)Z

    move-result p1

    return p1
.end method
