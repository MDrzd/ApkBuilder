.class public Lorg/jf/dexlib2/immutable/value/ImmutableFloatEncodedValue;
.super Lorg/jf/dexlib2/base/value/BaseFloatEncodedValue;

# interfaces
.implements Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseFloatEncodedValue;-><init>()V

    iput p1, p0, Lorg/jf/dexlib2/immutable/value/ImmutableFloatEncodedValue;->value:F

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/value/FloatEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableFloatEncodedValue;
    .registers 2

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableFloatEncodedValue;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/value/ImmutableFloatEncodedValue;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/value/ImmutableFloatEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/FloatEncodedValue;->getValue()F

    move-result p0

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/value/ImmutableFloatEncodedValue;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public getValue()F
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableFloatEncodedValue;->value:F

    return v0
.end method
