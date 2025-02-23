.class public Lorg/apache/maven/model/ReportPlugin;
.super Lorg/apache/maven/model/ConfigurationContainer;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private artifactId:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private reportSetMap:Ljava/util/Map;

.field private reportSets:Ljava/util/List;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/maven/model/ConfigurationContainer;-><init>()V

    const-string v0, "org.apache.maven.plugins"

    iput-object v0, p0, Lorg/apache/maven/model/ReportPlugin;->groupId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/maven/model/ReportPlugin;->reportSetMap:Ljava/util/Map;

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
.method public addReportSet(Lorg/apache/maven/model/ReportSet;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/ReportPlugin;->getReportSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/ReportPlugin;->clone()Lorg/apache/maven/model/ReportPlugin;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/maven/model/ConfigurationContainer;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/ReportPlugin;->clone()Lorg/apache/maven/model/ReportPlugin;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/maven/model/ReportPlugin;
    .registers 5

    :try_start_0
    invoke-super {p0}, Lorg/apache/maven/model/ConfigurationContainer;->clone()Lorg/apache/maven/model/ConfigurationContainer;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/ReportPlugin;

    iget-object v1, p0, Lorg/apache/maven/model/ReportPlugin;->reportSets:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/ReportPlugin;->reportSets:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/maven/model/ReportPlugin;->reportSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/maven/model/ReportSet;

    iget-object v3, v0, Lorg/apache/maven/model/ReportPlugin;->reportSets:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/maven/model/ReportSet;->clone()Lorg/apache/maven/model/ReportSet;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
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

.method public flushReportSetMap()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/maven/model/ReportPlugin;->reportSetMap:Ljava/util/Map;

    return-void
.end method

.method public getArtifactId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/ReportPlugin;->artifactId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/ReportPlugin;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/maven/model/ReportPlugin;->groupId:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/maven/model/ReportPlugin;->artifactId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/maven/model/ReportPlugin;->constructKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReportSets()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/ReportPlugin;->reportSets:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/ReportPlugin;->reportSets:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/ReportPlugin;->reportSets:Ljava/util/List;

    return-object v0
.end method

.method public getReportSetsAsMap()Ljava/util/Map;
    .registers 5

    iget-object v0, p0, Lorg/apache/maven/model/ReportPlugin;->reportSetMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/ReportPlugin;->reportSetMap:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/maven/model/ReportPlugin;->getReportSets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/maven/model/ReportPlugin;->getReportSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/ReportSet;

    iget-object v2, p0, Lorg/apache/maven/model/ReportPlugin;->reportSetMap:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/maven/model/ReportSet;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/ReportPlugin;->reportSetMap:Ljava/util/Map;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/ReportPlugin;->version:Ljava/lang/String;

    return-object v0
.end method

.method public removeReportSet(Lorg/apache/maven/model/ReportSet;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/ReportPlugin;->getReportSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setArtifactId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/ReportPlugin;->artifactId:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/ReportPlugin;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setReportSets(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/ReportPlugin;->reportSets:Ljava/util/List;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/ReportPlugin;->version:Ljava/lang/String;

    return-void
.end method
