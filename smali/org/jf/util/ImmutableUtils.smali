.class public Lorg/jf/util/ImmutableUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nullToEmptyList(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .registers 1
    .param p0    # Lcom/google/common/collect/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static nullToEmptySet(Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableSet;
    .registers 1
    .param p0    # Lcom/google/common/collect/ImmutableSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static nullToEmptySortedSet(Lcom/google/common/collect/ImmutableSortedSet;)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 1
    .param p0    # Lcom/google/common/collect/ImmutableSortedSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->of()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    :cond_0
    return-object p0
.end method
