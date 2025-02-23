.class public Lorg/jf/dexlib2/util/DexUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verifyDexHeader(Ljava/io/InputStream;)V
    .registers 3
    .param p0    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    new-array v0, v0, [B

    :try_start_0
    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[B)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lorg/jf/dexlib2/util/DexUtil;->verifyDexHeader([BI)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$NotADexFile;

    const-string v1, "File is too short"

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$NotADexFile;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "InputStream must support mark"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verifyDexHeader([BI)V
    .registers 8
    .param p0    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem;->getVersion([BI)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Not a valid dex magic value:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    const-string v3, " %02x"

    new-array v4, v1, [Ljava/lang/Object;

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$NotADexFile;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$NotADexFile;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v0}, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem;->isSupportedDexVersion(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p0, p1}, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem;->getEndian([BI)I

    move-result p0

    const p1, 0x78563412

    if-eq p0, p1, :cond_3

    const p1, 0x12345678

    if-ne p0, p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Lorg/jf/dexlib2/util/DexUtil$InvalidFile;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "Invalid endian tag: 0x%x"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/jf/dexlib2/util/DexUtil$InvalidFile;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Lorg/jf/dexlib2/util/DexUtil$UnsupportedFile;

    const-string p1, "Big endian dex files are not supported"

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/util/DexUtil$UnsupportedFile;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lorg/jf/dexlib2/util/DexUtil$UnsupportedFile;

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "Dex version %03d is not supported"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/util/DexUtil$UnsupportedFile;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verifyOdexHeader(Ljava/io/InputStream;)V
    .registers 3
    .param p0    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    new-array v0, v0, [B

    :try_start_0
    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[B)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lorg/jf/dexlib2/util/DexUtil;->verifyOdexHeader([BI)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile$NotAnOdexFile;

    const-string v1, "File is too short"

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile$NotAnOdexFile;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "InputStream must support mark"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verifyOdexHeader([BI)V
    .registers 8
    .param p0    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lorg/jf/dexlib2/dexbacked/raw/OdexHeaderItem;->getVersion([BI)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Not a valid odex magic value:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    const-string v3, " %02x"

    new-array v4, v0, [Ljava/lang/Object;

    aget-byte v5, p0, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile$NotAnOdexFile;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile$NotAnOdexFile;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lorg/jf/dexlib2/dexbacked/raw/OdexHeaderItem;->isSupportedOdexVersion(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Lorg/jf/dexlib2/util/DexUtil$UnsupportedFile;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Odex version %03d is not supported"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/util/DexUtil$UnsupportedFile;-><init>(Ljava/lang/String;)V

    throw p0
.end method
