.class final Lcom/google/common/reflect/Types$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/Types$1;->apply(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/google/common/reflect/Types$JavaVersion;->CURRENT:Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/Types$JavaVersion;->typeName(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
