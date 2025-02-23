.class final Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method final byteArray()[B
    .registers 2

    iget-object v0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method final length()I
    .registers 2

    iget v0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->count:I

    return v0
.end method
