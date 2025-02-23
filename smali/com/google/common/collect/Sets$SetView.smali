.class public abstract Lcom/google/common/collect/Sets$SetView;
.super Ljava/util/AbstractSet;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Sets$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/collect/Sets$SetView;-><init>()V

    return-void
.end method


# virtual methods
.method public copyInto(Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public immutableCopy()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
