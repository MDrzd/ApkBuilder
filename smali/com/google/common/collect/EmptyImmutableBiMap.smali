.class final Lcom/google/common/collect/EmptyImmutableBiMap;
.super Lcom/google/common/collect/ImmutableBiMap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/collect/EmptyImmutableBiMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/collect/EmptyImmutableBiMap;

    invoke-direct {v0}, Lcom/google/common/collect/EmptyImmutableBiMap;-><init>()V

    sput-object v0, Lcom/google/common/collect/EmptyImmutableBiMap;->INSTANCE:Lcom/google/common/collect/EmptyImmutableBiMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final asMultimap()Lcom/google/common/collect/ImmutableSetMultimap;
    .registers 2

    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->of()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method final createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 3

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final entrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableBiMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public final inverse()Lcom/google/common/collect/ImmutableBiMap;
    .registers 1

    return-object p0
.end method

.method public final isEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final isPartialView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableBiMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method final readResolve()Ljava/lang/Object;
    .registers 2

    sget-object v0, Lcom/google/common/collect/EmptyImmutableBiMap;->INSTANCE:Lcom/google/common/collect/EmptyImmutableBiMap;

    return-object v0
.end method

.method public final size()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
