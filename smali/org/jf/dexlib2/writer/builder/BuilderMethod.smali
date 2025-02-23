.class public Lorg/jf/dexlib2/writer/builder/BuilderMethod;
.super Lorg/jf/dexlib2/base/reference/BaseMethodReference;

# interfaces
.implements Lorg/jf/dexlib2/iface/Method;


# instance fields
.field final accessFlags:I

.field annotationSetRefListOffset:I

.field final annotations:Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field codeItemOffset:I

.field final methodImplementation:Lorg/jf/dexlib2/iface/MethodImplementation;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final methodReference:Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final parameters:Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;Ljava/util/List;ILorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;Lorg/jf/dexlib2/iface/MethodImplementation;)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lorg/jf/dexlib2/iface/MethodImplementation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseMethodReference;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->annotationSetRefListOffset:I

    iput v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->codeItemOffset:I

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->methodReference:Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    iput-object p2, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->parameters:Ljava/util/List;

    iput p3, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->accessFlags:I

    iput-object p4, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->annotations:Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    iput-object p5, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->methodImplementation:Lorg/jf/dexlib2/iface/MethodImplementation;

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->accessFlags:I

    return v0
.end method

.method public bridge synthetic getAnnotations()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->getAnnotations()Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->annotations:Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    return-object v0
.end method

.method public getDefiningClass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->methodReference:Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;->definingClass:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImplementation()Lorg/jf/dexlib2/iface/MethodImplementation;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->methodImplementation:Lorg/jf/dexlib2/iface/MethodImplementation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->methodReference:Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;->name:Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameterTypes()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->getParameterTypes()Lorg/jf/dexlib2/writer/builder/BuilderTypeList;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()Lorg/jf/dexlib2/writer/builder/BuilderTypeList;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->methodReference:Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;->proto:Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;->parameterTypes:Lorg/jf/dexlib2/writer/builder/BuilderTypeList;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->parameters:Ljava/util/List;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethod;->methodReference:Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;->proto:Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;->returnType:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
