.class public Lorg/jf/dexlib2/dexbacked/OatFile;
.super Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

# interfaces
.implements Lorg/jf/dexlib2/iface/MultiDexContainer;


# static fields
.field private static final ELF_MAGIC:[B

.field private static final MAX_OAT_VERSION:I = 0x56

.field private static final MIN_ELF_HEADER_SIZE:I = 0x34

.field private static final MIN_OAT_VERSION:I = 0x38

.field private static final OAT_MAGIC:[B

.field public static final SUPPORTED:I = 0x1

.field public static final UNKNOWN:I = 0x2

.field public static final UNSUPPORTED:I


# instance fields
.field private final is64bit:Z

.field private final oatHeader:Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final opcodes:Lorg/jf/dexlib2/Opcodes;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final vdexProvider:Lorg/jf/dexlib2/dexbacked/OatFile$VdexProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/jf/dexlib2/dexbacked/OatFile;->ELF_MAGIC:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jf/dexlib2/dexbacked/OatFile;->OAT_MAGIC:[B

    return-void

    :array_0
    .array-data 1
        0x7ft
        0x45t
        0x4ct
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x6ft
        0x61t
        0x74t
        0xat
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/dexbacked/OatFile;-><init>([BLorg/jf/dexlib2/dexbacked/OatFile$VdexProvider;)V

    return-void
.end method

.method public constructor <init>([BLorg/jf/dexlib2/dexbacked/OatFile$VdexProvider;)V
    .registers 7
    .param p1    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/dexbacked/OatFile$VdexProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;-><init>([B)V

    array-length v0, p1

    const/16 v1, 0x34

    if-lt v0, v1, :cond_6

    invoke-static {p1}, Lorg/jf/dexlib2/dexbacked/OatFile;->verifyMagic([B)V

    const/4 v0, 0x4

    aget-byte v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iput-boolean v2, p0, Lorg/jf/dexlib2/dexbacked/OatFile;->is64bit:Z

    goto :goto_0

    :cond_0
    aget-byte v0, p1, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iput-boolean v3, p0, Lorg/jf/dexlib2/dexbacked/OatFile;->is64bit:Z

    :goto_0
    const/4 p1, 0x0

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/OatFile;->getSymbolTable()Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->getSymbols()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol;

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "oatdata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol;->getFileOffset()I

    move-result v0

    invoke-direct {p1, p0, v0}, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile;I)V

    :cond_2
    if-eqz p1, :cond_4

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/OatFile;->oatHeader:Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->getVersion()I

    move-result p1

    invoke-static {p1}, Lorg/jf/dexlib2/Opcodes;->forArtVersion(I)Lorg/jf/dexlib2/Opcodes;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/OatFile;->opcodes:Lorg/jf/dexlib2/Opcodes;

    iput-object p2, p0, Lorg/jf/dexlib2/dexbacked/OatFile;->vdexProvider:Lorg/jf/dexlib2/dexbacked/OatFile$VdexProvider;

    return-void

    :cond_3
    new-instance p1, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string p2, "Invalid oat magic value"

    invoke-direct {p1, p2}, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string p2, "Oat file has no oatdata symbol"

    invoke-direct {p1, p2}, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p2, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x5

    aget-byte p1, p1, v1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Invalid word-size value: %x"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    new-instance p1, Lorg/jf/dexlib2/dexbacked/OatFile$NotAnOatFileException;

    invoke-direct {p1}, Lorg/jf/dexlib2/dexbacked/OatFile$NotAnOatFileException;-><init>()V

    throw p1
.end method

.method static synthetic access$000(Lorg/jf/dexlib2/dexbacked/OatFile;)Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;
    .registers 1

    iget-object p0, p0, Lorg/jf/dexlib2/dexbacked/OatFile;->oatHeader:Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/jf/dexlib2/dexbacked/OatFile;)Lorg/jf/dexlib2/dexbacked/OatFile$VdexProvider;
    .registers 1

    iget-object p0, p0, Lorg/jf/dexlib2/dexbacked/OatFile;->vdexProvider:Lorg/jf/dexlib2/dexbacked/OatFile$VdexProvider;

    return-object p0
.end method

.method static synthetic access$200(Lorg/jf/dexlib2/dexbacked/OatFile;)Lorg/jf/dexlib2/Opcodes;
    .registers 1

    iget-object p0, p0, Lorg/jf/dexlib2/dexbacked/OatFile;->opcodes:Lorg/jf/dexlib2/Opcodes;

    return-object p0
.end method

.method static synthetic access$300()[B
    .registers 1

    sget-object v0, Lorg/jf/dexlib2/dexbacked/OatFile;->OAT_MAGIC:[B

    return-object v0
.end method

.method static synthetic access$400(Lorg/jf/dexlib2/dexbacked/OatFile;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/jf/dexlib2/dexbacked/OatFile;->is64bit:Z

    return p0
.end method

.method static synthetic access$500(Lorg/jf/dexlib2/dexbacked/OatFile;)Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;
    .registers 1

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/OatFile;->getSectionNameStringTable()Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/jf/dexlib2/dexbacked/OatFile;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/OatFile;->getSections()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static fromInputStream(Ljava/io/InputStream;)Lorg/jf/dexlib2/dexbacked/OatFile;
    .registers 2
    .param p0    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jf/dexlib2/dexbacked/OatFile;->fromInputStream(Ljava/io/InputStream;Lorg/jf/dexlib2/dexbacked/OatFile$VdexProvider;)Lorg/jf/dexlib2/dexbacked/OatFile;

    move-result-object p0

    return-object p0
.end method

.method public static fromInputStream(Ljava/io/InputStream;Lorg/jf/dexlib2/dexbacked/OatFile$VdexProvider;)Lorg/jf/dexlib2/dexbacked/OatFile;
    .registers 3
    .param p0    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/dexbacked/OatFile$VdexProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    new-array v0, v0, [B

    :try_start_0
    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[B)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    invoke-static {v0}, Lorg/jf/dexlib2/dexbacked/OatFile;->verifyMagic([B)V

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    new-instance v0, Lorg/jf/dexlib2/dexbacked/OatFile;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/dexbacked/OatFile;-><init>([BLorg/jf/dexlib2/dexbacked/OatFile$VdexProvider;)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance p1, Lorg/jf/dexlib2/dexbacked/OatFile$NotAnOatFileException;

    invoke-direct {p1}, Lorg/jf/dexlib2/dexbacked/OatFile$NotAnOatFileException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "InputStream must support mark"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getSectionNameStringTable()Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/dexbacked/OatFile;->readUshort(I)I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/OatFile;->getSections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;

    invoke-direct {v1, p0, v0}, Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile;Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string v1, "The section index for the section name string table is invalid"

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string v1, "There is no section name string table"

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSections()Ljava/util/List;
    .registers 6
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-boolean v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile;->is64bit:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/dexbacked/OatFile;->readLongAsSmallUint(I)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile;->readUshort(I)I

    move-result v1

    const/16 v2, 0x3c

    :goto_0
    invoke-virtual {p0, v2}, Lorg/jf/dexlib2/dexbacked/OatFile;->readUshort(I)I

    move-result v2

    goto :goto_1

    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/dexbacked/OatFile;->readSmallUint(I)I

    move-result v0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile;->readUshort(I)I

    move-result v1

    const/16 v2, 0x30

    goto :goto_0

    :goto_1
    mul-int v3, v1, v2

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/OatFile;->buf:[B

    array-length v4, v4

    if-gt v3, v4, :cond_1

    new-instance v3, Lorg/jf/dexlib2/dexbacked/OatFile$3;

    invoke-direct {v3, p0, v2, v0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile$3;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile;III)V

    return-object v3

    :cond_1
    new-instance v0, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string v1, "The ELF section headers extend past the end of the file"

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSymbolTable()Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/OatFile;->getSections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;->getType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    new-instance v0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-direct {v0, p0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile;Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;

    const-string v1, "Oat file has no symbol table"

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile$InvalidOatFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static verifyMagic([B)V
    .registers 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/jf/dexlib2/dexbacked/OatFile;->ELF_MAGIC:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    sget-object v2, Lorg/jf/dexlib2/dexbacked/OatFile;->ELF_MAGIC:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/jf/dexlib2/dexbacked/OatFile$NotAnOatFileException;

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/OatFile$NotAnOatFileException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public getBootClassPath()Ljava/util/List;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/OatFile;->getOatVersion()I

    move-result v0

    const/16 v1, 0x4b

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile;->oatHeader:Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;

    const-string v1, "bootclasspath"

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDexEntryNames()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/dexbacked/OatFile$2;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/dexbacked/OatFile$2;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile;)V

    return-object v0
.end method

.method public getDexFiles()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/dexbacked/OatFile$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/dexbacked/OatFile$1;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile;)V

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntryIterator;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile;Lorg/jf/dexlib2/dexbacked/OatFile$1;)V

    :cond_0
    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntryIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntryIterator;->next()Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;

    move-result-object v2

    iget-object v3, v2, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;->entryName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;->getDexFile()Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public bridge synthetic getEntry(Ljava/lang/String;)Lorg/jf/dexlib2/iface/DexFile;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/OatFile;->getEntry(Ljava/lang/String;)Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;

    move-result-object p1

    return-object p1
.end method

.method public getOatVersion()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile;->oatHeader:Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->getVersion()I

    move-result v0

    return v0
.end method

.method public getOpcodes()Lorg/jf/dexlib2/Opcodes;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile;->opcodes:Lorg/jf/dexlib2/Opcodes;

    return-object v0
.end method

.method public isSupportedVersion()I
    .registers 3

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/OatFile;->getOatVersion()I

    move-result v0

    const/16 v1, 0x38

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v1, 0x56

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0
.end method
