.class Lcom/google/common/collect/MapConstraints$ConstrainedEntrySet;
.super Lcom/google/common/collect/MapConstraints$ConstrainedEntries;

# interfaces
.implements Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;-><init>(Ljava/util/Collection;Lcom/google/common/collect/MapConstraint;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
