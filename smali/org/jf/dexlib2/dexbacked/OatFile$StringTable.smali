.class Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;
.super Ljava/lang/Object;


# instance fields
.field private final offset:I

.field private final size:I

.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/OatFile;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/OatFile;Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;)V
    .registers 4
    .param p2    # Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;->getOffset()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;->offset:I

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;->getSize()I

    move-result p2

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;->size:I

    iget p2, p0, Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;->offset:I

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;->size:I

    add-int/2addr p2, v0

    iget-object p1, p1, Lorg/jf/dexlib2/dexbacked/OatFile;->buf:[B

    array-length p1, p1

    if-gt p2, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string p2, "String table extends past end of file"

    invoke-direct {p1, p2}, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .registers 6
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;->size:I

    if-ge p1, v0, :cond_2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;->offset:I

    add-int/2addr v0, p1

    move p1, v0

    :goto_0
    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/OatFile;->buf:[B

    aget-byte v1, v1, p1

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;->offset:I

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;->size:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string v0, "String extends past end of string table"

    invoke-direct {p1, v0}, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget-object v2, v2, Lorg/jf/dexlib2/dexbacked/OatFile;->buf:[B

    sub-int/2addr p1, v0

    const-string v3, "US-ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v0, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1

    :cond_2
    new-instance p1, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string v0, "String index is out of bounds"

    invoke-direct {p1, v0}, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
