.class public Lorg/apache/maven/model/ConfigurationContainer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/maven/model/InputLocationTracker;


# instance fields
.field private configuration:Ljava/lang/Object;

.field private inheritanceApplied:Z

.field private inherited:Ljava/lang/String;

.field private locations:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/maven/model/ConfigurationContainer;->inheritanceApplied:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/ConfigurationContainer;->clone()Lorg/apache/maven/model/ConfigurationContainer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/maven/model/ConfigurationContainer;
    .registers 5

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/ConfigurationContainer;

    iget-object v1, p0, Lorg/apache/maven/model/ConfigurationContainer;->configuration:Ljava/lang/Object;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    iget-object v2, p0, Lorg/apache/maven/model/ConfigurationContainer;->configuration:Ljava/lang/Object;

    check-cast v2, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    invoke-direct {v1, v2}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;-><init>(Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    iput-object v1, v0, Lorg/apache/maven/model/ConfigurationContainer;->configuration:Ljava/lang/Object;

    :cond_0
    iget-object v1, v0, Lorg/apache/maven/model/ConfigurationContainer;->locations:Ljava/util/Map;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lorg/apache/maven/model/ConfigurationContainer;->locations:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lorg/apache/maven/model/ConfigurationContainer;->locations:Ljava/util/Map;
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

.method public getConfiguration()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/ConfigurationContainer;->configuration:Ljava/lang/Object;

    return-object v0
.end method

.method public getInherited()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/ConfigurationContainer;->inherited:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;
    .registers 3

    iget-object v0, p0, Lorg/apache/maven/model/ConfigurationContainer;->locations:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/maven/model/ConfigurationContainer;->locations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/maven/model/InputLocation;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isInheritanceApplied()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/maven/model/ConfigurationContainer;->inheritanceApplied:Z

    return v0
.end method

.method public isInherited()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/ConfigurationContainer;->inherited:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/maven/model/ConfigurationContainer;->inherited:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setConfiguration(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/ConfigurationContainer;->configuration:Ljava/lang/Object;

    return-void
.end method

.method public setInherited(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/ConfigurationContainer;->inherited:Ljava/lang/String;

    return-void
.end method

.method public setInherited(Z)V
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/maven/model/ConfigurationContainer;->inherited:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V
    .registers 4

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/maven/model/ConfigurationContainer;->locations:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/ConfigurationContainer;->locations:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/ConfigurationContainer;->locations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public unsetInheritanceApplied()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/maven/model/ConfigurationContainer;->inheritanceApplied:Z

    return-void
.end method
