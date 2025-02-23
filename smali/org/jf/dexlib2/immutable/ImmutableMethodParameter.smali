.class public Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;
.super Lorg/jf/dexlib2/base/BaseMethodParameter;


# static fields
.field private static final CONVERTER:Lorg/jf/util/ImmutableConverter;


# instance fields
.field protected final annotations:Lcom/google/common/collect/ImmutableSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final type:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableSet;Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/google/common/collect/ImmutableSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseMethodParameter;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;->type:Ljava/lang/String;

    invoke-static {p2}, Lorg/jf/util/ImmutableUtils;->nullToEmptySet(Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;->annotations:Lcom/google/common/collect/ImmutableSet;

    iput-object p3, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseMethodParameter;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;->type:Ljava/lang/String;

    invoke-static {p2}, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;->immutableSetOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;->annotations:Lcom/google/common/collect/ImmutableSet;

    iput-object p3, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;->name:Ljava/lang/String;

    return-void
.end method

.method public static immutableListOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .param p0    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    sget-object v0, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lorg/jf/util/ImmutableConverter;->toList(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/jf/dexlib2/iface/MethodParameter;)Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;
    .registers 4

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/MethodParameter;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/MethodParameter;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/MethodParameter;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAnnotations()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;->annotations:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;->type:Ljava/lang/String;

    return-object v0
.end method
