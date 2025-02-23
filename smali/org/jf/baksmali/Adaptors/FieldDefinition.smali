.class public Lorg/jf/baksmali/Adaptors/FieldDefinition;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static writeAccessFlags(Lorg/jf/util/IndentingWriter;I)V
    .registers 5

    invoke-static {p1}, Lorg/jf/dexlib2/AccessFlags;->getAccessFlagsForField(I)[Lorg/jf/dexlib2/AccessFlags;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/jf/dexlib2/AccessFlags;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lorg/jf/util/IndentingWriter;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeTo(Lorg/jf/baksmali/BaksmaliOptions;Lorg/jf/util/IndentingWriter;Lorg/jf/dexlib2/iface/Field;Z)V
    .registers 7

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/Field;->getInitialValue()Lorg/jf/dexlib2/iface/value/EncodedValue;

    move-result-object v0

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/Field;->getAccessFlags()I

    move-result v1

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    sget-object p3, Lorg/jf/dexlib2/AccessFlags;->STATIC:Lorg/jf/dexlib2/AccessFlags;

    invoke-virtual {p3, v1}, Lorg/jf/dexlib2/AccessFlags;->isSet(I)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lorg/jf/dexlib2/AccessFlags;->FINAL:Lorg/jf/dexlib2/AccessFlags;

    invoke-virtual {p3, v1}, Lorg/jf/dexlib2/AccessFlags;->isSet(I)Z

    move-result p3

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/jf/dexlib2/util/EncodedValueUtils;->isDefaultValue(Lorg/jf/dexlib2/iface/value/EncodedValue;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "# The value of this static final field might be set in the static constructor\n"

    invoke-virtual {p1, p3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    const-string p3, ".field "

    invoke-virtual {p1, p3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/Field;->getAccessFlags()I

    move-result p3

    invoke-static {p1, p3}, Lorg/jf/baksmali/Adaptors/FieldDefinition;->writeAccessFlags(Lorg/jf/util/IndentingWriter;I)V

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/Field;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/16 p3, 0x3a

    invoke-virtual {p1, p3}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/Field;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    const-string p3, " = "

    invoke-virtual {p1, p3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-boolean p3, p0, Lorg/jf/baksmali/BaksmaliOptions;->implicitReferences:Z

    if-eqz p3, :cond_2

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/Field;->getDefiningClass()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    move-object p3, v2

    :goto_1
    invoke-static {p1, v0, p3}, Lorg/jf/baksmali/Adaptors/EncodedValue/EncodedValueAdaptor;->writeTo(Lorg/jf/util/IndentingWriter;Lorg/jf/dexlib2/iface/value/EncodedValue;Ljava/lang/String;)V

    :cond_3
    const/16 p3, 0xa

    invoke-virtual {p1, p3}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/Field;->getAnnotations()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->indent(I)V

    iget-boolean p0, p0, Lorg/jf/baksmali/BaksmaliOptions;->implicitReferences:Z

    if-eqz p0, :cond_4

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/Field;->getDefiningClass()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-static {p1, p3, v2}, Lorg/jf/baksmali/Adaptors/AnnotationFormatter;->writeTo(Lorg/jf/util/IndentingWriter;Ljava/util/Collection;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->deindent(I)V

    const-string p0, ".end field\n"

    invoke-virtual {p1, p0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
