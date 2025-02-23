.class final Lorg/jf/dexlib2/writer/pool/PoolMethod$1;
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

    check-cast p1, Lorg/jf/dexlib2/iface/Method;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/pool/PoolMethod$1;->apply(Lorg/jf/dexlib2/iface/Method;)Lorg/jf/dexlib2/writer/pool/PoolMethod;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lorg/jf/dexlib2/iface/Method;)Lorg/jf/dexlib2/writer/pool/PoolMethod;
    .registers 3

    new-instance v0, Lorg/jf/dexlib2/writer/pool/PoolMethod;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/writer/pool/PoolMethod;-><init>(Lorg/jf/dexlib2/iface/Method;)V

    return-object v0
.end method
