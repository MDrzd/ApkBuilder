.class Lcom/google/common/cache/LocalCache$StrongValueReference;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/cache/LocalCache$ValueReference;


# instance fields
.field final referent:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongValueReference;->referent:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ValueReference;
    .registers 4

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongValueReference;->referent:Ljava/lang/Object;

    return-object v0
.end method

.method public getEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 2

    const/4 v0, 0x0

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

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$StrongValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
