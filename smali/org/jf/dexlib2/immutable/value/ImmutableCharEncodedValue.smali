.class public Lorg/jf/dexlib2/immutable/value/ImmutableCharEncodedValue;
.super Lorg/jf/dexlib2/base/value/BaseCharEncodedValue;

# interfaces
.implements Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:C


# direct methods
.method public constructor <init>(C)V
    .registers 2

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseCharEncodedValue;-><init>()V

    iput-char p1, p0, Lorg/jf/dexlib2/immutable/value/ImmutableCharEncodedValue;->value:C

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/value/CharEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableCharEncodedValue;
    .registers 2

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableCharEncodedValue;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/value/ImmutableCharEncodedValue;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/value/ImmutableCharEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/CharEncodedValue;->getValue()C

    move-result p0

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/value/ImmutableCharEncodedValue;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public getValue()C
    .registers 2

    iget-char v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableCharEncodedValue;->value:C

    return v0
.end method
