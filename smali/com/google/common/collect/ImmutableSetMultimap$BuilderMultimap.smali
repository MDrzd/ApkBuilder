.class Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;
.super Lcom/google/common/collect/AbstractMapBasedMultimap;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>()V
    .registers 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method createCollection()Ljava/util/Collection;
    .registers 2

    invoke-static {}, Lcom/google/common/collect/Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method
