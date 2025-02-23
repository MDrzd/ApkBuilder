.class public Lorg/jf/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;
.super Lorg/jf/dexlib2/base/value/BaseAnnotationEncodedValue;

# interfaces
.implements Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;


# instance fields
.field protected final elements:Lcom/google/common/collect/ImmutableSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final type:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableSet;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/google/common/collect/ImmutableSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseAnnotationEncodedValue;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;->type:Ljava/lang/String;

    invoke-static {p2}, Lorg/jf/util/ImmutableUtils;->nullToEmptySet(Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;->elements:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseAnnotationEncodedValue;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;->type:Ljava/lang/String;

    invoke-static {p2}, Lorg/jf/dexlib2/immutable/ImmutableAnnotationElement;->immutableSetOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;->elements:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;
    .registers 3

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;->getElements()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/jf/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public getElements()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;->elements:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method public bridge synthetic getElements()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;->getElements()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;->type:Ljava/lang/String;

    return-object v0
.end method
