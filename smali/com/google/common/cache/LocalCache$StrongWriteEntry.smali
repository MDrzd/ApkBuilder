.class final Lcom/google/common/cache/LocalCache$StrongWriteEntry;
.super Lcom/google/common/cache/LocalCache$StrongEntry;


# instance fields
.field nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

.field previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

.field volatile writeTime:J


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 4
    .param p3    # Lcom/google/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$StrongEntry;-><init>(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)V

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->writeTime:J

    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public final getNextInWriteQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public final getPreviousInWriteQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public final getWriteTime()J
    .registers 3

    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->writeTime:J

    return-wide v0
.end method

.method public final setNextInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-void
.end method

.method public final setPreviousInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-void
.end method

.method public final setWriteTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->writeTime:J

    return-void
.end method
