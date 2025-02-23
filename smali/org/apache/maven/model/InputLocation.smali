.class public final Lorg/apache/maven/model/InputLocation;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/maven/model/InputLocationTracker;


# instance fields
.field private columnNumber:I

.field private lineNumber:I

.field private locations:Ljava/util/Map;

.field private source:Lorg/apache/maven/model/InputSource;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/maven/model/InputLocation;->lineNumber:I

    iput v0, p0, Lorg/apache/maven/model/InputLocation;->columnNumber:I

    iput p1, p0, Lorg/apache/maven/model/InputLocation;->lineNumber:I

    iput p2, p0, Lorg/apache/maven/model/InputLocation;->columnNumber:I

    return-void
.end method

.method public constructor <init>(IILorg/apache/maven/model/InputSource;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/maven/model/InputLocation;->lineNumber:I

    iput v0, p0, Lorg/apache/maven/model/InputLocation;->columnNumber:I

    iput p1, p0, Lorg/apache/maven/model/InputLocation;->lineNumber:I

    iput p2, p0, Lorg/apache/maven/model/InputLocation;->columnNumber:I

    iput-object p3, p0, Lorg/apache/maven/model/InputLocation;->source:Lorg/apache/maven/model/InputSource;

    return-void
.end method

.method public static merge(Lorg/apache/maven/model/InputLocation;Lorg/apache/maven/model/InputLocation;Ljava/util/Collection;)Lorg/apache/maven/model/InputLocation;
    .registers 7

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Lorg/apache/maven/model/InputLocation;

    invoke-virtual {p0}, Lorg/apache/maven/model/InputLocation;->getLineNumber()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/maven/model/InputLocation;->getColumnNumber()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/maven/model/InputLocation;->getSource()Lorg/apache/maven/model/InputSource;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-virtual {p1}, Lorg/apache/maven/model/InputLocation;->getLocations()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/maven/model/InputLocation;->getLocations()Ljava/util/Map;

    move-result-object p0

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    if-nez p0, :cond_3

    move-object p0, p1

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    check-cast v2, Lorg/apache/maven/model/InputLocation;

    goto :goto_2

    :cond_4
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :goto_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    move-object p0, v1

    :goto_3
    invoke-virtual {v0, p0}, Lorg/apache/maven/model/InputLocation;->setLocations(Ljava/util/Map;)V

    return-object v0
.end method

.method public static merge(Lorg/apache/maven/model/InputLocation;Lorg/apache/maven/model/InputLocation;Z)Lorg/apache/maven/model/InputLocation;
    .registers 7

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Lorg/apache/maven/model/InputLocation;

    invoke-virtual {p0}, Lorg/apache/maven/model/InputLocation;->getLineNumber()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/maven/model/InputLocation;->getColumnNumber()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/maven/model/InputLocation;->getSource()Lorg/apache/maven/model/InputSource;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-virtual {p1}, Lorg/apache/maven/model/InputLocation;->getLocations()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/maven/model/InputLocation;->getLocations()Ljava/util/Map;

    move-result-object p0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    if-nez p0, :cond_3

    move-object p0, p1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p2, :cond_4

    move-object v2, p0

    goto :goto_0

    :cond_4
    move-object v2, p1

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p2, :cond_5

    move-object p0, p1

    :cond_5
    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object p0, v1

    :goto_1
    invoke-virtual {v0, p0}, Lorg/apache/maven/model/InputLocation;->setLocations(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/maven/model/InputLocation;->clone()Lorg/apache/maven/model/InputLocation;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/apache/maven/model/InputLocation;
    .registers 5

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/InputLocation;

    iget-object v1, v0, Lorg/apache/maven/model/InputLocation;->locations:Ljava/util/Map;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lorg/apache/maven/model/InputLocation;->locations:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lorg/apache/maven/model/InputLocation;->locations:Ljava/util/Map;
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

.method public final getColumnNumber()I
    .registers 2

    iget v0, p0, Lorg/apache/maven/model/InputLocation;->columnNumber:I

    return v0
.end method

.method public final getLineNumber()I
    .registers 2

    iget v0, p0, Lorg/apache/maven/model/InputLocation;->lineNumber:I

    return v0
.end method

.method public final getLocation(Ljava/lang/Object;)Lorg/apache/maven/model/InputLocation;
    .registers 3

    iget-object v0, p0, Lorg/apache/maven/model/InputLocation;->locations:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/maven/model/InputLocation;->locations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/maven/model/InputLocation;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getLocations()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/InputLocation;->locations:Ljava/util/Map;

    return-object v0
.end method

.method public final getSource()Lorg/apache/maven/model/InputSource;
    .registers 2

    iget-object v0, p0, Lorg/apache/maven/model/InputLocation;->source:Lorg/apache/maven/model/InputSource;

    return-object v0
.end method

.method public final setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V
    .registers 4

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/maven/model/InputLocation;->locations:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/maven/model/InputLocation;->locations:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/apache/maven/model/InputLocation;->locations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final setLocations(Ljava/util/Map;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/InputLocation;->locations:Ljava/util/Map;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/maven/model/InputLocation;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/maven/model/InputLocation;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/maven/model/InputLocation;->getSource()Lorg/apache/maven/model/InputSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
