.class public Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderTypeEncodedValue;
.super Lorg/jf/dexlib2/base/value/BaseTypeEncodedValue;

# interfaces
.implements Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;


# instance fields
.field final typeReference:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;)V
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseTypeEncodedValue;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderTypeEncodedValue;->typeReference:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderTypeEncodedValue;->typeReference:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
