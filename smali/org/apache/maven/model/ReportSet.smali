.class public Lorg/apache/maven/model/ReportSet;
.super Lorg/apache/maven/model/ConfigurationContainer;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private id:Ljava/lang/String;

.field private reports:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/maven/model/ConfigurationContainer;-><init>()V

    const-string v0, "default"

    iput-object v0, p0, Lorg/apache/maven/model/ReportSet;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addReport(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/ReportSet;->getReports()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/ReportSet;->clone()Lorg/apache/maven/model/ReportSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/maven/model/ConfigurationContainer;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/ReportSet;->clone()Lorg/apache/maven/model/ReportSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/maven/model/ReportSet;
    .registers 5

    :try_start_0
    invoke-super {p0}, Lorg/apache/maven/model/ConfigurationContainer;->clone()Lorg/apache/maven/model/ConfigurationContainer;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/ReportSet;

    iget-object v1, p0, Lorg/apache/maven/model/ReportSet;->reports:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/ReportSet;->reports:Ljava/util/List;

    iget-object v1, v0, Lorg/apache/maven/model/ReportSet;->reports:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/maven/model/ReportSet;->reports:Ljava/util/List;

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

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/ReportSet;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getReports()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/ReportSet;->reports:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/ReportSet;->reports:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/ReportSet;->reports:Ljava/util/List;

    return-object v0
.end method

.method public removeReport(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/ReportSet;->getReports()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/ReportSet;->id:Ljava/lang/String;

    return-void
.end method

.method public setReports(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/ReportSet;->reports:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/ReportSet;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
