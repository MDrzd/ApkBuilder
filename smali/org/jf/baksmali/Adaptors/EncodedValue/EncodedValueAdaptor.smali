.class public abstract Lorg/jf/baksmali/Adaptors/EncodedValue/EncodedValueAdaptor;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeTo(Lorg/jf/util/IndentingWriter;Lorg/jf/dexlib2/iface/value/EncodedValue;Ljava/lang/String;)V
    .registers 5
    .param p0    # Lorg/jf/util/IndentingWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_0
    check-cast p1, Lorg/jf/dexlib2/iface/value/BooleanEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/BooleanEncodedValue;->getValue()Z

    move-result p1

    invoke-static {p0, p1}, Lorg/jf/baksmali/Renderers/BooleanRenderer;->writeTo(Lorg/jf/util/IndentingWriter;Z)V

    return-void

    :pswitch_1
    const-string p1, "null"

    invoke-virtual {p0, p1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    return-void

    :pswitch_2
    check-cast p1, Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;

    invoke-static {p0, p1, p2}, Lorg/jf/baksmali/Adaptors/EncodedValue/AnnotationEncodedValueAdaptor;->writeTo(Lorg/jf/util/IndentingWriter;Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;Ljava/lang/String;)V

    return-void

    :pswitch_3
    check-cast p1, Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;

    invoke-static {p0, p1, p2}, Lorg/jf/baksmali/Adaptors/EncodedValue/ArrayEncodedValueAdaptor;->writeTo(Lorg/jf/util/IndentingWriter;Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;Ljava/lang/String;)V

    return-void

    :pswitch_4
    check-cast p1, Lorg/jf/dexlib2/iface/value/EnumEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/EnumEncodedValue;->getValue()Lorg/jf/dexlib2/iface/reference/FieldReference;

    move-result-object v0

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, ".enum "

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/EnumEncodedValue;->getValue()Lorg/jf/dexlib2/iface/reference/FieldReference;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/jf/dexlib2/util/ReferenceUtil;->writeFieldDescriptor(Ljava/io/Writer;Lorg/jf/dexlib2/iface/reference/FieldReference;Z)V

    return-void

    :pswitch_5
    check-cast p1, Lorg/jf/dexlib2/iface/value/MethodEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/MethodEncodedValue;->getValue()Lorg/jf/dexlib2/iface/reference/MethodReference;

    move-result-object v0

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/MethodEncodedValue;->getValue()Lorg/jf/dexlib2/iface/reference/MethodReference;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/jf/dexlib2/util/ReferenceUtil;->writeMethodDescriptor(Ljava/io/Writer;Lorg/jf/dexlib2/iface/reference/MethodReference;Z)V

    return-void

    :pswitch_6
    check-cast p1, Lorg/jf/dexlib2/iface/value/FieldEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/FieldEncodedValue;->getValue()Lorg/jf/dexlib2/iface/reference/FieldReference;

    move-result-object v0

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/FieldEncodedValue;->getValue()Lorg/jf/dexlib2/iface/reference/FieldReference;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/jf/dexlib2/util/ReferenceUtil;->writeFieldDescriptor(Ljava/io/Writer;Lorg/jf/dexlib2/iface/reference/FieldReference;Z)V

    return-void

    :pswitch_7
    check-cast p1, Lorg/jf/dexlib2/iface/value/TypeEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/TypeEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_8
    check-cast p1, Lorg/jf/dexlib2/iface/value/StringEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/StringEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/jf/baksmali/Adaptors/ReferenceFormatter;->writeStringReference(Lorg/jf/util/IndentingWriter;Ljava/lang/String;)V

    return-void

    :pswitch_9
    check-cast p1, Lorg/jf/dexlib2/iface/value/DoubleEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/DoubleEncodedValue;->getValue()D

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lorg/jf/baksmali/Renderers/DoubleRenderer;->writeTo(Lorg/jf/util/IndentingWriter;D)V

    return-void

    :pswitch_a
    check-cast p1, Lorg/jf/dexlib2/iface/value/FloatEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/FloatEncodedValue;->getValue()F

    move-result p1

    invoke-static {p0, p1}, Lorg/jf/baksmali/Renderers/FloatRenderer;->writeTo(Lorg/jf/util/IndentingWriter;F)V

    return-void

    :pswitch_b
    check-cast p1, Lorg/jf/dexlib2/iface/value/IntEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/IntEncodedValue;->getValue()I

    move-result p1

    invoke-static {p0, p1}, Lorg/jf/baksmali/Renderers/IntegerRenderer;->writeTo(Lorg/jf/util/IndentingWriter;I)V

    return-void

    :pswitch_c
    check-cast p1, Lorg/jf/dexlib2/iface/value/CharEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/CharEncodedValue;->getValue()C

    move-result p1

    invoke-static {p0, p1}, Lorg/jf/baksmali/Renderers/CharRenderer;->writeTo(Lorg/jf/util/IndentingWriter;C)V

    return-void

    :pswitch_d
    check-cast p1, Lorg/jf/dexlib2/iface/value/ShortEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/ShortEncodedValue;->getValue()S

    move-result p1

    invoke-static {p0, p1}, Lorg/jf/baksmali/Renderers/ShortRenderer;->writeTo(Lorg/jf/util/IndentingWriter;S)V

    return-void

    :cond_0
    check-cast p1, Lorg/jf/dexlib2/iface/value/LongEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/LongEncodedValue;->getValue()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lorg/jf/baksmali/Renderers/LongRenderer;->writeTo(Lorg/jf/util/IndentingWriter;J)V

    return-void

    :cond_1
    check-cast p1, Lorg/jf/dexlib2/iface/value/ByteEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/ByteEncodedValue;->getValue()B

    move-result p1

    invoke-static {p0, p1}, Lorg/jf/baksmali/Renderers/ByteRenderer;->writeTo(Lorg/jf/util/IndentingWriter;B)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
