.class final Lcom/google/common/hash/ChecksumHashFunction;
.super Lcom/google/common/hash/AbstractStreamingHashFunction;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final bits:I

.field private final checksumSupplier:Lcom/google/common/base/Supplier;

.field private final toString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/common/base/Supplier;ILjava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Supplier;

    iput-object p1, p0, Lcom/google/common/hash/ChecksumHashFunction;->checksumSupplier:Lcom/google/common/base/Supplier;

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-eq p2, v1, :cond_1

    const/16 v1, 0x40

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "bits (%s) must be either 32 or 64"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, p1

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/common/hash/ChecksumHashFunction;->bits:I

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/hash/ChecksumHashFunction;->toString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/hash/ChecksumHashFunction;)I
    .registers 1

    iget p0, p0, Lcom/google/common/hash/ChecksumHashFunction;->bits:I

    return p0
.end method


# virtual methods
.method public final bits()I
    .registers 2

    iget v0, p0, Lcom/google/common/hash/ChecksumHashFunction;->bits:I

    return v0
.end method

.method public final newHasher()Lcom/google/common/hash/Hasher;
    .registers 4

    new-instance v0, Lcom/google/common/hash/ChecksumHashFunction$ChecksumHasher;

    iget-object v1, p0, Lcom/google/common/hash/ChecksumHashFunction;->checksumSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/Checksum;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/common/hash/ChecksumHashFunction$ChecksumHasher;-><init>(Lcom/google/common/hash/ChecksumHashFunction;Ljava/util/zip/Checksum;Lcom/google/common/hash/ChecksumHashFunction$1;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/common/hash/ChecksumHashFunction;->toString:Ljava/lang/String;

    return-object v0
.end method
