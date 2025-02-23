.class public Lorg/jf/dexlib2/immutable/value/ImmutableDoubleEncodedValue;
.super Lorg/jf/dexlib2/base/value/BaseDoubleEncodedValue;

# interfaces
.implements Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:D


# direct methods
.method public constructor <init>(D)V
    .registers 3

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseDoubleEncodedValue;-><init>()V

    iput-wide p1, p0, Lorg/jf/dexlib2/immutable/value/ImmutableDoubleEncodedValue;->value:D

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/value/DoubleEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableDoubleEncodedValue;
    .registers 4

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableDoubleEncodedValue;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/value/ImmutableDoubleEncodedValue;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/value/ImmutableDoubleEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/DoubleEncodedValue;->getValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/jf/dexlib2/immutable/value/ImmutableDoubleEncodedValue;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public getValue()D
    .registers 3

    iget-wide v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableDoubleEncodedValue;->value:D

    return-wide v0
.end method
