.class Lcom/google/common/collect/Iterables$ConsumingQueueIterator;
.super Lcom/google/common/collect/AbstractIterator;


# instance fields
.field private final queue:Ljava/util/Queue;


# direct methods
.method private constructor <init>(Ljava/util/Queue;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;->queue:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Queue;Lcom/google/common/collect/Iterables$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;-><init>(Ljava/util/Queue;)V

    return-void
.end method


# virtual methods
.method public computeNext()Ljava/lang/Object;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
