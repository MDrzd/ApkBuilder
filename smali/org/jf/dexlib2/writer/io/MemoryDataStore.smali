.class public Lorg/jf/dexlib2/writer/io/MemoryDataStore;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/writer/io/DexDataStore;


# instance fields
.field private buf:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->buf:[B

    return-void
.end method

.method static synthetic access$000(Lorg/jf/dexlib2/writer/io/MemoryDataStore;I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->growBufferIfNeeded(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/jf/dexlib2/writer/io/MemoryDataStore;)[B
    .registers 1

    iget-object p0, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->buf:[B

    return-object p0
.end method

.method private growBufferIfNeeded(I)V
    .registers 7

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->buf:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->buf:[B

    add-int/lit8 p1, p1, 0x1

    int-to-double v1, p1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int p1, v1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->buf:[B

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public getData()[B
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->buf:[B

    return-object v0
.end method

.method public outputAt(I)Ljava/io/OutputStream;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;-><init>(Lorg/jf/dexlib2/writer/io/MemoryDataStore;I)V

    return-object v0
.end method

.method public readAt(I)Ljava/io/InputStream;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;-><init>(Lorg/jf/dexlib2/writer/io/MemoryDataStore;I)V

    return-object v0
.end method
