.class Lcom/google/common/collect/ArrayTable$ArrayMap$1$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/ArrayTable$ArrayMap$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable$ArrayMap$1;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$1$1;->this$1:Lcom/google/common/collect/ArrayTable$ArrayMap$1;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$ArrayMap$1$1;->get(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method protected get(I)Ljava/util/Map$Entry;
    .registers 3

    new-instance v0, Lcom/google/common/collect/ArrayTable$ArrayMap$1$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ArrayTable$ArrayMap$1$1$1;-><init>(Lcom/google/common/collect/ArrayTable$ArrayMap$1$1;I)V

    return-object v0
.end method
