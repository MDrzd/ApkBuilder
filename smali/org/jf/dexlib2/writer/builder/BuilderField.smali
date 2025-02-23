.class public Lorg/jf/dexlib2/writer/builder/BuilderField;
.super Lorg/jf/dexlib2/base/reference/BaseFieldReference;

# interfaces
.implements Lorg/jf/dexlib2/iface/Field;


# instance fields
.field final accessFlags:I

.field final annotations:Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final fieldReference:Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final initialValue:Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;ILorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseFieldReference;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderField;->fieldReference:Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;

    iput p2, p0, Lorg/jf/dexlib2/writer/builder/BuilderField;->accessFlags:I

    iput-object p3, p0, Lorg/jf/dexlib2/writer/builder/BuilderField;->initialValue:Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    iput-object p4, p0, Lorg/jf/dexlib2/writer/builder/BuilderField;->annotations:Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderField;->accessFlags:I

    return v0
.end method

.method public bridge synthetic getAnnotations()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/BuilderField;->getAnnotations()Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderField;->annotations:Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    return-object v0
.end method

.method public getDefiningClass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderField;->fieldReference:Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;->definingClass:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInitialValue()Lorg/jf/dexlib2/iface/value/EncodedValue;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/BuilderField;->getInitialValue()Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    move-result-object v0

    return-object v0
.end method

.method public getInitialValue()Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderField;->initialValue:Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderField;->fieldReference:Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;->name:Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderField;->fieldReference:Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;->fieldType:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
