.class final Lcom/google/common/collect/StandardTable$Row$RowEntrySet;
.super Lcom/google/common/collect/Maps$EntrySet;


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/StandardTable$Row;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable$Row;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable$Row;Lcom/google/common/collect/StandardTable$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;-><init>(Lcom/google/common/collect/StandardTable$Row;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable$Row;->backingRowMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyModifiableIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;-><init>(Lcom/google/common/collect/StandardTable$Row$RowEntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method final map()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable$Row;->backingRowMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
