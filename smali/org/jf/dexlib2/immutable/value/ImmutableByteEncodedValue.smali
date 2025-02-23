.class public Lorg/jf/dexlib2/immutable/value/ImmutableByteEncodedValue;
.super Lorg/jf/dexlib2/base/value/BaseByteEncodedValue;

# interfaces
.implements Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:B


# direct methods
.method public constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseByteEncodedValue;-><init>()V

    iput-byte p1, p0, Lorg/jf/dexlib2/immutable/value/ImmutableByteEncodedValue;->value:B

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/value/ByteEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableByteEncodedValue;
    .registers 2

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableByteEncodedValue;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/value/ImmutableByteEncodedValue;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/value/ImmutableByteEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/ByteEncodedValue;->getValue()B

    move-result p0

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/value/ImmutableByteEncodedValue;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .registers 2

    iget-byte v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableByteEncodedValue;->value:B

    return v0
.end method
