.class Lcom/google/common/hash/Hashing$Sha256Holder;
.super Ljava/lang/Object;


# static fields
.field static final SHA_256:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    const-string v1, "SHA-256"

    const-string v2, "Hashing.sha256()"

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/hash/Hashing$Sha256Holder;->SHA_256:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
