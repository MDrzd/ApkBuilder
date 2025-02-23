.class Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;
.super Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->buf:[B

    return-object v0
.end method

.method public getCount()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->count:I

    return v0
.end method

.method public resetBuffer()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->count:I

    return-void
.end method
