.class public Lorg/jf/dexlib2/immutable/value/ImmutableMethodEncodedValue;
.super Lorg/jf/dexlib2/base/value/BaseMethodEncodedValue;

# interfaces
.implements Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:Lorg/jf/dexlib2/iface/reference/MethodReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/iface/reference/MethodReference;)V
    .registers 2
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseMethodEncodedValue;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/value/ImmutableMethodEncodedValue;->value:Lorg/jf/dexlib2/iface/reference/MethodReference;

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/value/MethodEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableMethodEncodedValue;
    .registers 2
    .param p0    # Lorg/jf/dexlib2/iface/value/MethodEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableMethodEncodedValue;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/value/ImmutableMethodEncodedValue;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/value/ImmutableMethodEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/MethodEncodedValue;->getValue()Lorg/jf/dexlib2/iface/reference/MethodReference;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/value/ImmutableMethodEncodedValue;-><init>(Lorg/jf/dexlib2/iface/reference/MethodReference;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Lorg/jf/dexlib2/iface/reference/MethodReference;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableMethodEncodedValue;->value:Lorg/jf/dexlib2/iface/reference/MethodReference;

    return-object v0
.end method
