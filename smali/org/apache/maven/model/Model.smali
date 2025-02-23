.class public Lorg/apache/maven/model/Model;
.super Lorg/apache/maven/model/ModelBase;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private artifactId:Ljava/lang/String;

.field private build:Lorg/apache/maven/model/Build;

.field private ciManagement:Lorg/apache/maven/model/CiManagement;

.field private contributors:Ljava/util/List;

.field private description:Ljava/lang/String;

.field private developers:Ljava/util/List;

.field private groupId:Ljava/lang/String;

.field private inceptionYear:Ljava/lang/String;

.field private issueManagement:Lorg/apache/maven/model/IssueManagement;

.field private licenses:Ljava/util/List;

.field private mailingLists:Ljava/util/List;

.field private modelEncoding:Ljava/lang/String;

.field private modelVersion:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private organization:Lorg/apache/maven/model/Organization;

.field private packaging:Ljava/lang/String;

.field private parent:Lorg/apache/maven/model/Parent;

.field private pomFile:Ljava/io/File;

.field private prerequisites:Lorg/apache/maven/model/Prerequisites;

.field private profiles:Ljava/util/List;

.field private scm:Lorg/apache/maven/model/Scm;

.field private url:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/maven/model/ModelBase;-><init>()V

    const-string v0, "jar"

    iput-object v0, p0, Lorg/apache/maven/model/Model;->packaging:Ljava/lang/String;

    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/apache/maven/model/Model;->modelEncoding:Ljava/lang/String;

    return-void
.end method

