.class Lorg/jf/dexlib2/writer/pool/PoolMethod;
.super Lorg/jf/dexlib2/base/reference/BaseMethodReference;

# interfaces
.implements Lorg/jf/dexlib2/iface/Method;


# static fields
.field public static final TRANSFORM:Lcom/google/common/base/Function;


# instance fields
.field protected annotationSetRefListOffset:I

.field protected codeItemOffset:I

.field private final method:Lorg/jf/dexlib2/iface/Method;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/writer/pool/PoolMethod$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/writer/pool/PoolMethod$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/writer/pool/PoolMethod;->TRANSFORM:Lcom/google/common/base/Function;

    return-void
.end method

.method constructor <init>(Lorg/jf/dexlib2/iface/Method;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseMethodReference;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jf/dexlib2/writer/pool/PoolMethod;->annotationSetRefListOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/pool/PoolMethod;->codeItemOffset:I

    iput-object p1, p0, Lorg/jf/dexlib2/writer/pool/PoolMethod;->method:Lorg/jf/dexlib2/iface/Method;

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolMethod;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/Method;->getAccessFlags()I

    move-result v0

    return v0
.end method

.method public getAnnotations()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolMethod;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/Method;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDefiningClass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolMethod;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImplementation()Lorg/jf/dexlib2/iface/MethodImplementation;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolMethod;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/Method;->getImplementation()Lorg/jf/dexlib2/iface/MethodImplementation;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolMethod;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolMethod;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/Method;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolMethod;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/Method;->getParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolMethod;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/Method;->getReturnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
