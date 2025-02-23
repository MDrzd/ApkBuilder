.class public Lorg/apache/maven/model/Build;
.super Lorg/apache/maven/model/BuildBase;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private extensions:Ljava/util/List;

.field private outputDirectory:Ljava/lang/String;

.field private scriptSourceDirectory:Ljava/lang/String;

.field private sourceDirectory:Ljava/lang/String;

.field private testOutputDirectory:Ljava/lang/String;

.field private testSourceDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/maven/model/BuildBase;-><init>()V

    return-void
.end method


# virtual methods
.method public addExtension(Lorg/apache/maven/model/Extension;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Build;->getExtensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Build;->clone()Lorg/apache/maven/model/Build;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/maven/model/Build;
    .registers 5

    :try_start_0
    invoke-super {p0}, Lorg/apache/maven/model/BuildBase;->clone()Lorg/apache/maven/model/BuildBase;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/Build;

    iget-object v1, p0, Lorg/apache/maven/model/Build;->extensions:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/Build;->extensions:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/maven/model/Build;->extensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/maven/model/Extension;

    iget-object v3, v0, Lorg/apache/maven/model/Build;->extensions:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/maven/model/Extension;->clone()Lorg/apache/maven/model/Extension;

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

.method public bridge synthetic clone()Lorg/apache/maven/model/BuildBase;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Build;->clone()Lorg/apache/maven/model/Build;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/maven/model/PluginConfiguration;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Build;->clone()Lorg/apache/maven/model/Build;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/maven/model/PluginContainer;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Build;->clone()Lorg/apache/maven/model/Build;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Build;->extensions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/Build;->extensions:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/Build;->extensions:Ljava/util/List;

    return-object v0
.end method

.method public getOutputDirectory()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Build;->outputDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptSourceDirectory()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Build;->scriptSourceDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceDirectory()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Build;->sourceDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getTestOutputDirectory()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Build;->testOutputDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getTestSourceDirectory()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Build;->testSourceDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public removeExtension(Lorg/apache/maven/model/Extension;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Build;->getExtensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExtensions(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Build;->extensions:Ljava/util/List;

    return-void
.end method

.method public setOutputDirectory(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Build;->outputDirectory:Ljava/lang/String;

    return-void
.end method

.method public setScriptSourceDirectory(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Build;->scriptSourceDirectory:Ljava/lang/String;

    return-void
.end method

.method public setSourceDirectory(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Build;->sourceDirectory:Ljava/lang/String;

    return-void
.end method

.method public setTestOutputDirectory(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Build;->testOutputDirectory:Ljava/lang/String;

    return-void
.end method

.method public setTestSourceDirectory(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Build;->testSourceDirectory:Ljava/lang/String;

    return-void
.end method
