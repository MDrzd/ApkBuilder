.class Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges$1;
.super Ljava/util/AbstractSet;


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges$1;->this$1:Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges$1;->this$1:Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;

    iget-object v0, v0, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-static {v0}, Lcom/google/common/collect/TreeRangeMap;->access$100(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges$1;->this$1:Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;

    iget-object v0, v0, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-static {v0}, Lcom/google/common/collect/TreeRangeMap;->access$100(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->size()I

    move-result v0

    return v0
.end method
