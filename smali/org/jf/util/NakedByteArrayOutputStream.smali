.class public Lorg/jf/util/NakedByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .registers 2

    iget-object v0, p0, Lorg/jf/util/NakedByteArrayOutputStream;->buf:[B

    return-object v0
.end method
