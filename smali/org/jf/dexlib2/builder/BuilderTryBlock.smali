.class public Lorg/jf/dexlib2/builder/BuilderTryBlock;
.super Lorg/jf/dexlib2/base/BaseTryBlock;


# instance fields
.field public final end:Lorg/jf/dexlib2/builder/Label;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final exceptionHandler:Lorg/jf/dexlib2/builder/BuilderExceptionHandler;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final start:Lorg/jf/dexlib2/builder/Label;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/builder/Label;Ljava/lang/String;Lorg/jf/dexlib2/builder/Label;)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseTryBlock;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/builder/BuilderTryBlock;->start:Lorg/jf/dexlib2/builder/Label;

    iput-object p2, p0, Lorg/jf/dexlib2/builder/BuilderTryBlock;->end:Lorg/jf/dexlib2/builder/Label;

    invoke-static {p3, p4}, Lorg/jf/dexlib2/builder/BuilderExceptionHandler;->newExceptionHandler(Ljava/lang/String;Lorg/jf/dexlib2/builder/Label;)Lorg/jf/dexlib2/builder/BuilderExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/builder/BuilderTryBlock;->exceptionHandler:Lorg/jf/dexlib2/builder/BuilderExceptionHandler;

    return-void
.end method

.method public constructor <init>(Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/builder/Label;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseTryBlock;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/builder/BuilderTryBlock;->start:Lorg/jf/dexlib2/builder/Label;

    iput-object p2, p0, Lorg/jf/dexlib2/builder/BuilderTryBlock;->end:Lorg/jf/dexlib2/builder/Label;

    invoke-static {p3}, Lorg/jf/dexlib2/builder/BuilderExceptionHandler;->newExceptionHandler(Lorg/jf/dexlib2/builder/Label;)Lorg/jf/dexlib2/builder/BuilderExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/builder/BuilderTryBlock;->exceptionHandler:Lorg/jf/dexlib2/builder/BuilderExceptionHandler;

    return-void
.end method

.method public constructor <init>(Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/iface/reference/TypeReference;Lorg/jf/dexlib2/builder/Label;)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseTryBlock;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/builder/BuilderTryBlock;->start:Lorg/jf/dexlib2/builder/Label;

    iput-object p2, p0, Lorg/jf/dexlib2/builder/BuilderTryBlock;->end:Lorg/jf/dexlib2/builder/Label;

    invoke-static {p3, p4}, Lorg/jf/dexlib2/builder/BuilderExceptionHandler;->newExceptionHandler(Lorg/jf/dexlib2/iface/reference/TypeReference;Lorg/jf/dexlib2/builder/Label;)Lorg/jf/dexlib2/builder/BuilderExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/builder/BuilderTryBlock;->exceptionHandler:Lorg/jf/dexlib2/builder/BuilderExceptionHandler;

    return-void
.end method


# virtual methods
.method public getCodeUnitCount()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/builder/BuilderTryBlock;->end:Lorg/jf/dexlib2/builder/Label;

    invoke-virtual {v0}, Lorg/jf/dexlib2/builder/Label;->getCodeAddress()I

    move-result v0

    iget-object v1, p0, Lorg/jf/dexlib2/builder/BuilderTryBlock;->start:Lorg/jf/dexlib2/builder/Label;

    invoke-virtual {v1}, Lorg/jf/dexlib2/builder/Label;->getCodeAddress()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getExceptionHandlers()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/BuilderTryBlock;->exceptionHandler:Lorg/jf/dexlib2/builder/BuilderExceptionHandler;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getStartCodeAddress()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/builder/BuilderTryBlock;->start:Lorg/jf/dexlib2/builder/Label;

    invoke-virtual {v0}, Lorg/jf/dexlib2/builder/Label;->getCodeAddress()I

    move-result v0

    return v0
.end method
