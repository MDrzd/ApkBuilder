.class final Lorg/jf/dexlib2/writer/builder/BuilderClassPool$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Predicate;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodParameter;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$5;->apply(Lorg/jf/dexlib2/writer/builder/BuilderMethodParameter;)Z

    move-result p1

    return p1
.end method

.method public final apply(Lorg/jf/dexlib2/writer/builder/BuilderMethodParameter;)Z
    .registers 2

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/builder/BuilderMethodParameter;->getAnnotations()Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
