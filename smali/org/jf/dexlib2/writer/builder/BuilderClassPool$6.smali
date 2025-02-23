.class final Lorg/jf/dexlib2/writer/builder/BuilderClassPool$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodParameter;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$6;->apply(Lorg/jf/dexlib2/writer/builder/BuilderMethodParameter;)Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lorg/jf/dexlib2/writer/builder/BuilderMethodParameter;)Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;
    .registers 2

    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/builder/BuilderMethodParameter;->getAnnotations()Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object p1

    return-object p1
.end method
