.class public Lorg/jf/dexlib2/immutable/ImmutableTryBlock;
.super Lorg/jf/dexlib2/base/BaseTryBlock;


# static fields
.field private static final CONVERTER:Lorg/jf/util/ImmutableConverter;


# instance fields
.field protected final codeUnitCount:I

.field protected final exceptionHandlers:Lcom/google/common/collect/ImmutableList;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final startCodeAddress:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/immutable/ImmutableTryBlock$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/immutable/ImmutableTryBlock$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/immutable/ImmutableTryBlock;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(IILcom/google/common/collect/ImmutableList;)V
    .registers 4
    .param p3    # Lcom/google/common/collect/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseTryBlock;-><init>()V

    iput p1, p0, Lorg/jf/dexlib2/immutable/ImmutableTryBlock;->startCodeAddress:I

    iput p2, p0, Lorg/jf/dexlib2/immutable/ImmutableTryBlock;->codeUnitCount:I

    invoke-static {p3}, Lorg/jf/util/ImmutableUtils;->nullToEmptyList(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableTryBlock;->exceptionHandlers:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>(IILjava/util/List;)V
    .registers 4
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseTryBlock;-><init>()V

    iput p1, p0, Lorg/jf/dexlib2/immutable/ImmutableTryBlock;->startCodeAddress:I

    iput p2, p0, Lorg/jf/dexlib2/immutable/ImmutableTryBlock;->codeUnitCount:I

    invoke-static {p3}, Lorg/jf/dexlib2/immutable/ImmutableExceptionHandler;->immutableListOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableTryBlock;->exceptionHandlers:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static immutableListOf(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .param p0    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    sget-object v0, Lorg/jf/dexlib2/immutable/ImmutableTryBlock;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lorg/jf/util/ImmutableConverter;->toList(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/jf/dexlib2/iface/TryBlock;)Lorg/jf/dexlib2/immutable/ImmutableTryBlock;
    .registers 4

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/ImmutableTryBlock;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/ImmutableTryBlock;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/ImmutableTryBlock;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/TryBlock;->getStartCodeAddress()I

    move-result v1

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/TryBlock;->getCodeUnitCount()I

    move-result v2

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lorg/jf/dexlib2/immutable/ImmutableTryBlock;-><init>(IILjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getCodeUnitCount()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/ImmutableTryBlock;->codeUnitCount:I

    return v0
.end method

.method public getExceptionHandlers()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableTryBlock;->exceptionHandlers:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getExceptionHandlers()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/ImmutableTryBlock;->getExceptionHandlers()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getStartCodeAddress()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/ImmutableTryBlock;->startCodeAddress:I

    return v0
.end method
