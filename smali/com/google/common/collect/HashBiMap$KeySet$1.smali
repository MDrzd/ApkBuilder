.class Lcom/google/common/collect/HashBiMap$KeySet$1;
.super Lcom/google/common/collect/HashBiMap$Itr;


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/HashBiMap$KeySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$KeySet;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$KeySet$1;->this$1:Lcom/google/common/collect/HashBiMap$KeySet;

    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$KeySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$Itr;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;
    .registers 2

    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    return-object p1
.end method
