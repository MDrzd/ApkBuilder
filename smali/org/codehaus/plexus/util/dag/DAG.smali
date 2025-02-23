.class public Lorg/codehaus/plexus/util/dag/DAG;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private vertexList:Ljava/util/List;

.field private vertexMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/dag/DAG;->vertexMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/dag/DAG;->vertexList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addEdge(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/dag/DAG;->addVertex(Ljava/lang/String;)Lorg/codehaus/plexus/util/dag/Vertex;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/codehaus/plexus/util/dag/DAG;->addVertex(Ljava/lang/String;)Lorg/codehaus/plexus/util/dag/Vertex;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/plexus/util/dag/DAG;->addEdge(Lorg/codehaus/plexus/util/dag/Vertex;Lorg/codehaus/plexus/util/dag/Vertex;)V

    return-void
.end method

.method public addEdge(Lorg/codehaus/plexus/util/dag/Vertex;Lorg/codehaus/plexus/util/dag/Vertex;)V
    .registers 6

    invoke-virtual {p1, p2}, Lorg/codehaus/plexus/util/dag/Vertex;->addEdgeTo(Lorg/codehaus/plexus/util/dag/Vertex;)V

    invoke-virtual {p2, p1}, Lorg/codehaus/plexus/util/dag/Vertex;->addEdgeFrom(Lorg/codehaus/plexus/util/dag/Vertex;)V

    invoke-static {p2}, Lorg/codehaus/plexus/util/dag/CycleDetector;->introducesCycle(Lorg/codehaus/plexus/util/dag/Vertex;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/plexus/util/dag/DAG;->removeEdge(Lorg/codehaus/plexus/util/dag/Vertex;Lorg/codehaus/plexus/util/dag/Vertex;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Edge between \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' and \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' introduces to cycle in the graph"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/codehaus/plexus/util/dag/CycleDetectedException;

    invoke-direct {p2, p1, v0}, Lorg/codehaus/plexus/util/dag/CycleDetectedException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p2
.end method

.method public addVertex(Ljava/lang/String;)Lorg/codehaus/plexus/util/dag/Vertex;
    .registers 4

    iget-object v0, p0, Lorg/codehaus/plexus/util/dag/DAG;->vertexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/dag/DAG;->vertexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codehaus/plexus/util/dag/Vertex;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/codehaus/plexus/util/dag/Vertex;

    invoke-direct {v0, p1}, Lorg/codehaus/plexus/util/dag/Vertex;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/plexus/util/dag/DAG;->vertexMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/codehaus/plexus/util/dag/DAG;->vertexList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildLabels(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/dag/DAG;->getVertex(Ljava/lang/String;)Lorg/codehaus/plexus/util/dag/Vertex;

    move-result-object p1

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/dag/Vertex;->getChildLabels()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLabels()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/dag/DAG;->vertexMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getParentLabels(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/dag/DAG;->getVertex(Ljava/lang/String;)Lorg/codehaus/plexus/util/dag/Vertex;

    move-result-object p1

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/dag/Vertex;->getParentLabels()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSuccessorLabels(Ljava/lang/String;)Ljava/util/List;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/dag/DAG;->getVertex(Ljava/lang/String;)Lorg/codehaus/plexus/util/dag/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/plexus/util/dag/Vertex;->isLeaf()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/codehaus/plexus/util/dag/TopologicalSorter;->sort(Lorg/codehaus/plexus/util/dag/Vertex;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getVertex(Ljava/lang/String;)Lorg/codehaus/plexus/util/dag/Vertex;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/dag/DAG;->vertexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codehaus/plexus/util/dag/Vertex;

    return-object p1
.end method

.method public getVertices()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/dag/DAG;->vertexList:Ljava/util/List;

    return-object v0
.end method

.method public getVerticies()Ljava/util/List;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/dag/DAG;->getVertices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasEdge(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/dag/DAG;->getVertex(Ljava/lang/String;)Lorg/codehaus/plexus/util/dag/Vertex;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/codehaus/plexus/util/dag/DAG;->getVertex(Ljava/lang/String;)Lorg/codehaus/plexus/util/dag/Vertex;

    move-result-object p2

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/dag/Vertex;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isConnected(Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/dag/DAG;->getVertex(Ljava/lang/String;)Lorg/codehaus/plexus/util/dag/Vertex;

    move-result-object p1

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/dag/Vertex;->isConnected()Z

    move-result p1

    return p1
.end method

.method public removeEdge(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/dag/DAG;->addVertex(Ljava/lang/String;)Lorg/codehaus/plexus/util/dag/Vertex;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/codehaus/plexus/util/dag/DAG;->addVertex(Ljava/lang/String;)Lorg/codehaus/plexus/util/dag/Vertex;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/plexus/util/dag/DAG;->removeEdge(Lorg/codehaus/plexus/util/dag/Vertex;Lorg/codehaus/plexus/util/dag/Vertex;)V

    return-void
.end method

.method public removeEdge(Lorg/codehaus/plexus/util/dag/Vertex;Lorg/codehaus/plexus/util/dag/Vertex;)V
    .registers 3

    invoke-virtual {p1, p2}, Lorg/codehaus/plexus/util/dag/Vertex;->removeEdgeTo(Lorg/codehaus/plexus/util/dag/Vertex;)V

    invoke-virtual {p2, p1}, Lorg/codehaus/plexus/util/dag/Vertex;->removeEdgeFrom(Lorg/codehaus/plexus/util/dag/Vertex;)V

    return-void
.end method
