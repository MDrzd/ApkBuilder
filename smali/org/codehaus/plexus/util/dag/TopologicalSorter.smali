.class public Lorg/codehaus/plexus/util/dag/TopologicalSorter;
.super Ljava/lang/Object;


# static fields
.field private static final NOT_VISITED:Ljava/lang/Integer;

.field private static final VISITED:Ljava/lang/Integer;

.field private static final VISITING:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/dag/TopologicalSorter;->NOT_VISITED:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/dag/TopologicalSorter;->VISITING:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/dag/TopologicalSorter;->VISITED:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dfs(Lorg/codehaus/plexus/util/dag/DAG;)Ljava/util/List;
    .registers 5

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/dag/DAG;->getVertices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/plexus/util/dag/Vertex;

    invoke-static {v2, v1}, Lorg/codehaus/plexus/util/dag/TopologicalSorter;->isNotVisited(Lorg/codehaus/plexus/util/dag/Vertex;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, v1, v0}, Lorg/codehaus/plexus/util/dag/TopologicalSorter;->dfsVisit(Lorg/codehaus/plexus/util/dag/Vertex;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static dfsVisit(Lorg/codehaus/plexus/util/dag/Vertex;Ljava/util/Map;Ljava/util/List;)V
    .registers 6

    sget-object v0, Lorg/codehaus/plexus/util/dag/TopologicalSorter;->VISITING:Ljava/lang/Integer;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/dag/Vertex;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/plexus/util/dag/Vertex;

    invoke-static {v1, p1}, Lorg/codehaus/plexus/util/dag/TopologicalSorter;->isNotVisited(Lorg/codehaus/plexus/util/dag/Vertex;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, p1, p2}, Lorg/codehaus/plexus/util/dag/TopologicalSorter;->dfsVisit(Lorg/codehaus/plexus/util/dag/Vertex;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/codehaus/plexus/util/dag/TopologicalSorter;->VISITED:Ljava/lang/Integer;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/dag/Vertex;->getLabel()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static isNotVisited(Lorg/codehaus/plexus/util/dag/Vertex;Ljava/util/Map;)Z
    .registers 2

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    sget-object p1, Lorg/codehaus/plexus/util/dag/TopologicalSorter;->NOT_VISITED:Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static sort(Lorg/codehaus/plexus/util/dag/DAG;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lorg/codehaus/plexus/util/dag/TopologicalSorter;->dfs(Lorg/codehaus/plexus/util/dag/DAG;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static sort(Lorg/codehaus/plexus/util/dag/Vertex;)Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v1, v0}, Lorg/codehaus/plexus/util/dag/TopologicalSorter;->dfsVisit(Lorg/codehaus/plexus/util/dag/Vertex;Ljava/util/Map;Ljava/util/List;)V

    return-object v0
.end method
