.class public Lcom/beust/jcommander/FuzzyMap;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findAbbreviatedValue(Ljava/util/Map;Lcom/beust/jcommander/FuzzyMap$IKey;Z)Ljava/lang/Object;
    .registers 11

    invoke-interface {p1}, Lcom/beust/jcommander/FuzzyMap$IKey;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newHashMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/beust/jcommander/FuzzyMap$IKey;

    invoke-interface {v3}, Lcom/beust/jcommander/FuzzyMap$IKey;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_1

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-gt p0, v4, :cond_6

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-ne p0, v4, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    return-object p0

    :cond_6
    new-instance p0, Lcom/beust/jcommander/ParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Ambiguous option: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " matches "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static findInMap(Ljava/util/Map;Lcom/beust/jcommander/FuzzyMap$IKey;ZZ)Ljava/lang/Object;
    .registers 6

    if-eqz p3, :cond_0

    invoke-static {p0, p1, p2}, Lcom/beust/jcommander/FuzzyMap;->findAbbreviatedValue(Ljava/util/Map;Lcom/beust/jcommander/FuzzyMap$IKey;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/beust/jcommander/FuzzyMap$IKey;

    invoke-interface {p3}, Lcom/beust/jcommander/FuzzyMap$IKey;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/beust/jcommander/FuzzyMap$IKey;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
