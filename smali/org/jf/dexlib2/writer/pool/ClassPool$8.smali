.class Lorg/jf/dexlib2/writer/pool/ClassPool$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/writer/pool/ClassPool;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/pool/ClassPool;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/writer/pool/ClassPool$8;->this$0:Lorg/jf/dexlib2/writer/pool/ClassPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/jf/dexlib2/iface/MethodParameter;)Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/MethodParameter;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/iface/MethodParameter;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/pool/ClassPool$8;->apply(Lorg/jf/dexlib2/iface/MethodParameter;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
