.class final Lcom/google/common/base/CharMatcher$12;
.super Lcom/google/common/base/CharMatcher$FastMatcher;


# instance fields
.field final synthetic val$match1:C

.field final synthetic val$match2:C


# direct methods
.method constructor <init>(Ljava/lang/String;CC)V
    .registers 4

    iput-char p2, p0, Lcom/google/common/base/CharMatcher$12;->val$match1:C

    iput-char p3, p0, Lcom/google/common/base/CharMatcher$12;->val$match2:C

    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final matches(C)Z
    .registers 3

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$match1:C

    if-eq p1, v0, :cond_1

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$match2:C

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method final setBits(Ljava/util/BitSet;)V
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$match1:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$match2:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-void
.end method
