.class final Lorg/jf/dexlib2/writer/pool/ClassPool$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lorg/jf/dexlib2/iface/Field;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/pool/ClassPool$3;->apply(Lorg/jf/dexlib2/iface/Field;)Lorg/jf/dexlib2/iface/value/EncodedValue;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lorg/jf/dexlib2/iface/Field;)Lorg/jf/dexlib2/iface/value/EncodedValue;
    .registers 3

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Field;->getInitialValue()Lorg/jf/dexlib2/iface/value/EncodedValue;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Field;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValueFactory;->defaultValueForType(Ljava/lang/String;)Lorg/jf/dexlib2/iface/value/EncodedValue;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method
