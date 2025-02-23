.class Lcom/google/common/collect/HashBiMap$Inverse$1;
.super Lcom/google/common/collect/Maps$EntrySet;


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/HashBiMap$Inverse;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$Inverse;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$Inverse$1;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lcom/google/common/collect/HashBiMap$Inverse$1$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$Inverse$1$1;-><init>(Lcom/google/common/collect/HashBiMap$Inverse$1;)V

    return-object v0
.end method

.method map()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse$1;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    return-object v0
.end method
