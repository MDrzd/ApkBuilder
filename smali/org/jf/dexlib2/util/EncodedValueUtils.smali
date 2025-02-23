.class public final Lorg/jf/dexlib2/util/EncodedValueUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDefaultValue(Lorg/jf/dexlib2/iface/value/EncodedValue;)Z
    .registers 8

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const/4 v3, 0x6

    if-eq v0, v3, :cond_6

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    return v2

    :pswitch_0
    check-cast p0, Lorg/jf/dexlib2/iface/value/BooleanEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/BooleanEncodedValue;->getValue()Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    return v2

    :pswitch_1
    return v1

    :pswitch_2
    check-cast p0, Lorg/jf/dexlib2/iface/value/DoubleEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/DoubleEncodedValue;->getValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double p0, v3, v5

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v2

    :pswitch_3
    check-cast p0, Lorg/jf/dexlib2/iface/value/FloatEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/FloatEncodedValue;->getValue()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v2

    :pswitch_4
    check-cast p0, Lorg/jf/dexlib2/iface/value/IntEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/IntEncodedValue;->getValue()I

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v2

    :pswitch_5
    check-cast p0, Lorg/jf/dexlib2/iface/value/CharEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/CharEncodedValue;->getValue()C

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v2

    :pswitch_6
    check-cast p0, Lorg/jf/dexlib2/iface/value/ShortEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/ShortEncodedValue;->getValue()S

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v2

    :cond_6
    check-cast p0, Lorg/jf/dexlib2/iface/value/LongEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/LongEncodedValue;->getValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-nez p0, :cond_7

    return v1

    :cond_7
    return v2

    :cond_8
    check-cast p0, Lorg/jf/dexlib2/iface/value/ByteEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/ByteEncodedValue;->getValue()B

    move-result p0

    if-nez p0, :cond_9

    return v1

    :cond_9
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
