.class public Lorg/apache/maven/model/Activation;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/maven/model/InputLocationTracker;


# instance fields
.field private activeByDefault:Z

.field private file:Lorg/apache/maven/model/ActivationFile;

.field private jdk:Ljava/lang/String;

.field private locations:Ljava/util/Map;

.field private os:Lorg/apache/maven/model/ActivationOS;

.field private property:Lorg/apache/maven/model/ActivationProperty;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/maven/model/Activation;->activeByDefault:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Activation;->clone()Lorg/apache/maven/model/Activation;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/maven/model/Activation;
    .registers 5

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/Activation;

    iget-object v1, p0, Lorg/apache/maven/model/Activation;->os:Lorg/apache/maven/model/ActivationOS;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/maven/model/Activation;->os:Lorg/apache/maven/model/ActivationOS;

    invoke-virtual {v1}, Lorg/apache/maven/model/ActivationOS;->clone()Lorg/apache/maven/model/ActivationOS;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/Activation;->os:Lorg/apache/maven/model/ActivationOS;

    :cond_0
    iget-object v1, p0, Lorg/apache/maven/model/Activation;->property:Lorg/apache/maven/model/ActivationProperty;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/maven/model/Activation;->property:Lorg/apache/maven/model/ActivationProperty;

    invoke-virtual {v1}, Lorg/apache/maven/model/ActivationProperty;->clone()Lorg/apache/maven/model/ActivationProperty;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/Activation;->property:Lorg/apache/maven/model/ActivationProperty;

    :cond_1
    iget-object v1, p0, Lorg/apache/maven/model/Activation;->file:Lorg/apache/maven/model/ActivationFile;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/maven/model/Activation;->file:Lorg/apache/maven/model/ActivationFile;

    invoke-virtual {v1}, Lorg/apache/maven/model/ActivationFile;->clone()Lorg/apache/maven/model/ActivationFile;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/Activation;->file:Lorg/apache/maven/model/ActivationFile;

    :cond_2
    iget-object v1, v0, Lorg/apache/maven/model/Activation;->locations:Ljava/util/Map;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lorg/apache/maven/model/Activation;->locations:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lorg/apache/maven/model/Activation;->locations:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
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

.method public getFile()Lorg/apache/maven/model/ActivationFile;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Activation;->file:Lorg/apache/maven/model/ActivationFile;

    return-object v0
.end method

.method public getJdk()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Activation;->jdk:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;
    .registers 3

    iget-object v0, p0, Lorg/apache/maven/model/Activation;->locations:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/maven/model/Activation;->locations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/maven/model/InputLocation;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOs()Lorg/apache/maven/model/ActivationOS;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Activation;->os:Lorg/apache/maven/model/ActivationOS;

    return-object v0
.end method

.method public getProperty()Lorg/apache/maven/model/ActivationProperty;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Activation;->property:Lorg/apache/maven/model/ActivationProperty;

    return-object v0
.end method

.method public isActiveByDefault()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/maven/model/Activation;->activeByDefault:Z

    return v0
.end method

.method public setActiveByDefault(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/maven/model/Activation;->activeByDefault:Z

    return-void
.end method

.method public setFile(Lorg/apache/maven/model/ActivationFile;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Activation;->file:Lorg/apache/maven/model/ActivationFile;

    return-void
.end method

.method public setJdk(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Activation;->jdk:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V
    .registers 4

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/maven/model/Activation;->locations:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/Activation;->locations:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/Activation;->locations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public setOs(Lorg/apache/maven/model/ActivationOS;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Activation;->os:Lorg/apache/maven/model/ActivationOS;

    return-void
.end method

.method public setProperty(Lorg/apache/maven/model/ActivationProperty;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Activation;->property:Lorg/apache/maven/model/ActivationProperty;

    return-void
.end method
