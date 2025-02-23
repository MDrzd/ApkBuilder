.class public Lorg/apache/maven/model/merge/ModelMerger;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContributorKey(Lorg/apache/maven/model/Contributor;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method protected getDependencyKey(Lorg/apache/maven/model/Dependency;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method protected getDeveloperKey(Lorg/apache/maven/model/Developer;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method protected getExclusionKey(Lorg/apache/maven/model/Exclusion;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method protected getExtensionKey(Lorg/apache/maven/model/Extension;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method protected getLicenseKey(Lorg/apache/maven/model/License;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method protected getMailingListKey(Lorg/apache/maven/model/MailingList;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method protected getNotifierKey(Lorg/apache/maven/model/Notifier;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method protected getPluginExecutionKey(Lorg/apache/maven/model/PluginExecution;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method protected getPluginKey(Lorg/apache/maven/model/Plugin;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method protected getProfileKey(Lorg/apache/maven/model/Profile;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method protected getReportPluginKey(Lorg/apache/maven/model/ReportPlugin;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method protected getReportSetKey(Lorg/apache/maven/model/ReportSet;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method protected getRepositoryBaseKey(Lorg/apache/maven/model/RepositoryBase;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method protected getRepositoryKey(Lorg/apache/maven/model/Repository;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/maven/model/merge/ModelMerger;->getRepositoryBaseKey(Lorg/apache/maven/model/RepositoryBase;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getResourceKey(Lorg/apache/maven/model/Resource;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method public merge(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 7

    const-string v0, "target cannot be null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p4, :cond_1

    invoke-interface {v0, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeActivation(Lorg/apache/maven/model/Activation;Lorg/apache/maven/model/Activation;ZLjava/util/Map;)V
    .registers 5

    return-void
.end method

.method protected mergeBuild(Lorg/apache/maven/model/Build;Lorg/apache/maven/model/Build;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeBuildBase(Lorg/apache/maven/model/BuildBase;Lorg/apache/maven/model/BuildBase;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeBuild_SourceDirectory(Lorg/apache/maven/model/Build;Lorg/apache/maven/model/Build;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeBuild_ScriptSourceDirectory(Lorg/apache/maven/model/Build;Lorg/apache/maven/model/Build;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeBuild_TestSourceDirectory(Lorg/apache/maven/model/Build;Lorg/apache/maven/model/Build;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeBuild_OutputDirectory(Lorg/apache/maven/model/Build;Lorg/apache/maven/model/Build;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeBuild_TestOutputDirectory(Lorg/apache/maven/model/Build;Lorg/apache/maven/model/Build;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeBuild_Extensions(Lorg/apache/maven/model/Build;Lorg/apache/maven/model/Build;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeBuildBase(Lorg/apache/maven/model/BuildBase;Lorg/apache/maven/model/BuildBase;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePluginConfiguration(Lorg/apache/maven/model/PluginConfiguration;Lorg/apache/maven/model/PluginConfiguration;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeBuildBase_DefaultGoal(Lorg/apache/maven/model/BuildBase;Lorg/apache/maven/model/BuildBase;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeBuildBase_FinalName(Lorg/apache/maven/model/BuildBase;Lorg/apache/maven/model/BuildBase;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeBuildBase_Directory(Lorg/apache/maven/model/BuildBase;Lorg/apache/maven/model/BuildBase;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeBuildBase_Resources(Lorg/apache/maven/model/BuildBase;Lorg/apache/maven/model/BuildBase;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeBuildBase_TestResources(Lorg/apache/maven/model/BuildBase;Lorg/apache/maven/model/BuildBase;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeBuildBase_Filters(Lorg/apache/maven/model/BuildBase;Lorg/apache/maven/model/BuildBase;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeBuildBase_DefaultGoal(Lorg/apache/maven/model/BuildBase;Lorg/apache/maven/model/BuildBase;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/BuildBase;->getDefaultGoal()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getDefaultGoal()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/BuildBase;->setDefaultGoal(Ljava/lang/String;)V

    const-string p3, "defaultGoal"

    const-string p4, "defaultGoal"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/BuildBase;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/BuildBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeBuildBase_Directory(Lorg/apache/maven/model/BuildBase;Lorg/apache/maven/model/BuildBase;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/BuildBase;->getDirectory()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getDirectory()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/BuildBase;->setDirectory(Ljava/lang/String;)V

    const-string p3, "directory"

    const-string p4, "directory"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/BuildBase;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/BuildBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeBuildBase_Filters(Lorg/apache/maven/model/BuildBase;Lorg/apache/maven/model/BuildBase;ZLjava/util/Map;)V
    .registers 7

    invoke-virtual {p2}, Lorg/apache/maven/model/BuildBase;->getFilters()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getFilters()Ljava/util/List;

    move-result-object p3

    new-instance p4, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, p4}, Lorg/apache/maven/model/BuildBase;->setFilters(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected mergeBuildBase_FinalName(Lorg/apache/maven/model/BuildBase;Lorg/apache/maven/model/BuildBase;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/BuildBase;->getFinalName()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getFinalName()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/BuildBase;->setFinalName(Ljava/lang/String;)V

    const-string p3, "finalName"

    const-string p4, "finalName"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/BuildBase;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/BuildBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeBuildBase_Resources(Lorg/apache/maven/model/BuildBase;Lorg/apache/maven/model/BuildBase;ZLjava/util/Map;)V
    .registers 8

    invoke-virtual {p2}, Lorg/apache/maven/model/BuildBase;->getResources()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getResources()Ljava/util/List;

    move-result-object p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Resource;

    invoke-virtual {p0, v1}, Lorg/apache/maven/model/merge/ModelMerger;->getResourceKey(Lorg/apache/maven/model/Resource;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/maven/model/Resource;

    invoke-virtual {p0, p4}, Lorg/apache/maven/model/merge/ModelMerger;->getResourceKey(Lorg/apache/maven/model/Resource;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/BuildBase;->setResources(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected mergeBuildBase_TestResources(Lorg/apache/maven/model/BuildBase;Lorg/apache/maven/model/BuildBase;ZLjava/util/Map;)V
    .registers 8

    invoke-virtual {p2}, Lorg/apache/maven/model/BuildBase;->getTestResources()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getTestResources()Ljava/util/List;

    move-result-object p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Resource;

    invoke-virtual {p0, v1}, Lorg/apache/maven/model/merge/ModelMerger;->getResourceKey(Lorg/apache/maven/model/Resource;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/maven/model/Resource;

    invoke-virtual {p0, p4}, Lorg/apache/maven/model/merge/ModelMerger;->getResourceKey(Lorg/apache/maven/model/Resource;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/BuildBase;->setTestResources(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected mergeBuild_Extensions(Lorg/apache/maven/model/Build;Lorg/apache/maven/model/Build;ZLjava/util/Map;)V
    .registers 8

    invoke-virtual {p2}, Lorg/apache/maven/model/Build;->getExtensions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getExtensions()Ljava/util/List;

    move-result-object p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Extension;

    invoke-virtual {p0, v1}, Lorg/apache/maven/model/merge/ModelMerger;->getExtensionKey(Lorg/apache/maven/model/Extension;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/maven/model/Extension;

    invoke-virtual {p0, p4}, Lorg/apache/maven/model/merge/ModelMerger;->getExtensionKey(Lorg/apache/maven/model/Extension;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/Build;->setExtensions(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected mergeBuild_OutputDirectory(Lorg/apache/maven/model/Build;Lorg/apache/maven/model/Build;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Build;->getOutputDirectory()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getOutputDirectory()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Build;->setOutputDirectory(Ljava/lang/String;)V

    const-string p3, "outputDirectory"

    const-string p4, "outputDirectory"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Build;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Build;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeBuild_ScriptSourceDirectory(Lorg/apache/maven/model/Build;Lorg/apache/maven/model/Build;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Build;->getScriptSourceDirectory()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getScriptSourceDirectory()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Build;->setScriptSourceDirectory(Ljava/lang/String;)V

    const-string p3, "scriptSourceDirectory"

    const-string p4, "scriptSourceDirectory"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Build;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Build;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeBuild_SourceDirectory(Lorg/apache/maven/model/Build;Lorg/apache/maven/model/Build;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Build;->getSourceDirectory()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getSourceDirectory()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Build;->setSourceDirectory(Ljava/lang/String;)V

    const-string p3, "sourceDirectory"

    const-string p4, "sourceDirectory"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Build;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Build;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeBuild_TestOutputDirectory(Lorg/apache/maven/model/Build;Lorg/apache/maven/model/Build;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Build;->getTestOutputDirectory()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getTestOutputDirectory()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Build;->setTestOutputDirectory(Ljava/lang/String;)V

    const-string p3, "testOutputDirectory"

    const-string p4, "testOutputDirectory"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Build;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Build;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeBuild_TestSourceDirectory(Lorg/apache/maven/model/Build;Lorg/apache/maven/model/Build;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Build;->getTestSourceDirectory()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getTestSourceDirectory()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Build;->setTestSourceDirectory(Ljava/lang/String;)V

    const-string p3, "testSourceDirectory"

    const-string p4, "testSourceDirectory"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Build;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Build;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeCiManagement(Lorg/apache/maven/model/CiManagement;Lorg/apache/maven/model/CiManagement;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeCiManagement_System(Lorg/apache/maven/model/CiManagement;Lorg/apache/maven/model/CiManagement;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeCiManagement_Url(Lorg/apache/maven/model/CiManagement;Lorg/apache/maven/model/CiManagement;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeCiManagement_Notifiers(Lorg/apache/maven/model/CiManagement;Lorg/apache/maven/model/CiManagement;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeCiManagement_Notifiers(Lorg/apache/maven/model/CiManagement;Lorg/apache/maven/model/CiManagement;ZLjava/util/Map;)V
    .registers 8

    invoke-virtual {p2}, Lorg/apache/maven/model/CiManagement;->getNotifiers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/CiManagement;->getNotifiers()Ljava/util/List;

    move-result-object p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Notifier;

    invoke-virtual {p0, v1}, Lorg/apache/maven/model/merge/ModelMerger;->getNotifierKey(Lorg/apache/maven/model/Notifier;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/maven/model/Notifier;

    invoke-virtual {p0, p4}, Lorg/apache/maven/model/merge/ModelMerger;->getNotifierKey(Lorg/apache/maven/model/Notifier;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/CiManagement;->setNotifiers(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected mergeCiManagement_System(Lorg/apache/maven/model/CiManagement;Lorg/apache/maven/model/CiManagement;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/CiManagement;->getSystem()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/CiManagement;->getSystem()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/CiManagement;->setSystem(Ljava/lang/String;)V

    const-string p3, "system"

    const-string p4, "system"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/CiManagement;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/CiManagement;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeCiManagement_Url(Lorg/apache/maven/model/CiManagement;Lorg/apache/maven/model/CiManagement;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/CiManagement;->getUrl()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/CiManagement;->getUrl()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/CiManagement;->setUrl(Ljava/lang/String;)V

    const-string p3, "url"

    const-string p4, "url"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/CiManagement;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/CiManagement;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeConfigurationContainer(Lorg/apache/maven/model/ConfigurationContainer;Lorg/apache/maven/model/ConfigurationContainer;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeConfigurationContainer_Inherited(Lorg/apache/maven/model/ConfigurationContainer;Lorg/apache/maven/model/ConfigurationContainer;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeConfigurationContainer_Configuration(Lorg/apache/maven/model/ConfigurationContainer;Lorg/apache/maven/model/ConfigurationContainer;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeConfigurationContainer_Configuration(Lorg/apache/maven/model/ConfigurationContainer;Lorg/apache/maven/model/ConfigurationContainer;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/ConfigurationContainer;->getConfiguration()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lorg/apache/maven/model/ConfigurationContainer;->getConfiguration()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    if-nez p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p4, p2}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->mergeXpp3Dom(Lorg/codehaus/plexus/util/xml/Xpp3Dom;Lorg/codehaus/plexus/util/xml/Xpp3Dom;)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p3, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    invoke-direct {p3, p2}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;-><init>(Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    invoke-static {p3, p4}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->mergeXpp3Dom(Lorg/codehaus/plexus/util/xml/Xpp3Dom;Lorg/codehaus/plexus/util/xml/Xpp3Dom;)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Lorg/apache/maven/model/ConfigurationContainer;->setConfiguration(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method protected mergeConfigurationContainer_Inherited(Lorg/apache/maven/model/ConfigurationContainer;Lorg/apache/maven/model/ConfigurationContainer;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/ConfigurationContainer;->getInherited()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/ConfigurationContainer;->getInherited()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/ConfigurationContainer;->setInherited(Ljava/lang/String;)V

    const-string p3, "inherited"

    const-string p4, "inherited"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/ConfigurationContainer;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/ConfigurationContainer;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeContributor(Lorg/apache/maven/model/Contributor;Lorg/apache/maven/model/Contributor;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeContributor_Name(Lorg/apache/maven/model/Contributor;Lorg/apache/maven/model/Contributor;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeContributor_Email(Lorg/apache/maven/model/Contributor;Lorg/apache/maven/model/Contributor;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeContributor_Url(Lorg/apache/maven/model/Contributor;Lorg/apache/maven/model/Contributor;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeContributor_Organization(Lorg/apache/maven/model/Contributor;Lorg/apache/maven/model/Contributor;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeContributor_OrganizationUrl(Lorg/apache/maven/model/Contributor;Lorg/apache/maven/model/Contributor;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeContributor_Timezone(Lorg/apache/maven/model/Contributor;Lorg/apache/maven/model/Contributor;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeContributor_Roles(Lorg/apache/maven/model/Contributor;Lorg/apache/maven/model/Contributor;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeContributor_Properties(Lorg/apache/maven/model/Contributor;Lorg/apache/maven/model/Contributor;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeContributor_Email(Lorg/apache/maven/model/Contributor;Lorg/apache/maven/model/Contributor;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Contributor;->getEmail()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getEmail()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Contributor;->setEmail(Ljava/lang/String;)V

    const-string p3, "email"

    const-string p4, "email"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Contributor;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Contributor;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeContributor_Name(Lorg/apache/maven/model/Contributor;Lorg/apache/maven/model/Contributor;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Contributor;->getName()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getName()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Contributor;->setName(Ljava/lang/String;)V

    const-string p3, "name"

    const-string p4, "name"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Contributor;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Contributor;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeContributor_Organization(Lorg/apache/maven/model/Contributor;Lorg/apache/maven/model/Contributor;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Contributor;->getOrganization()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getOrganization()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Contributor;->setOrganization(Ljava/lang/String;)V

    const-string p3, "organization"

    const-string p4, "organization"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Contributor;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Contributor;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeContributor_OrganizationUrl(Lorg/apache/maven/model/Contributor;Lorg/apache/maven/model/Contributor;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Contributor;->getOrganizationUrl()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getOrganizationUrl()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Contributor;->setOrganizationUrl(Ljava/lang/String;)V

    const-string p3, "organizationUrl"

    const-string p4, "organizationUrl"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Contributor;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Contributor;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeContributor_Properties(Lorg/apache/maven/model/Contributor;Lorg/apache/maven/model/Contributor;ZLjava/util/Map;)V
    .registers 7

    new-instance p4, Ljava/util/Properties;

    invoke-direct {p4}, Ljava/util/Properties;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    invoke-virtual {p2}, Lorg/apache/maven/model/Contributor;->getProperties()Ljava/util/Properties;

    move-result-object v0

    :goto_0
    invoke-virtual {p4, v0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lorg/apache/maven/model/Contributor;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getProperties()Ljava/util/Properties;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Contributor;->setProperties(Ljava/util/Properties;)V

    const-string p4, "properties"

    const-string v0, "properties"

    invoke-virtual {p1, v0}, Lorg/apache/maven/model/Contributor;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object v0

    const-string v1, "properties"

    invoke-virtual {p2, v1}, Lorg/apache/maven/model/Contributor;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-static {v0, p2, p3}, Lorg/apache/maven/model/InputLocation;->merge(Lorg/apache/maven/model/InputLocation;Lorg/apache/maven/model/InputLocation;Z)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lorg/apache/maven/model/Contributor;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    return-void
.end method

.method protected mergeContributor_Roles(Lorg/apache/maven/model/Contributor;Lorg/apache/maven/model/Contributor;ZLjava/util/Map;)V
    .registers 7

    invoke-virtual {p2}, Lorg/apache/maven/model/Contributor;->getRoles()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getRoles()Ljava/util/List;

    move-result-object p3

    new-instance p4, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Contributor;->setRoles(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected mergeContributor_Timezone(Lorg/apache/maven/model/Contributor;Lorg/apache/maven/model/Contributor;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Contributor;->getTimezone()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getTimezone()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Contributor;->setTimezone(Ljava/lang/String;)V

    const-string p3, "timezone"

    const-string p4, "timezone"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Contributor;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Contributor;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeContributor_Url(Lorg/apache/maven/model/Contributor;Lorg/apache/maven/model/Contributor;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Contributor;->getUrl()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getUrl()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Contributor;->setUrl(Ljava/lang/String;)V

    const-string p3, "url"

    const-string p4, "url"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Contributor;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Contributor;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeDependency(Lorg/apache/maven/model/Dependency;Lorg/apache/maven/model/Dependency;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDependency_GroupId(Lorg/apache/maven/model/Dependency;Lorg/apache/maven/model/Dependency;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDependency_ArtifactId(Lorg/apache/maven/model/Dependency;Lorg/apache/maven/model/Dependency;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDependency_Version(Lorg/apache/maven/model/Dependency;Lorg/apache/maven/model/Dependency;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDependency_Type(Lorg/apache/maven/model/Dependency;Lorg/apache/maven/model/Dependency;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDependency_Classifier(Lorg/apache/maven/model/Dependency;Lorg/apache/maven/model/Dependency;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDependency_Scope(Lorg/apache/maven/model/Dependency;Lorg/apache/maven/model/Dependency;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDependency_SystemPath(Lorg/apache/maven/model/Dependency;Lorg/apache/maven/model/Dependency;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDependency_Optional(Lorg/apache/maven/model/Dependency;Lorg/apache/maven/model/Dependency;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDependency_Exclusions(Lorg/apache/maven/model/Dependency;Lorg/apache/maven/model/Dependency;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeDependencyManagement(Lorg/apache/maven/model/DependencyManagement;Lorg/apache/maven/model/DependencyManagement;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDependencyManagement_Dependencies(Lorg/apache/maven/model/DependencyManagement;Lorg/apache/maven/model/DependencyManagement;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeDependencyManagement_Dependencies(Lorg/apache/maven/model/DependencyManagement;Lorg/apache/maven/model/DependencyManagement;ZLjava/util/Map;)V
    .registers 8

    invoke-virtual {p2}, Lorg/apache/maven/model/DependencyManagement;->getDependencies()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/DependencyManagement;->getDependencies()Ljava/util/List;

    move-result-object p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Dependency;

    invoke-virtual {p0, v1}, Lorg/apache/maven/model/merge/ModelMerger;->getDependencyKey(Lorg/apache/maven/model/Dependency;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/maven/model/Dependency;

    invoke-virtual {p0, p4}, Lorg/apache/maven/model/merge/ModelMerger;->getDependencyKey(Lorg/apache/maven/model/Dependency;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/DependencyManagement;->setDependencies(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected mergeDependency_ArtifactId(Lorg/apache/maven/model/Dependency;Lorg/apache/maven/model/Dependency;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Dependency;->getArtifactId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getArtifactId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Dependency;->setArtifactId(Ljava/lang/String;)V

    const-string p3, "artifactId"

    const-string p4, "artifactId"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Dependency;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Dependency;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeDependency_Classifier(Lorg/apache/maven/model/Dependency;Lorg/apache/maven/model/Dependency;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Dependency;->getClassifier()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getClassifier()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Dependency;->setClassifier(Ljava/lang/String;)V

    const-string p3, "classifier"

    const-string p4, "classifier"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Dependency;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Dependency;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeDependency_Exclusions(Lorg/apache/maven/model/Dependency;Lorg/apache/maven/model/Dependency;ZLjava/util/Map;)V
    .registers 8

    invoke-virtual {p2}, Lorg/apache/maven/model/Dependency;->getExclusions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getExclusions()Ljava/util/List;

    move-result-object p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Exclusion;

    invoke-virtual {p0, v1}, Lorg/apache/maven/model/merge/ModelMerger;->getExclusionKey(Lorg/apache/maven/model/Exclusion;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/maven/model/Exclusion;

    invoke-virtual {p0, p4}, Lorg/apache/maven/model/merge/ModelMerger;->getExclusionKey(Lorg/apache/maven/model/Exclusion;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/Dependency;->setExclusions(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected mergeDependency_GroupId(Lorg/apache/maven/model/Dependency;Lorg/apache/maven/model/Dependency;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Dependency;->getGroupId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getGroupId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Dependency;->setGroupId(Ljava/lang/String;)V

    const-string p3, "groupId"

    const-string p4, "groupId"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Dependency;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Dependency;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeDependency_Optional(Lorg/apache/maven/model/Dependency;Lorg/apache/maven/model/Dependency;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Dependency;->getOptional()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getOptional()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Dependency;->setOptional(Ljava/lang/String;)V

    const-string p3, "optional"

    const-string p4, "optional"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Dependency;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Dependency;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeDependency_Scope(Lorg/apache/maven/model/Dependency;Lorg/apache/maven/model/Dependency;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Dependency;->getScope()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getScope()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Dependency;->setScope(Ljava/lang/String;)V

    const-string p3, "scope"

    const-string p4, "scope"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Dependency;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Dependency;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeDependency_SystemPath(Lorg/apache/maven/model/Dependency;Lorg/apache/maven/model/Dependency;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Dependency;->getSystemPath()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getSystemPath()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Dependency;->setSystemPath(Ljava/lang/String;)V

    const-string p3, "systemPath"

    const-string p4, "systemPath"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Dependency;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Dependency;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeDependency_Type(Lorg/apache/maven/model/Dependency;Lorg/apache/maven/model/Dependency;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Dependency;->getType()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getType()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Dependency;->setType(Ljava/lang/String;)V

    const-string p3, "type"

    const-string p4, "type"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Dependency;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Dependency;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeDependency_Version(Lorg/apache/maven/model/Dependency;Lorg/apache/maven/model/Dependency;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Dependency;->getVersion()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getVersion()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Dependency;->setVersion(Ljava/lang/String;)V

    const-string p3, "version"

    const-string p4, "version"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Dependency;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Dependency;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeDeploymentRepository(Lorg/apache/maven/model/DeploymentRepository;Lorg/apache/maven/model/DeploymentRepository;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeRepository(Lorg/apache/maven/model/Repository;Lorg/apache/maven/model/Repository;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDeploymentRepository_UniqueVersion(Lorg/apache/maven/model/DeploymentRepository;Lorg/apache/maven/model/DeploymentRepository;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeDeploymentRepository_UniqueVersion(Lorg/apache/maven/model/DeploymentRepository;Lorg/apache/maven/model/DeploymentRepository;ZLjava/util/Map;)V
    .registers 5

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lorg/apache/maven/model/DeploymentRepository;->isUniqueVersion()Z

    move-result p3

    invoke-virtual {p1, p3}, Lorg/apache/maven/model/DeploymentRepository;->setUniqueVersion(Z)V

    const-string p3, "uniqueVersion"

    const-string p4, "uniqueVersion"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/DeploymentRepository;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/DeploymentRepository;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_0
    return-void
.end method

.method protected mergeDeveloper(Lorg/apache/maven/model/Developer;Lorg/apache/maven/model/Developer;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeContributor(Lorg/apache/maven/model/Contributor;Lorg/apache/maven/model/Contributor;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDeveloper_Id(Lorg/apache/maven/model/Developer;Lorg/apache/maven/model/Developer;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeDeveloper_Id(Lorg/apache/maven/model/Developer;Lorg/apache/maven/model/Developer;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Developer;->getId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Developer;->setId(Ljava/lang/String;)V

    const-string p3, "id"

    const-string p4, "id"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Developer;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Developer;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeDistributionManagement(Lorg/apache/maven/model/DistributionManagement;Lorg/apache/maven/model/DistributionManagement;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDistributionManagement_Repository(Lorg/apache/maven/model/DistributionManagement;Lorg/apache/maven/model/DistributionManagement;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDistributionManagement_SnapshotRepository(Lorg/apache/maven/model/DistributionManagement;Lorg/apache/maven/model/DistributionManagement;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDistributionManagement_Site(Lorg/apache/maven/model/DistributionManagement;Lorg/apache/maven/model/DistributionManagement;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDistributionManagement_Status(Lorg/apache/maven/model/DistributionManagement;Lorg/apache/maven/model/DistributionManagement;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDistributionManagement_DownloadUrl(Lorg/apache/maven/model/DistributionManagement;Lorg/apache/maven/model/DistributionManagement;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeDistributionManagement_DownloadUrl(Lorg/apache/maven/model/DistributionManagement;Lorg/apache/maven/model/DistributionManagement;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/DistributionManagement;->getDownloadUrl()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/DistributionManagement;->getDownloadUrl()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/DistributionManagement;->setDownloadUrl(Ljava/lang/String;)V

    const-string p3, "downloadUrl"

    const-string p4, "downloadUrl"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/DistributionManagement;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/DistributionManagement;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeDistributionManagement_Repository(Lorg/apache/maven/model/DistributionManagement;Lorg/apache/maven/model/DistributionManagement;ZLjava/util/Map;)V
    .registers 6

    invoke-virtual {p2}, Lorg/apache/maven/model/DistributionManagement;->getRepository()Lorg/apache/maven/model/DeploymentRepository;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/DistributionManagement;->getRepository()Lorg/apache/maven/model/DeploymentRepository;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/maven/model/DeploymentRepository;

    invoke-direct {v0}, Lorg/apache/maven/model/DeploymentRepository;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/maven/model/DistributionManagement;->setRepository(Lorg/apache/maven/model/DeploymentRepository;)V

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDeploymentRepository(Lorg/apache/maven/model/DeploymentRepository;Lorg/apache/maven/model/DeploymentRepository;ZLjava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected mergeDistributionManagement_Site(Lorg/apache/maven/model/DistributionManagement;Lorg/apache/maven/model/DistributionManagement;ZLjava/util/Map;)V
    .registers 6

    invoke-virtual {p2}, Lorg/apache/maven/model/DistributionManagement;->getSite()Lorg/apache/maven/model/Site;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/DistributionManagement;->getSite()Lorg/apache/maven/model/Site;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/maven/model/Site;

    invoke-direct {v0}, Lorg/apache/maven/model/Site;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/maven/model/DistributionManagement;->setSite(Lorg/apache/maven/model/Site;)V

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeSite(Lorg/apache/maven/model/Site;Lorg/apache/maven/model/Site;ZLjava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected mergeDistributionManagement_SnapshotRepository(Lorg/apache/maven/model/DistributionManagement;Lorg/apache/maven/model/DistributionManagement;ZLjava/util/Map;)V
    .registers 6

    invoke-virtual {p2}, Lorg/apache/maven/model/DistributionManagement;->getSnapshotRepository()Lorg/apache/maven/model/DeploymentRepository;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/DistributionManagement;->getSnapshotRepository()Lorg/apache/maven/model/DeploymentRepository;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/maven/model/DeploymentRepository;

    invoke-direct {v0}, Lorg/apache/maven/model/DeploymentRepository;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/maven/model/DistributionManagement;->setSnapshotRepository(Lorg/apache/maven/model/DeploymentRepository;)V

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDeploymentRepository(Lorg/apache/maven/model/DeploymentRepository;Lorg/apache/maven/model/DeploymentRepository;ZLjava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected mergeDistributionManagement_Status(Lorg/apache/maven/model/DistributionManagement;Lorg/apache/maven/model/DistributionManagement;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/DistributionManagement;->getStatus()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/DistributionManagement;->getStatus()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/DistributionManagement;->setStatus(Ljava/lang/String;)V

    const-string p3, "status"

    const-string p4, "status"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/DistributionManagement;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/DistributionManagement;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeExclusion(Lorg/apache/maven/model/Exclusion;Lorg/apache/maven/model/Exclusion;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeExclusion_GroupId(Lorg/apache/maven/model/Exclusion;Lorg/apache/maven/model/Exclusion;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeExclusion_ArtifactId(Lorg/apache/maven/model/Exclusion;Lorg/apache/maven/model/Exclusion;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeExclusion_ArtifactId(Lorg/apache/maven/model/Exclusion;Lorg/apache/maven/model/Exclusion;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Exclusion;->getArtifactId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Exclusion;->getArtifactId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Exclusion;->setArtifactId(Ljava/lang/String;)V

    const-string p3, "artifactId"

    const-string p4, "artifactId"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Exclusion;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Exclusion;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeExclusion_GroupId(Lorg/apache/maven/model/Exclusion;Lorg/apache/maven/model/Exclusion;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Exclusion;->getGroupId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Exclusion;->getGroupId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Exclusion;->setGroupId(Ljava/lang/String;)V

    const-string p3, "groupId"

    const-string p4, "groupId"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Exclusion;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Exclusion;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeExtension(Lorg/apache/maven/model/Extension;Lorg/apache/maven/model/Extension;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeExtension_GroupId(Lorg/apache/maven/model/Extension;Lorg/apache/maven/model/Extension;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeExtension_ArtifactId(Lorg/apache/maven/model/Extension;Lorg/apache/maven/model/Extension;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeExtension_Version(Lorg/apache/maven/model/Extension;Lorg/apache/maven/model/Extension;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeExtension_ArtifactId(Lorg/apache/maven/model/Extension;Lorg/apache/maven/model/Extension;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Extension;->getArtifactId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Extension;->getArtifactId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Extension;->setArtifactId(Ljava/lang/String;)V

    const-string p3, "artifactId"

    const-string p4, "artifactId"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Extension;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Extension;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeExtension_GroupId(Lorg/apache/maven/model/Extension;Lorg/apache/maven/model/Extension;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Extension;->getGroupId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Extension;->getGroupId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Extension;->setGroupId(Ljava/lang/String;)V

    const-string p3, "groupId"

    const-string p4, "groupId"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Extension;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Extension;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeExtension_Version(Lorg/apache/maven/model/Extension;Lorg/apache/maven/model/Extension;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Extension;->getVersion()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Extension;->getVersion()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Extension;->setVersion(Ljava/lang/String;)V

    const-string p3, "version"

    const-string p4, "version"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Extension;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Extension;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeFileSet(Lorg/apache/maven/model/FileSet;Lorg/apache/maven/model/FileSet;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePatternSet(Lorg/apache/maven/model/PatternSet;Lorg/apache/maven/model/PatternSet;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeFileSet_Directory(Lorg/apache/maven/model/FileSet;Lorg/apache/maven/model/FileSet;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeFileSet_Directory(Lorg/apache/maven/model/FileSet;Lorg/apache/maven/model/FileSet;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/FileSet;->getDirectory()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/FileSet;->getDirectory()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/FileSet;->setDirectory(Ljava/lang/String;)V

    const-string p3, "directory"

    const-string p4, "directory"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/FileSet;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/FileSet;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeIssueManagement(Lorg/apache/maven/model/IssueManagement;Lorg/apache/maven/model/IssueManagement;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeIssueManagement_Url(Lorg/apache/maven/model/IssueManagement;Lorg/apache/maven/model/IssueManagement;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeIssueManagement_System(Lorg/apache/maven/model/IssueManagement;Lorg/apache/maven/model/IssueManagement;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeIssueManagement_System(Lorg/apache/maven/model/IssueManagement;Lorg/apache/maven/model/IssueManagement;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/IssueManagement;->getSystem()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/IssueManagement;->getSystem()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/IssueManagement;->setSystem(Ljava/lang/String;)V

    const-string p3, "system"

    const-string p4, "system"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/IssueManagement;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/IssueManagement;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeIssueManagement_Url(Lorg/apache/maven/model/IssueManagement;Lorg/apache/maven/model/IssueManagement;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/IssueManagement;->getUrl()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/IssueManagement;->getUrl()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/IssueManagement;->setUrl(Ljava/lang/String;)V

    const-string p3, "url"

    const-string p4, "url"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/IssueManagement;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/IssueManagement;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeLicense(Lorg/apache/maven/model/License;Lorg/apache/maven/model/License;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeLicense_Name(Lorg/apache/maven/model/License;Lorg/apache/maven/model/License;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeLicense_Url(Lorg/apache/maven/model/License;Lorg/apache/maven/model/License;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeLicense_Distribution(Lorg/apache/maven/model/License;Lorg/apache/maven/model/License;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeLicense_Comments(Lorg/apache/maven/model/License;Lorg/apache/maven/model/License;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeLicense_Comments(Lorg/apache/maven/model/License;Lorg/apache/maven/model/License;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/License;->getComments()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/License;->getComments()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/License;->setComments(Ljava/lang/String;)V

    const-string p3, "comments"

    const-string p4, "comments"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/License;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/License;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeLicense_Distribution(Lorg/apache/maven/model/License;Lorg/apache/maven/model/License;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/License;->getDistribution()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/License;->getDistribution()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/License;->setDistribution(Ljava/lang/String;)V

    const-string p3, "distribution"

    const-string p4, "distribution"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/License;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/License;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeLicense_Name(Lorg/apache/maven/model/License;Lorg/apache/maven/model/License;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/License;->getName()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/License;->getName()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/License;->setName(Ljava/lang/String;)V

    const-string p3, "name"

    const-string p4, "name"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/License;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/License;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeLicense_Url(Lorg/apache/maven/model/License;Lorg/apache/maven/model/License;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/License;->getUrl()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/License;->getUrl()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/License;->setUrl(Ljava/lang/String;)V

    const-string p3, "url"

    const-string p4, "url"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/License;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/License;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeMailingList(Lorg/apache/maven/model/MailingList;Lorg/apache/maven/model/MailingList;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeMailingList_Name(Lorg/apache/maven/model/MailingList;Lorg/apache/maven/model/MailingList;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeMailingList_Subscribe(Lorg/apache/maven/model/MailingList;Lorg/apache/maven/model/MailingList;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeMailingList_Unsubscribe(Lorg/apache/maven/model/MailingList;Lorg/apache/maven/model/MailingList;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeMailingList_Post(Lorg/apache/maven/model/MailingList;Lorg/apache/maven/model/MailingList;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeMailingList_OtherArchives(Lorg/apache/maven/model/MailingList;Lorg/apache/maven/model/MailingList;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeMailingList_Archive(Lorg/apache/maven/model/MailingList;Lorg/apache/maven/model/MailingList;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/MailingList;->getArchive()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/MailingList;->getArchive()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/MailingList;->setArchive(Ljava/lang/String;)V

    const-string p3, "archive"

    const-string p4, "archive"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/MailingList;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/MailingList;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeMailingList_Name(Lorg/apache/maven/model/MailingList;Lorg/apache/maven/model/MailingList;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/MailingList;->getName()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/MailingList;->getName()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/MailingList;->setName(Ljava/lang/String;)V

    const-string p3, "name"

    const-string p4, "name"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/MailingList;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/MailingList;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeMailingList_OtherArchives(Lorg/apache/maven/model/MailingList;Lorg/apache/maven/model/MailingList;ZLjava/util/Map;)V
    .registers 7

    invoke-virtual {p2}, Lorg/apache/maven/model/MailingList;->getOtherArchives()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/MailingList;->getOtherArchives()Ljava/util/List;

    move-result-object p3

    new-instance p4, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, p4}, Lorg/apache/maven/model/MailingList;->setOtherArchives(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected mergeMailingList_Post(Lorg/apache/maven/model/MailingList;Lorg/apache/maven/model/MailingList;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/MailingList;->getPost()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/MailingList;->getPost()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/MailingList;->setPost(Ljava/lang/String;)V

    const-string p3, "post"

    const-string p4, "post"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/MailingList;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/MailingList;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeMailingList_Subscribe(Lorg/apache/maven/model/MailingList;Lorg/apache/maven/model/MailingList;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/MailingList;->getSubscribe()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/MailingList;->getSubscribe()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/MailingList;->setSubscribe(Ljava/lang/String;)V

    const-string p3, "subscribe"

    const-string p4, "subscribe"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/MailingList;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/MailingList;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeMailingList_Unsubscribe(Lorg/apache/maven/model/MailingList;Lorg/apache/maven/model/MailingList;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/MailingList;->getUnsubscribe()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/MailingList;->getUnsubscribe()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/MailingList;->setUnsubscribe(Ljava/lang/String;)V

    const-string p3, "unsubscribe"

    const-string p4, "unsubscribe"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/MailingList;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/MailingList;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeModel(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModelBase(Lorg/apache/maven/model/ModelBase;Lorg/apache/maven/model/ModelBase;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_ModelVersion(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_Parent(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_GroupId(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_ArtifactId(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_Version(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_Packaging(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_Name(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_Description(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_Url(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_InceptionYear(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_Organization(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_Licenses(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_MailingLists(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_Developers(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_Contributors(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_IssueManagement(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_Scm(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_CiManagement(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_Prerequisites(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_Build(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModel_Profiles(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeModelBase(Lorg/apache/maven/model/ModelBase;Lorg/apache/maven/model/ModelBase;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModelBase_DistributionManagement(Lorg/apache/maven/model/ModelBase;Lorg/apache/maven/model/ModelBase;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModelBase_Modules(Lorg/apache/maven/model/ModelBase;Lorg/apache/maven/model/ModelBase;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModelBase_Repositories(Lorg/apache/maven/model/ModelBase;Lorg/apache/maven/model/ModelBase;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModelBase_PluginRepositories(Lorg/apache/maven/model/ModelBase;Lorg/apache/maven/model/ModelBase;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModelBase_Dependencies(Lorg/apache/maven/model/ModelBase;Lorg/apache/maven/model/ModelBase;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModelBase_Reporting(Lorg/apache/maven/model/ModelBase;Lorg/apache/maven/model/ModelBase;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModelBase_DependencyManagement(Lorg/apache/maven/model/ModelBase;Lorg/apache/maven/model/ModelBase;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModelBase_Properties(Lorg/apache/maven/model/ModelBase;Lorg/apache/maven/model/ModelBase;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeModelBase_Dependencies(Lorg/apache/maven/model/ModelBase;Lorg/apache/maven/model/ModelBase;ZLjava/util/Map;)V
    .registers 8

    invoke-virtual {p2}, Lorg/apache/maven/model/ModelBase;->getDependencies()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getDependencies()Ljava/util/List;

    move-result-object p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Dependency;

    invoke-virtual {p0, v1}, Lorg/apache/maven/model/merge/ModelMerger;->getDependencyKey(Lorg/apache/maven/model/Dependency;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/maven/model/Dependency;

    invoke-virtual {p0, p4}, Lorg/apache/maven/model/merge/ModelMerger;->getDependencyKey(Lorg/apache/maven/model/Dependency;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/ModelBase;->setDependencies(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected mergeModelBase_DependencyManagement(Lorg/apache/maven/model/ModelBase;Lorg/apache/maven/model/ModelBase;ZLjava/util/Map;)V
    .registers 6

    invoke-virtual {p2}, Lorg/apache/maven/model/ModelBase;->getDependencyManagement()Lorg/apache/maven/model/DependencyManagement;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getDependencyManagement()Lorg/apache/maven/model/DependencyManagement;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/maven/model/DependencyManagement;

    invoke-direct {v0}, Lorg/apache/maven/model/DependencyManagement;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/maven/model/ModelBase;->setDependencyManagement(Lorg/apache/maven/model/DependencyManagement;)V

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDependencyManagement(Lorg/apache/maven/model/DependencyManagement;Lorg/apache/maven/model/DependencyManagement;ZLjava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected mergeModelBase_DistributionManagement(Lorg/apache/maven/model/ModelBase;Lorg/apache/maven/model/ModelBase;ZLjava/util/Map;)V
    .registers 6

    invoke-virtual {p2}, Lorg/apache/maven/model/ModelBase;->getDistributionManagement()Lorg/apache/maven/model/DistributionManagement;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getDistributionManagement()Lorg/apache/maven/model/DistributionManagement;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/maven/model/DistributionManagement;

    invoke-direct {v0}, Lorg/apache/maven/model/DistributionManagement;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/maven/model/ModelBase;->setDistributionManagement(Lorg/apache/maven/model/DistributionManagement;)V

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeDistributionManagement(Lorg/apache/maven/model/DistributionManagement;Lorg/apache/maven/model/DistributionManagement;ZLjava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected mergeModelBase_Modules(Lorg/apache/maven/model/ModelBase;Lorg/apache/maven/model/ModelBase;ZLjava/util/Map;)V
    .registers 7

    invoke-virtual {p2}, Lorg/apache/maven/model/ModelBase;->getModules()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getModules()Ljava/util/List;

    move-result-object p3

    new-instance p4, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, p4}, Lorg/apache/maven/model/ModelBase;->setModules(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected mergeModelBase_PluginRepositories(Lorg/apache/maven/model/ModelBase;Lorg/apache/maven/model/ModelBase;ZLjava/util/Map;)V
    .registers 8

    invoke-virtual {p2}, Lorg/apache/maven/model/ModelBase;->getPluginRepositories()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getPluginRepositories()Ljava/util/List;

    move-result-object p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Repository;

    invoke-virtual {p0, v1}, Lorg/apache/maven/model/merge/ModelMerger;->getRepositoryKey(Lorg/apache/maven/model/Repository;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/maven/model/Repository;

    invoke-virtual {p0, p4}, Lorg/apache/maven/model/merge/ModelMerger;->getRepositoryKey(Lorg/apache/maven/model/Repository;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/ModelBase;->setPluginRepositories(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected mergeModelBase_Properties(Lorg/apache/maven/model/ModelBase;Lorg/apache/maven/model/ModelBase;ZLjava/util/Map;)V
    .registers 7

    new-instance p4, Ljava/util/Properties;

    invoke-direct {p4}, Ljava/util/Properties;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    invoke-virtual {p2}, Lorg/apache/maven/model/ModelBase;->getProperties()Ljava/util/Properties;

    move-result-object v0

    :goto_0
    invoke-virtual {p4, v0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lorg/apache/maven/model/ModelBase;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getProperties()Ljava/util/Properties;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/ModelBase;->setProperties(Ljava/util/Properties;)V

    const-string p4, "properties"

    const-string v0, "properties"

    invoke-virtual {p1, v0}, Lorg/apache/maven/model/ModelBase;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object v0

    const-string v1, "properties"

    invoke-virtual {p2, v1}, Lorg/apache/maven/model/ModelBase;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-static {v0, p2, p3}, Lorg/apache/maven/model/InputLocation;->merge(Lorg/apache/maven/model/InputLocation;Lorg/apache/maven/model/InputLocation;Z)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lorg/apache/maven/model/ModelBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    return-void
.end method

.method protected mergeModelBase_Reporting(Lorg/apache/maven/model/ModelBase;Lorg/apache/maven/model/ModelBase;ZLjava/util/Map;)V
    .registers 6

    invoke-virtual {p2}, Lorg/apache/maven/model/ModelBase;->getReporting()Lorg/apache/maven/model/Reporting;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getReporting()Lorg/apache/maven/model/Reporting;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/maven/model/Reporting;

    invoke-direct {v0}, Lorg/apache/maven/model/Reporting;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/maven/model/ModelBase;->setReporting(Lorg/apache/maven/model/Reporting;)V

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeReporting(Lorg/apache/maven/model/Reporting;Lorg/apache/maven/model/Reporting;ZLjava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected mergeModelBase_Repositories(Lorg/apache/maven/model/ModelBase;Lorg/apache/maven/model/ModelBase;ZLjava/util/Map;)V
    .registers 8

    invoke-virtual {p2}, Lorg/apache/maven/model/ModelBase;->getRepositories()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getRepositories()Ljava/util/List;

    move-result-object p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Repository;

    invoke-virtual {p0, v1}, Lorg/apache/maven/model/merge/ModelMerger;->getRepositoryKey(Lorg/apache/maven/model/Repository;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/maven/model/Repository;

    invoke-virtual {p0, p4}, Lorg/apache/maven/model/merge/ModelMerger;->getRepositoryKey(Lorg/apache/maven/model/Repository;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/ModelBase;->setRepositories(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected mergeModel_ArtifactId(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getArtifactId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getArtifactId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Model;->setArtifactId(Ljava/lang/String;)V

    const-string p3, "artifactId"

    const-string p4, "artifactId"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Model;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeModel_Build(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 6

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getBuild()Lorg/apache/maven/model/Build;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getBuild()Lorg/apache/maven/model/Build;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/maven/model/Build;

    invoke-direct {v0}, Lorg/apache/maven/model/Build;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/maven/model/Model;->setBuild(Lorg/apache/maven/model/Build;)V

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeBuild(Lorg/apache/maven/model/Build;Lorg/apache/maven/model/Build;ZLjava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected mergeModel_CiManagement(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 6

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getCiManagement()Lorg/apache/maven/model/CiManagement;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getCiManagement()Lorg/apache/maven/model/CiManagement;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/maven/model/CiManagement;

    invoke-direct {v0}, Lorg/apache/maven/model/CiManagement;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/maven/model/Model;->setCiManagement(Lorg/apache/maven/model/CiManagement;)V

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeCiManagement(Lorg/apache/maven/model/CiManagement;Lorg/apache/maven/model/CiManagement;ZLjava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected mergeModel_Contributors(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 8

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getContributors()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getContributors()Ljava/util/List;

    move-result-object p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Contributor;

    invoke-virtual {p0, v1}, Lorg/apache/maven/model/merge/ModelMerger;->getContributorKey(Lorg/apache/maven/model/Contributor;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/maven/model/Contributor;

    invoke-virtual {p0, p4}, Lorg/apache/maven/model/merge/ModelMerger;->getContributorKey(Lorg/apache/maven/model/Contributor;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/Model;->setContributors(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected mergeModel_Description(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getDescription()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getDescription()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Model;->setDescription(Ljava/lang/String;)V

    const-string p3, "description"

    const-string p4, "description"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Model;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeModel_Developers(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 8

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getDevelopers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getDevelopers()Ljava/util/List;

    move-result-object p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Developer;

    invoke-virtual {p0, v1}, Lorg/apache/maven/model/merge/ModelMerger;->getDeveloperKey(Lorg/apache/maven/model/Developer;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/maven/model/Developer;

    invoke-virtual {p0, p4}, Lorg/apache/maven/model/merge/ModelMerger;->getDeveloperKey(Lorg/apache/maven/model/Developer;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/Model;->setDevelopers(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected mergeModel_GroupId(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getGroupId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getGroupId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Model;->setGroupId(Ljava/lang/String;)V

    const-string p3, "groupId"

    const-string p4, "groupId"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Model;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeModel_InceptionYear(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getInceptionYear()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getInceptionYear()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Model;->setInceptionYear(Ljava/lang/String;)V

    const-string p3, "inceptionYear"

    const-string p4, "inceptionYear"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Model;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeModel_IssueManagement(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 6

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getIssueManagement()Lorg/apache/maven/model/IssueManagement;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getIssueManagement()Lorg/apache/maven/model/IssueManagement;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/maven/model/IssueManagement;

    invoke-direct {v0}, Lorg/apache/maven/model/IssueManagement;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/maven/model/Model;->setIssueManagement(Lorg/apache/maven/model/IssueManagement;)V

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeIssueManagement(Lorg/apache/maven/model/IssueManagement;Lorg/apache/maven/model/IssueManagement;ZLjava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected mergeModel_Licenses(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 8

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getLicenses()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getLicenses()Ljava/util/List;

    move-result-object p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/License;

    invoke-virtual {p0, v1}, Lorg/apache/maven/model/merge/ModelMerger;->getLicenseKey(Lorg/apache/maven/model/License;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/maven/model/License;

    invoke-virtual {p0, p4}, Lorg/apache/maven/model/merge/ModelMerger;->getLicenseKey(Lorg/apache/maven/model/License;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/Model;->setLicenses(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected mergeModel_MailingLists(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 8

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getMailingLists()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getMailingLists()Ljava/util/List;

    move-result-object p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/MailingList;

    invoke-virtual {p0, v1}, Lorg/apache/maven/model/merge/ModelMerger;->getMailingListKey(Lorg/apache/maven/model/MailingList;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/maven/model/MailingList;

    invoke-virtual {p0, p4}, Lorg/apache/maven/model/merge/ModelMerger;->getMailingListKey(Lorg/apache/maven/model/MailingList;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/Model;->setMailingLists(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected mergeModel_ModelVersion(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getModelVersion()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getModelVersion()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Model;->setModelVersion(Ljava/lang/String;)V

    const-string p3, "modelVersion"

    const-string p4, "modelVersion"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Model;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeModel_Name(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getName()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getName()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Model;->setName(Ljava/lang/String;)V

    const-string p3, "name"

    const-string p4, "name"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Model;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeModel_Organization(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 6

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getOrganization()Lorg/apache/maven/model/Organization;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getOrganization()Lorg/apache/maven/model/Organization;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/maven/model/Organization;

    invoke-direct {v0}, Lorg/apache/maven/model/Organization;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/maven/model/Model;->setOrganization(Lorg/apache/maven/model/Organization;)V

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeOrganization(Lorg/apache/maven/model/Organization;Lorg/apache/maven/model/Organization;ZLjava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected mergeModel_Packaging(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getPackaging()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getPackaging()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Model;->setPackaging(Ljava/lang/String;)V

    const-string p3, "packaging"

    const-string p4, "packaging"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Model;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeModel_Parent(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 7

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getParent()Lorg/apache/maven/model/Parent;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getParent()Lorg/apache/maven/model/Parent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/maven/model/Parent;

    invoke-direct {v0}, Lorg/apache/maven/model/Parent;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/maven/model/Parent;->setRelativePath(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/maven/model/Model;->setParent(Lorg/apache/maven/model/Parent;)V

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeParent(Lorg/apache/maven/model/Parent;Lorg/apache/maven/model/Parent;ZLjava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected mergeModel_Prerequisites(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 7

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getPrerequisites()Lorg/apache/maven/model/Prerequisites;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getPrerequisites()Lorg/apache/maven/model/Prerequisites;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/maven/model/Prerequisites;

    invoke-direct {v0}, Lorg/apache/maven/model/Prerequisites;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/maven/model/Prerequisites;->setMaven(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/maven/model/Model;->setPrerequisites(Lorg/apache/maven/model/Prerequisites;)V

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePrerequisites(Lorg/apache/maven/model/Prerequisites;Lorg/apache/maven/model/Prerequisites;ZLjava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected mergeModel_Profiles(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 8

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getProfiles()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getProfiles()Ljava/util/List;

    move-result-object p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Profile;

    invoke-virtual {p0, v1}, Lorg/apache/maven/model/merge/ModelMerger;->getProfileKey(Lorg/apache/maven/model/Profile;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/maven/model/Profile;

    invoke-virtual {p0, p4}, Lorg/apache/maven/model/merge/ModelMerger;->getProfileKey(Lorg/apache/maven/model/Profile;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/Model;->setProfiles(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected mergeModel_Scm(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 7

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getScm()Lorg/apache/maven/model/Scm;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getScm()Lorg/apache/maven/model/Scm;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/maven/model/Scm;

    invoke-direct {v0}, Lorg/apache/maven/model/Scm;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/maven/model/Scm;->setTag(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/maven/model/Model;->setScm(Lorg/apache/maven/model/Scm;)V

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeScm(Lorg/apache/maven/model/Scm;Lorg/apache/maven/model/Scm;ZLjava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected mergeModel_Url(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getUrl()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getUrl()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Model;->setUrl(Ljava/lang/String;)V

    const-string p3, "url"

    const-string p4, "url"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Model;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeModel_Version(Lorg/apache/maven/model/Model;Lorg/apache/maven/model/Model;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getVersion()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getVersion()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Model;->setVersion(Ljava/lang/String;)V

    const-string p3, "version"

    const-string p4, "version"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Model;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeNotifier(Lorg/apache/maven/model/Notifier;Lorg/apache/maven/model/Notifier;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeNotifier_Type(Lorg/apache/maven/model/Notifier;Lorg/apache/maven/model/Notifier;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeNotifier_Address(Lorg/apache/maven/model/Notifier;Lorg/apache/maven/model/Notifier;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeNotifier_Configuration(Lorg/apache/maven/model/Notifier;Lorg/apache/maven/model/Notifier;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeNotifier_SendOnError(Lorg/apache/maven/model/Notifier;Lorg/apache/maven/model/Notifier;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeNotifier_SendOnFailure(Lorg/apache/maven/model/Notifier;Lorg/apache/maven/model/Notifier;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeNotifier_SendOnSuccess(Lorg/apache/maven/model/Notifier;Lorg/apache/maven/model/Notifier;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeNotifier_SendOnWarning(Lorg/apache/maven/model/Notifier;Lorg/apache/maven/model/Notifier;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeNotifier_Address(Lorg/apache/maven/model/Notifier;Lorg/apache/maven/model/Notifier;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Notifier;->getAddress()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->getAddress()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/maven/model/Notifier;->setAddress(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected mergeNotifier_Configuration(Lorg/apache/maven/model/Notifier;Lorg/apache/maven/model/Notifier;ZLjava/util/Map;)V
    .registers 5

    new-instance p4, Ljava/util/Properties;

    invoke-direct {p4}, Ljava/util/Properties;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->getConfiguration()Ljava/util/Properties;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    invoke-virtual {p2}, Lorg/apache/maven/model/Notifier;->getConfiguration()Ljava/util/Properties;

    move-result-object p2

    :goto_0
    invoke-virtual {p4, p2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lorg/apache/maven/model/Notifier;->getConfiguration()Ljava/util/Properties;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->getConfiguration()Ljava/util/Properties;

    move-result-object p2

    goto :goto_0

    :goto_1
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Notifier;->setConfiguration(Ljava/util/Properties;)V

    return-void
.end method

.method protected mergeNotifier_SendOnError(Lorg/apache/maven/model/Notifier;Lorg/apache/maven/model/Notifier;ZLjava/util/Map;)V
    .registers 5

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lorg/apache/maven/model/Notifier;->isSendOnError()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/Notifier;->setSendOnError(Z)V

    :cond_0
    return-void
.end method

.method protected mergeNotifier_SendOnFailure(Lorg/apache/maven/model/Notifier;Lorg/apache/maven/model/Notifier;ZLjava/util/Map;)V
    .registers 5

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lorg/apache/maven/model/Notifier;->isSendOnFailure()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/Notifier;->setSendOnFailure(Z)V

    :cond_0
    return-void
.end method

.method protected mergeNotifier_SendOnSuccess(Lorg/apache/maven/model/Notifier;Lorg/apache/maven/model/Notifier;ZLjava/util/Map;)V
    .registers 5

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lorg/apache/maven/model/Notifier;->isSendOnSuccess()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/Notifier;->setSendOnSuccess(Z)V

    :cond_0
    return-void
.end method

.method protected mergeNotifier_SendOnWarning(Lorg/apache/maven/model/Notifier;Lorg/apache/maven/model/Notifier;ZLjava/util/Map;)V
    .registers 5

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lorg/apache/maven/model/Notifier;->isSendOnWarning()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/Notifier;->setSendOnWarning(Z)V

    :cond_0
    return-void
.end method

.method protected mergeNotifier_Type(Lorg/apache/maven/model/Notifier;Lorg/apache/maven/model/Notifier;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Notifier;->getType()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->getType()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/maven/model/Notifier;->setType(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected mergeOrganization(Lorg/apache/maven/model/Organization;Lorg/apache/maven/model/Organization;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeOrganization_Name(Lorg/apache/maven/model/Organization;Lorg/apache/maven/model/Organization;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeOrganization_Url(Lorg/apache/maven/model/Organization;Lorg/apache/maven/model/Organization;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeOrganization_Name(Lorg/apache/maven/model/Organization;Lorg/apache/maven/model/Organization;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Organization;->getName()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Organization;->getName()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Organization;->setName(Ljava/lang/String;)V

    const-string p3, "name"

    const-string p4, "name"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Organization;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Organization;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeOrganization_Url(Lorg/apache/maven/model/Organization;Lorg/apache/maven/model/Organization;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Organization;->getUrl()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Organization;->getUrl()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Organization;->setUrl(Ljava/lang/String;)V

    const-string p3, "url"

    const-string p4, "url"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Organization;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Organization;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeParent(Lorg/apache/maven/model/Parent;Lorg/apache/maven/model/Parent;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeParent_GroupId(Lorg/apache/maven/model/Parent;Lorg/apache/maven/model/Parent;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeParent_ArtifactId(Lorg/apache/maven/model/Parent;Lorg/apache/maven/model/Parent;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeParent_Version(Lorg/apache/maven/model/Parent;Lorg/apache/maven/model/Parent;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeParent_RelativePath(Lorg/apache/maven/model/Parent;Lorg/apache/maven/model/Parent;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeParent_ArtifactId(Lorg/apache/maven/model/Parent;Lorg/apache/maven/model/Parent;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Parent;->getArtifactId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Parent;->getArtifactId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Parent;->setArtifactId(Ljava/lang/String;)V

    const-string p3, "artifactId"

    const-string p4, "artifactId"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Parent;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Parent;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeParent_GroupId(Lorg/apache/maven/model/Parent;Lorg/apache/maven/model/Parent;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Parent;->getGroupId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Parent;->getGroupId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Parent;->setGroupId(Ljava/lang/String;)V

    const-string p3, "groupId"

    const-string p4, "groupId"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Parent;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Parent;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeParent_RelativePath(Lorg/apache/maven/model/Parent;Lorg/apache/maven/model/Parent;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Parent;->getRelativePath()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Parent;->getRelativePath()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Parent;->setRelativePath(Ljava/lang/String;)V

    const-string p3, "relativePath"

    const-string p4, "relativePath"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Parent;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Parent;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeParent_Version(Lorg/apache/maven/model/Parent;Lorg/apache/maven/model/Parent;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Parent;->getVersion()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Parent;->getVersion()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Parent;->setVersion(Ljava/lang/String;)V

    const-string p3, "version"

    const-string p4, "version"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Parent;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Parent;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergePatternSet(Lorg/apache/maven/model/PatternSet;Lorg/apache/maven/model/PatternSet;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePatternSet_Includes(Lorg/apache/maven/model/PatternSet;Lorg/apache/maven/model/PatternSet;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePatternSet_Excludes(Lorg/apache/maven/model/PatternSet;Lorg/apache/maven/model/PatternSet;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergePatternSet_Excludes(Lorg/apache/maven/model/PatternSet;Lorg/apache/maven/model/PatternSet;ZLjava/util/Map;)V
    .registers 7

    invoke-virtual {p2}, Lorg/apache/maven/model/PatternSet;->getExcludes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/PatternSet;->getExcludes()Ljava/util/List;

    move-result-object p3

    new-instance p4, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, p4}, Lorg/apache/maven/model/PatternSet;->setExcludes(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected mergePatternSet_Includes(Lorg/apache/maven/model/PatternSet;Lorg/apache/maven/model/PatternSet;ZLjava/util/Map;)V
    .registers 7

    invoke-virtual {p2}, Lorg/apache/maven/model/PatternSet;->getIncludes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/PatternSet;->getIncludes()Ljava/util/List;

    move-result-object p3

    new-instance p4, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, p4}, Lorg/apache/maven/model/PatternSet;->setIncludes(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected mergePlugin(Lorg/apache/maven/model/Plugin;Lorg/apache/maven/model/Plugin;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeConfigurationContainer(Lorg/apache/maven/model/ConfigurationContainer;Lorg/apache/maven/model/ConfigurationContainer;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePlugin_GroupId(Lorg/apache/maven/model/Plugin;Lorg/apache/maven/model/Plugin;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePlugin_ArtifactId(Lorg/apache/maven/model/Plugin;Lorg/apache/maven/model/Plugin;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePlugin_Version(Lorg/apache/maven/model/Plugin;Lorg/apache/maven/model/Plugin;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePlugin_Extensions(Lorg/apache/maven/model/Plugin;Lorg/apache/maven/model/Plugin;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePlugin_Dependencies(Lorg/apache/maven/model/Plugin;Lorg/apache/maven/model/Plugin;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePlugin_Executions(Lorg/apache/maven/model/Plugin;Lorg/apache/maven/model/Plugin;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergePluginConfiguration(Lorg/apache/maven/model/PluginConfiguration;Lorg/apache/maven/model/PluginConfiguration;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePluginContainer(Lorg/apache/maven/model/PluginContainer;Lorg/apache/maven/model/PluginContainer;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePluginConfiguration_PluginManagement(Lorg/apache/maven/model/PluginConfiguration;Lorg/apache/maven/model/PluginConfiguration;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergePluginConfiguration_PluginManagement(Lorg/apache/maven/model/PluginConfiguration;Lorg/apache/maven/model/PluginConfiguration;ZLjava/util/Map;)V
    .registers 6

    invoke-virtual {p2}, Lorg/apache/maven/model/PluginConfiguration;->getPluginManagement()Lorg/apache/maven/model/PluginManagement;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginConfiguration;->getPluginManagement()Lorg/apache/maven/model/PluginManagement;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/maven/model/PluginManagement;

    invoke-direct {v0}, Lorg/apache/maven/model/PluginManagement;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/maven/model/PluginConfiguration;->setPluginManagement(Lorg/apache/maven/model/PluginManagement;)V

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePluginManagement(Lorg/apache/maven/model/PluginManagement;Lorg/apache/maven/model/PluginManagement;ZLjava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected mergePluginContainer(Lorg/apache/maven/model/PluginContainer;Lorg/apache/maven/model/PluginContainer;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePluginContainer_Plugins(Lorg/apache/maven/model/PluginContainer;Lorg/apache/maven/model/PluginContainer;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergePluginContainer_Plugins(Lorg/apache/maven/model/PluginContainer;Lorg/apache/maven/model/PluginContainer;ZLjava/util/Map;)V
    .registers 8

    invoke-virtual {p2}, Lorg/apache/maven/model/PluginContainer;->getPlugins()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginContainer;->getPlugins()Ljava/util/List;

    move-result-object p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Plugin;

    invoke-virtual {p0, v1}, Lorg/apache/maven/model/merge/ModelMerger;->getPluginKey(Lorg/apache/maven/model/Plugin;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/maven/model/Plugin;

    invoke-virtual {p0, p4}, Lorg/apache/maven/model/merge/ModelMerger;->getPluginKey(Lorg/apache/maven/model/Plugin;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/PluginContainer;->setPlugins(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected mergePluginExecution(Lorg/apache/maven/model/PluginExecution;Lorg/apache/maven/model/PluginExecution;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeConfigurationContainer(Lorg/apache/maven/model/ConfigurationContainer;Lorg/apache/maven/model/ConfigurationContainer;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePluginExecution_Id(Lorg/apache/maven/model/PluginExecution;Lorg/apache/maven/model/PluginExecution;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePluginExecution_Phase(Lorg/apache/maven/model/PluginExecution;Lorg/apache/maven/model/PluginExecution;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePluginExecution_Goals(Lorg/apache/maven/model/PluginExecution;Lorg/apache/maven/model/PluginExecution;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergePluginExecution_Goals(Lorg/apache/maven/model/PluginExecution;Lorg/apache/maven/model/PluginExecution;ZLjava/util/Map;)V
    .registers 7

    invoke-virtual {p2}, Lorg/apache/maven/model/PluginExecution;->getGoals()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginExecution;->getGoals()Ljava/util/List;

    move-result-object p3

    new-instance p4, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, p4}, Lorg/apache/maven/model/PluginExecution;->setGoals(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected mergePluginExecution_Id(Lorg/apache/maven/model/PluginExecution;Lorg/apache/maven/model/PluginExecution;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/PluginExecution;->getId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginExecution;->getId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/PluginExecution;->setId(Ljava/lang/String;)V

    const-string p3, "id"

    const-string p4, "id"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/PluginExecution;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/PluginExecution;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergePluginExecution_Phase(Lorg/apache/maven/model/PluginExecution;Lorg/apache/maven/model/PluginExecution;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/PluginExecution;->getPhase()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginExecution;->getPhase()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/PluginExecution;->setPhase(Ljava/lang/String;)V

    const-string p3, "phase"

    const-string p4, "phase"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/PluginExecution;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/PluginExecution;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergePluginManagement(Lorg/apache/maven/model/PluginManagement;Lorg/apache/maven/model/PluginManagement;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePluginContainer(Lorg/apache/maven/model/PluginContainer;Lorg/apache/maven/model/PluginContainer;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergePlugin_ArtifactId(Lorg/apache/maven/model/Plugin;Lorg/apache/maven/model/Plugin;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Plugin;->getArtifactId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getArtifactId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Plugin;->setArtifactId(Ljava/lang/String;)V

    const-string p3, "artifactId"

    const-string p4, "artifactId"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Plugin;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Plugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergePlugin_Dependencies(Lorg/apache/maven/model/Plugin;Lorg/apache/maven/model/Plugin;ZLjava/util/Map;)V
    .registers 8

    invoke-virtual {p2}, Lorg/apache/maven/model/Plugin;->getDependencies()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getDependencies()Ljava/util/List;

    move-result-object p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Dependency;

    invoke-virtual {p0, v1}, Lorg/apache/maven/model/merge/ModelMerger;->getDependencyKey(Lorg/apache/maven/model/Dependency;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/maven/model/Dependency;

    invoke-virtual {p0, p4}, Lorg/apache/maven/model/merge/ModelMerger;->getDependencyKey(Lorg/apache/maven/model/Dependency;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/Plugin;->setDependencies(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected mergePlugin_Executions(Lorg/apache/maven/model/Plugin;Lorg/apache/maven/model/Plugin;ZLjava/util/Map;)V
    .registers 8

    invoke-virtual {p2}, Lorg/apache/maven/model/Plugin;->getExecutions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getExecutions()Ljava/util/List;

    move-result-object p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/PluginExecution;

    invoke-virtual {p0, v1}, Lorg/apache/maven/model/merge/ModelMerger;->getPluginExecutionKey(Lorg/apache/maven/model/PluginExecution;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/maven/model/PluginExecution;

    invoke-virtual {p0, p4}, Lorg/apache/maven/model/merge/ModelMerger;->getPluginExecutionKey(Lorg/apache/maven/model/PluginExecution;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/Plugin;->setExecutions(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected mergePlugin_Extensions(Lorg/apache/maven/model/Plugin;Lorg/apache/maven/model/Plugin;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Plugin;->getExtensions()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getExtensions()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Plugin;->setExtensions(Ljava/lang/String;)V

    const-string p3, "extensions"

    const-string p4, "extensions"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Plugin;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Plugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergePlugin_GroupId(Lorg/apache/maven/model/Plugin;Lorg/apache/maven/model/Plugin;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Plugin;->getGroupId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getGroupId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Plugin;->setGroupId(Ljava/lang/String;)V

    const-string p3, "groupId"

    const-string p4, "groupId"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Plugin;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Plugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergePlugin_Version(Lorg/apache/maven/model/Plugin;Lorg/apache/maven/model/Plugin;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Plugin;->getVersion()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getVersion()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Plugin;->setVersion(Ljava/lang/String;)V

    const-string p3, "version"

    const-string p4, "version"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Plugin;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Plugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergePrerequisites(Lorg/apache/maven/model/Prerequisites;Lorg/apache/maven/model/Prerequisites;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergePrerequisites_Maven(Lorg/apache/maven/model/Prerequisites;Lorg/apache/maven/model/Prerequisites;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergePrerequisites_Maven(Lorg/apache/maven/model/Prerequisites;Lorg/apache/maven/model/Prerequisites;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Prerequisites;->getMaven()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Prerequisites;->getMaven()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Prerequisites;->setMaven(Ljava/lang/String;)V

    const-string p3, "maven"

    const-string p4, "maven"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Prerequisites;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Prerequisites;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeProfile(Lorg/apache/maven/model/Profile;Lorg/apache/maven/model/Profile;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeModelBase(Lorg/apache/maven/model/ModelBase;Lorg/apache/maven/model/ModelBase;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeRelocation(Lorg/apache/maven/model/Relocation;Lorg/apache/maven/model/Relocation;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeRelocation_GroupId(Lorg/apache/maven/model/Relocation;Lorg/apache/maven/model/Relocation;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeRelocation_ArtifactId(Lorg/apache/maven/model/Relocation;Lorg/apache/maven/model/Relocation;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeRelocation_Version(Lorg/apache/maven/model/Relocation;Lorg/apache/maven/model/Relocation;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeRelocation_Message(Lorg/apache/maven/model/Relocation;Lorg/apache/maven/model/Relocation;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeRelocation_ArtifactId(Lorg/apache/maven/model/Relocation;Lorg/apache/maven/model/Relocation;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Relocation;->getArtifactId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Relocation;->getArtifactId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Relocation;->setArtifactId(Ljava/lang/String;)V

    const-string p3, "artifactId"

    const-string p4, "artifactId"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Relocation;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Relocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeRelocation_GroupId(Lorg/apache/maven/model/Relocation;Lorg/apache/maven/model/Relocation;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Relocation;->getGroupId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Relocation;->getGroupId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Relocation;->setGroupId(Ljava/lang/String;)V

    const-string p3, "groupId"

    const-string p4, "groupId"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Relocation;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Relocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeRelocation_Message(Lorg/apache/maven/model/Relocation;Lorg/apache/maven/model/Relocation;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Relocation;->getMessage()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Relocation;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Relocation;->setMessage(Ljava/lang/String;)V

    const-string p3, "message"

    const-string p4, "message"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Relocation;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Relocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeRelocation_Version(Lorg/apache/maven/model/Relocation;Lorg/apache/maven/model/Relocation;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Relocation;->getVersion()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Relocation;->getVersion()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Relocation;->setVersion(Ljava/lang/String;)V

    const-string p3, "version"

    const-string p4, "version"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Relocation;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Relocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeReportPlugin(Lorg/apache/maven/model/ReportPlugin;Lorg/apache/maven/model/ReportPlugin;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeConfigurationContainer(Lorg/apache/maven/model/ConfigurationContainer;Lorg/apache/maven/model/ConfigurationContainer;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeReportPlugin_GroupId(Lorg/apache/maven/model/ReportPlugin;Lorg/apache/maven/model/ReportPlugin;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeReportPlugin_ArtifactId(Lorg/apache/maven/model/ReportPlugin;Lorg/apache/maven/model/ReportPlugin;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeReportPlugin_Version(Lorg/apache/maven/model/ReportPlugin;Lorg/apache/maven/model/ReportPlugin;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeReportPlugin_ReportSets(Lorg/apache/maven/model/ReportPlugin;Lorg/apache/maven/model/ReportPlugin;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeReportPlugin_ArtifactId(Lorg/apache/maven/model/ReportPlugin;Lorg/apache/maven/model/ReportPlugin;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/ReportPlugin;->getArtifactId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportPlugin;->getArtifactId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/ReportPlugin;->setArtifactId(Ljava/lang/String;)V

    const-string p3, "artifactId"

    const-string p4, "artifactId"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/ReportPlugin;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/ReportPlugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeReportPlugin_GroupId(Lorg/apache/maven/model/ReportPlugin;Lorg/apache/maven/model/ReportPlugin;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/ReportPlugin;->getGroupId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportPlugin;->getGroupId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/ReportPlugin;->setGroupId(Ljava/lang/String;)V

    const-string p3, "groupId"

    const-string p4, "groupId"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/ReportPlugin;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/ReportPlugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeReportPlugin_ReportSets(Lorg/apache/maven/model/ReportPlugin;Lorg/apache/maven/model/ReportPlugin;ZLjava/util/Map;)V
    .registers 8

    invoke-virtual {p2}, Lorg/apache/maven/model/ReportPlugin;->getReportSets()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportPlugin;->getReportSets()Ljava/util/List;

    move-result-object p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/ReportSet;

    invoke-virtual {p0, v1}, Lorg/apache/maven/model/merge/ModelMerger;->getReportSetKey(Lorg/apache/maven/model/ReportSet;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/maven/model/ReportSet;

    invoke-virtual {p0, p4}, Lorg/apache/maven/model/merge/ModelMerger;->getReportSetKey(Lorg/apache/maven/model/ReportSet;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/ReportPlugin;->setReportSets(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected mergeReportPlugin_Version(Lorg/apache/maven/model/ReportPlugin;Lorg/apache/maven/model/ReportPlugin;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/ReportPlugin;->getVersion()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportPlugin;->getVersion()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/ReportPlugin;->setVersion(Ljava/lang/String;)V

    const-string p3, "version"

    const-string p4, "version"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/ReportPlugin;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/ReportPlugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeReportSet(Lorg/apache/maven/model/ReportSet;Lorg/apache/maven/model/ReportSet;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeConfigurationContainer(Lorg/apache/maven/model/ConfigurationContainer;Lorg/apache/maven/model/ConfigurationContainer;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeReportSet_Id(Lorg/apache/maven/model/ReportSet;Lorg/apache/maven/model/ReportSet;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeReportSet_Reports(Lorg/apache/maven/model/ReportSet;Lorg/apache/maven/model/ReportSet;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeReportSet_Id(Lorg/apache/maven/model/ReportSet;Lorg/apache/maven/model/ReportSet;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/ReportSet;->getId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportSet;->getId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/ReportSet;->setId(Ljava/lang/String;)V

    const-string p3, "id"

    const-string p4, "id"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/ReportSet;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/ReportSet;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeReportSet_Reports(Lorg/apache/maven/model/ReportSet;Lorg/apache/maven/model/ReportSet;ZLjava/util/Map;)V
    .registers 7

    invoke-virtual {p2}, Lorg/apache/maven/model/ReportSet;->getReports()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportSet;->getReports()Ljava/util/List;

    move-result-object p3

    new-instance p4, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, p4}, Lorg/apache/maven/model/ReportSet;->setReports(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected mergeReporting(Lorg/apache/maven/model/Reporting;Lorg/apache/maven/model/Reporting;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeReporting_OutputDirectory(Lorg/apache/maven/model/Reporting;Lorg/apache/maven/model/Reporting;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeReporting_ExcludeDefaults(Lorg/apache/maven/model/Reporting;Lorg/apache/maven/model/Reporting;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeReporting_Plugins(Lorg/apache/maven/model/Reporting;Lorg/apache/maven/model/Reporting;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeReporting_ExcludeDefaults(Lorg/apache/maven/model/Reporting;Lorg/apache/maven/model/Reporting;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Reporting;->getExcludeDefaults()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Reporting;->getExcludeDefaults()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Reporting;->setExcludeDefaults(Ljava/lang/String;)V

    const-string p3, "excludeDefaults"

    const-string p4, "excludeDefaults"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Reporting;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Reporting;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeReporting_OutputDirectory(Lorg/apache/maven/model/Reporting;Lorg/apache/maven/model/Reporting;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Reporting;->getOutputDirectory()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Reporting;->getOutputDirectory()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Reporting;->setOutputDirectory(Ljava/lang/String;)V

    const-string p3, "outputDirectory"

    const-string p4, "outputDirectory"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Reporting;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Reporting;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeReporting_Plugins(Lorg/apache/maven/model/Reporting;Lorg/apache/maven/model/Reporting;ZLjava/util/Map;)V
    .registers 8

    invoke-virtual {p2}, Lorg/apache/maven/model/Reporting;->getPlugins()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/Reporting;->getPlugins()Ljava/util/List;

    move-result-object p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/ReportPlugin;

    invoke-virtual {p0, v1}, Lorg/apache/maven/model/merge/ModelMerger;->getReportPluginKey(Lorg/apache/maven/model/ReportPlugin;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/maven/model/ReportPlugin;

    invoke-virtual {p0, p4}, Lorg/apache/maven/model/merge/ModelMerger;->getReportPluginKey(Lorg/apache/maven/model/ReportPlugin;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/apache/maven/model/Reporting;->setPlugins(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected mergeRepository(Lorg/apache/maven/model/Repository;Lorg/apache/maven/model/Repository;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeRepositoryBase(Lorg/apache/maven/model/RepositoryBase;Lorg/apache/maven/model/RepositoryBase;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeRepository_Releases(Lorg/apache/maven/model/Repository;Lorg/apache/maven/model/Repository;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeRepository_Snapshots(Lorg/apache/maven/model/Repository;Lorg/apache/maven/model/Repository;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeRepositoryBase(Lorg/apache/maven/model/RepositoryBase;Lorg/apache/maven/model/RepositoryBase;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeRepositoryBase_Id(Lorg/apache/maven/model/RepositoryBase;Lorg/apache/maven/model/RepositoryBase;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeRepositoryBase_Name(Lorg/apache/maven/model/RepositoryBase;Lorg/apache/maven/model/RepositoryBase;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeRepositoryBase_Url(Lorg/apache/maven/model/RepositoryBase;Lorg/apache/maven/model/RepositoryBase;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeRepositoryBase_Layout(Lorg/apache/maven/model/RepositoryBase;Lorg/apache/maven/model/RepositoryBase;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeRepositoryBase_Id(Lorg/apache/maven/model/RepositoryBase;Lorg/apache/maven/model/RepositoryBase;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/RepositoryBase;->getId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryBase;->getId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/RepositoryBase;->setId(Ljava/lang/String;)V

    const-string p3, "id"

    const-string p4, "id"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/RepositoryBase;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/RepositoryBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeRepositoryBase_Layout(Lorg/apache/maven/model/RepositoryBase;Lorg/apache/maven/model/RepositoryBase;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/RepositoryBase;->getLayout()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryBase;->getLayout()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/RepositoryBase;->setLayout(Ljava/lang/String;)V

    const-string p3, "layout"

    const-string p4, "layout"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/RepositoryBase;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/RepositoryBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeRepositoryBase_Name(Lorg/apache/maven/model/RepositoryBase;Lorg/apache/maven/model/RepositoryBase;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/RepositoryBase;->getName()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryBase;->getName()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/RepositoryBase;->setName(Ljava/lang/String;)V

    const-string p3, "name"

    const-string p4, "name"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/RepositoryBase;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/RepositoryBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeRepositoryBase_Url(Lorg/apache/maven/model/RepositoryBase;Lorg/apache/maven/model/RepositoryBase;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/RepositoryBase;->getUrl()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryBase;->getUrl()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/RepositoryBase;->setUrl(Ljava/lang/String;)V

    const-string p3, "url"

    const-string p4, "url"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/RepositoryBase;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/RepositoryBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeRepositoryPolicy(Lorg/apache/maven/model/RepositoryPolicy;Lorg/apache/maven/model/RepositoryPolicy;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeRepositoryPolicy_Enabled(Lorg/apache/maven/model/RepositoryPolicy;Lorg/apache/maven/model/RepositoryPolicy;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeRepositoryPolicy_UpdatePolicy(Lorg/apache/maven/model/RepositoryPolicy;Lorg/apache/maven/model/RepositoryPolicy;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeRepositoryPolicy_ChecksumPolicy(Lorg/apache/maven/model/RepositoryPolicy;Lorg/apache/maven/model/RepositoryPolicy;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeRepositoryPolicy_ChecksumPolicy(Lorg/apache/maven/model/RepositoryPolicy;Lorg/apache/maven/model/RepositoryPolicy;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/RepositoryPolicy;->getChecksumPolicy()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryPolicy;->getChecksumPolicy()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/RepositoryPolicy;->setChecksumPolicy(Ljava/lang/String;)V

    const-string p3, "checksumPolicy"

    const-string p4, "checksumPolicy"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/RepositoryPolicy;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/RepositoryPolicy;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeRepositoryPolicy_Enabled(Lorg/apache/maven/model/RepositoryPolicy;Lorg/apache/maven/model/RepositoryPolicy;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/RepositoryPolicy;->getEnabled()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryPolicy;->getEnabled()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/RepositoryPolicy;->setEnabled(Ljava/lang/String;)V

    const-string p3, "enabled"

    const-string p4, "enabled"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/RepositoryPolicy;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/RepositoryPolicy;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeRepositoryPolicy_UpdatePolicy(Lorg/apache/maven/model/RepositoryPolicy;Lorg/apache/maven/model/RepositoryPolicy;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/RepositoryPolicy;->getUpdatePolicy()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryPolicy;->getUpdatePolicy()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/RepositoryPolicy;->setUpdatePolicy(Ljava/lang/String;)V

    const-string p3, "updatePolicy"

    const-string p4, "updatePolicy"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/RepositoryPolicy;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/RepositoryPolicy;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeRepository_Releases(Lorg/apache/maven/model/Repository;Lorg/apache/maven/model/Repository;ZLjava/util/Map;)V
    .registers 6

    invoke-virtual {p2}, Lorg/apache/maven/model/Repository;->getReleases()Lorg/apache/maven/model/RepositoryPolicy;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/Repository;->getReleases()Lorg/apache/maven/model/RepositoryPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/maven/model/RepositoryPolicy;

    invoke-direct {v0}, Lorg/apache/maven/model/RepositoryPolicy;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/maven/model/Repository;->setReleases(Lorg/apache/maven/model/RepositoryPolicy;)V

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeRepositoryPolicy(Lorg/apache/maven/model/RepositoryPolicy;Lorg/apache/maven/model/RepositoryPolicy;ZLjava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected mergeRepository_Snapshots(Lorg/apache/maven/model/Repository;Lorg/apache/maven/model/Repository;ZLjava/util/Map;)V
    .registers 6

    invoke-virtual {p2}, Lorg/apache/maven/model/Repository;->getSnapshots()Lorg/apache/maven/model/RepositoryPolicy;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/Repository;->getSnapshots()Lorg/apache/maven/model/RepositoryPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/maven/model/RepositoryPolicy;

    invoke-direct {v0}, Lorg/apache/maven/model/RepositoryPolicy;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/maven/model/Repository;->setSnapshots(Lorg/apache/maven/model/RepositoryPolicy;)V

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeRepositoryPolicy(Lorg/apache/maven/model/RepositoryPolicy;Lorg/apache/maven/model/RepositoryPolicy;ZLjava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected mergeResource(Lorg/apache/maven/model/Resource;Lorg/apache/maven/model/Resource;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeFileSet(Lorg/apache/maven/model/FileSet;Lorg/apache/maven/model/FileSet;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeResource_TargetPath(Lorg/apache/maven/model/Resource;Lorg/apache/maven/model/Resource;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeResource_Filtering(Lorg/apache/maven/model/Resource;Lorg/apache/maven/model/Resource;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeResource_MergeId(Lorg/apache/maven/model/Resource;Lorg/apache/maven/model/Resource;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeResource_Filtering(Lorg/apache/maven/model/Resource;Lorg/apache/maven/model/Resource;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Resource;->getFiltering()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Resource;->getFiltering()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Resource;->setFiltering(Ljava/lang/String;)V

    const-string p3, "filtering"

    const-string p4, "filtering"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Resource;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Resource;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeResource_MergeId(Lorg/apache/maven/model/Resource;Lorg/apache/maven/model/Resource;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Resource;->getMergeId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Resource;->getMergeId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/maven/model/Resource;->setMergeId(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected mergeResource_TargetPath(Lorg/apache/maven/model/Resource;Lorg/apache/maven/model/Resource;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Resource;->getTargetPath()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Resource;->getTargetPath()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Resource;->setTargetPath(Ljava/lang/String;)V

    const-string p3, "targetPath"

    const-string p4, "targetPath"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Resource;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Resource;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeScm(Lorg/apache/maven/model/Scm;Lorg/apache/maven/model/Scm;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeScm_Url(Lorg/apache/maven/model/Scm;Lorg/apache/maven/model/Scm;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeScm_Connection(Lorg/apache/maven/model/Scm;Lorg/apache/maven/model/Scm;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeScm_DeveloperConnection(Lorg/apache/maven/model/Scm;Lorg/apache/maven/model/Scm;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeScm_Tag(Lorg/apache/maven/model/Scm;Lorg/apache/maven/model/Scm;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeScm_Connection(Lorg/apache/maven/model/Scm;Lorg/apache/maven/model/Scm;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Scm;->getConnection()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Scm;->getConnection()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Scm;->setConnection(Ljava/lang/String;)V

    const-string p3, "connection"

    const-string p4, "connection"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Scm;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Scm;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeScm_DeveloperConnection(Lorg/apache/maven/model/Scm;Lorg/apache/maven/model/Scm;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Scm;->getDeveloperConnection()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Scm;->getDeveloperConnection()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Scm;->setDeveloperConnection(Ljava/lang/String;)V

    const-string p3, "developerConnection"

    const-string p4, "developerConnection"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Scm;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Scm;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeScm_Tag(Lorg/apache/maven/model/Scm;Lorg/apache/maven/model/Scm;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Scm;->getTag()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Scm;->getTag()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Scm;->setTag(Ljava/lang/String;)V

    const-string p3, "tag"

    const-string p4, "tag"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Scm;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Scm;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeScm_Url(Lorg/apache/maven/model/Scm;Lorg/apache/maven/model/Scm;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Scm;->getUrl()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Scm;->getUrl()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Scm;->setUrl(Ljava/lang/String;)V

    const-string p3, "url"

    const-string p4, "url"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Scm;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Scm;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeSite(Lorg/apache/maven/model/Site;Lorg/apache/maven/model/Site;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeSite_Id(Lorg/apache/maven/model/Site;Lorg/apache/maven/model/Site;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeSite_Name(Lorg/apache/maven/model/Site;Lorg/apache/maven/model/Site;ZLjava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/maven/model/merge/ModelMerger;->mergeSite_Url(Lorg/apache/maven/model/Site;Lorg/apache/maven/model/Site;ZLjava/util/Map;)V

    return-void
.end method

.method protected mergeSite_Id(Lorg/apache/maven/model/Site;Lorg/apache/maven/model/Site;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Site;->getId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Site;->getId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Site;->setId(Ljava/lang/String;)V

    const-string p3, "id"

    const-string p4, "id"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Site;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Site;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeSite_Name(Lorg/apache/maven/model/Site;Lorg/apache/maven/model/Site;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Site;->getName()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Site;->getName()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Site;->setName(Ljava/lang/String;)V

    const-string p3, "name"

    const-string p4, "name"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Site;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Site;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method

.method protected mergeSite_Url(Lorg/apache/maven/model/Site;Lorg/apache/maven/model/Site;ZLjava/util/Map;)V
    .registers 5

    invoke-virtual {p2}, Lorg/apache/maven/model/Site;->getUrl()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Site;->getUrl()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1, p4}, Lorg/apache/maven/model/Site;->setUrl(Ljava/lang/String;)V

    const-string p3, "url"

    const-string p4, "url"

    invoke-virtual {p2, p4}, Lorg/apache/maven/model/Site;->getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/apache/maven/model/Site;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :cond_1
    return-void
.end method
