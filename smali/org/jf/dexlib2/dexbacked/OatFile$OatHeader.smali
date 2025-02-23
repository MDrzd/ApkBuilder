.class Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;
.super Ljava/lang/Object;


# instance fields
.field private final headerOffset:I

.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/OatFile;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/OatFile;I)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    return-void
.end method

.method static synthetic access$1200(Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;)I
    .registers 1

    iget p0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    return p0
.end method


# virtual methods
.method public getDexFileCount()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile;->readSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getDexListStart()I
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->getHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getHeaderSize()I
    .registers 3

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->getVersion()I

    move-result v0

    const/16 v1, 0x38

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->getKeyValueStoreSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x48

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported oat version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->getKeyValueStoreSize()I

    move-result v0

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    add-int/lit8 v1, v1, 0x48

    add-int/2addr v0, v1

    :goto_0
    if-ge v1, v0, :cond_5

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget-object v3, v3, Lorg/jf/dexlib2/dexbacked/OatFile;->buf:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    if-ge v2, v0, :cond_4

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget-object v4, v4, Lorg/jf/dexlib2/dexbacked/OatFile;->buf:[B

    sub-int v5, v2, v1

    invoke-direct {v3, v4, v1, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    move p1, v2

    :goto_2
    if-ge p1, v0, :cond_1

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/OatFile;->buf:[B

    aget-byte v1, v1, p1

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_1
    if-ge p1, v0, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/OatFile;->buf:[B

    sub-int/2addr p1, v2

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    :cond_2
    new-instance p1, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string v0, "Oat file contains truncated key value store"

    invoke-direct {p1, v0}, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string v0, "Oat file contains truncated key value store"

    invoke-direct {p1, v0}, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKeyValueStoreSize()I
    .registers 3

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->getVersion()I

    move-result v0

    const/16 v1, 0x38

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    add-int/lit8 v1, v1, 0x44

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile;->readSmallUint(I)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported oat version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersion()I
    .registers 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/OatFile;->buf:[B

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    add-int/lit8 v2, v2, 0x4

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lorg/jf/dexlib2/dexbacked/OatFile;->access$300()[B

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget-object v2, v2, Lorg/jf/dexlib2/dexbacked/OatFile;->buf:[B

    iget v3, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    invoke-static {}, Lorg/jf/dexlib2/dexbacked/OatFile;->access$300()[B

    move-result-object v3

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_1
    const/4 v2, 0x7

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget-object v2, v2, Lorg/jf/dexlib2/dexbacked/OatFile;->buf:[B

    iget v3, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    const/16 v3, 0x30

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget-object v2, v2, Lorg/jf/dexlib2/dexbacked/OatFile;->buf:[B

    iget v3, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v0

    :cond_4
    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/OatFile;->buf:[B

    iget v3, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->headerOffset:I

    add-int/2addr v3, v2

    aget-byte v1, v1, v3

    if-nez v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method
