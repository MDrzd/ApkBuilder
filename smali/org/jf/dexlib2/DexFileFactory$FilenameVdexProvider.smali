.class public Lorg/jf/dexlib2/DexFileFactory$FilenameVdexProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/dexbacked/OatFile$VdexProvider;


# instance fields
.field private buf:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private loadedVdex:Z

.field private final vdexFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jf/dexlib2/DexFileFactory$FilenameVdexProvider;->buf:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jf/dexlib2/DexFileFactory$FilenameVdexProvider;->loadedVdex:Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/io/Files;->getNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".vdex"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jf/dexlib2/DexFileFactory$FilenameVdexProvider;->vdexFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getVdex()[B
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lorg/jf/dexlib2/DexFileFactory$FilenameVdexProvider;->loadedVdex:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jf/dexlib2/DexFileFactory$FilenameVdexProvider;->vdexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/jf/dexlib2/DexFileFactory$FilenameVdexProvider;->vdexFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/DexFileFactory$FilenameVdexProvider;->buf:[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jf/dexlib2/DexFileFactory$FilenameVdexProvider;->buf:[B

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jf/dexlib2/DexFileFactory$FilenameVdexProvider;->loadedVdex:Z

    :cond_1
    iget-object v0, p0, Lorg/jf/dexlib2/DexFileFactory$FilenameVdexProvider;->buf:[B

    return-object v0
.end method
