.class final Lcom/google/common/cache/LocalCache$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/cache/LocalCache$ValueReference;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ValueReference;
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWeight()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isActive()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isLoading()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final notifyNewValue(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public final waitForValue()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
