.class final Lcom/google/common/base/CharMatcher$14;
.super Lcom/google/common/base/CharMatcher;


# instance fields
.field final synthetic val$predicate:Lcom/google/common/base/Predicate;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/common/base/Predicate;)V
    .registers 3

    iput-object p2, p0, Lcom/google/common/base/CharMatcher$14;->val$predicate:Lcom/google/common/base/Predicate;

    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Character;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$14;->val$predicate:Lcom/google/common/base/Predicate;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher$14;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public final matches(C)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$14;->val$predicate:Lcom/google/common/base/Predicate;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
