.class final Lcom/google/common/collect/Maps$NavigableAsMapView;
.super Lcom/google/common/collect/AbstractNavigableMap;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "NavigableMap"
.end annotation


# instance fields
.field private final function:Lcom/google/common/base/Function;

.field private final set:Ljava/util/NavigableSet;


# direct methods
.method constructor <init>(Ljava/util/NavigableSet;Lcom/google/common/base/Function;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/collect/AbstractNavigableMap;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/NavigableSet;

    iput-object p1, p0, Lcom/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Function;

    iput-object p1, p0, Lcom/google/common/collect/Maps$NavigableAsMapView;->function:Lcom/google/common/base/Function;

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->clear()V

    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method final descendingEntryIterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$NavigableAsMapView;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final descendingMap()Ljava/util/NavigableMap;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$NavigableAsMapView;->function:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/NavigableSet;Lcom/google/common/base/Function;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method final entryIterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    iget-object v1, p0, Lcom/google/common/collect/Maps$NavigableAsMapView;->function:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->asMapEntryIterator(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-static {v0, p1}, Lcom/google/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$NavigableAsMapView;->function:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/Maps$NavigableAsMapView;->function:Lcom/google/common/base/Function;

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/NavigableSet;Lcom/google/common/base/Function;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public final navigableKeySet()Ljava/util/NavigableSet;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$400(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->size()I

    move-result v0

    return v0
.end method

.method public final subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 6

    iget-object v0, p0, Lcom/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/Maps$NavigableAsMapView;->function:Lcom/google/common/base/Function;

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/NavigableSet;Lcom/google/common/base/Function;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public final tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/Maps$NavigableAsMapView;->function:Lcom/google/common/base/Function;

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/NavigableSet;Lcom/google/common/base/Function;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method
