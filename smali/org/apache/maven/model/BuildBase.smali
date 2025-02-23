.class public Lorg/apache/maven/model/BuildBase;
.super Lorg/apache/maven/model/PluginConfiguration;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private defaultGoal:Ljava/lang/String;

.field private directory:Ljava/lang/String;

.field private filters:Ljava/util/List;

.field private finalName:Ljava/lang/String;

.field private resources:Ljava/util/List;

.field private testResources:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/maven/model/PluginConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/BuildBase;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addResource(Lorg/apache/maven/model/Resource;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/BuildBase;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTestResource(Lorg/apache/maven/model/Resource;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/BuildBase;->getTestResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/BuildBase;->clone()Lorg/apache/maven/model/BuildBase;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/maven/model/BuildBase;
    .registers 5

    :try_start_0
    invoke-super {p0}, Lorg/apache/maven/model/PluginConfiguration;->clone()Lorg/apache/maven/model/PluginConfiguration;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/BuildBase;

    iget-object v1, p0, Lorg/apache/maven/model/BuildBase;->resources:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/BuildBase;->resources:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/maven/model/BuildBase;->resources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/maven/model/Resource;

    iget-object v3, v0, Lorg/apache/maven/model/BuildBase;->resources:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/maven/model/Resource;->clone()Lorg/apache/maven/model/Resource;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/maven/model/BuildBase;->testResources:Ljava/util/List;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/BuildBase;->testResources:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/maven/model/BuildBase;->testResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/maven/model/Resource;

    iget-object v3, v0, Lorg/apache/maven/model/BuildBase;->testResources:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/maven/model/Resource;->clone()Lorg/apache/maven/model/Resource;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/maven/model/BuildBase;->filters:Ljava/util/List;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/BuildBase;->filters:Ljava/util/List;

    iget-object v1, v0, Lorg/apache/maven/model/BuildBase;->filters:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/maven/model/BuildBase;->filters:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not support clone()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/UnsupportedOperationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method

.method public bridge synthetic clone()Lorg/apache/maven/model/PluginConfiguration;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/BuildBase;->clone()Lorg/apache/maven/model/BuildBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/maven/model/PluginContainer;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/BuildBase;->clone()Lorg/apache/maven/model/BuildBase;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultGoal()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/BuildBase;->defaultGoal:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectory()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/BuildBase;->directory:Ljava/lang/String;

    return-object v0
.end method

.method public getFilters()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/BuildBase;->filters:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/BuildBase;->filters:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/BuildBase;->filters:Ljava/util/List;

    return-object v0
.end method

.method public getFinalName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/BuildBase;->finalName:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/BuildBase;->resources:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/BuildBase;->resources:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/BuildBase;->resources:Ljava/util/List;

    return-object v0
.end method

.method public getTestResources()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/BuildBase;->testResources:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/BuildBase;->testResources:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/BuildBase;->testResources:Ljava/util/List;

    return-object v0
.end method

.method public removeFilter(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/BuildBase;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeResource(Lorg/apache/maven/model/Resource;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/BuildBase;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTestResource(Lorg/apache/maven/model/Resource;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/BuildBase;->getTestResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDefaultGoal(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/BuildBase;->defaultGoal:Ljava/lang/String;

    return-void
.end method

.method public setDirectory(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/BuildBase;->directory:Ljava/lang/String;

    return-void
.end method

.method public setFilters(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/BuildBase;->filters:Ljava/util/List;

    return-void
.end method

.method public setFinalName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/BuildBase;->finalName:Ljava/lang/String;

    return-void
.end method

.method public setResources(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/BuildBase;->resources:Ljava/util/List;

    return-void
.end method

.method public setTestResources(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/BuildBase;->testResources:Ljava/util/List;

    return-void
.end method
