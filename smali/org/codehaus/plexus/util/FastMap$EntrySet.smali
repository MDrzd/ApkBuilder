.class Lorg/codehaus/plexus/util/FastMap$EntrySet;
.super Ljava/util/AbstractSet;


# instance fields
.field final synthetic this$0:Lorg/codehaus/plexus/util/FastMap;


# direct methods
.method private constructor <init>(Lorg/codehaus/plexus/util/FastMap;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/FastMap$EntrySet;->this$0:Lorg/codehaus/plexus/util/FastMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/codehaus/plexus/util/FastMap;Lorg/codehaus/plexus/util/FastMap$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/FastMap$EntrySet;-><init>(Lorg/codehaus/plexus/util/FastMap;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap$EntrySet;->this$0:Lorg/codehaus/plexus/util/FastMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/plexus/util/FastMap;->getEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lorg/codehaus/plexus/util/FastMap$EntrySet$1;

    invoke-direct {v0, p0}, Lorg/codehaus/plexus/util/FastMap$EntrySet$1;-><init>(Lorg/codehaus/plexus/util/FastMap$EntrySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap$EntrySet;->this$0:Lorg/codehaus/plexus/util/FastMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/plexus/util/FastMap;->getEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    check-cast v0, Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$200(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/codehaus/plexus/util/FastMap$EntrySet;->this$0:Lorg/codehaus/plexus/util/FastMap;

    invoke-static {p1, v0}, Lorg/codehaus/plexus/util/FastMap;->access$900(Lorg/codehaus/plexus/util/FastMap;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap$EntrySet;->this$0:Lorg/codehaus/plexus/util/FastMap;

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap;->access$1000(Lorg/codehaus/plexus/util/FastMap;)I

    move-result v0

    return v0
.end method
