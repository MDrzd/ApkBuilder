.class public Lorg/jf/dexlib2/immutable/ImmutableExceptionHandler;
.super Lorg/jf/dexlib2/base/BaseExceptionHandler;

# interfaces
.implements Lorg/jf/dexlib2/iface/ExceptionHandler;


# static fields
.field private static final CONVERTER:Lorg/jf/util/ImmutableConverter;


# instance fields
.field protected final exceptionType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final handlerCodeAddress:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/immutable/ImmutableExceptionHandler$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/immutable/ImmutableExceptionHandler$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/immutable/ImmutableExceptionHandler;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseExceptionHandler;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableExceptionHandler;->exceptionType:Ljava/lang/String;

    iput p2, p0, Lorg/jf/dexlib2/immutable/ImmutableExceptionHandler;->handlerCodeAddress:I

    return-void
.end method

.method public static immutableListOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .param p0    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    sget-object v0, Lorg/jf/dexlib2/immutable/ImmutableExceptionHandler;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lorg/jf/util/ImmutableConverter;->toList(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/jf/dexlib2/iface/ExceptionHandler;)Lorg/jf/dexlib2/immutable/ImmutableExceptionHandler;
    .registers 3

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/ImmutableExceptionHandler;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/ImmutableExceptionHandler;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/ImmutableExceptionHandler;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lorg/jf/dexlib2/immutable/ImmutableExceptionHandler;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public getExceptionType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableExceptionHandler;->exceptionType:Ljava/lang/String;

    return-object v0
.end method

.method public getHandlerCodeAddress()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/ImmutableExceptionHandler;->handlerCodeAddress:I

    return v0
.end method
