.class Lcom/google/common/collect/ArrayTable$ArrayMap$1;
.super Lcom/google/common/collect/Maps$EntrySet;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ArrayTable$ArrayMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable$ArrayMap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$1;->this$0:Lcom/google/common/collect/ArrayTable$ArrayMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lcom/google/common/collect/ArrayTable$ArrayMap$1$1;

    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable$ArrayMap$1;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ArrayTable$ArrayMap$1$1;-><init>(Lcom/google/common/collect/ArrayTable$ArrayMap$1;I)V

    return-object v0
.end method

.method map()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$1;->this$0:Lcom/google/common/collect/ArrayTable$ArrayMap;

    return-object v0
.end method
