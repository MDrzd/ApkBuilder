.class public Lorg/apache/maven/model/Parent;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/maven/model/InputLocationTracker;


# instance fields
.field private artifactId:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private locations:Ljava/util/Map;

.field private relativePath:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "../pom.xml"

    iput-object v0, p0, Lorg/apache/maven/model/Parent;->relativePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Parent;->clone()Lorg/apache/maven/model/Parent;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/maven/model/Parent;
    .registers 5

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/Parent;

    iget-object v1, v0, Lorg/apache/maven/model/Parent;->locations:Ljava/util/Map;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lorg/apache/maven/model/Parent;->locations:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lorg/apache/maven/model/Parent;->locations:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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

.method public getArtifactId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Parent;->artifactId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Parent;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/maven/model/Parent;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/maven/model/Parent;->getArtifactId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/maven/model/Parent;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;
    .registers 3

    iget-object v0, p0, Lorg/apache/maven/model/Parent;->locations:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/maven/model/Parent;->locations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/maven/model/InputLocation;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRelativePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Parent;->relativePath:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Parent;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setArtifactId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Parent;->artifactId:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Parent;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V
    .registers 4

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/maven/model/Parent;->locations:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/Parent;->locations:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/Parent;->locations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public setRelativePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Parent;->relativePath:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Parent;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Parent;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
