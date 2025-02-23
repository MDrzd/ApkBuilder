.class public Lorg/jf/dexlib2/immutable/value/ImmutableFieldEncodedValue;
.super Lorg/jf/dexlib2/base/value/BaseFieldEncodedValue;

# interfaces
.implements Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:Lorg/jf/dexlib2/iface/reference/FieldReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/iface/reference/FieldReference;)V
    .registers 2
    .param p1    # Lorg/jf/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseFieldEncodedValue;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/value/ImmutableFieldEncodedValue;->value:Lorg/jf/dexlib2/iface/reference/FieldReference;

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/value/FieldEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableFieldEncodedValue;
    .registers 2
    .param p0    # Lorg/jf/dexlib2/iface/value/FieldEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableFieldEncodedValue;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/value/ImmutableFieldEncodedValue;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/value/ImmutableFieldEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/FieldEncodedValue;->getValue()Lorg/jf/dexlib2/iface/reference/FieldReference;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/value/ImmutableFieldEncodedValue;-><init>(Lorg/jf/dexlib2/iface/reference/FieldReference;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Lorg/jf/dexlib2/iface/reference/FieldReference;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableFieldEncodedValue;->value:Lorg/jf/dexlib2/iface/reference/FieldReference;

    return-object v0
.end method
