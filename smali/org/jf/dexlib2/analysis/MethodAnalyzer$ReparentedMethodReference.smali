.class Lorg/jf/dexlib2/analysis/MethodAnalyzer$ReparentedMethodReference;
.super Lorg/jf/dexlib2/base/reference/BaseMethodReference;


# instance fields
.field private final baseReference:Lorg/jf/dexlib2/iface/reference/MethodReference;

.field private final definingClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/iface/reference/MethodReference;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseMethodReference;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer$ReparentedMethodReference;->baseReference:Lorg/jf/dexlib2/iface/reference/MethodReference;

    iput-object p2, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer$ReparentedMethodReference;->definingClass:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefiningClass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer$ReparentedMethodReference;->definingClass:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer$ReparentedMethodReference;->baseReference:Lorg/jf/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer$ReparentedMethodReference;->baseReference:Lorg/jf/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/MethodAnalyzer$ReparentedMethodReference;->baseReference:Lorg/jf/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
