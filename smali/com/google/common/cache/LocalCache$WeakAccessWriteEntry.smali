.class final Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;
.super Lcom/google/common/cache/LocalCache$WeakEntry;


# instance fields
.field volatile accessTime:J

.field nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

.field nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

.field previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

.field previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

.field volatile writeTime:J


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 5
    .param p4    # Lcom/google/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/cache/LocalCache$WeakEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)V

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->accessTime:J

    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object p3

    iput-object p3, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object p3

    iput-object p3, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->writeTime:J

    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public final getAccessTime()J
    .registers 3

    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->accessTime:J

    return-wide v0
.end method

.method public final getNextInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public final getNextInWriteQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public final getPreviousInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public final getPreviousInWriteQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public final getWriteTime()J
    .registers 3

    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->writeTime:J

    return-wide v0
.end method

.method public final setAccessTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->accessTime:J

    return-void
.end method

.method public final setNextInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-void
.end method

.method public final setNextInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-void
.end method

.method public final setPreviousInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-void
.end method

.method public final setPreviousInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-void
.end method

.method public final setWriteTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->writeTime:J

    return-void
.end method
