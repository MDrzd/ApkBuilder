.class public Lorg/apache/maven/model/Plugin;
.super Lorg/apache/maven/model/ConfigurationContainer;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private artifactId:Ljava/lang/String;

.field private dependencies:Ljava/util/List;

.field private executionMap:Ljava/util/Map;

.field private executions:Ljava/util/List;

.field private extensions:Ljava/lang/String;

.field private goals:Ljava/lang/Object;

.field private groupId:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/maven/model/ConfigurationContainer;-><init>()V

    const-string v0, "org.apache.maven.plugins"

    iput-object v0, p0, Lorg/apache/maven/model/Plugin;->groupId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/maven/model/Plugin;->executionMap:Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/maven/model/Plugin;->key:Ljava/lang/String;

    return-void
.end method

.method public static constructKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addDependency(Lorg/apache/maven/model/Dependency;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Plugin;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addExecution(Lorg/apache/maven/model/PluginExecution;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Plugin;->getExecutions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Plugin;->clone()Lorg/apache/maven/model/Plugin;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/maven/model/ConfigurationContainer;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Plugin;->clone()Lorg/apache/maven/model/Plugin;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/maven/model/Plugin;
    .registers 5

    :try_start_0
    invoke-super {p0}, Lorg/apache/maven/model/ConfigurationContainer;->clone()Lorg/apache/maven/model/ConfigurationContainer;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/Plugin;

    iget-object v1, p0, Lorg/apache/maven/model/Plugin;->executions:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/Plugin;->executions:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/maven/model/Plugin;->executions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/maven/model/PluginExecution;

    iget-object v3, v0, Lorg/apache/maven/model/Plugin;->executions:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/maven/model/PluginExecution;->clone()Lorg/apache/maven/model/PluginExecution;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/maven/model/Plugin;->dependencies:Ljava/util/List;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/Plugin;->dependencies:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/maven/model/Plugin;->dependencies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/maven/model/Dependency;

    iget-object v3, v0, Lorg/apache/maven/model/Plugin;->dependencies:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/maven/model/Dependency;->clone()Lorg/apache/maven/model/Dependency;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/maven/model/Plugin;->goals:Ljava/lang/Object;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    iget-object v2, p0, Lorg/apache/maven/model/Plugin;->goals:Ljava/lang/Object;

    check-cast v2, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    invoke-direct {v1, v2}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;-><init>(Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    iput-object v1, v0, Lorg/apache/maven/model/Plugin;->goals:Ljava/lang/Object;
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

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lorg/apache/maven/model/Plugin;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/maven/model/Plugin;

    invoke-virtual {p0}, Lorg/apache/maven/model/Plugin;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public flushExecutionMap()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/maven/model/Plugin;->executionMap:Ljava/util/Map;

    return-void
.end method

.method public getArtifactId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Plugin;->artifactId:Ljava/lang/String;

    return-object v0
.end method

.method public getDependencies()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Plugin;->dependencies:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/Plugin;->dependencies:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/Plugin;->dependencies:Ljava/util/List;

    return-object v0
.end method

.method public getExecutions()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Plugin;->executions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/Plugin;->executions:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/Plugin;->executions:Ljava/util/List;

    return-object v0
.end method

.method public getExecutionsAsMap()Ljava/util/Map;
    .registers 5

    iget-object v0, p0, Lorg/apache/maven/model/Plugin;->executionMap:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/Plugin;->executionMap:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/maven/model/Plugin;->getExecutions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/maven/model/Plugin;->getExecutions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/PluginExecution;

    iget-object v2, p0, Lorg/apache/maven/model/Plugin;->executionMap:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/maven/model/PluginExecution;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/maven/model/Plugin;->executionMap:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/maven/model/PluginExecution;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "You cannot have two plugin executions with the same (or missing) <id/> elements.\nOffending execution\n\nId: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/maven/model/PluginExecution;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'\nPlugin:\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/maven/model/Plugin;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'\n\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/maven/model/Plugin;->executionMap:Ljava/util/Map;

    return-object v0
.end method

.method public getExtensions()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Plugin;->extensions:Ljava/lang/String;

    return-object v0
.end method

.method public getGoals()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Plugin;->goals:Ljava/lang/Object;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Plugin;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/maven/model/Plugin;->getGroupId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "[unknown-group-id]"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/maven/model/Plugin;->getGroupId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/maven/model/Plugin;->getArtifactId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "[unknown-artifact-id]"

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/maven/model/Plugin;->getArtifactId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/maven/model/Plugin;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "[unknown-version]"

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/maven/model/Plugin;->getVersion()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/maven/model/Plugin;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/maven/model/Plugin;->groupId:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/maven/model/Plugin;->artifactId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/maven/model/Plugin;->constructKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/maven/model/Plugin;->key:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/Plugin;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Plugin;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Plugin;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isExtensions()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Plugin;->extensions:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/maven/model/Plugin;->extensions:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeDependency(Lorg/apache/maven/model/Dependency;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Plugin;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeExecution(Lorg/apache/maven/model/PluginExecution;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Plugin;->getExecutions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setArtifactId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Plugin;->artifactId:Ljava/lang/String;

    return-void
.end method

.method public setDependencies(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Plugin;->dependencies:Ljava/util/List;

    return-void
.end method

.method public setExecutions(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Plugin;->executions:Ljava/util/List;

    return-void
.end method

.method public setExtensions(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Plugin;->extensions:Ljava/lang/String;

    return-void
.end method

.method public setExtensions(Z)V
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/maven/model/Plugin;->extensions:Ljava/lang/String;

    return-void
.end method

.method public setGoals(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Plugin;->goals:Ljava/lang/Object;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Plugin;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Plugin;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Plugin ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/maven/model/Plugin;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
