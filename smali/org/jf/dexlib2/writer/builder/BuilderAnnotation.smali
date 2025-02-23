.class Lorg/jf/dexlib2/writer/builder/BuilderAnnotation;
.super Lorg/jf/dexlib2/base/BaseAnnotation;


# instance fields
.field final elements:Ljava/util/Set;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field offset:I

.field final type:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field visibility:I


# direct methods
.method public constructor <init>(ILorg/jf/dexlib2/writer/builder/BuilderTypeReference;Ljava/util/Set;)V
    .registers 5
    .param p2    # Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseAnnotation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotation;->offset:I

    iput p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotation;->visibility:I

    iput-object p2, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotation;->type:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    iput-object p3, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotation;->elements:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getElements()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotation;->elements:Ljava/util/Set;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotation;->type:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotation;->visibility:I

    return v0
.end method
