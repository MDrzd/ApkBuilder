.class public Lorg/apache/maven/model/Dependency;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/maven/model/InputLocationTracker;


# instance fields
.field private artifactId:Ljava/lang/String;

.field private classifier:Ljava/lang/String;

.field private exclusions:Ljava/util/List;

.field private groupId:Ljava/lang/String;

.field private locations:Ljava/util/Map;

.field private managementKey:Ljava/lang/String;

.field private optional:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private systemPath:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "jar"

    iput-object v0, p0, Lorg/apache/maven/model/Dependency;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addExclusion(Lorg/apache/maven/model/Exclusion;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Dependency;->getExclusions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Dependency;->clone()Lorg/apache/maven/model/Dependency;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/maven/model/Dependency;
    .registers 5

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/Dependency;

    iget-object v1, p0, Lorg/apache/maven/model/Dependency;->exclusions:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/Dependency;->exclusions:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/maven/model/Dependency;->exclusions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/maven/model/Exclusion;

    iget-object v3, v0, Lorg/apache/maven/model/Dependency;->exclusions:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/maven/model/Exclusion;->clone()Lorg/apache/maven/model/Exclusion;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/apache/maven/model/Dependency;->locations:Ljava/util/Map;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lorg/apache/maven/model/Dependency;->locations:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lorg/apache/maven/model/Dependency;->locations:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
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

.method public getArtifactId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Dependency;->artifactId:Ljava/lang/String;

    return-object v0
.end method

.method public getClassifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Dependency;->classifier:Ljava/lang/String;

    return-object v0
.end method

.method public getExclusions()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Dependency;->exclusions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/Dependency;->exclusions:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/Dependency;->exclusions:Ljava/util/List;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Dependency;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;
    .registers 3

    iget-object v0, p0, Lorg/apache/maven/model/Dependency;->locations:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/maven/model/Dependency;->locations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/maven/model/InputLocation;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getManagementKey()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/apache/maven/model/Dependency;->managementKey:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/maven/model/Dependency;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/maven/model/Dependency;->artifactId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/maven/model/Dependency;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/maven/model/Dependency;->classifier:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/maven/model/Dependency;->classifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/maven/model/Dependency;->managementKey:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lorg/apache/maven/model/Dependency;->managementKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOptional()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Dependency;->optional:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Dependency;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Dependency;->systemPath:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Dependency;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Dependency;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isOptional()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Dependency;->optional:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/maven/model/Dependency;->optional:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeExclusion(Lorg/apache/maven/model/Exclusion;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Dependency;->getExclusions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setArtifactId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Dependency;->artifactId:Ljava/lang/String;

    return-void
.end method

.method public setClassifier(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Dependency;->classifier:Ljava/lang/String;

    return-void
.end method

.method public setExclusions(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Dependency;->exclusions:Ljava/util/List;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Dependency;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V
    .registers 4

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/maven/model/Dependency;->locations:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/Dependency;->locations:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/Dependency;->locations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public setOptional(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Dependency;->optional:Ljava/lang/String;

    return-void
.end method

.method public setOptional(Z)V
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/maven/model/Dependency;->optional:Ljava/lang/String;

    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Dependency;->scope:Ljava/lang/String;

    return-void
.end method

.method public setSystemPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Dependency;->systemPath:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Dependency;->type:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Dependency;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dependency {groupId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/maven/model/Dependency;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", artifactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/maven/model/Dependency;->artifactId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/maven/model/Dependency;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/maven/model/Dependency;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
