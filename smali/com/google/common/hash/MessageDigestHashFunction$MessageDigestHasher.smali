.class final Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;
.super Lcom/google/common/hash/AbstractByteHasher;


# instance fields
.field private final bytes:I

.field private final digest:Ljava/security/MessageDigest;

.field private done:Z


# direct methods
.method private constructor <init>(Ljava/security/MessageDigest;I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/hash/AbstractByteHasher;-><init>()V

    iput-object p1, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    iput p2, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->bytes:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/security/MessageDigest;ILcom/google/common/hash/MessageDigestHashFunction$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;-><init>(Ljava/security/MessageDigest;I)V

    return-void
.end method

.method private checkNotDone()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->done:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final hash()Lcom/google/common/hash/HashCode;
    .registers 3

    invoke-direct {p0}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->checkNotDone()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->done:Z

    iget v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->bytes:I

    iget-object v1, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget v1, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->bytes:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method protected final update(B)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->checkNotDone()V

    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method protected final update([B)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->checkNotDone()V

    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method protected final update([BII)V
    .registers 5

    invoke-direct {p0}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->checkNotDone()V

    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
