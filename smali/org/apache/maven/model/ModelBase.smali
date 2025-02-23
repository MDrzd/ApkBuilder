.class public Lorg/apache/maven/model/ModelBase;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/maven/model/InputLocationTracker;


# instance fields
.field private dependencies:Ljava/util/List;

.field private dependencyManagement:Lorg/apache/maven/model/DependencyManagement;

.field private distributionManagement:Lorg/apache/maven/model/DistributionManagement;

.field private locations:Ljava/util/Map;

.field private modules:Ljava/util/List;

.field private pluginRepositories:Ljava/util/List;

.field private properties:Ljava/util/Properties;

.field private reporting:Lorg/apache/maven/model/Reporting;

.field private reports:Ljava/lang/Object;

.field private repositories:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDependency(Lorg/apache/maven/model/Dependency;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/ModelBase;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addModule(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/ModelBase;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPluginRepository(Lorg/apache/maven/model/Repository;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/ModelBase;->getPluginRepositories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/maven/model/ModelBase;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addRepository(Lorg/apache/maven/model/Repository;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/ModelBase;->getRepositories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/ModelBase;->clone()Lorg/apache/maven/model/ModelBase;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/maven/model/ModelBase;
    .registers 5

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/ModelBase;

    iget-object v1, p0, Lorg/apache/maven/model/ModelBase;->modules:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/ModelBase;->modules:Ljava/util/List;

    iget-object v1, v0, Lorg/apache/maven/model/ModelBase;->modules:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/maven/model/ModelBase;->modules:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lorg/apache/maven/model/ModelBase;->distributionManagement:Lorg/apache/maven/model/DistributionManagement;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/maven/model/ModelBase;->distributionManagement:Lorg/apache/maven/model/DistributionManagement;

    invoke-virtual {v1}, Lorg/apache/maven/model/DistributionManagement;->clone()Lorg/apache/maven/model/DistributionManagement;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/ModelBase;->distributionManagement:Lorg/apache/maven/model/DistributionManagement;

    :cond_1
    iget-object v1, p0, Lorg/apache/maven/model/ModelBase;->properties:Ljava/util/Properties;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/maven/model/ModelBase;->properties:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    iput-object v1, v0, Lorg/apache/maven/model/ModelBase;->properties:Ljava/util/Properties;

    :cond_2
    iget-object v1, p0, Lorg/apache/maven/model/ModelBase;->dependencyManagement:Lorg/apache/maven/model/DependencyManagement;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/maven/model/ModelBase;->dependencyManagement:Lorg/apache/maven/model/DependencyManagement;

    invoke-virtual {v1}, Lorg/apache/maven/model/DependencyManagement;->clone()Lorg/apache/maven/model/DependencyManagement;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/ModelBase;->dependencyManagement:Lorg/apache/maven/model/DependencyManagement;

    :cond_3
    iget-object v1, p0, Lorg/apache/maven/model/ModelBase;->dependencies:Ljava/util/List;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/ModelBase;->dependencies:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/maven/model/ModelBase;->dependencies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/maven/model/Dependency;

    iget-object v3, v0, Lorg/apache/maven/model/ModelBase;->dependencies:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/maven/model/Dependency;->clone()Lorg/apache/maven/model/Dependency;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/apache/maven/model/ModelBase;->repositories:Ljava/util/List;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/ModelBase;->repositories:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/maven/model/ModelBase;->repositories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/maven/model/Repository;

    iget-object v3, v0, Lorg/apache/maven/model/ModelBase;->repositories:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/maven/model/Repository;->clone()Lorg/apache/maven/model/Repository;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/apache/maven/model/ModelBase;->pluginRepositories:Ljava/util/List;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/ModelBase;->pluginRepositories:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/maven/model/ModelBase;->pluginRepositories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/maven/model/Repository;

    iget-object v3, v0, Lorg/apache/maven/model/ModelBase;->pluginRepositories:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/maven/model/Repository;->clone()Lorg/apache/maven/model/Repository;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lorg/apache/maven/model/ModelBase;->reports:Ljava/lang/Object;

    if-eqz v1, :cond_7

    new-instance v1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    iget-object v2, p0, Lorg/apache/maven/model/ModelBase;->reports:Ljava/lang/Object;

    check-cast v2, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    invoke-direct {v1, v2}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;-><init>(Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    iput-object v1, v0, Lorg/apache/maven/model/ModelBase;->reports:Ljava/lang/Object;

    :cond_7
    iget-object v1, p0, Lorg/apache/maven/model/ModelBase;->reporting:Lorg/apache/maven/model/Reporting;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/apache/maven/model/ModelBase;->reporting:Lorg/apache/maven/model/Reporting;

    invoke-virtual {v1}, Lorg/apache/maven/model/Reporting;->clone()Lorg/apache/maven/model/Reporting;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/ModelBase;->reporting:Lorg/apache/maven/model/Reporting;

    :cond_8
    iget-object v1, v0, Lorg/apache/maven/model/ModelBase;->locations:Ljava/util/Map;

    if-eqz v1, :cond_9

    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lorg/apache/maven/model/ModelBase;->locations:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lorg/apache/maven/model/ModelBase;->locations:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
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

.method public getDependencies()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/ModelBase;->dependencies:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/ModelBase;->dependencies:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/ModelBase;->dependencies:Ljava/util/List;

    return-object v0
.end method

.method public getDependencyManagement()Lorg/apache/maven/model/DependencyManagement;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/ModelBase;->dependencyManagement:Lorg/apache/maven/model/DependencyManagement;

    return-object v0
.end method

.method public getDistributionManagement()Lorg/apache/maven/model/DistributionManagement;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/ModelBase;->distributionManagement:Lorg/apache/maven/model/DistributionManagement;

    return-object v0
.end method

.method public getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;
    .registers 3

    iget-object v0, p0, Lorg/apache/maven/model/ModelBase;->locations:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/maven/model/ModelBase;->locations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/maven/model/InputLocation;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getModules()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/ModelBase;->modules:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/ModelBase;->modules:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/ModelBase;->modules:Ljava/util/List;

    return-object v0
.end method

.method public getPluginRepositories()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/ModelBase;->pluginRepositories:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/ModelBase;->pluginRepositories:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/ModelBase;->pluginRepositories:Ljava/util/List;

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/ModelBase;->properties:Ljava/util/Properties;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/ModelBase;->properties:Ljava/util/Properties;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/ModelBase;->properties:Ljava/util/Properties;

    return-object v0
.end method

.method public getReporting()Lorg/apache/maven/model/Reporting;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/ModelBase;->reporting:Lorg/apache/maven/model/Reporting;

    return-object v0
.end method

.method public getReports()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/ModelBase;->reports:Ljava/lang/Object;

    return-object v0
.end method

.method public getRepositories()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/ModelBase;->repositories:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/ModelBase;->repositories:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/ModelBase;->repositories:Ljava/util/List;

    return-object v0
.end method

.method public removeDependency(Lorg/apache/maven/model/Dependency;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/ModelBase;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeModule(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/ModelBase;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePluginRepository(Lorg/apache/maven/model/Repository;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/ModelBase;->getPluginRepositories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeRepository(Lorg/apache/maven/model/Repository;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/ModelBase;->getRepositories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDependencies(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/ModelBase;->dependencies:Ljava/util/List;

    return-void
.end method

.method public setDependencyManagement(Lorg/apache/maven/model/DependencyManagement;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/ModelBase;->dependencyManagement:Lorg/apache/maven/model/DependencyManagement;

    return-void
.end method

.method public setDistributionManagement(Lorg/apache/maven/model/DistributionManagement;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/ModelBase;->distributionManagement:Lorg/apache/maven/model/DistributionManagement;

    return-void
.end method

.method public setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V
    .registers 4

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/maven/model/ModelBase;->locations:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/ModelBase;->locations:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/ModelBase;->locations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public setModules(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/ModelBase;->modules:Ljava/util/List;

    return-void
.end method

.method public setPluginRepositories(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/ModelBase;->pluginRepositories:Ljava/util/List;

    return-void
.end method

.method public setProperties(Ljava/util/Properties;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/ModelBase;->properties:Ljava/util/Properties;

    return-void
.end method

.method public setReporting(Lorg/apache/maven/model/Reporting;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/ModelBase;->reporting:Lorg/apache/maven/model/Reporting;

    return-void
.end method

.method public setReports(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/ModelBase;->reports:Ljava/lang/Object;

    return-void
.end method

.method public setRepositories(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/ModelBase;->repositories:Ljava/util/List;

    return-void
.end method
