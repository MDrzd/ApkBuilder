.class final Lcom/google/common/hash/Hashing$Crc32cHolder;
.super Ljava/lang/Object;


# static fields
.field static final CRC_32_C:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/hash/Crc32cHashFunction;

    invoke-direct {v0}, Lcom/google/common/hash/Crc32cHashFunction;-><init>()V

    sput-object v0, Lcom/google/common/hash/Hashing$Crc32cHolder;->CRC_32_C:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
