.class public Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;
.super Lorg/jf/dexlib2/base/reference/BaseMethodReference;

# interfaces
.implements Lorg/jf/dexlib2/immutable/reference/ImmutableReference;


# instance fields
.field protected final definingClass:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final parameters:Lcom/google/common/collect/ImmutableList;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final returnType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/collect/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseMethodReference;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;->definingClass:Ljava/lang/String;

    iput-object p2, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;->name:Ljava/lang/String;

    invoke-static {p3}, Lorg/jf/util/ImmutableUtils;->nullToEmptyList(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;->parameters:Lcom/google/common/collect/ImmutableList;

    iput-object p4, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;->returnType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseMethodReference;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;->definingClass:Ljava/lang/String;

    iput-object p2, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;->name:Ljava/lang/String;

    invoke-static {p3}, Lorg/jf/dexlib2/immutable/util/CharSequenceConverter;->immutableStringList(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;->parameters:Lcom/google/common/collect/ImmutableList;

    iput-object p4, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;->returnType:Ljava/lang/String;

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/reference/MethodReference;)Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;
    .registers 5
    .param p0    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getDefiningClass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;->definingClass:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;->parameters:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getParameterTypes()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;->getParameterTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;->returnType:Ljava/lang/String;

    return-object v0
.end method
