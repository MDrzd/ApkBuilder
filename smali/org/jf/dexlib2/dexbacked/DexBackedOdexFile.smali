.class public Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;
.super Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;


# static fields
.field private static final DEPENDENCY_COUNT_OFFSET:I = 0xc

.field private static final DEPENDENCY_START_OFFSET:I = 0x10


# instance fields
.field private final odexBuf:[B


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/Opcodes;[B[B)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p3}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;-><init>(Lorg/jf/dexlib2/Opcodes;[B)V

    iput-object p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;->odexBuf:[B

    return-void
.end method

.method public static fromInputStream(Lorg/jf/dexlib2/Opcodes;Ljava/io/InputStream;)Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;
    .registers 6
    .param p0    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-static {p1}, Lorg/jf/dexlib2/util/DexUtil;->verifyOdexHeader(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const/16 v0, 0x28

    new-array v1, v0, [B

    invoke-static {p1, v1}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[B)V

    invoke-static {v1}, Lorg/jf/dexlib2/dexbacked/raw/OdexHeaderItem;->getDexOffset([B)I

    move-result v2

    if-le v2, v0, :cond_0

    sub-int/2addr v2, v0

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/google/common/io/ByteStreams;->skipFully(Ljava/io/InputStream;J)V

    :cond_0
    invoke-static {p1}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;

    invoke-direct {v0, p0, v1, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;-><init>(Lorg/jf/dexlib2/Opcodes;[B[B)V

    return-object v0
.end method


# virtual methods
.method public getDependencies()Ljava/util/List;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;->odexBuf:[B

    invoke-static {v0}, Lorg/jf/dexlib2/dexbacked/raw/OdexHeaderItem;->getDexOffset([B)I

    move-result v0

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;->odexBuf:[B

    invoke-static {v1}, Lorg/jf/dexlib2/dexbacked/raw/OdexHeaderItem;->getDependenciesOffset([B)I

    move-result v1

    sub-int/2addr v1, v0

    new-instance v0, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;->buf:[B

    invoke-direct {v0, v2}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;-><init>([B)V

    add-int/lit8 v2, v1, 0xc

    invoke-virtual {v0, v2}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->readInt(I)I

    move-result v0

    new-instance v2, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile$1;

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v2, p0, p0, v1, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile$1;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V

    return-object v2
.end method

.method public getOdexVersion()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;->odexBuf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jf/dexlib2/dexbacked/raw/OdexHeaderItem;->getVersion([BI)I

    move-result v0

    return v0
.end method

.method public hasOdexOpcodes()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isOdexFile()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
