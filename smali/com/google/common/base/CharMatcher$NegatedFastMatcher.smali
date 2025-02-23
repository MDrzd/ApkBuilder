.class final Lcom/google/common/base/CharMatcher$NegatedFastMatcher;
.super Lcom/google/common/base/CharMatcher$NegatedMatcher;


# direct methods
.method constructor <init>(Lcom/google/common/base/CharMatcher;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher$NegatedMatcher;-><init>(Lcom/google/common/base/CharMatcher;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/common/base/CharMatcher;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/CharMatcher$NegatedMatcher;-><init>(Ljava/lang/String;Lcom/google/common/base/CharMatcher;)V

    return-void
.end method


# virtual methods
.method public final precomputed()Lcom/google/common/base/CharMatcher;
    .registers 1

    return-object p0
.end method

.method final withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .registers 4

    new-instance v0, Lcom/google/common/base/CharMatcher$NegatedFastMatcher;

    iget-object v1, p0, Lcom/google/common/base/CharMatcher$NegatedFastMatcher;->original:Lcom/google/common/base/CharMatcher;

    invoke-direct {v0, p1, v1}, Lcom/google/common/base/CharMatcher$NegatedFastMatcher;-><init>(Ljava/lang/String;Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method
