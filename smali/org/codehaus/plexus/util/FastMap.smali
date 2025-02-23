.class public Lorg/codehaus/plexus/util/FastMap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map;


# instance fields
.field private transient _capacity:I

.field private transient _entries:[Lorg/codehaus/plexus/util/FastMap$EntryImpl;

.field private transient _entrySet:Lorg/codehaus/plexus/util/FastMap$EntrySet;

.field private transient _keySet:Lorg/codehaus/plexus/util/FastMap$KeySet;

.field private transient _mapFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

.field private transient _mapLast:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

.field private transient _mask:I

.field private transient _poolFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

.field private transient _size:I

.field private transient _values:Lorg/codehaus/plexus/util/FastMap$Values;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/FastMap;->initialize(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/FastMap;->initialize(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/codehaus/plexus/util/FastMap;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/codehaus/plexus/util/FastMap;

    invoke-virtual {v0}, Lorg/codehaus/plexus/util/FastMap;->capacity()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/FastMap;->initialize(I)V

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/FastMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/codehaus/plexus/util/FastMap;)I
    .registers 1

    iget p0, p0, Lorg/codehaus/plexus/util/FastMap;->_size:I

    return p0
.end method

.method static synthetic access$800(Lorg/codehaus/plexus/util/FastMap;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;
    .registers 1

    iget-object p0, p0, Lorg/codehaus/plexus/util/FastMap;->_mapFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    return-object p0
.end method

.method static synthetic access$900(Lorg/codehaus/plexus/util/FastMap;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/FastMap;->removeEntry(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)V

    return-void
.end method

.method private addEntry(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_poolFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$300(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/plexus/util/FastMap;->_poolFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {v0, v1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$302(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-direct {v0, v1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;-><init>(Lorg/codehaus/plexus/util/FastMap$1;)V

    :goto_0
    invoke-static {v0, p1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$002(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p2}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$202(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lorg/codehaus/plexus/util/FastMap;->keyHash(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lorg/codehaus/plexus/util/FastMap;->_mask:I

    and-int/2addr p1, p2

    invoke-static {v0, p1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$602(Lorg/codehaus/plexus/util/FastMap$EntryImpl;I)I

    iget-object p2, p0, Lorg/codehaus/plexus/util/FastMap;->_entries:[Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    aget-object p2, p2, p1

    invoke-static {v0, p2}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$102(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    if-eqz p2, :cond_1

    invoke-static {p2, v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$502(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    :cond_1
    iget-object p2, p0, Lorg/codehaus/plexus/util/FastMap;->_entries:[Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    aput-object v0, p2, p1

    iget-object p1, p0, Lorg/codehaus/plexus/util/FastMap;->_mapLast:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/codehaus/plexus/util/FastMap;->_mapLast:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {v0, p1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$402(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    iget-object p1, p0, Lorg/codehaus/plexus/util/FastMap;->_mapLast:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {p1, v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$302(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_mapFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    :goto_1
    iput-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_mapLast:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    iget p1, p0, Lorg/codehaus/plexus/util/FastMap;->_size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/codehaus/plexus/util/FastMap;->_size:I

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/FastMap;->sizeChanged()V

    return-void
.end method

.method private initialize(I)V
    .registers 6

    const/16 v0, 0x10

    :goto_0
    if-ge v0, p1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v0, [Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    iput-object v1, p0, Lorg/codehaus/plexus/util/FastMap;->_entries:[Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/plexus/util/FastMap;->_mask:I

    iput p1, p0, Lorg/codehaus/plexus/util/FastMap;->_capacity:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/plexus/util/FastMap;->_size:I

    new-instance v1, Lorg/codehaus/plexus/util/FastMap$Values;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/codehaus/plexus/util/FastMap$Values;-><init>(Lorg/codehaus/plexus/util/FastMap;Lorg/codehaus/plexus/util/FastMap$1;)V

    iput-object v1, p0, Lorg/codehaus/plexus/util/FastMap;->_values:Lorg/codehaus/plexus/util/FastMap$Values;

    new-instance v1, Lorg/codehaus/plexus/util/FastMap$EntrySet;

    invoke-direct {v1, p0, v2}, Lorg/codehaus/plexus/util/FastMap$EntrySet;-><init>(Lorg/codehaus/plexus/util/FastMap;Lorg/codehaus/plexus/util/FastMap$1;)V

    iput-object v1, p0, Lorg/codehaus/plexus/util/FastMap;->_entrySet:Lorg/codehaus/plexus/util/FastMap$EntrySet;

    new-instance v1, Lorg/codehaus/plexus/util/FastMap$KeySet;

    invoke-direct {v1, p0, v2}, Lorg/codehaus/plexus/util/FastMap$KeySet;-><init>(Lorg/codehaus/plexus/util/FastMap;Lorg/codehaus/plexus/util/FastMap$1;)V

    iput-object v1, p0, Lorg/codehaus/plexus/util/FastMap;->_keySet:Lorg/codehaus/plexus/util/FastMap$KeySet;

    iput-object v2, p0, Lorg/codehaus/plexus/util/FastMap;->_poolFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    iput-object v2, p0, Lorg/codehaus/plexus/util/FastMap;->_mapFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    iput-object v2, p0, Lorg/codehaus/plexus/util/FastMap;->_mapLast:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    :goto_1
    if-ge v0, p1, :cond_1

    new-instance v1, Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-direct {v1, v2}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;-><init>(Lorg/codehaus/plexus/util/FastMap$1;)V

    iget-object v3, p0, Lorg/codehaus/plexus/util/FastMap;->_poolFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {v1, v3}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$302(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    iput-object v1, p0, Lorg/codehaus/plexus/util/FastMap;->_poolFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static keyHash(Ljava/lang/Object;)I
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    shl-int/lit8 v0, p0, 0x9

    xor-int/lit8 v0, v0, -0x1

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xe

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x4

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/FastMap;->initialize(I)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/codehaus/plexus/util/FastMap;->addEntry(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeEntry(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)V
    .registers 7

    invoke-static {p1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$500(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object v0

    invoke-static {p1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$100(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$102(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {p1, v2}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$502(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/codehaus/plexus/util/FastMap;->_entries:[Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {p1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$600(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)I

    move-result v4

    aput-object v1, v3, v4

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v1, v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$502(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {p1, v2}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$102(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    :cond_1
    invoke-static {p1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$400(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object v0

    invoke-static {p1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$300(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-static {v0, v1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$302(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {p1, v2}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$402(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lorg/codehaus/plexus/util/FastMap;->_mapFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    :goto_1
    if-eqz v1, :cond_3

    invoke-static {v1, v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$402(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    goto :goto_2

    :cond_3
    iput-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_mapLast:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    :goto_2
    invoke-static {p1, v2}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$002(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v2}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$202(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_poolFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {p1, v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$302(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    iput-object p1, p0, Lorg/codehaus/plexus/util/FastMap;->_poolFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    iget p1, p0, Lorg/codehaus/plexus/util/FastMap;->_size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/codehaus/plexus/util/FastMap;->_size:I

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/FastMap;->sizeChanged()V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5

    iget v0, p0, Lorg/codehaus/plexus/util/FastMap;->_capacity:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Lorg/codehaus/plexus/util/FastMap;->_size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_mapFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$000(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$200(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$300(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/codehaus/plexus/util/FastMap;->_size:I

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "FastMap Corrupted"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public capacity()I
    .registers 2

    iget v0, p0, Lorg/codehaus/plexus/util/FastMap;->_capacity:I

    return v0
.end method

.method public clear()V
    .registers 5

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_mapFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0, v1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$002(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$202(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$402(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {v0, v1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$102(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$500(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/codehaus/plexus/util/FastMap;->_entries:[Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$600(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)I

    move-result v3

    aput-object v1, v2, v3

    goto :goto_1

    :cond_0
    invoke-static {v0, v1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$502(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    :goto_1
    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$300(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_mapLast:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_mapLast:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    iget-object v2, p0, Lorg/codehaus/plexus/util/FastMap;->_poolFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {v0, v2}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$302(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_mapFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    iput-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_poolFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    iput-object v1, p0, Lorg/codehaus/plexus/util/FastMap;->_mapFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    iput-object v1, p0, Lorg/codehaus/plexus/util/FastMap;->_mapLast:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/plexus/util/FastMap;->_size:I

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/FastMap;->sizeChanged()V

    :cond_2
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/plexus/util/FastMap;

    iget v1, p0, Lorg/codehaus/plexus/util/FastMap;->_capacity:I

    invoke-direct {v0, v1}, Lorg/codehaus/plexus/util/FastMap;->initialize(I)V

    invoke-virtual {v0, p0}, Lorg/codehaus/plexus/util/FastMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_entries:[Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {p1}, Lorg/codehaus/plexus/util/FastMap;->keyHash(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lorg/codehaus/plexus/util/FastMap;->_mask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$000(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$100(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_mapFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$200(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$300(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_entrySet:Lorg/codehaus/plexus/util/FastMap$EntrySet;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/FastMap;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lorg/codehaus/plexus/util/FastMap;->_mapFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    invoke-static {v1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$300(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object v1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_entries:[Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {p1}, Lorg/codehaus/plexus/util/FastMap;->keyHash(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lorg/codehaus/plexus/util/FastMap;->_mask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$000(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$200(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$100(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 5

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_entries:[Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {p1}, Lorg/codehaus/plexus/util/FastMap;->keyHash(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lorg/codehaus/plexus/util/FastMap;->_mask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$000(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$100(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_mapFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$300(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Lorg/codehaus/plexus/util/FastMap;->_size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_keySet:Lorg/codehaus/plexus/util/FastMap$KeySet;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_entries:[Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {p1}, Lorg/codehaus/plexus/util/FastMap;->keyHash(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lorg/codehaus/plexus/util/FastMap;->_mask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$000(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$200(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p2}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$202(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_0
    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$100(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/codehaus/plexus/util/FastMap;->addEntry(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/codehaus/plexus/util/FastMap;->addEntry(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_entries:[Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {p1}, Lorg/codehaus/plexus/util/FastMap;->keyHash(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lorg/codehaus/plexus/util/FastMap;->_mask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$000(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$200(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/FastMap;->removeEntry(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)V

    return-object p1

    :cond_0
    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$100(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setCapacity(I)V
    .registers 6

    iget v0, p0, Lorg/codehaus/plexus/util/FastMap;->_capacity:I

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    iget v0, p0, Lorg/codehaus/plexus/util/FastMap;->_capacity:I

    :goto_0
    if-ge v0, p1, :cond_1

    new-instance v2, Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-direct {v2, v1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;-><init>(Lorg/codehaus/plexus/util/FastMap$1;)V

    iget-object v3, p0, Lorg/codehaus/plexus/util/FastMap;->_poolFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {v2, v3}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$302(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    iput-object v2, p0, Lorg/codehaus/plexus/util/FastMap;->_poolFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/codehaus/plexus/util/FastMap;->_capacity:I

    if-ge p1, v0, :cond_1

    move v0, p1

    :goto_1
    iget v2, p0, Lorg/codehaus/plexus/util/FastMap;->_capacity:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/codehaus/plexus/util/FastMap;->_poolFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/codehaus/plexus/util/FastMap;->_poolFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {v2}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$300(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/plexus/util/FastMap;->_poolFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {v2, v1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$302(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x10

    :goto_2
    if-ge v0, p1, :cond_2

    shl-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/codehaus/plexus/util/FastMap;->_entries:[Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    array-length v2, v2

    if-eq v2, v0, :cond_4

    new-array v2, v0, [Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    iput-object v2, p0, Lorg/codehaus/plexus/util/FastMap;->_entries:[Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/plexus/util/FastMap;->_mask:I

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_mapFirst:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    :goto_3
    if-eqz v0, :cond_4

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$000(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/plexus/util/FastMap;->keyHash(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Lorg/codehaus/plexus/util/FastMap;->_mask:I

    and-int/2addr v2, v3

    invoke-static {v0, v2}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$602(Lorg/codehaus/plexus/util/FastMap$EntryImpl;I)I

    invoke-static {v0, v1}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$502(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    iget-object v3, p0, Lorg/codehaus/plexus/util/FastMap;->_entries:[Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    aget-object v3, v3, v2

    invoke-static {v0, v3}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$102(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    if-eqz v3, :cond_3

    invoke-static {v3, v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$502(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    :cond_3
    iget-object v3, p0, Lorg/codehaus/plexus/util/FastMap;->_entries:[Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    aput-object v0, v3, v2

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$300(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object v0

    goto :goto_3

    :cond_4
    iput p1, p0, Lorg/codehaus/plexus/util/FastMap;->_capacity:I

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/codehaus/plexus/util/FastMap;->_size:I

    return v0
.end method

.method protected sizeChanged()V
    .registers 3

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/FastMap;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/FastMap;->capacity()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/FastMap;->capacity()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/FastMap;->setCapacity(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/FastMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap;->_values:Lorg/codehaus/plexus/util/FastMap$Values;

    return-object v0
.end method
