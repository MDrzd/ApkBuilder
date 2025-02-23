.class public Lorg/jf/dexlib2/immutable/value/ImmutableIntEncodedValue;
.super Lorg/jf/dexlib2/base/value/BaseIntEncodedValue;

# interfaces
.implements Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseIntEncodedValue;-><init>()V

    iput p1, p0, Lorg/jf/dexlib2/immutable/value/ImmutableIntEncodedValue;->value:I

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/value/IntEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableIntEncodedValue;
    .registers 2

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableIntEncodedValue;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/value/ImmutableIntEncodedValue;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/value/ImmutableIntEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/IntEncodedValue;->getValue()I

    move-result p0

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/value/ImmutableIntEncodedValue;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableIntEncodedValue;->value:I

    return v0
.end method
