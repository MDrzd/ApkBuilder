.class final Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$ValueReference;


# instance fields
.field final referent:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference;->referent:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final clear(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V
    .registers 2

    return-void
.end method

.method public final copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ValueReference;
    .registers 4

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference;->referent:Ljava/lang/Object;

    return-object v0
.end method

.method public final getEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isComputingReference()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final waitForValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
