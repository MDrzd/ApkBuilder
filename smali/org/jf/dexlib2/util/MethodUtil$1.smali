.class final Lorg/jf/dexlib2/util/MethodUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Predicate;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/iface/Method;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/util/MethodUtil$1;->apply(Lorg/jf/dexlib2/iface/Method;)Z

    move-result p1

    return p1
.end method

.method public final apply(Lorg/jf/dexlib2/iface/Method;)Z
    .registers 2
    .param p1    # Lorg/jf/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/jf/dexlib2/util/MethodUtil;->isDirect(Lorg/jf/dexlib2/iface/Method;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
