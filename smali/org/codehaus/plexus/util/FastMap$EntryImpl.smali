.class final Lorg/codehaus/plexus/util/FastMap$EntryImpl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field private _after:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

.field private _before:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

.field private _index:I

.field private _key:Ljava/lang/Object;

.field private _next:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

.field private _previous:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

.field private _value:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/codehaus/plexus/util/FastMap$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_key:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$002(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_key:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;
    .registers 1

    iget-object p0, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_next:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    return-object p0
.end method

.method static synthetic access$102(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_next:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    return-object p1
.end method

.method static synthetic access$200(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_value:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$202(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_value:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$300(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;
    .registers 1

    iget-object p0, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_after:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    return-object p0
.end method

.method static synthetic access$302(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_after:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    return-object p1
.end method

.method static synthetic access$400(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;
    .registers 1

    iget-object p0, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_before:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    return-object p0
.end method

.method static synthetic access$402(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_before:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    return-object p1
.end method

.method static synthetic access$500(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;
    .registers 1

    iget-object p0, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_previous:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    return-object p0
.end method

.method static synthetic access$502(Lorg/codehaus/plexus/util/FastMap$EntryImpl;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_previous:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    return-object p1
.end method

.method static synthetic access$600(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)I
    .registers 1

    iget p0, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_index:I

    return p0
.end method

.method static synthetic access$602(Lorg/codehaus/plexus/util/FastMap$EntryImpl;I)I
    .registers 2

    iput p1, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_index:I

    return p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_key:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_value:Ljava/lang/Object;

    iput-object p1, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->_value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
