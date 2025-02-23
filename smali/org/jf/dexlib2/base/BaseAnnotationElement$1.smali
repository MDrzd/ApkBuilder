.class final Lorg/jf/dexlib2/base/BaseAnnotationElement$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/iface/AnnotationElement;

    check-cast p2, Lorg/jf/dexlib2/iface/AnnotationElement;

    invoke-virtual {p0, p1, p2}, Lorg/jf/dexlib2/base/BaseAnnotationElement$1;->compare(Lorg/jf/dexlib2/iface/AnnotationElement;Lorg/jf/dexlib2/iface/AnnotationElement;)I

    move-result p1

    return p1
.end method

.method public final compare(Lorg/jf/dexlib2/iface/AnnotationElement;Lorg/jf/dexlib2/iface/AnnotationElement;)I
    .registers 3
    .param p1    # Lorg/jf/dexlib2/iface/AnnotationElement;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/iface/AnnotationElement;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/AnnotationElement;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/AnnotationElement;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
