.class public Lorg/jf/util/RandomAccessFileInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private filePosition:I

.field private final raf:Ljava/io/RandomAccessFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;I)V
    .registers 3
    .param p1    # Ljava/io/RandomAccessFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput p2, p0, Lorg/jf/util/RandomAccessFileInputStream;->filePosition:I

    iput-object p1, p0, Lorg/jf/util/RandomAccessFileInputStream;->raf:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3

    iget-object v0, p0, Lorg/jf/util/RandomAccessFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lorg/jf/util/RandomAccessFileInputStream;->filePosition:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 4

    iget-object v0, p0, Lorg/jf/util/RandomAccessFileInputStream;->raf:Ljava/io/RandomAccessFile;

    iget v1, p0, Lorg/jf/util/RandomAccessFileInputStream;->filePosition:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget v0, p0, Lorg/jf/util/RandomAccessFileInputStream;->filePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jf/util/RandomAccessFileInputStream;->filePosition:I

    iget-object v0, p0, Lorg/jf/util/RandomAccessFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 5

    iget-object v0, p0, Lorg/jf/util/RandomAccessFileInputStream;->raf:Ljava/io/RandomAccessFile;

    iget v1, p0, Lorg/jf/util/RandomAccessFileInputStream;->filePosition:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lorg/jf/util/RandomAccessFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p1

    iget v0, p0, Lorg/jf/util/RandomAccessFileInputStream;->filePosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jf/util/RandomAccessFileInputStream;->filePosition:I

    return p1
.end method

.method public read([BII)I
    .registers 7

    iget-object v0, p0, Lorg/jf/util/RandomAccessFileInputStream;->raf:Ljava/io/RandomAccessFile;

    iget v1, p0, Lorg/jf/util/RandomAccessFileInputStream;->filePosition:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lorg/jf/util/RandomAccessFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    iget p2, p0, Lorg/jf/util/RandomAccessFileInputStream;->filePosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/jf/util/RandomAccessFileInputStream;->filePosition:I

    return p1
.end method

.method public skip(J)J
    .registers 3

    long-to-int p1, p1

    invoke-virtual {p0}, Lorg/jf/util/RandomAccessFileInputStream;->available()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p2, p0, Lorg/jf/util/RandomAccessFileInputStream;->filePosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/jf/util/RandomAccessFileInputStream;->filePosition:I

    int-to-long p1, p1

    return-wide p1
.end method
