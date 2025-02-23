.class public Lorg/jf/dexlib2/writer/io/FileDataStore;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/writer/io/DexDataStore;


# instance fields
.field private final raf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jf/dexlib2/writer/io/FileDataStore;->raf:Ljava/io/RandomAccessFile;

    iget-object p1, p0, Lorg/jf/dexlib2/writer/io/FileDataStore;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/FileDataStore;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public outputAt(I)Ljava/io/OutputStream;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/util/RandomAccessFileOutputStream;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/io/FileDataStore;->raf:Ljava/io/RandomAccessFile;

    invoke-direct {v0, v1, p1}, Lorg/jf/util/RandomAccessFileOutputStream;-><init>(Ljava/io/RandomAccessFile;I)V

    return-object v0
.end method

.method public readAt(I)Ljava/io/InputStream;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/util/RandomAccessFileInputStream;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/io/FileDataStore;->raf:Ljava/io/RandomAccessFile;

    invoke-direct {v0, v1, p1}, Lorg/jf/util/RandomAccessFileInputStream;-><init>(Ljava/io/RandomAccessFile;I)V

    return-object v0
.end method
