.class public Lorg/jf/dexlib2/immutable/value/ImmutableLongEncodedValue;
.super Lorg/jf/dexlib2/base/value/BaseLongEncodedValue;

# interfaces
.implements Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseLongEncodedValue;-><init>()V

    iput-wide p1, p0, Lorg/jf/dexlib2/immutable/value/ImmutableLongEncodedValue;->value:J

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/value/LongEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableLongEncodedValue;
    .registers 4

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableLongEncodedValue;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/value/ImmutableLongEncodedValue;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/value/ImmutableLongEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/LongEncodedValue;->getValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/jf/dexlib2/immutable/value/ImmutableLongEncodedValue;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .registers 3

    iget-wide v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableLongEncodedValue;->value:J

    return-wide v0
.end method
