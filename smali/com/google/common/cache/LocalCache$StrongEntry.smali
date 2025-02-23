.class Lcom/google/common/cache/LocalCache$StrongEntry;
.super Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;

.field final next:Lcom/google/common/cache/LocalCache$ReferenceEntry;

.field volatile valueReference:Lcom/google/common/cache/LocalCache$ValueReference;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 5
    .param p3    # Lcom/google/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;-><init>()V

    invoke-static {}, Lcom/google/common/cache/LocalCache;->unset()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->valueReference:Lcom/google/common/cache/LocalCache$ValueReference;

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->key:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->hash:I

    iput-object p3, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->next:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getHash()I
    .registers 2

    iget v0, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->next:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;
    .registers 2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->valueReference:Lcom/google/common/cache/LocalCache$ValueReference;

    return-object v0
.end method

.method public setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->valueReference:Lcom/google/common/cache/LocalCache$ValueReference;

    return-void
.end method
