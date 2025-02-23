.class public Lorg/jf/dexlib2/immutable/ImmutableAnnotation;
.super Lorg/jf/dexlib2/base/BaseAnnotation;


# static fields
.field private static final CONVERTER:Lorg/jf/util/ImmutableConverter;


# instance fields
.field protected final elements:Lcom/google/common/collect/ImmutableSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final type:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final visibility:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/immutable/ImmutableAnnotation$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/immutable/ImmutableAnnotation$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/google/common/collect/ImmutableSet;)V
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/collect/ImmutableSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseAnnotation;-><init>()V

    iput p1, p0, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;->visibility:I

    iput-object p2, p0, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;->type:Ljava/lang/String;

    invoke-static {p3}, Lorg/jf/util/ImmutableUtils;->nullToEmptySet(Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;->elements:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/Collection;)V
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseAnnotation;-><init>()V

    iput p1, p0, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;->visibility:I

    iput-object p2, p0, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;->type:Ljava/lang/String;

    invoke-static {p3}, Lorg/jf/dexlib2/immutable/ImmutableAnnotationElement;->immutableSetOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;->elements:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public static immutableSetOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .param p0    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    sget-object v0, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lorg/jf/util/ImmutableConverter;->toSet(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/jf/dexlib2/iface/Annotation;)Lorg/jf/dexlib2/immutable/ImmutableAnnotation;
    .registers 4

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/Annotation;->getVisibility()I

    move-result v1

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/Annotation;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/Annotation;->getElements()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;-><init>(ILjava/lang/String;Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public getElements()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;->elements:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method public bridge synthetic getElements()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;->getElements()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;->visibility:I

    return v0
.end method
