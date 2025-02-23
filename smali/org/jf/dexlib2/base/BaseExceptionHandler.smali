.class public abstract Lorg/jf/dexlib2/base/BaseExceptionHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/ExceptionHandler;


# static fields
.field public static final BY_EXCEPTION:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/base/BaseExceptionHandler$2;

    invoke-direct {v0}, Lorg/jf/dexlib2/base/BaseExceptionHandler$2;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/base/BaseExceptionHandler;->BY_EXCEPTION:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/iface/ExceptionHandler;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/base/BaseExceptionHandler;->compareTo(Lorg/jf/dexlib2/iface/ExceptionHandler;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/jf/dexlib2/iface/ExceptionHandler;)I
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/ExceptionHandler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lorg/jf/dexlib2/base/BaseExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {p1}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-interface {p1}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/jf/dexlib2/base/BaseExceptionHandler;->getHandlerCodeAddress()I

    move-result v0

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lorg/jf/dexlib2/iface/ExceptionHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jf/dexlib2/iface/ExceptionHandler;

    invoke-virtual {p0}, Lorg/jf/dexlib2/base/BaseExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jf/dexlib2/base/BaseExceptionHandler;->getHandlerCodeAddress()I

    move-result v0

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getExceptionTypeReference()Lorg/jf/dexlib2/iface/reference/TypeReference;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/base/BaseExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lorg/jf/dexlib2/base/BaseExceptionHandler$1;

    invoke-direct {v1, p0, v0}, Lorg/jf/dexlib2/base/BaseExceptionHandler$1;-><init>(Lorg/jf/dexlib2/base/BaseExceptionHandler;Ljava/lang/String;)V

    return-object v1
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lorg/jf/dexlib2/base/BaseExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/jf/dexlib2/base/BaseExceptionHandler;->getHandlerCodeAddress()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