.method private cloneHook(Lorg/apache/maven/model/Model;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/maven/model/Model;->pomFile:Ljava/io/File;

    iput-object v0, p1, Lorg/apache/maven/model/Model;->pomFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public addContributor(Lorg/apache/maven/model/Contributor;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Model;->getContributors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDeveloper(Lorg/apache/maven/model/Developer;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Model;->getDevelopers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLicense(Lorg/apache/maven/model/License;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Model;->getLicenses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMailingList(Lorg/apache/maven/model/MailingList;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Model;->getMailingLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addProfile(Lorg/apache/maven/model/Profile;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Model;->getProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Model;->clone()Lorg/apache/maven/model/Model;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/maven/model/Model;
    .registers 5

    :try_start_0
    invoke-super {p0}, Lorg/apache/maven/model/ModelBase;->clone()Lorg/apache/maven/model/ModelBase;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/Model;

    iget-object v1, p0, Lorg/apache/maven/model/Model;->parent:Lorg/apache/maven/model/Parent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/maven/model/Model;->parent:Lorg/apache/maven/model/Parent;

    invoke-virtual {v1}, Lorg/apache/maven/model/Parent;->clone()Lorg/apache/maven/model/Parent;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/Model;->parent:Lorg/apache/maven/model/Parent;

    :cond_0
    iget-object v1, p0, Lorg/apache/maven/model/Model;->organization:Lorg/apache/maven/model/Organization;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/maven/model/Model;->organization:Lorg/apache/maven/model/Organization;

    invoke-virtual {v1}, Lorg/apache/maven/model/Organization;->clone()Lorg/apache/maven/model/Organization;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/Model;->organization:Lorg/apache/maven/model/Organization;

    :cond_1
    iget-object v1, p0, Lorg/apache/maven/model/Model;->licenses:Ljava/util/List;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/Model;->licenses:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/maven/model/Model;->licenses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/maven/model/License;

    iget-object v3, v0, Lorg/apache/maven/model/Model;->licenses:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/maven/model/License;->clone()Lorg/apache/maven/model/License;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/maven/model/Model;->developers:Ljava/util/List;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/Model;->developers:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/maven/model/Model;->developers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/maven/model/Developer;

    iget-object v3, v0, Lorg/apache/maven/model/Model;->developers:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/maven/model/Developer;->clone()Lorg/apache/maven/model/Developer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/apache/maven/model/Model;->contributors:Ljava/util/List;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/Model;->contributors:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/maven/model/Model;->contributors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/maven/model/Contributor;

    iget-object v3, v0, Lorg/apache/maven/model/Model;->contributors:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/maven/model/Contributor;->clone()Lorg/apache/maven/model/Contributor;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/apache/maven/model/Model;->mailingLists:Ljava/util/List;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/Model;->mailingLists:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/maven/model/Model;->mailingLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/maven/model/MailingList;

    iget-object v3, v0, Lorg/apache/maven/model/Model;->mailingLists:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/maven/model/MailingList;->clone()Lorg/apache/maven/model/MailingList;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lorg/apache/maven/model/Model;->prerequisites:Lorg/apache/maven/model/Prerequisites;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/apache/maven/model/Model;->prerequisites:Lorg/apache/maven/model/Prerequisites;

    invoke-virtual {v1}, Lorg/apache/maven/model/Prerequisites;->clone()Lorg/apache/maven/model/Prerequisites;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/Model;->prerequisites:Lorg/apache/maven/model/Prerequisites;

    :cond_6
    iget-object v1, p0, Lorg/apache/maven/model/Model;->scm:Lorg/apache/maven/model/Scm;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/maven/model/Model;->scm:Lorg/apache/maven/model/Scm;

    invoke-virtual {v1}, Lorg/apache/maven/model/Scm;->clone()Lorg/apache/maven/model/Scm;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/Model;->scm:Lorg/apache/maven/model/Scm;

    :cond_7
    iget-object v1, p0, Lorg/apache/maven/model/Model;->issueManagement:Lorg/apache/maven/model/IssueManagement;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/apache/maven/model/Model;->issueManagement:Lorg/apache/maven/model/IssueManagement;

    invoke-virtual {v1}, Lorg/apache/maven/model/IssueManagement;->clone()Lorg/apache/maven/model/IssueManagement;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/Model;->issueManagement:Lorg/apache/maven/model/IssueManagement;

    :cond_8
    iget-object v1, p0, Lorg/apache/maven/model/Model;->ciManagement:Lorg/apache/maven/model/CiManagement;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/apache/maven/model/Model;->ciManagement:Lorg/apache/maven/model/CiManagement;

    invoke-virtual {v1}, Lorg/apache/maven/model/CiManagement;->clone()Lorg/apache/maven/model/CiManagement;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/Model;->ciManagement:Lorg/apache/maven/model/CiManagement;

    :cond_9
    iget-object v1, p0, Lorg/apache/maven/model/Model;->build:Lorg/apache/maven/model/Build;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/apache/maven/model/Model;->build:Lorg/apache/maven/model/Build;

    invoke-virtual {v1}, Lorg/apache/maven/model/Build;->clone()Lorg/apache/maven/model/Build;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/Model;->build:Lorg/apache/maven/model/Build;

    :cond_a
    iget-object v1, p0, Lorg/apache/maven/model/Model;->profiles:Ljava/util/List;

    if-eqz v1, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/maven/model/Model;->profiles:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/maven/model/Model;->profiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/maven/model/Profile;

    iget-object v3, v0, Lorg/apache/maven/model/Model;->profiles:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/maven/model/Profile;->clone()Lorg/apache/maven/model/Profile;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-direct {p0, v0}, Lorg/apache/maven/model/Model;->cloneHook(Lorg/apache/maven/model/Model;)V
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

.method public bridge synthetic clone()Lorg/apache/maven/model/ModelBase;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Model;->clone()Lorg/apache/maven/model/Model;

    move-result-object v0

    return-object v0
.end method

.method public getArtifactId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->artifactId:Ljava/lang/String;

    return-object v0
.end method

.method public getBuild()Lorg/apache/maven/model/Build;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->build:Lorg/apache/maven/model/Build;

    return-object v0
.end method

.method public getCiManagement()Lorg/apache/maven/model/CiManagement;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->ciManagement:Lorg/apache/maven/model/CiManagement;

    return-object v0
.end method

.method public getContributors()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->contributors:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/Model;->contributors:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/Model;->contributors:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDevelopers()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->developers:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/Model;->developers:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/Model;->developers:Ljava/util/List;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/maven/model/Model;->getGroupId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "[inherited]"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/maven/model/Model;->getGroupId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/maven/model/Model;->getArtifactId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/maven/model/Model;->getPackaging()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/maven/model/Model;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "[inherited]"

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/maven/model/Model;->getVersion()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInceptionYear()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->inceptionYear:Ljava/lang/String;

    return-object v0
.end method

.method public getIssueManagement()Lorg/apache/maven/model/IssueManagement;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->issueManagement:Lorg/apache/maven/model/IssueManagement;

    return-object v0
.end method

.method public getLicenses()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->licenses:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/Model;->licenses:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/Model;->licenses:Ljava/util/List;

    return-object v0
.end method

.method public getMailingLists()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->mailingLists:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/Model;->mailingLists:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/Model;->mailingLists:Ljava/util/List;

    return-object v0
.end method

.method public getModelEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->modelEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getModelVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->modelVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganization()Lorg/apache/maven/model/Organization;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->organization:Lorg/apache/maven/model/Organization;

    return-object v0
.end method

.method public getPackaging()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->packaging:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lorg/apache/maven/model/Parent;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->parent:Lorg/apache/maven/model/Parent;

    return-object v0
.end method

.method public getPomFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->pomFile:Ljava/io/File;

    return-object v0
.end method

.method public getPrerequisites()Lorg/apache/maven/model/Prerequisites;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->prerequisites:Lorg/apache/maven/model/Prerequisites;

    return-object v0
.end method

.method public getProfiles()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->profiles:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/Model;->profiles:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/Model;->profiles:Ljava/util/List;

    return-object v0
.end method

.method public getProjectDirectory()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->pomFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/maven/model/Model;->pomFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScm()Lorg/apache/maven/model/Scm;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->scm:Lorg/apache/maven/model/Scm;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Model;->version:Ljava/lang/String;

    return-object v0
.end method

.method public removeContributor(Lorg/apache/maven/model/Contributor;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Model;->getContributors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDeveloper(Lorg/apache/maven/model/Developer;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Model;->getDevelopers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeLicense(Lorg/apache/maven/model/License;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Model;->getLicenses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMailingList(Lorg/apache/maven/model/MailingList;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Model;->getMailingLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeProfile(Lorg/apache/maven/model/Profile;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/maven/model/Model;->getProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setArtifactId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->artifactId:Ljava/lang/String;

    return-void
.end method

.method public setBuild(Lorg/apache/maven/model/Build;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->build:Lorg/apache/maven/model/Build;

    return-void
.end method

.method public setCiManagement(Lorg/apache/maven/model/CiManagement;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->ciManagement:Lorg/apache/maven/model/CiManagement;

    return-void
.end method

.method public setContributors(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->contributors:Ljava/util/List;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->description:Ljava/lang/String;

    return-void
.end method

.method public setDevelopers(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->developers:Ljava/util/List;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setInceptionYear(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->inceptionYear:Ljava/lang/String;

    return-void
.end method

.method public setIssueManagement(Lorg/apache/maven/model/IssueManagement;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->issueManagement:Lorg/apache/maven/model/IssueManagement;

    return-void
.end method

.method public setLicenses(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->licenses:Ljava/util/List;

    return-void
.end method

.method public setMailingLists(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->mailingLists:Ljava/util/List;

    return-void
.end method

.method public setModelEncoding(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->modelEncoding:Ljava/lang/String;

    return-void
.end method

.method public setModelVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->modelVersion:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->name:Ljava/lang/String;

    return-void
.end method

.method public setOrganization(Lorg/apache/maven/model/Organization;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->organization:Lorg/apache/maven/model/Organization;

    return-void
.end method

.method public setPackaging(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->packaging:Ljava/lang/String;

    return-void
.end method

.method public setParent(Lorg/apache/maven/model/Parent;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->parent:Lorg/apache/maven/model/Parent;

    return-void
.end method

.method public setPomFile(Ljava/io/File;)V
    .registers 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/maven/model/Model;->pomFile:Ljava/io/File;

    return-void
.end method

.method public setPrerequisites(Lorg/apache/maven/model/Prerequisites;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->prerequisites:Lorg/apache/maven/model/Prerequisites;

    return-void
.end method

.method public setProfiles(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->profiles:Ljava/util/List;

    return-void
.end method

.method public setScm(Lorg/apache/maven/model/Scm;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->scm:Lorg/apache/maven/model/Scm;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->url:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Model;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Model;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
