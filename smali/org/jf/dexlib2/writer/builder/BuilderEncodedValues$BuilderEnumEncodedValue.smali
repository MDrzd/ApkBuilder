.class public Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;
.super Lorg/jf/dexlib2/base/value/BaseEnumEncodedValue;

# interfaces
.implements Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;


# instance fields
.field final enumReference:Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;)V
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseEnumEncodedValue;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;->enumReference:Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Lorg/jf/dexlib2/iface/reference/FieldReference;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;->getValue()Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;->enumReference:Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;

    return-object v0
.end method
