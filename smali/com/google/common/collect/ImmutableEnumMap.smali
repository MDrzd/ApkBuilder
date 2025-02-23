.class final Lcom/google/common/collect/ImmutableEnumMap;
.super Lcom/google/common/collect/ImmutableMap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation


# instance fields
.field private final transient delegate:Ljava/util/EnumMap;


# direct methods
.method private constructor <init>(Ljava/util/EnumMap;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/ImmutableEnumMap;->delegate:Ljava/util/EnumMap;

    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumMap;Lcom/google/common/collect/ImmutableEnumMap$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableEnumMap;-><init>(Ljava/util/EnumMap;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/ImmutableEnumMap;)Ljava/util/EnumMap;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/ImmutableEnumMap;->delegate:Ljava/util/EnumMap;

    return-object p0
.end method

.method static asImmutable(Ljava/util/EnumMap;)Lcom/google/common/collect/ImmutableMap;
    .registers 2

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/common/collect/ImmutableEnumMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableEnumMap;-><init>(Ljava/util/EnumMap;)V

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumMap;->delegate:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    new-instance v0, Lcom/google/common/collect/ImmutableEnumMap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableEnumMap$2;-><init>(Lcom/google/common/collect/ImmutableEnumMap;)V

    return-object v0
.end method

.method final createKeySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    new-instance v0, Lcom/google/common/collect/ImmutableEnumMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableEnumMap$1;-><init>(Lcom/google/common/collect/ImmutableEnumMap;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumMap;->delegate:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final isPartialView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumMap;->delegate:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    return v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/google/common/collect/ImmutableEnumMap$EnumSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableEnumMap;->delegate:Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableEnumMap$EnumSerializedForm;-><init>(Ljava/util/EnumMap;)V

    return-object v0
.end method
