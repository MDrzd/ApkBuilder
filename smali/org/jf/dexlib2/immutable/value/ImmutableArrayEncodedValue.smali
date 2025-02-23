.class public Lorg/jf/dexlib2/immutable/value/ImmutableArrayEncodedValue;
.super Lorg/jf/dexlib2/base/value/BaseArrayEncodedValue;

# interfaces
.implements Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final value:Lcom/google/common/collect/ImmutableList;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .registers 2
    .param p1    # Lcom/google/common/collect/ImmutableList;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseArrayEncodedValue;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/value/ImmutableArrayEncodedValue;->value:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .param p1    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseArrayEncodedValue;-><init>()V

    invoke-static {p1}, Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValueFactory;->immutableListOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/value/ImmutableArrayEncodedValue;->value:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableArrayEncodedValue;
    .registers 2
    .param p0    # Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableArrayEncodedValue;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/value/ImmutableArrayEncodedValue;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/value/ImmutableArrayEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;->getValue()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/value/ImmutableArrayEncodedValue;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableArrayEncodedValue;->value:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/value/ImmutableArrayEncodedValue;->getValue()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
