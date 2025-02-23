.class final enum Lcom/google/common/base/Predicates$ObjectPredicate$2;
.super Lcom/google/common/base/Predicates$ObjectPredicate;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/base/Predicates$ObjectPredicate;-><init>(Ljava/lang/String;ILcom/google/common/base/Predicates$1;)V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Predicates.alwaysFalse()"

    return-object v0
.end method
