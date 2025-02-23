.class Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;
.super Lorg/jf/dexlib2/base/BaseTryBlock;


# instance fields
.field public endCodeAddress:I

.field public exceptionHandlers:Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public next:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

.field public prev:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

.field public startCodeAddress:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseTryBlock;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->prev:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iput-object v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->next:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->exceptionHandlers:Ljava/util/List;

    iput p1, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->startCodeAddress:I

    iput p2, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->endCodeAddress:I

    return-void
.end method

.method public constructor <init>(IILjava/util/List;)V
    .registers 5
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseTryBlock;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->prev:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iput-object v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->next:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->exceptionHandlers:Ljava/util/List;

    iput p1, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->startCodeAddress:I

    iput p2, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->endCodeAddress:I

    invoke-static {p3}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->exceptionHandlers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addHandler(Lorg/jf/dexlib2/iface/ExceptionHandler;)V
    .registers 6
    .param p1    # Lorg/jf/dexlib2/iface/ExceptionHandler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->exceptionHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/ExceptionHandler;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_2

    if-nez v3, :cond_0

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result v0

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result p1

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lorg/jf/dexlib2/writer/util/TryListBuilder$InvalidTryException;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Multiple overlapping catch all handlers with different handlers"

    invoke-direct {p1, v1, v0}, Lorg/jf/dexlib2/writer/util/TryListBuilder$InvalidTryException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_3
    iget-object v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->exceptionHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public append(Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->next:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iput-object p1, v0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->prev:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iget-object v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->next:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iput-object v0, p1, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->next:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iput-object p0, p1, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->prev:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iput-object p1, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->next:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    return-void
.end method

.method public delete()V
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->next:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->prev:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iput-object v1, v0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->prev:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iget-object v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->prev:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->next:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iput-object v1, v0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->next:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    return-void
.end method

.method public getCodeUnitCount()I
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->endCodeAddress:I

    iget v1, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->startCodeAddress:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getExceptionHandlers()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->exceptionHandlers:Ljava/util/List;

    return-object v0
.end method

.method public getStartCodeAddress()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->startCodeAddress:I

    return v0
.end method

.method public mergeNext()V
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->next:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iget v0, v0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->endCodeAddress:I

    iput v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->endCodeAddress:I

    iget-object v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->next:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->delete()V

    return-void
.end method

.method public prepend(Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->prev:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iput-object p1, v0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->next:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iget-object v0, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->prev:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iput-object v0, p1, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->prev:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iput-object p0, p1, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->next:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iput-object p1, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->prev:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    return-void
.end method

.method public split(I)Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iget v1, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->endCodeAddress:I

    iget-object v2, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->exceptionHandlers:Ljava/util/List;

    invoke-direct {v0, p1, v1, v2}, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;-><init>(IILjava/util/List;)V

    iput p1, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->endCodeAddress:I

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;->append(Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;)V

    return-object v0
.end method
