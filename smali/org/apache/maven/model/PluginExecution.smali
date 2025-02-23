.class public Lorg/apache/maven/model/PluginExecution;
.super Lorg/apache/maven/model/ConfigurationContainer;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT_EXECUTION_ID:Ljava/lang/String; = "default"


# instance fields
.field private goals:Ljava/util/List;

.field private id:Ljava/lang/String;

.field private phase:Ljava/lang/String;

.field private priority:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/maven/model/ConfigurationContainer;-><init>()V

    const-string v0, "default"

    iput-object v0, p0, Lorg/apache/maven/model/PluginExecution;->id:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/maven/model/PluginExecution;->priority:I

    return-void
.end method


# virtual methods
.method public addGoal(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/PluginExecution;->getGoals()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/PluginExecution;->clone()Lorg/apache/maven/model/PluginExecution;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/maven/model/ConfigurationContainer;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/PluginExecution;->clone()Lorg/apache/maven/model/PluginExecution;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/maven/model/PluginExecution;
    .registers 5

    :try_start_0
    invoke-super {p0}, Lorg/apache/maven/model/ConfigurationContainer;->clone()Lorg/apache/maven/model/ConfigurationContainer;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/PluginExecution;

    iget-object v1, p0, Lorg/apache/maven/model/PluginExecution;->goals:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/PluginExecution;->goals:Ljava/util/List;

    iget-object v1, v0, Lorg/apache/maven/model/PluginExecution;->goals:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/maven/model/PluginExecution;->goals:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
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

.method public getGoals()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/PluginExecution;->goals:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/PluginExecution;->goals:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/PluginExecution;->goals:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/PluginExecution;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPhase()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/PluginExecution;->phase:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    iget v0, p0, Lorg/apache/maven/model/PluginExecution;->priority:I

    return v0
.end method

.method public removeGoal(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/PluginExecution;->getGoals()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setGoals(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/PluginExecution;->goals:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/PluginExecution;->id:Ljava/lang/String;

    return-void
.end method

.method public setPhase(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/PluginExecution;->phase:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .registers 2

    iput p1, p0, Lorg/apache/maven/model/PluginExecution;->priority:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/PluginExecution;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
