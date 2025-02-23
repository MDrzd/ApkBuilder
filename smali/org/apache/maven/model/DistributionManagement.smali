.class public Lorg/apache/maven/model/DistributionManagement;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/maven/model/InputLocationTracker;


# instance fields
.field private downloadUrl:Ljava/lang/String;

.field private locations:Ljava/util/Map;

.field private relocation:Lorg/apache/maven/model/Relocation;

.field private repository:Lorg/apache/maven/model/DeploymentRepository;

.field private site:Lorg/apache/maven/model/Site;

.field private snapshotRepository:Lorg/apache/maven/model/DeploymentRepository;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/DistributionManagement;->clone()Lorg/apache/maven/model/DistributionManagement;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/maven/model/DistributionManagement;
    .registers 5

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/DistributionManagement;

    iget-object v1, p0, Lorg/apache/maven/model/DistributionManagement;->repository:Lorg/apache/maven/model/DeploymentRepository;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/maven/model/DistributionManagement;->repository:Lorg/apache/maven/model/DeploymentRepository;

    invoke-virtual {v1}, Lorg/apache/maven/model/DeploymentRepository;->clone()Lorg/apache/maven/model/DeploymentRepository;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/DistributionManagement;->repository:Lorg/apache/maven/model/DeploymentRepository;

    :cond_0
    iget-object v1, p0, Lorg/apache/maven/model/DistributionManagement;->snapshotRepository:Lorg/apache/maven/model/DeploymentRepository;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/maven/model/DistributionManagement;->snapshotRepository:Lorg/apache/maven/model/DeploymentRepository;

    invoke-virtual {v1}, Lorg/apache/maven/model/DeploymentRepository;->clone()Lorg/apache/maven/model/DeploymentRepository;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/DistributionManagement;->snapshotRepository:Lorg/apache/maven/model/DeploymentRepository;

    :cond_1
    iget-object v1, p0, Lorg/apache/maven/model/DistributionManagement;->site:Lorg/apache/maven/model/Site;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/maven/model/DistributionManagement;->site:Lorg/apache/maven/model/Site;

    invoke-virtual {v1}, Lorg/apache/maven/model/Site;->clone()Lorg/apache/maven/model/Site;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/DistributionManagement;->site:Lorg/apache/maven/model/Site;

    :cond_2
    iget-object v1, p0, Lorg/apache/maven/model/DistributionManagement;->relocation:Lorg/apache/maven/model/Relocation;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/maven/model/DistributionManagement;->relocation:Lorg/apache/maven/model/Relocation;

    invoke-virtual {v1}, Lorg/apache/maven/model/Relocation;->clone()Lorg/apache/maven/model/Relocation;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/DistributionManagement;->relocation:Lorg/apache/maven/model/Relocation;

    :cond_3
    iget-object v1, v0, Lorg/apache/maven/model/DistributionManagement;->locations:Ljava/util/Map;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lorg/apache/maven/model/DistributionManagement;->locations:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lorg/apache/maven/model/DistributionManagement;->locations:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
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

.method public getDownloadUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/DistributionManagement;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;
    .registers 3

    iget-object v0, p0, Lorg/apache/maven/model/DistributionManagement;->locations:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/maven/model/DistributionManagement;->locations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/maven/model/InputLocation;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRelocation()Lorg/apache/maven/model/Relocation;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/DistributionManagement;->relocation:Lorg/apache/maven/model/Relocation;

    return-object v0
.end method

.method public getRepository()Lorg/apache/maven/model/DeploymentRepository;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/DistributionManagement;->repository:Lorg/apache/maven/model/DeploymentRepository;

    return-object v0
.end method

.method public getSite()Lorg/apache/maven/model/Site;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/DistributionManagement;->site:Lorg/apache/maven/model/Site;

    return-object v0
.end method

.method public getSnapshotRepository()Lorg/apache/maven/model/DeploymentRepository;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/DistributionManagement;->snapshotRepository:Lorg/apache/maven/model/DeploymentRepository;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/DistributionManagement;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/DistributionManagement;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V
    .registers 4

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/maven/model/DistributionManagement;->locations:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/DistributionManagement;->locations:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/DistributionManagement;->locations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public setRelocation(Lorg/apache/maven/model/Relocation;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/DistributionManagement;->relocation:Lorg/apache/maven/model/Relocation;

    return-void
.end method

.method public setRepository(Lorg/apache/maven/model/DeploymentRepository;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/DistributionManagement;->repository:Lorg/apache/maven/model/DeploymentRepository;

    return-void
.end method

.method public setSite(Lorg/apache/maven/model/Site;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/DistributionManagement;->site:Lorg/apache/maven/model/Site;

    return-void
.end method

.method public setSnapshotRepository(Lorg/apache/maven/model/DeploymentRepository;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/DistributionManagement;->snapshotRepository:Lorg/apache/maven/model/DeploymentRepository;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/DistributionManagement;->status:Ljava/lang/String;

    return-void
.end method
