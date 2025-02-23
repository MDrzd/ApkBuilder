.class public Lorg/jf/dexlib2/immutable/reference/ImmutableTypeReference;
.super Lorg/jf/dexlib2/base/reference/BaseTypeReference;

# interfaces
.implements Lorg/jf/dexlib2/immutable/reference/ImmutableReference;


# static fields
.field private static final CONVERTER:Lorg/jf/util/ImmutableConverter;


# instance fields
.field protected final type:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/immutable/reference/ImmutableTypeReference$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/immutable/reference/ImmutableTypeReference$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/immutable/reference/ImmutableTypeReference;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseTypeReference;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableTypeReference;->type:Ljava/lang/String;

    return-void
.end method

.method public static immutableListOf(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .param p0    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    sget-object v0, Lorg/jf/dexlib2/immutable/reference/ImmutableTypeReference;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lorg/jf/util/ImmutableConverter;->toList(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/jf/dexlib2/iface/reference/TypeReference;)Lorg/jf/dexlib2/immutable/reference/ImmutableTypeReference;
    .registers 2
    .param p0    # Lorg/jf/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableTypeReference;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/reference/ImmutableTypeReference;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/reference/ImmutableTypeReference;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/reference/ImmutableTypeReference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableTypeReference;->type:Ljava/lang/String;

    return-object v0
.end method
