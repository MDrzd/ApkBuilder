.class public Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;
.super Lorg/jf/dexlib2/writer/io/DeferredOutputStream;


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000


# instance fields
.field private final backingFile:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final output:Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private writtenBytes:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 5
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/writer/io/DeferredOutputStream;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->backingFile:Ljava/io/File;

    new-instance v0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p2}, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->output:Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    return-void
.end method

.method public static getFactory(Ljava/io/File;)Lorg/jf/dexlib2/writer/io/DeferredOutputStreamFactory;
    .registers 2
    .param p0    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->getFactory(Ljava/io/File;I)Lorg/jf/dexlib2/writer/io/DeferredOutputStreamFactory;

    move-result-object p0

    return-object p0
.end method

.method public static getFactory(Ljava/io/File;I)Lorg/jf/dexlib2/writer/io/DeferredOutputStreamFactory;
    .registers 3
    .param p0    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$1;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$1;-><init>(Ljava/io/File;I)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->output:Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->output:Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->output:Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->write(I)V

    iget p1, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->writtenBytes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->writtenBytes:I

    return-void
.end method

.method public write([B)V
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->output:Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->write([B)V

    iget v0, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->writtenBytes:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->writtenBytes:I

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->output:Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->write([BII)V

    iget p1, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->writtenBytes:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->writtenBytes:I

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .param p1    # Ljava/io/OutputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->output:Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->getBuffer()[B

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->output:Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    invoke-virtual {v1}, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->getCount()I

    move-result v1

    iget-object v2, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->output:Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    invoke-virtual {v2}, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->resetBuffer()V

    iget-object v2, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->output:Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;

    invoke-virtual {v2}, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream$NakedBufferedOutputStream;->close()V

    iget v2, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->writtenBytes:I

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->backingFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2, p1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    iget-object v2, p0, Lorg/jf/dexlib2/writer/io/FileDeferredOutputStream;->backingFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
