.class final Lorg/jf/dexlib2/writer/pool/ClassPool$6;
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

    check-cast p1, Lorg/jf/dexlib2/iface/MethodParameter;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/pool/ClassPool$6;->apply(Lorg/jf/dexlib2/iface/MethodParameter;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lorg/jf/dexlib2/iface/MethodParameter;)Ljava/util/Set;
    .registers 2

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/MethodParameter;->getAnnotations()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
