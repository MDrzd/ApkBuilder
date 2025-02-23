.class Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet$1;
.super Lcom/google/common/collect/HashBiMap$Itr;


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet$1;->this$2:Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;

    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$Itr;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;
    .registers 2

    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    return-object p1
.end method
