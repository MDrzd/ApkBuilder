.class Lcom/google/common/collect/HashBiMap$EntrySet$1;
.super Lcom/google/common/collect/HashBiMap$Itr;


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/HashBiMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$EntrySet;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1;->this$1:Lcom/google/common/collect/HashBiMap$EntrySet;

    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$Itr;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method bridge synthetic output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap$EntrySet$1;->output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/util/Map$Entry;
    .registers 3

    new-instance v0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;-><init>(Lcom/google/common/collect/HashBiMap$EntrySet$1;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    return-object v0
.end method
