.class public Lorg/codehaus/plexus/util/dag/Vertex;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field children:Ljava/util/List;

.field private label:Ljava/lang/String;

.field parents:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/plexus/util/dag/Vertex;->label:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/dag/Vertex;->children:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/dag/Vertex;->parents:Ljava/util/List;

    iput-object p1, p0, Lorg/codehaus/plexus/util/dag/Vertex;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addEdgeFrom(Lorg/codehaus/plexus/util/dag/Vertex;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/dag/Vertex;->parents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEdgeTo(Lorg/codehaus/plexus/util/dag/Vertex;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/dag/Vertex;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildLabels()Ljava/util/List;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/codehaus/plexus/util/dag/Vertex;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/codehaus/plexus/util/dag/Vertex;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/plexus/util/dag/Vertex;

    invoke-virtual {v2}, Lorg/codehaus/plexus/util/dag/Vertex;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/dag/Vertex;->children:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/dag/Vertex;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getParentLabels()Ljava/util/List;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/codehaus/plexus/util/dag/Vertex;->parents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/codehaus/plexus/util/dag/Vertex;->parents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/plexus/util/dag/Vertex;

    invoke-virtual {v2}, Lorg/codehaus/plexus/util/dag/Vertex;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getParents()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/dag/Vertex;->parents:Ljava/util/List;

    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/dag/Vertex;->isRoot()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/dag/Vertex;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLeaf()Z
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/dag/Vertex;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRoot()Z
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/dag/Vertex;->parents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeEdgeFrom(Lorg/codehaus/plexus/util/dag/Vertex;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/dag/Vertex;->parents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeEdgeTo(Lorg/codehaus/plexus/util/dag/Vertex;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/dag/Vertex;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Vertex{label=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/plexus/util/dag/Vertex;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
