.class public Lorg/jf/dexlib2/writer/pool/PoolMethodProto;
.super Lorg/jf/dexlib2/base/reference/BaseMethodProtoReference;

# interfaces
.implements Lorg/jf/dexlib2/iface/reference/MethodProtoReference;


# instance fields
.field private final methodReference:Lorg/jf/dexlib2/iface/reference/MethodReference;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/iface/reference/MethodReference;)V
    .registers 2

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseMethodProtoReference;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/writer/pool/PoolMethodProto;->methodReference:Lorg/jf/dexlib2/iface/reference/MethodReference;

    return-void
.end method


# virtual methods
.method public getParameterTypes()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolMethodProto;->methodReference:Lorg/jf/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolMethodProto;->methodReference:Lorg/jf/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
