.class final Lcom/google/common/collect/WellBehavedMap;
.super Lcom/google/common/collect/ForwardingMap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private final delegate:Ljava/util/Map;

.field private entrySet:Ljava/util/Set;


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/WellBehavedMap;->delegate:Ljava/util/Map;

    return-void
.end method

.method static wrap(Ljava/util/Map;)Lcom/google/common/collect/WellBehavedMap;
    .registers 2

    new-instance v0, Lcom/google/common/collect/WellBehavedMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/WellBehavedMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/WellBehavedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/WellBehavedMap;->delegate:Ljava/util/Map;

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/WellBehavedMap;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/WellBehavedMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/WellBehavedMap$EntrySet;-><init>(Lcom/google/common/collect/WellBehavedMap;Lcom/google/common/collect/WellBehavedMap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/WellBehavedMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method
