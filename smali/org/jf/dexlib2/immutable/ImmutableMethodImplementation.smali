.class public Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/MethodImplementation;


# instance fields
.field protected final debugItems:Lcom/google/common/collect/ImmutableList;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final instructions:Lcom/google/common/collect/ImmutableList;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final registerCount:I

.field protected final tryBlocks:Lcom/google/common/collect/ImmutableList;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .registers 5
    .param p2    # Lcom/google/common/collect/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/collect/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/common/collect/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;->registerCount:I

    invoke-static {p2}, Lorg/jf/util/ImmutableUtils;->nullToEmptyList(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;->instructions:Lcom/google/common/collect/ImmutableList;

    invoke-static {p3}, Lorg/jf/util/ImmutableUtils;->nullToEmptyList(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;->tryBlocks:Lcom/google/common/collect/ImmutableList;

    invoke-static {p4}, Lorg/jf/util/ImmutableUtils;->nullToEmptyList(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;->debugItems:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Iterable;Ljava/util/List;Ljava/lang/Iterable;)V
    .registers 5
    .param p2    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;->registerCount:I

    invoke-static {p2}, Lorg/jf/dexlib2/immutable/instruction/ImmutableInstruction;->immutableListOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;->instructions:Lcom/google/common/collect/ImmutableList;

    invoke-static {p3}, Lorg/jf/dexlib2/immutable/ImmutableTryBlock;->immutableListOf(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;->tryBlocks:Lcom/google/common/collect/ImmutableList;

    invoke-static {p4}, Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem;->immutableListOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;->debugItems:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/MethodImplementation;)Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;
    .registers 5
    .param p0    # Lorg/jf/dexlib2/iface/MethodImplementation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;

    return-object p0

    :cond_1
    new-instance v0, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result v1

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/MethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object v3

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/MethodImplementation;->getDebugItems()Ljava/lang/Iterable;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;-><init>(ILjava/lang/Iterable;Ljava/util/List;Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public getDebugItems()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;->debugItems:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getDebugItems()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;->getDebugItems()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getInstructions()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;->instructions:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getInstructions()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;->getInstructions()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getRegisterCount()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;->registerCount:I

    return v0
.end method

.method public getTryBlocks()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;->tryBlocks:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getTryBlocks()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;->getTryBlocks()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
