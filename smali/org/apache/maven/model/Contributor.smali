.class public Lorg/apache/maven/model/Contributor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/maven/model/InputLocationTracker;


# instance fields
.field private email:Ljava/lang/String;

.field private locations:Ljava/util/Map;

.field private name:Ljava/lang/String;

.field private organization:Ljava/lang/String;

.field private organizationUrl:Ljava/lang/String;

.field private properties:Ljava/util/Properties;

.field private roles:Ljava/util/List;

.field private timezone:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/maven/model/Contributor;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addRole(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Contributor;->getRoles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Contributor;->clone()Lorg/apache/maven/model/Contributor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/maven/model/Contributor;
    .registers 5

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/Contributor;

    iget-object v1, p0, Lorg/apache/maven/model/Contributor;->roles:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/Contributor;->roles:Ljava/util/List;

    iget-object v1, v0, Lorg/apache/maven/model/Contributor;->roles:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/maven/model/Contributor;->roles:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lorg/apache/maven/model/Contributor;->properties:Ljava/util/Properties;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/maven/model/Contributor;->properties:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    iput-object v1, v0, Lorg/apache/maven/model/Contributor;->properties:Ljava/util/Properties;

    :cond_1
    iget-object v1, v0, Lorg/apache/maven/model/Contributor;->locations:Ljava/util/Map;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lorg/apache/maven/model/Contributor;->locations:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lorg/apache/maven/model/Contributor;->locations:Ljava/util/Map;
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

.method public getEmail()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Contributor;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;
    .registers 3

    iget-object v0, p0, Lorg/apache/maven/model/Contributor;->locations:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/maven/model/Contributor;->locations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/maven/model/InputLocation;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Contributor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganization()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Contributor;->organization:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizationUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Contributor;->organizationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Contributor;->properties:Ljava/util/Properties;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/Contributor;->properties:Ljava/util/Properties;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/Contributor;->properties:Ljava/util/Properties;

    return-object v0
.end method

.method public getRoles()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Contributor;->roles:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/Contributor;->roles:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/Contributor;->roles:Ljava/util/List;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Contributor;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Contributor;->url:Ljava/lang/String;

    return-object v0
.end method

.method public removeRole(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Contributor;->getRoles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Contributor;->email:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V
    .registers 4

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/maven/model/Contributor;->locations:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/Contributor;->locations:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/Contributor;->locations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Contributor;->name:Ljava/lang/String;

    return-void
.end method

.method public setOrganization(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Contributor;->organization:Ljava/lang/String;

    return-void
.end method

.method public setOrganizationUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Contributor;->organizationUrl:Ljava/lang/String;

    return-void
.end method

.method public setProperties(Ljava/util/Properties;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Contributor;->properties:Ljava/util/Properties;

    return-void
.end method

.method public setRoles(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Contributor;->roles:Ljava/util/List;

    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Contributor;->timezone:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Contributor;->url:Ljava/lang/String;

    return-void
.end method
