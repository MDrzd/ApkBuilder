.class final Lcom/google/common/collect/HashBiMap$EntrySet;
.super Lcom/google/common/collect/Maps$EntrySet;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/HashBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$EntrySet;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lcom/google/common/collect/HashBiMap$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$EntrySet$1;-><init>(Lcom/google/common/collect/HashBiMap$EntrySet;)V

    return-object v0
.end method

.method final map()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    return-object v0
.end method
