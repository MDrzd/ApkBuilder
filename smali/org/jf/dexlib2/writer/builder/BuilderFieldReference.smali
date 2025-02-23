.class public Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;
.super Lorg/jf/dexlib2/base/reference/BaseFieldReference;

# interfaces
.implements Lorg/jf/dexlib2/writer/builder/BuilderReference;


# instance fields
.field final definingClass:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final fieldType:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field index:I

.field final name:Lorg/jf/dexlib2/writer/builder/BuilderStringReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;Lorg/jf/dexlib2/writer/builder/BuilderStringReference;Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/writer/builder/BuilderStringReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseFieldReference;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;->index:I

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;->definingClass:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    iput-object p2, p0, Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;->name:Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    iput-object p3, p0, Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;->fieldType:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    return-void
.end method


# virtual methods
.method public getDefiningClass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;->definingClass:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;->name:Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;->fieldType:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setIndex(I)V
    .registers 2

    iput p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;->index:I

    return-void
.end method
