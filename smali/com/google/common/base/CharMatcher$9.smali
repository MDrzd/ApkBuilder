.class final Lcom/google/common/base/CharMatcher$9;
.super Lcom/google/common/base/CharMatcher$FastMatcher;


# instance fields
.field final synthetic val$match:C


# direct methods
.method constructor <init>(Ljava/lang/String;C)V
    .registers 3

    iput-char p2, p0, Lcom/google/common/base/CharMatcher$9;->val$match:C

    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 3

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$9;->val$match:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    sget-object p1, Lcom/google/common/base/CharMatcher$9;->NONE:Lcom/google/common/base/CharMatcher;

    return-object p1
.end method

.method public final matches(C)Z
    .registers 3

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$9;->val$match:C

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final negate()Lcom/google/common/base/CharMatcher;
    .registers 2

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$9;->val$match:C

    invoke-static {v0}, Lcom/google/common/base/CharMatcher$9;->isNot(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public final or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 3

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$9;->val$match:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher$FastMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object p1

    return-object p1
.end method

.method public final replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$9;->val$match:C

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final setBits(Ljava/util/BitSet;)V
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$9;->val$match:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-void
.end method
