.class public Lorg/jf/baksmali/Adaptors/AnnotationFormatter;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeTo(Lorg/jf/util/IndentingWriter;Ljava/util/Collection;Ljava/lang/String;)V
    .registers 5
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

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/Annotation;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v1, p2}, Lorg/jf/baksmali/Adaptors/AnnotationFormatter;->writeTo(Lorg/jf/util/IndentingWriter;Lorg/jf/dexlib2/iface/Annotation;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeTo(Lorg/jf/util/IndentingWriter;Lorg/jf/dexlib2/iface/Annotation;Ljava/lang/String;)V
    .registers 4
    .param p0    # Lorg/jf/util/IndentingWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/iface/Annotation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, ".annotation "

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Annotation;->getVisibility()I

    move-result v0

    invoke-static {v0}, Lorg/jf/dexlib2/AnnotationVisibility;->getVisibility(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Annotation;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Annotation;->getElements()Ljava/util/Set;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/jf/baksmali/Adaptors/EncodedValue/AnnotationEncodedValueAdaptor;->writeElementsTo(Lorg/jf/util/IndentingWriter;Ljava/util/Collection;Ljava/lang/String;)V

    const-string p1, ".end annotation\n"

    invoke-virtual {p0, p1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    return-void
.end method
