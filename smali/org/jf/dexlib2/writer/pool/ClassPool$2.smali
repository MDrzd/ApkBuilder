.class final Lorg/jf/dexlib2/writer/pool/ClassPool$2;
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

    check-cast p1, Lorg/jf/dexlib2/iface/Field;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/pool/ClassPool$2;->apply(Lorg/jf/dexlib2/iface/Field;)Z

    move-result p1

    return p1
.end method

.method public final apply(Lorg/jf/dexlib2/iface/Field;)Z
    .registers 2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Field;->getInitialValue()Lorg/jf/dexlib2/iface/value/EncodedValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/jf/dexlib2/util/EncodedValueUtils;->isDefaultValue(Lorg/jf/dexlib2/iface/value/EncodedValue;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
