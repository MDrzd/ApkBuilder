.class Lcom/google/common/collect/ArrayTable$RowMap;
.super Lcom/google/common/collect/ArrayTable$ArrayMap;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ArrayTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$RowMap;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {p1}, Lcom/google/common/collect/ArrayTable;->access$200(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ArrayTable$ArrayMap;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ArrayTable$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/ArrayTable$RowMap;-><init>(Lcom/google/common/collect/ArrayTable;)V

    return-void
.end method


# virtual methods
.method getKeyRole()Ljava/lang/String;
    .registers 2

    const-string v0, "Row"

    return-object v0
.end method

.method bridge synthetic getValue(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$RowMap;->getValue(I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method getValue(I)Ljava/util/Map;
    .registers 4

    new-instance v0, Lcom/google/common/collect/ArrayTable$Row;

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$RowMap;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/ArrayTable$Row;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ArrayTable$RowMap;->put(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method bridge synthetic setValue(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ArrayTable$RowMap;->setValue(ILjava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method setValue(ILjava/util/Map;)Ljava/util/Map;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
