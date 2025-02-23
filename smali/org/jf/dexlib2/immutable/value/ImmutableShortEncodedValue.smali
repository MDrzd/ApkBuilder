.class public Lorg/jf/dexlib2/immutable/value/ImmutableShortEncodedValue;
.super Lorg/jf/dexlib2/base/value/BaseShortEncodedValue;

# interfaces
.implements Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:S


# direct methods
.method public constructor <init>(S)V
    .registers 2

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseShortEncodedValue;-><init>()V

    iput-short p1, p0, Lorg/jf/dexlib2/immutable/value/ImmutableShortEncodedValue;->value:S

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/value/ShortEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableShortEncodedValue;
    .registers 2

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableShortEncodedValue;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/value/ImmutableShortEncodedValue;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/value/ImmutableShortEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/ShortEncodedValue;->getValue()S

    move-result p0

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/value/ImmutableShortEncodedValue;-><init>(S)V

    return-object v0
.end method


# virtual methods
.method public getValue()S
    .registers 2

    iget-short v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableShortEncodedValue;->value:S

    return v0
.end method
