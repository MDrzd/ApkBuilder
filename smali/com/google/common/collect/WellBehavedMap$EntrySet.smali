.class final Lcom/google/common/collect/WellBehavedMap$EntrySet;
.super Lcom/google/common/collect/Maps$EntrySet;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/WellBehavedMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/WellBehavedMap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet;->this$0:Lcom/google/common/collect/WellBehavedMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/WellBehavedMap;Lcom/google/common/collect/WellBehavedMap$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/WellBehavedMap$EntrySet;-><init>(Lcom/google/common/collect/WellBehavedMap;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1;

    iget-object v1, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet;->this$0:Lcom/google/common/collect/WellBehavedMap;

    invoke-virtual {v1}, Lcom/google/common/collect/WellBehavedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/WellBehavedMap$EntrySet$1;-><init>(Lcom/google/common/collect/WellBehavedMap$EntrySet;Ljava/util/Iterator;)V

    return-object v0
.end method

.method final map()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet;->this$0:Lcom/google/common/collect/WellBehavedMap;

    return-object v0
.end method
