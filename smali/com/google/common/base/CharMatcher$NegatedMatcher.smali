.class Lcom/google/common/base/CharMatcher$NegatedMatcher;
.super Lcom/google/common/base/CharMatcher;


# instance fields
.field final original:Lcom/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/google/common/base/CharMatcher;)V
    .registers 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".negate()"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/common/base/CharMatcher$NegatedMatcher;-><init>(Ljava/lang/String;Lcom/google/common/base/CharMatcher;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/common/base/CharMatcher;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/common/base/CharMatcher$NegatedMatcher;->original:Lcom/google/common/base/CharMatcher;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/base/CharMatcher$NegatedMatcher;->original:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v1, p1}, Lcom/google/common/base/CharMatcher;->countIn(Ljava/lang/CharSequence;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public matches(C)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$NegatedMatcher;->original:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$NegatedMatcher;->original:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$NegatedMatcher;->original:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .registers 2

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$NegatedMatcher;->original:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .registers 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iget-object v1, p0, Lcom/google/common/base/CharMatcher$NegatedMatcher;->original:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v1, v0}, Lcom/google/common/base/CharMatcher;->setBits(Ljava/util/BitSet;)V

    const/4 v1, 0x0

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->flip(II)V

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-void
.end method

.method withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .registers 4

    new-instance v0, Lcom/google/common/base/CharMatcher$NegatedMatcher;

    iget-object v1, p0, Lcom/google/common/base/CharMatcher$NegatedMatcher;->original:Lcom/google/common/base/CharMatcher;

    invoke-direct {v0, p1, v1}, Lcom/google/common/base/CharMatcher$NegatedMatcher;-><init>(Ljava/lang/String;Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method
