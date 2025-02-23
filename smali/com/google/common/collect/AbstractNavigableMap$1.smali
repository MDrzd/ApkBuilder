.class Lcom/google/common/collect/AbstractNavigableMap$1;
.super Lcom/google/common/collect/Maps$EntrySet;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractNavigableMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractNavigableMap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/AbstractNavigableMap$1;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/AbstractNavigableMap$1;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractNavigableMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method map()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/AbstractNavigableMap$1;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    return-object v0
.end method
