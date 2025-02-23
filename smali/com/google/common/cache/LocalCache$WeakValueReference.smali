.class Lcom/google/common/cache/LocalCache$WeakValueReference;
.super Ljava/lang/ref/WeakReference;

# interfaces
.implements Lcom/google/common/cache/LocalCache$ValueReference;


# instance fields
.field final entry:Lcom/google/common/cache/LocalCache$ReferenceEntry;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 4

    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p3, p0, Lcom/google/common/cache/LocalCache$WeakValueReference;->entry:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ValueReference;
    .registers 5

    new-instance v0, Lcom/google/common/cache/LocalCache$WeakValueReference;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$WeakValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    return-object v0
.end method

.method public getEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WeakValueReference;->entry:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getWeight()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isActive()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isLoading()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public notifyNewValue(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public waitForValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$WeakValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
