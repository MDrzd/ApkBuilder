.class public Lorg/jf/dexlib2/dexbacked/ZipDexContainer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/MultiDexContainer;


# instance fields
.field private final opcodes:Lorg/jf/dexlib2/Opcodes;

.field private final zipFilePath:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/jf/dexlib2/Opcodes;)V
    .registers 3
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/ZipDexContainer;->zipFilePath:Ljava/io/File;

    iput-object p2, p0, Lorg/jf/dexlib2/dexbacked/ZipDexContainer;->opcodes:Lorg/jf/dexlib2/Opcodes;

    return-void
.end method


# virtual methods
.method public getDexEntryNames()Ljava/util/List;
    .registers 6
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/ZipDexContainer;->getZipFile()Ljava/util/zip/ZipFile;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0, v1, v3}, Lorg/jf/dexlib2/dexbacked/ZipDexContainer;->isDex(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    throw v0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/jf/dexlib2/dexbacked/ZipDexContainer$ZipDexFile;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/ZipDexContainer;->getZipFile()Ljava/util/zip/ZipFile;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0, p1}, Lorg/jf/dexlib2/dexbacked/ZipDexContainer;->loadEntry(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Lorg/jf/dexlib2/dexbacked/ZipDexContainer$ZipDexFile;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    throw p1
.end method

.method public bridge synthetic getEntry(Ljava/lang/String;)Lorg/jf/dexlib2/iface/DexFile;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/ZipDexContainer;->getEntry(Ljava/lang/String;)Lorg/jf/dexlib2/dexbacked/ZipDexContainer$ZipDexFile;

    move-result-object p1

    return-object p1
.end method

.method public getOpcodes()Lorg/jf/dexlib2/Opcodes;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/ZipDexContainer;->opcodes:Lorg/jf/dexlib2/Opcodes;

    return-object v0
.end method

.method protected getZipFile()Ljava/util/zip/ZipFile;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/ZipDexContainer;->zipFilePath:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lorg/jf/dexlib2/dexbacked/ZipDexContainer$NotAZipFileException;

    invoke-direct {v0}, Lorg/jf/dexlib2/dexbacked/ZipDexContainer$NotAZipFileException;-><init>()V

    throw v0
.end method

.method protected isDex(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Z
    .registers 4
    .param p1    # Ljava/util/zip/ZipFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/zip/ZipEntry;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-static {v0}, Lorg/jf/dexlib2/util/DexUtil;->verifyDexHeader(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$NotADexFile; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jf/dexlib2/util/DexUtil$InvalidFile; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jf/dexlib2/util/DexUtil$UnsupportedFile; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1

    :catch_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return p1

    :catch_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return p1

    :catch_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return p1
.end method

.method public isZipFile()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/ZipDexContainer;->getZipFile()Ljava/util/zip/ZipFile;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jf/dexlib2/dexbacked/ZipDexContainer$NotAZipFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :catch_1
    return v0
.end method

.method protected loadEntry(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Lorg/jf/dexlib2/dexbacked/ZipDexContainer$ZipDexFile;
    .registers 6
    .param p1    # Ljava/util/zip/ZipFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/zip/ZipEntry;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    new-instance v1, Lorg/jf/dexlib2/dexbacked/ZipDexContainer$ZipDexFile;

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/ZipDexContainer;->opcodes:Lorg/jf/dexlib2/Opcodes;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p0, v2, v0, p2}, Lorg/jf/dexlib2/dexbacked/ZipDexContainer$ZipDexFile;-><init>(Lorg/jf/dexlib2/dexbacked/ZipDexContainer;Lorg/jf/dexlib2/Opcodes;[BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw p2
.end method
