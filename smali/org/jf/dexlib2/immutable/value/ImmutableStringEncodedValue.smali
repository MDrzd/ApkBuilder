.class public Lorg/jf/dexlib2/immutable/value/ImmutableStringEncodedValue;
.super Lorg/jf/dexlib2/base/value/BaseStringEncodedValue;

# interfaces
.implements Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseStringEncodedValue;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/value/ImmutableStringEncodedValue;->value:Ljava/lang/String;

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/value/StringEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableStringEncodedValue;
    .registers 2
    .param p0    # Lorg/jf/dexlib2/iface/value/StringEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableStringEncodedValue;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/value/ImmutableStringEncodedValue;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/value/ImmutableStringEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/StringEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/value/ImmutableStringEncodedValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableStringEncodedValue;->value:Ljava/lang/String;

    return-object v0
.end method
