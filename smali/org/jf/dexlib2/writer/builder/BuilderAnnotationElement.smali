.class public Lorg/jf/dexlib2/writer/builder/BuilderAnnotationElement;
.super Lorg/jf/dexlib2/base/BaseAnnotationElement;


# instance fields
.field final name:Lorg/jf/dexlib2/writer/builder/BuilderStringReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final value:Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderStringReference;Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderStringReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseAnnotationElement;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationElement;->name:Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    iput-object p2, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationElement;->value:Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationElement;->name:Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lorg/jf/dexlib2/iface/value/EncodedValue;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationElement;->value:Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    return-object v0
.end method
