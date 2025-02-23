.class final Lorg/jf/dexlib2/base/BaseAnnotation$1;
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

    check-cast p1, Lorg/jf/dexlib2/iface/Annotation;

    check-cast p2, Lorg/jf/dexlib2/iface/Annotation;

    invoke-virtual {p0, p1, p2}, Lorg/jf/dexlib2/base/BaseAnnotation$1;->compare(Lorg/jf/dexlib2/iface/Annotation;Lorg/jf/dexlib2/iface/Annotation;)I

    move-result p1

    return p1
.end method

.method public final compare(Lorg/jf/dexlib2/iface/Annotation;Lorg/jf/dexlib2/iface/Annotation;)I
    .registers 3

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Annotation;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/Annotation;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
