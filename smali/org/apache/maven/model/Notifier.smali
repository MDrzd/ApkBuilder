.class public Lorg/apache/maven/model/Notifier;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/maven/model/InputLocationTracker;


# instance fields
.field private address:Ljava/lang/String;

.field private configuration:Ljava/util/Properties;

.field private locations:Ljava/util/Map;

.field private sendOnError:Z

.field private sendOnFailure:Z

.field private sendOnSuccess:Z

.field private sendOnWarning:Z

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mail"

    iput-object v0, p0, Lorg/apache/maven/model/Notifier;->type:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/maven/model/Notifier;->sendOnError:Z

    iput-boolean v0, p0, Lorg/apache/maven/model/Notifier;->sendOnFailure:Z

    iput-boolean v0, p0, Lorg/apache/maven/model/Notifier;->sendOnSuccess:Z

    iput-boolean v0, p0, Lorg/apache/maven/model/Notifier;->sendOnWarning:Z

    return-void
.end method


# virtual methods
.method public addConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/maven/model/Notifier;->getConfiguration()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/Notifier;->clone()Lorg/apache/maven/model/Notifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/maven/model/Notifier;
    .registers 5

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/Notifier;

    iget-object v1, p0, Lorg/apache/maven/model/Notifier;->configuration:Ljava/util/Properties;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/maven/model/Notifier;->configuration:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    iput-object v1, v0, Lorg/apache/maven/model/Notifier;->configuration:Ljava/util/Properties;

    :cond_0
    iget-object v1, v0, Lorg/apache/maven/model/Notifier;->locations:Ljava/util/Map;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lorg/apache/maven/model/Notifier;->locations:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lorg/apache/maven/model/Notifier;->locations:Ljava/util/Map;
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

.method public getAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Notifier;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getConfiguration()Ljava/util/Properties;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Notifier;->configuration:Ljava/util/Properties;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/Notifier;->configuration:Ljava/util/Properties;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/Notifier;->configuration:Ljava/util/Properties;

    return-object v0
.end method

.method public getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;
    .registers 3

    iget-object v0, p0, Lorg/apache/maven/model/Notifier;->locations:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/maven/model/Notifier;->locations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/maven/model/InputLocation;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/Notifier;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isSendOnError()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/maven/model/Notifier;->sendOnError:Z

    return v0
.end method

.method public isSendOnFailure()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/maven/model/Notifier;->sendOnFailure:Z

    return v0
.end method

.method public isSendOnSuccess()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/maven/model/Notifier;->sendOnSuccess:Z

    return v0
.end method

.method public isSendOnWarning()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/maven/model/Notifier;->sendOnWarning:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Notifier;->address:Ljava/lang/String;

    return-void
.end method

.method public setConfiguration(Ljava/util/Properties;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Notifier;->configuration:Ljava/util/Properties;

    return-void
.end method

.method public setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V
    .registers 4

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/maven/model/Notifier;->locations:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/Notifier;->locations:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/Notifier;->locations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public setSendOnError(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/maven/model/Notifier;->sendOnError:Z

    return-void
.end method

.method public setSendOnFailure(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/maven/model/Notifier;->sendOnFailure:Z

    return-void
.end method

.method public setSendOnSuccess(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/maven/model/Notifier;->sendOnSuccess:Z

    return-void
.end method

.method public setSendOnWarning(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/maven/model/Notifier;->sendOnWarning:Z

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/Notifier;->type:Ljava/lang/String;

    return-void
.end method
