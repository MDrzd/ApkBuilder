.class public abstract Lorg/jf/baksmali/Adaptors/EncodedValue/AnnotationEncodedValueAdaptor;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeElementsTo(Lorg/jf/util/IndentingWriter;Ljava/util/Collection;Ljava/lang/String;)V
    .registers 6
    .param p0    # Lorg/jf/util/IndentingWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->indent(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/AnnotationElement;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/AnnotationElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const-string v2, " = "

    invoke-virtual {p0, v2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/AnnotationElement;->getValue()Lorg/jf/dexlib2/iface/value/EncodedValue;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lorg/jf/baksmali/Adaptors/EncodedValue/EncodedValueAdaptor;->writeTo(Lorg/jf/util/IndentingWriter;Lorg/jf/dexlib2/iface/value/EncodedValue;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lorg/jf/util/IndentingWriter;->write(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->deindent(I)V

    return-void
.end method

.method public static writeTo(Lorg/jf/util/IndentingWriter;Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;Ljava/lang/String;)V
    .registers 4
    .param p0    # Lorg/jf/util/IndentingWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, ".subannotation "

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;->getElements()Ljava/util/Set;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/jf/baksmali/Adaptors/EncodedValue/AnnotationEncodedValueAdaptor;->writeElementsTo(Lorg/jf/util/IndentingWriter;Ljava/util/Collection;Ljava/lang/String;)V

    const-string p1, ".end subannotation"

    invoke-virtual {p0, p1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    return-void
.end method
