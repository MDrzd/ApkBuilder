.class final Lcom/google/common/io/ByteSource$EmptyByteSource;
.super Lcom/google/common/io/ByteSource$ByteArrayByteSource;


# static fields
.field private static final INSTANCE:Lcom/google/common/io/ByteSource$EmptyByteSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/io/ByteSource$EmptyByteSource;

    invoke-direct {v0}, Lcom/google/common/io/ByteSource$EmptyByteSource;-><init>()V

    sput-object v0, Lcom/google/common/io/ByteSource$EmptyByteSource;->INSTANCE:Lcom/google/common/io/ByteSource$EmptyByteSource;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcom/google/common/io/ByteSource$ByteArrayByteSource;-><init>([B)V

    return-void
.end method

.method static synthetic access$200()Lcom/google/common/io/ByteSource$EmptyByteSource;
    .registers 1

    sget-object v0, Lcom/google/common/io/ByteSource$EmptyByteSource;->INSTANCE:Lcom/google/common/io/ByteSource$EmptyByteSource;

    return-object v0
.end method


# virtual methods
.method public final asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/common/io/CharSource;->empty()Lcom/google/common/io/CharSource;

    move-result-object p1

    return-object p1
.end method

.method public final read()[B
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/ByteSource$EmptyByteSource;->bytes:[B

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "ByteSource.empty()"

    return-object v0
.end method
