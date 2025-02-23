.class final Lcom/google/common/hash/Crc32cHashFunction;
.super Lcom/google/common/hash/AbstractStreamingHashFunction;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final bits()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method public final newHasher()Lcom/google/common/hash/Hasher;
    .registers 2

    new-instance v0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;

    invoke-direct {v0}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;-><init>()V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Hashing.crc32c()"

    return-object v0
.end method
