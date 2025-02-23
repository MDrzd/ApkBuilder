.class public Lorg/apache/maven/model/Resource;
.super Lorg/apache/maven/model/FileSet;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static mergeIdCounter:I


# instance fields
.field private filtering:Ljava/lang/String;

.field private mergeId:Ljava/lang/String;

.field private targetPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/maven/model/FileSet;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Resource;->clone()Lorg/apache/maven/model/Resource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/maven/model/FileSet;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Resource;->clone()Lorg/apache/maven/model/Resource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/maven/model/PatternSet;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Resource;->clone()Lorg/apache/maven/model/Resource;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/maven/model/Resource;
    .registers 5

    :try_start_0
    invoke-super {p0}, Lorg/apache/maven/model/FileSet;->clone()Lorg/apache/maven/model/FileSet;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/Resource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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

.method public getFiltering()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Resource;->filtering:Ljava/lang/String;

    return-object v0
.end method

.method public getMergeId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Resource;->mergeId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Resource;->targetPath:Ljava/lang/String;

    return-object v0
.end method

.method public initMergeId()V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/maven/model/Resource;->getMergeId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resource-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/apache/maven/model/Resource;->mergeIdCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lorg/apache/maven/model/Resource;->mergeIdCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/maven/model/Resource;->setMergeId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isFiltering()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Resource;->filtering:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/maven/model/Resource;->filtering:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setFiltering(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Resource;->filtering:Ljava/lang/String;

    return-void
.end method

.method public setFiltering(Z)V
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/maven/model/Resource;->filtering:Ljava/lang/String;

    return-void
.end method

.method public setMergeId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Resource;->mergeId:Ljava/lang/String;

    return-void
.end method

.method public setTargetPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Resource;->targetPath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resource {targetPath: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/maven/model/Resource;->getTargetPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filtering: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/maven/model/Resource;->isFiltering()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/apache/maven/model/FileSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
