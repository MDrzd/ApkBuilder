.class Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;
.super Ljava/lang/Object;


# instance fields
.field private final entryCount:I

.field private final entrySize:I

.field private final offset:I

.field private final stringTable:Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/OatFile;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/OatFile;Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;)V
    .registers 6
    .param p2    # Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;

    invoke-static {p1}, Lorg/jf/dexlib2/dexbacked/OatFile;->access$600(Lorg/jf/dexlib2/dexbacked/OatFile;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;->getLink()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;

    invoke-direct {v0, p1, v1}, Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile;Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;)V

    iput-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->stringTable:Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;->getOffset()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->offset:I

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;->getEntrySize()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->entrySize:I

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;->getSize()I

    move-result p2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->entrySize:I

    div-int/2addr p2, v0

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->entryCount:I

    iget p2, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->offset:I

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->entryCount:I

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->entrySize:I

    mul-int v0, v0, v1

    add-int/2addr p2, v0

    iget-object p1, p1, Lorg/jf/dexlib2/dexbacked/OatFile;->buf:[B

    array-length p1, p1

    if-gt p2, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string p2, "Symbol table extends past end of file"

    invoke-direct {p1, p2}, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string p2, "String table section index is invalid"

    invoke-direct {p1, p2}, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$1000(Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;)Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;
    .registers 1

    iget-object p0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->stringTable:Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;

    return-object p0
.end method

.method static synthetic access$700(Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;)I
    .registers 1

    iget p0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->entryCount:I

    return p0
.end method

.method static synthetic access$800(Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;)I
    .registers 1

    iget p0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->offset:I

    return p0
.end method

.method static synthetic access$900(Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;)I
    .registers 1

    iget p0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->entrySize:I

    return p0
.end method


# virtual methods
.method public getSymbols()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$1;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;)V

    return-object v0
.end method
