.class public Lorg/jf/dexlib2/immutable/reference/ImmutableMethodProtoReference;
.super Lorg/jf/dexlib2/base/reference/BaseMethodProtoReference;

# interfaces
.implements Lorg/jf/dexlib2/immutable/reference/ImmutableReference;


# instance fields
.field protected final parameters:Lcom/google/common/collect/ImmutableList;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final returnType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseMethodProtoReference;-><init>()V

    invoke-static {p1}, Lorg/jf/dexlib2/immutable/util/CharSequenceConverter;->immutableStringList(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodProtoReference;->parameters:Lcom/google/common/collect/ImmutableList;

    iput-object p2, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodProtoReference;->returnType:Ljava/lang/String;

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/reference/MethodProtoReference;)Lorg/jf/dexlib2/immutable/reference/ImmutableMethodProtoReference;
    .registers 3
    .param p0    # Lorg/jf/dexlib2/iface/reference/MethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodProtoReference;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodProtoReference;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodProtoReference;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/reference/MethodProtoReference;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/reference/MethodProtoReference;->getReturnType()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodProtoReference;-><init>(Ljava/lang/Iterable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getParameterTypes()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodProtoReference;->parameters:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodProtoReference;->returnType:Ljava/lang/String;

    return-object v0
.end method
