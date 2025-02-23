.class public Lorg/apache/maven/model/Repository;
.super Lorg/apache/maven/model/RepositoryBase;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private releases:Lorg/apache/maven/model/RepositoryPolicy;

.field private snapshots:Lorg/apache/maven/model/RepositoryPolicy;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/maven/model/RepositoryBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Repository;->clone()Lorg/apache/maven/model/Repository;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/maven/model/Repository;
    .registers 5

    :try_start_0
    invoke-super {p0}, Lorg/apache/maven/model/RepositoryBase;->clone()Lorg/apache/maven/model/RepositoryBase;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/Repository;

    iget-object v1, p0, Lorg/apache/maven/model/Repository;->releases:Lorg/apache/maven/model/RepositoryPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/maven/model/Repository;->releases:Lorg/apache/maven/model/RepositoryPolicy;

    invoke-virtual {v1}, Lorg/apache/maven/model/RepositoryPolicy;->clone()Lorg/apache/maven/model/RepositoryPolicy;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/Repository;->releases:Lorg/apache/maven/model/RepositoryPolicy;

    :cond_0
    iget-object v1, p0, Lorg/apache/maven/model/Repository;->snapshots:Lorg/apache/maven/model/RepositoryPolicy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/maven/model/Repository;->snapshots:Lorg/apache/maven/model/RepositoryPolicy;

    invoke-virtual {v1}, Lorg/apache/maven/model/RepositoryPolicy;->clone()Lorg/apache/maven/model/RepositoryPolicy;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/Repository;->snapshots:Lorg/apache/maven/model/RepositoryPolicy;
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

.method public bridge synthetic clone()Lorg/apache/maven/model/RepositoryBase;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Repository;->clone()Lorg/apache/maven/model/Repository;

    move-result-object v0

    return-object v0
.end method

.method public getReleases()Lorg/apache/maven/model/RepositoryPolicy;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Repository;->releases:Lorg/apache/maven/model/RepositoryPolicy;

    return-object v0
.end method

.method public getSnapshots()Lorg/apache/maven/model/RepositoryPolicy;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Repository;->snapshots:Lorg/apache/maven/model/RepositoryPolicy;

    return-object v0
.end method

.method public setReleases(Lorg/apache/maven/model/RepositoryPolicy;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Repository;->releases:Lorg/apache/maven/model/RepositoryPolicy;

    return-void
.end method

.method public setSnapshots(Lorg/apache/maven/model/RepositoryPolicy;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Repository;->snapshots:Lorg/apache/maven/model/RepositoryPolicy;

    return-void
.end method
