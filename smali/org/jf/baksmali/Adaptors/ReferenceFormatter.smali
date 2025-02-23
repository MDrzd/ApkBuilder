.class public Lorg/jf/baksmali/Adaptors/ReferenceFormatter;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeReference(Lorg/jf/util/IndentingWriter;ILorg/jf/dexlib2/iface/reference/Reference;)V
    .registers 3

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown reference type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p2, Lorg/jf/dexlib2/iface/reference/MethodReference;

    invoke-static {p0, p2}, Lorg/jf/dexlib2/util/ReferenceUtil;->writeMethodDescriptor(Ljava/io/Writer;Lorg/jf/dexlib2/iface/reference/MethodReference;)V

    return-void

    :pswitch_1
    check-cast p2, Lorg/jf/dexlib2/iface/reference/FieldReference;

    invoke-static {p0, p2}, Lorg/jf/dexlib2/util/ReferenceUtil;->writeFieldDescriptor(Ljava/io/Writer;Lorg/jf/dexlib2/iface/reference/FieldReference;)V

    return-void

    :pswitch_2
    check-cast p2, Lorg/jf/dexlib2/iface/reference/TypeReference;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    return-void

    :pswitch_3
    check-cast p2, Lorg/jf/dexlib2/iface/reference/StringReference;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/reference/StringReference;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/jf/baksmali/Adaptors/ReferenceFormatter;->writeStringReference(Lorg/jf/util/IndentingWriter;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static writeStringReference(Lorg/jf/util/IndentingWriter;Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-static {p0, p1}, Lorg/jf/util/StringUtils;->writeEscapedString(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    return-void
.end method
