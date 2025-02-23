.class Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;
.super Lcom/google/common/collect/ForwardingMapEntry;


# instance fields
.field final synthetic this$3:Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;Ljava/util/Map$Entry;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;->this$3:Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;

    iput-object p2, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map$Entry;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;->val$entry:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;->standardEquals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
