.class Lcom/google/common/collect/Maps$TransformedEntriesMap$1;
.super Lcom/google/common/collect/Maps$EntrySet;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Maps$TransformedEntriesMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$TransformedEntriesMap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$1;->this$0:Lcom/google/common/collect/Maps$TransformedEntriesMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$1;->this$0:Lcom/google/common/collect/Maps$TransformedEntriesMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$1;->this$0:Lcom/google/common/collect/Maps$TransformedEntriesMap;

    iget-object v1, v1, Lcom/google/common/collect/Maps$TransformedEntriesMap;->transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    invoke-static {v1}, Lcom/google/common/collect/Maps;->asEntryToEntryFunction(Lcom/google/common/collect/Maps$EntryTransformer;)Lcom/google/common/base/Function;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method map()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$1;->this$0:Lcom/google/common/collect/Maps$TransformedEntriesMap;

    return-object v0
.end method
