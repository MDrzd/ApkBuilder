.class Lcom/google/common/collect/RegularImmutableBiMap;
.super Lcom/google/common/collect/ImmutableBiMap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation


# static fields
.field static final MAX_LOAD_FACTOR:D = 1.2


# instance fields
.field private final transient entries:[Lcom/google/common/collect/ImmutableMapEntry;

.field private final transient hashCode:I

.field private transient inverse:Lcom/google/common/collect/ImmutableBiMap;

.field private final transient keyTable:[Lcom/google/common/collect/ImmutableMapEntry;

.field private final transient mask:I

.field private final transient valueTable:[Lcom/google/common/collect/ImmutableMapEntry;


# direct methods
.method constructor <init>(I[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    const-wide v2, 0x3ff3333333333333L    # 1.2

    invoke-static {v1, v2, v3}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    iput v3, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v3

    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v1, :cond_3

    aget-object v8, p2, v5

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v11}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v13

    iget v14, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    and-int/2addr v13, v14

    invoke-static {v12}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v14

    iget v15, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    and-int/2addr v14, v15

    aget-object v15, v3, v13

    move-object v1, v15

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    move-object/from16 v16, v9

    const-string v9, "key"

    invoke-static {v7, v9, v8, v1}, Lcom/google/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v1

    move-object/from16 v9, v16

    goto :goto_1

    :cond_0
    aget-object v1, v2, v14

    move-object v7, v1

    :goto_2
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    move-object/from16 v17, v10

    const-string v10, "value"

    invoke-static {v9, v10, v8, v7}, Lcom/google/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v7

    move-object/from16 v10, v17

    goto :goto_2

    :cond_1
    if-nez v15, :cond_2

    if-nez v1, :cond_2

    move-object v7, v8

    goto :goto_3

    :cond_2
    new-instance v7, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;

    invoke-direct {v7, v8, v15, v1}, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;-><init>(Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V

    :goto_3
    aput-object v7, v3, v13

    aput-object v7, v2, v14

    aput-object v7, v4, v5

    xor-int v1, v11, v12

    add-int/2addr v6, v1

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p1

    goto :goto_0

    :cond_3
    iput-object v3, v0, Lcom/google/common/collect/RegularImmutableBiMap;->keyTable:[Lcom/google/common/collect/ImmutableMapEntry;

    iput-object v2, v0, Lcom/google/common/collect/RegularImmutableBiMap;->valueTable:[Lcom/google/common/collect/ImmutableMapEntry;

    iput-object v4, v0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    iput v6, v0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    return-void
.end method

.method varargs constructor <init>([Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V
    .registers 3

    array-length v0, p1

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/RegularImmutableBiMap;-><init>(I[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V

    return-void
.end method

.method constructor <init>([Ljava/util/Map$Entry;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    array-length v2, v1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    invoke-static {v2, v3, v4}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    iput v4, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    invoke-static {v3}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v4

    invoke-static {v3}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v3

    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v2, :cond_3

    aget-object v8, v1, v6

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v11}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v13

    iget v14, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    and-int/2addr v13, v14

    invoke-static {v12}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v14

    iget v15, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    and-int/2addr v14, v15

    aget-object v15, v4, v13

    move-object v1, v15

    :goto_1
    if-eqz v1, :cond_0

    move/from16 v16, v2

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v0, "key"

    invoke-static {v2, v0, v8, v1}, Lcom/google/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v1

    move/from16 v2, v16

    move-object/from16 v0, p0

    goto :goto_1

    :cond_0
    move/from16 v16, v2

    aget-object v0, v3, v14

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    move/from16 v17, v7

    const-string v7, "value"

    invoke-static {v2, v7, v8, v1}, Lcom/google/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v1

    move/from16 v7, v17

    goto :goto_2

    :cond_1
    move/from16 v17, v7

    if-nez v15, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    invoke-direct {v0, v9, v10}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    new-instance v1, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;

    invoke-direct {v1, v9, v10, v15, v0}, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V

    move-object v0, v1

    :goto_3
    aput-object v0, v4, v13

    aput-object v0, v3, v14

    aput-object v0, v5, v6

    xor-int v0, v11, v12

    add-int v7, v17, v0

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_3
    move/from16 v17, v7

    iput-object v4, v0, Lcom/google/common/collect/RegularImmutableBiMap;->keyTable:[Lcom/google/common/collect/ImmutableMapEntry;

    iput-object v3, v0, Lcom/google/common/collect/RegularImmutableBiMap;->valueTable:[Lcom/google/common/collect/ImmutableMapEntry;

    iput-object v5, v0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    move/from16 v6, v17

    iput v6, v0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableBiMap;)I
    .registers 1

    iget p0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/common/collect/RegularImmutableBiMap;)I
    .registers 1

    iget p0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    return p0
.end method

.method static synthetic access$400(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->valueTable:[Lcom/google/common/collect/ImmutableMapEntry;

    return-object p0
.end method

.method private static createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;
    .registers 1

    new-array p0, p0, [Lcom/google/common/collect/ImmutableMapEntry;

    return-object p0
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableBiMap$1;-><init>(Lcom/google/common/collect/RegularImmutableBiMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableBiMap;->keyTable:[Lcom/google/common/collect/ImmutableMapEntry;

    aget-object v1, v2, v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;-><init>(Lcom/google/common/collect/RegularImmutableBiMap;Lcom/google/common/collect/RegularImmutableBiMap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    :cond_0
    return-object v0
.end method

.method isPartialView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    array-length v0, v0

    return v0
.end method
