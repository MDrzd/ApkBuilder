.class public Lorg/jf/baksmali/Adaptors/EncodedValue/ArrayEncodedValueAdaptor;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeTo(Lorg/jf/util/IndentingWriter;Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;Ljava/lang/String;)V
    .registers 6
    .param p0    # Lorg/jf/util/IndentingWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;->getValue()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x7d

    invoke-virtual {p0, p1}, Lorg/jf/util/IndentingWriter;->write(I)V

    return-void

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->indent(I)V

    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/iface/value/EncodedValue;

    if-nez v1, :cond_1

    const-string v1, ",\n"

    invoke-virtual {p0, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v2, p2}, Lorg/jf/baksmali/Adaptors/EncodedValue/EncodedValueAdaptor;->writeTo(Lorg/jf/util/IndentingWriter;Lorg/jf/dexlib2/iface/value/EncodedValue;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->deindent(I)V

    const-string p1, "\n}"

    invoke-virtual {p0, p1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    return-void
.end method
