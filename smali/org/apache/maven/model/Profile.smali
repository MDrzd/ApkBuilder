.class public Lorg/apache/maven/model/Profile;
.super Lorg/apache/maven/model/ModelBase;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final SOURCE_POM:Ljava/lang/String; = "pom"

.field public static final SOURCE_SETTINGS:Ljava/lang/String; = "settings.xml"


# instance fields
.field private activation:Lorg/apache/maven/model/Activation;

.field private build:Lorg/apache/maven/model/BuildBase;

.field private id:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/maven/model/ModelBase;-><init>()V

    const-string v0, "default"

    iput-object v0, p0, Lorg/apache/maven/model/Profile;->id:Ljava/lang/String;

    const-string v0, "pom"

    iput-object v0, p0, Lorg/apache/maven/model/Profile;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Profile;->clone()Lorg/apache/maven/model/Profile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/maven/model/ModelBase;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Profile;->clone()Lorg/apache/maven/model/Profile;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/maven/model/Profile;
    .registers 5

    :try_start_0
    invoke-super {p0}, Lorg/apache/maven/model/ModelBase;->clone()Lorg/apache/maven/model/ModelBase;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/Profile;

    iget-object v1, p0, Lorg/apache/maven/model/Profile;->activation:Lorg/apache/maven/model/Activation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/maven/model/Profile;->activation:Lorg/apache/maven/model/Activation;

    invoke-virtual {v1}, Lorg/apache/maven/model/Activation;->clone()Lorg/apache/maven/model/Activation;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/Profile;->activation:Lorg/apache/maven/model/Activation;

    :cond_0
    iget-object v1, p0, Lorg/apache/maven/model/Profile;->build:Lorg/apache/maven/model/BuildBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/maven/model/Profile;->build:Lorg/apache/maven/model/BuildBase;

    invoke-virtual {v1}, Lorg/apache/maven/model/BuildBase;->clone()Lorg/apache/maven/model/BuildBase;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/maven/model/Profile;->build:Lorg/apache/maven/model/BuildBase;
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

.method public getActivation()Lorg/apache/maven/model/Activation;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Profile;->activation:Lorg/apache/maven/model/Activation;

    return-object v0
.end method

.method public getBuild()Lorg/apache/maven/model/BuildBase;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Profile;->build:Lorg/apache/maven/model/BuildBase;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Profile;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Profile;->source:Ljava/lang/String;

    return-object v0
.end method

.method public setActivation(Lorg/apache/maven/model/Activation;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Profile;->activation:Lorg/apache/maven/model/Activation;

    return-void
.end method

.method public setBuild(Lorg/apache/maven/model/BuildBase;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Profile;->build:Lorg/apache/maven/model/BuildBase;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Profile;->id:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Profile;->source:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Profile {id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/maven/model/Profile;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/maven/model/Profile;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
