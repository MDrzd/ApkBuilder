.class public Lorg/jf/dexlib2/Opcodes;
.super Ljava/lang/Object;


# instance fields
.field public final api:I

.field public final artVersion:I

.field private final opcodeValues:Ljava/util/EnumMap;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final opcodesByName:Ljava/util/HashMap;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final opcodesByValue:[Lorg/jf/dexlib2/Opcode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(II)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v0, v0, [Lorg/jf/dexlib2/Opcode;

    iput-object v0, p0, Lorg/jf/dexlib2/Opcodes;->opcodesByValue:[Lorg/jf/dexlib2/Opcode;

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    iput p1, p0, Lorg/jf/dexlib2/Opcodes;->api:I

    invoke-static {p1}, Lorg/jf/dexlib2/VersionMap;->mapApiToArtVersion(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/Opcodes;->artVersion:I

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x27

    if-ge p2, v0, :cond_1

    invoke-static {p2}, Lorg/jf/dexlib2/VersionMap;->mapArtVersionToApi(I)I

    move-result p1

    :cond_1
    iput p1, p0, Lorg/jf/dexlib2/Opcodes;->api:I

    iput p2, p0, Lorg/jf/dexlib2/Opcodes;->artVersion:I

    :goto_0
    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lorg/jf/dexlib2/Opcode;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lorg/jf/dexlib2/Opcodes;->opcodeValues:Ljava/util/EnumMap;

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/Opcodes;->opcodesByName:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/jf/dexlib2/Opcodes;->isArt()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/jf/dexlib2/Opcodes;->artVersion:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lorg/jf/dexlib2/Opcodes;->api:I

    :goto_1
    invoke-static {}, Lorg/jf/dexlib2/Opcode;->values()[Lorg/jf/dexlib2/Opcode;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    aget-object v2, p2, v1

    invoke-virtual {p0}, Lorg/jf/dexlib2/Opcodes;->isArt()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lorg/jf/dexlib2/Opcode;->artVersionToValueMap:Lcom/google/common/collect/RangeMap;

    goto :goto_3

    :cond_3
    iget-object v3, v2, Lorg/jf/dexlib2/Opcode;->apiToValueMap:Lcom/google/common/collect/RangeMap;

    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/common/collect/RangeMap;->get(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    if-eqz v3, :cond_5

    iget-object v4, v2, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    iget-boolean v4, v4, Lorg/jf/dexlib2/Format;->isPayloadFormat:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/jf/dexlib2/Opcodes;->opcodesByValue:[Lorg/jf/dexlib2/Opcode;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v5

    aput-object v2, v4, v5

    :cond_4
    iget-object v4, p0, Lorg/jf/dexlib2/Opcodes;->opcodeValues:Ljava/util/EnumMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/jf/dexlib2/Opcodes;->opcodesByName:Ljava/util/HashMap;

    iget-object v4, v2, Lorg/jf/dexlib2/Opcode;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public static forApi(I)Lorg/jf/dexlib2/Opcodes;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/Opcodes;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lorg/jf/dexlib2/Opcodes;-><init>(II)V

    return-object v0
.end method

.method public static forArtVersion(I)Lorg/jf/dexlib2/Opcodes;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/Opcodes;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lorg/jf/dexlib2/Opcodes;-><init>(II)V

    return-object v0
.end method

.method public static getDefault()Lorg/jf/dexlib2/Opcodes;
    .registers 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/jf/dexlib2/Opcodes;->forApi(I)Lorg/jf/dexlib2/Opcodes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getOpcodeByName(Ljava/lang/String;)Lorg/jf/dexlib2/Opcode;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/Opcodes;->opcodesByName:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/Opcode;

    return-object p1
.end method

.method public getOpcodeByValue(I)Lorg/jf/dexlib2/Opcode;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/16 v0, 0x100

    if-eq p1, v0, :cond_3

    const/16 v0, 0x200

    if-eq p1, v0, :cond_2

    const/16 v0, 0x300

    if-eq p1, v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/Opcodes;->opcodesByValue:[Lorg/jf/dexlib2/Opcode;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/Opcodes;->opcodesByValue:[Lorg/jf/dexlib2/Opcode;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Lorg/jf/dexlib2/Opcode;->ARRAY_PAYLOAD:Lorg/jf/dexlib2/Opcode;

    return-object p1

    :cond_2
    sget-object p1, Lorg/jf/dexlib2/Opcode;->SPARSE_SWITCH_PAYLOAD:Lorg/jf/dexlib2/Opcode;

    return-object p1

    :cond_3
    sget-object p1, Lorg/jf/dexlib2/Opcode;->PACKED_SWITCH_PAYLOAD:Lorg/jf/dexlib2/Opcode;

    return-object p1
.end method

.method public getOpcodeValue(Lorg/jf/dexlib2/Opcode;)Ljava/lang/Short;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/Opcodes;->opcodeValues:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1
.end method

.method public isArt()Z
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/Opcodes;->artVersion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
