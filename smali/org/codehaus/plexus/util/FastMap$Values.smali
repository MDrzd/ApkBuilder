.class Lorg/codehaus/plexus/util/FastMap$Values;
.super Ljava/util/AbstractCollection;


# instance fields
.field final synthetic this$0:Lorg/codehaus/plexus/util/FastMap;


# direct methods
.method private constructor <init>(Lorg/codehaus/plexus/util/FastMap;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/FastMap$Values;->this$0:Lorg/codehaus/plexus/util/FastMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/codehaus/plexus/util/FastMap;Lorg/codehaus/plexus/util/FastMap$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/FastMap$Values;-><init>(Lorg/codehaus/plexus/util/FastMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap$Values;->this$0:Lorg/codehaus/plexus/util/FastMap;

    invoke-virtual {v0}, Lorg/codehaus/plexus/util/FastMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap$Values;->this$0:Lorg/codehaus/plexus/util/FastMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/plexus/util/FastMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lorg/codehaus/plexus/util/FastMap$Values$1;

    invoke-direct {v0, p0}, Lorg/codehaus/plexus/util/FastMap$Values$1;-><init>(Lorg/codehaus/plexus/util/FastMap$Values;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap$Values;->this$0:Lorg/codehaus/plexus/util/FastMap;

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap;->access$1000(Lorg/codehaus/plexus/util/FastMap;)I

    move-result v0

    return v0
.end method
