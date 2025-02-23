.class public Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;
.super Lorg/jf/dexlib2/base/value/BaseMethodEncodedValue;

# interfaces
.implements Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;


# instance fields
.field final methodReference:Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;)V
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseMethodEncodedValue;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;->methodReference:Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Lorg/jf/dexlib2/iface/reference/MethodReference;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;->getValue()Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;->methodReference:Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    return-object v0
.end method
