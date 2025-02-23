.class public Lorg/codehaus/plexus/util/dag/CycleDetector;
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

    sput-object v0, Lorg/codehaus/plexus/util/dag/CycleDetector;->NOT_VISITED:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/dag/CycleDetector;->VISITING:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/dag/CycleDetector;->VISITED:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dfsVisit(Lorg/codehaus/plexus/util/dag/Vertex;Ljava/util/LinkedList;Ljava/util/Map;)Z
    .registers 7

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/dag/Vertex;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    sget-object v0, Lorg/codehaus/plexus/util/dag/CycleDetector;->VISITING:Ljava/lang/Integer;

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/dag/Vertex;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/plexus/util/dag/Vertex;

    invoke-static {v1, p2}, Lorg/codehaus/plexus/util/dag/CycleDetector;->isNotVisited(Lorg/codehaus/plexus/util/dag/Vertex;Ljava/util/Map;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-static {v1, p1, p2}, Lorg/codehaus/plexus/util/dag/CycleDetector;->dfsVisit(Lorg/codehaus/plexus/util/dag/Vertex;Ljava/util/LinkedList;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_1
    invoke-static {v1, p2}, Lorg/codehaus/plexus/util/dag/CycleDetector;->isVisiting(Lorg/codehaus/plexus/util/dag/Vertex;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/codehaus/plexus/util/dag/Vertex;->getLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return v3

    :cond_2
    sget-object v0, Lorg/codehaus/plexus/util/dag/CycleDetector;->VISITED:Ljava/lang/Integer;

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public static hasCycle(Lorg/codehaus/plexus/util/dag/DAG;)Ljava/util/List;
    .registers 5

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/dag/DAG;->getVertices()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/plexus/util/dag/Vertex;

    invoke-static {v2, v0}, Lorg/codehaus/plexus/util/dag/CycleDetector;->isNotVisited(Lorg/codehaus/plexus/util/dag/Vertex;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, v0}, Lorg/codehaus/plexus/util/dag/CycleDetector;->introducesCycle(Lorg/codehaus/plexus/util/dag/Vertex;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static introducesCycle(Lorg/codehaus/plexus/util/dag/Vertex;)Ljava/util/List;
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lorg/codehaus/plexus/util/dag/CycleDetector;->introducesCycle(Lorg/codehaus/plexus/util/dag/Vertex;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static introducesCycle(Lorg/codehaus/plexus/util/dag/Vertex;Ljava/util/Map;)Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p0, v0, p1}, Lorg/codehaus/plexus/util/dag/CycleDetector;->dfsVisit(Lorg/codehaus/plexus/util/dag/Vertex;Ljava/util/LinkedList;Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, 0x0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p1, p0}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isNotVisited(Lorg/codehaus/plexus/util/dag/Vertex;Ljava/util/Map;)Z
    .registers 2

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    sget-object p1, Lorg/codehaus/plexus/util/dag/CycleDetector;->NOT_VISITED:Ljava/lang/Integer;

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

.method private static isVisiting(Lorg/codehaus/plexus/util/dag/Vertex;Ljava/util/Map;)Z
    .registers 2

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    sget-object p1, Lorg/codehaus/plexus/util/dag/CycleDetector;->VISITING:Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
