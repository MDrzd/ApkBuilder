.class public abstract Lorg/jf/dexlib2/base/BaseTryBlock;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/TryBlock;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lorg/jf/dexlib2/iface/TryBlock;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jf/dexlib2/iface/TryBlock;

    invoke-virtual {p0}, Lorg/jf/dexlib2/base/BaseTryBlock;->getStartCodeAddress()I

    move-result v0

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/TryBlock;->getStartCodeAddress()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/jf/dexlib2/base/BaseTryBlock;->getCodeUnitCount()I

    move-result v0

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/TryBlock;->getCodeUnitCount()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/jf/dexlib2/base/BaseTryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method
