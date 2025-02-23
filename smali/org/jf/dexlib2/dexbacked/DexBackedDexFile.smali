.class public Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
.super Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

# interfaces
.implements Lorg/jf/dexlib2/iface/DexFile;


# instance fields
.field private final classCount:I

.field private final classStartOffset:I

.field private final fieldCount:I

.field private final fieldStartOffset:I

.field private final methodCount:I

.field private final methodStartOffset:I

.field private final opcodes:Lorg/jf/dexlib2/Opcodes;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final protoCount:I

.field private final protoStartOffset:I

.field private final stringCount:I

.field private final stringStartOffset:I

.field private final typeCount:I

.field private final typeStartOffset:I


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/Opcodes;Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p2, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->buf:[B

    iget p2, p2, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;->baseOffset:I

    invoke-direct {p0, p1, v0, p2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;-><init>(Lorg/jf/dexlib2/Opcodes;[BI)V

    return-void
.end method

.method public constructor <init>(Lorg/jf/dexlib2/Opcodes;[B)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;-><init>(Lorg/jf/dexlib2/Opcodes;[BIZ)V

    return-void
.end method

.method public constructor <init>(Lorg/jf/dexlib2/Opcodes;[BI)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;-><init>(Lorg/jf/dexlib2/Opcodes;[BIZ)V

    return-void
.end method

.method protected constructor <init>(Lorg/jf/dexlib2/Opcodes;[BIZ)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p2, p3}, Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;-><init>([BI)V

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->opcodes:Lorg/jf/dexlib2/Opcodes;

    if-eqz p4, :cond_0

    invoke-static {p2, p3}, Lorg/jf/dexlib2/util/DexUtil;->verifyDexHeader([BI)V

    :cond_0
    const/16 p1, 0x38

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->stringCount:I

    const/16 p1, 0x3c

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->stringStartOffset:I

    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->typeCount:I

    const/16 p1, 0x44

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->typeStartOffset:I

    const/16 p1, 0x48

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->protoCount:I

    const/16 p1, 0x4c

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->protoStartOffset:I

    const/16 p1, 0x50

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->fieldCount:I

    const/16 p1, 0x54

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->fieldStartOffset:I

    const/16 p1, 0x58

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->methodCount:I

    const/16 p1, 0x5c

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->methodStartOffset:I

    const/16 p1, 0x60

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->classCount:I

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->classStartOffset:I

    return-void
.end method

.method static synthetic access$000(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;)I
    .registers 1

    iget p0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->classCount:I

    return p0
.end method

.method public static fromInputStream(Lorg/jf/dexlib2/Opcodes;Ljava/io/InputStream;)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .registers 4
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

    invoke-static {p1}, Lorg/jf/dexlib2/util/DexUtil;->verifyDexHeader(Ljava/io/InputStream;)V

    invoke-static {p1}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;-><init>(Lorg/jf/dexlib2/Opcodes;[BIZ)V

    return-object v0
.end method


# virtual methods
.method public getClassCount()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->classCount:I

    return v0
.end method

.method public getClassDefItemOffset(I)I
    .registers 6

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->classCount:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->classStartOffset:I

    shl-int/lit8 p1, p1, 0x5

    add-int/2addr v0, p1

    return v0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Class index out of bounds: %d"

    invoke-direct {v0, p1, v2, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getClasses()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$1;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;)V

    return-object v0
.end method

.method public getFieldCount()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->fieldCount:I

    return v0
.end method

.method public getFieldIdItemOffset(I)I
    .registers 6

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->fieldCount:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->fieldStartOffset:I

    shl-int/lit8 p1, p1, 0x3

    add-int/2addr v0, p1

    return v0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Field index out of bounds: %d"

    invoke-direct {v0, p1, v2, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getFields()Ljava/util/List;
    .registers 2

    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$5;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$5;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;)V

    return-object v0
.end method

.method public getMethodCount()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->methodCount:I

    return v0
.end method

.method public getMethodIdItemOffset(I)I
    .registers 6

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->methodCount:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->methodStartOffset:I

    shl-int/lit8 p1, p1, 0x3

    add-int/2addr v0, p1

    return v0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Method index out of bounds: %d"

    invoke-direct {v0, p1, v2, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getMethods()Ljava/util/List;
    .registers 2

    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$4;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$4;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;)V

    return-object v0
.end method

.method public getOpcodes()Lorg/jf/dexlib2/Opcodes;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->opcodes:Lorg/jf/dexlib2/Opcodes;

    return-object v0
.end method

.method public getOptionalString(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOptionalType(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getType(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProtoCount()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->protoCount:I

    return v0
.end method

.method public getProtoIdItemOffset(I)I
    .registers 6

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->protoCount:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->protoStartOffset:I

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr v0, p1

    return v0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Proto index out of bounds: %d"

    invoke-direct {v0, p1, v2, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getReferences(I)Ljava/util/List;
    .registers 5

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Invalid reference type: %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getMethods()Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getFields()Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getTypes()Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getStrings()Ljava/util/List;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getStringIdItemOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/dexbacked/DexReader;->readString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringCount()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->stringCount:I

    return v0
.end method

.method public getStringIdItemOffset(I)I
    .registers 6

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->stringCount:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->stringStartOffset:I

    shl-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    return v0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "String index out of bounds: %d"

    invoke-direct {v0, p1, v2, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getStrings()Ljava/util/List;
    .registers 2

    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$2;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$2;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;)V

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getTypeIdItemOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTypeCount()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->typeCount:I

    return v0
.end method

.method public getTypeIdItemOffset(I)I
    .registers 6

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->typeCount:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->typeStartOffset:I

    shl-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    return v0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Type index out of bounds: %d"

    invoke-direct {v0, p1, v2, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getTypes()Ljava/util/List;
    .registers 2

    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$3;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$3;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;)V

    return-object v0
.end method

.method public hasOdexOpcodes()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isOdexFile()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic readerAt(I)Lorg/jf/dexlib2/dexbacked/BaseDexReader;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object p1

    return-object p1
.end method

.method public readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexReader;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/dexbacked/DexReader;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object v0
.end method
