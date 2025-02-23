.class public Lorg/codehaus/plexus/util/xml/Xpp3Dom;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CHILDREN_COMBINATION_APPEND:Ljava/lang/String; = "append"

.field public static final CHILDREN_COMBINATION_MERGE:Ljava/lang/String; = "merge"

.field public static final CHILDREN_COMBINATION_MODE_ATTRIBUTE:Ljava/lang/String; = "combine.children"

.field public static final DEFAULT_CHILDREN_COMBINATION_MODE:Ljava/lang/String; = "merge"

.field public static final DEFAULT_SELF_COMBINATION_MODE:Ljava/lang/String; = "merge"

.field private static final EMPTY_DOM_ARRAY:[Lorg/codehaus/plexus/util/xml/Xpp3Dom;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final SELF_COMBINATION_MERGE:Ljava/lang/String; = "merge"

.field public static final SELF_COMBINATION_MODE_ATTRIBUTE:Ljava/lang/String; = "combine.self"

.field public static final SELF_COMBINATION_OVERRIDE:Ljava/lang/String; = "override"

.field private static final serialVersionUID:J = 0x23a2fe64035c5eecL


# instance fields
.field protected attributes:Ljava/util/Map;

.field protected final childList:Ljava/util/List;

.field protected final childMap:Ljava/util/Map;

.field protected name:Ljava/lang/String;

.field protected parent:Lorg/codehaus/plexus/util/xml/Xpp3Dom;

.field protected value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v0, v0, [Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    sput-object v0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->EMPTY_DOM_ARRAY:[Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->name:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V
    .registers 3

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;-><init>(Lorg/codehaus/plexus/util/xml/Xpp3Dom;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/plexus/util/xml/Xpp3Dom;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getChildCount()I

    move-result p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    shl-int/lit8 v1, p2, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getAttributeNames()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p2, :cond_1

    new-instance v0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    invoke-virtual {p1, v2}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getChild(I)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;-><init>(Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->addChild(Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isNotEmpty(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static mergeIntoXpp3Dom(Lorg/codehaus/plexus/util/xml/Xpp3Dom;Lorg/codehaus/plexus/util/xml/Xpp3Dom;Ljava/lang/Boolean;)V
    .registers 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "combine.self"

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "override"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->setValue(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getAttributeNames()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    invoke-virtual {p0, v5}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v5}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getChildCount()I

    move-result v0

    if-lez v0, :cond_d

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_4
    const-string v0, "combine.children"

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "append"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    :cond_5
    :goto_1
    if-nez v1, :cond_8

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getChildren()[Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object p2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    invoke-virtual {p1, v1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getChild(I)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object v2

    new-instance v4, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    invoke-direct {v4, v2}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;-><init>(Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    invoke-virtual {p0, v4}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->addChild(Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    array-length p1, p2

    :goto_3
    if-ge v3, p1, :cond_7

    aget-object v0, p2, v3

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->addChild(Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    return-void

    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getChildren(Ljava/lang/String;)[Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object v4

    array-length v5, v4

    if-lez v5, :cond_9

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getChildCount()I

    move-result v1

    :goto_5
    if-ge v3, v1, :cond_d

    invoke-virtual {p1, v3}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getChild(I)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Iterator;

    if-nez v4, :cond_b

    new-instance v4, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    invoke-direct {v4, v2}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;-><init>(Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    invoke-virtual {p0, v4}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->addChild(Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    goto :goto_6

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    invoke-static {v4, v2, p2}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->mergeIntoXpp3Dom(Lorg/codehaus/plexus/util/xml/Xpp3Dom;Lorg/codehaus/plexus/util/xml/Xpp3Dom;Ljava/lang/Boolean;)V

    :cond_c
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    return-void
.end method

.method public static mergeXpp3Dom(Lorg/codehaus/plexus/util/xml/Xpp3Dom;Lorg/codehaus/plexus/util/xml/Xpp3Dom;)Lorg/codehaus/plexus/util/xml/Xpp3Dom;
    .registers 3

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->mergeIntoXpp3Dom(Lorg/codehaus/plexus/util/xml/Xpp3Dom;Lorg/codehaus/plexus/util/xml/Xpp3Dom;Ljava/lang/Boolean;)V

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static mergeXpp3Dom(Lorg/codehaus/plexus/util/xml/Xpp3Dom;Lorg/codehaus/plexus/util/xml/Xpp3Dom;Ljava/lang/Boolean;)Lorg/codehaus/plexus/util/xml/Xpp3Dom;
    .registers 3

    if-eqz p0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->mergeIntoXpp3Dom(Lorg/codehaus/plexus/util/xml/Xpp3Dom;Lorg/codehaus/plexus/util/xml/Xpp3Dom;Ljava/lang/Boolean;)V

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public addChild(Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V
    .registers 4

    invoke-virtual {p1, p0}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->setParent(Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    return v2

    :cond_3
    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->value:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->value:Ljava/lang/String;

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->value:Ljava/lang/String;

    iget-object v3, p1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_1
    return v2

    :cond_5
    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->attributes:Ljava/util/Map;

    if-nez v1, :cond_6

    iget-object v1, p1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->attributes:Ljava/util/Map;

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->attributes:Ljava/util/Map;

    iget-object v3, p1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->attributes:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_2
    return v2

    :cond_7
    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    if-nez v1, :cond_8

    iget-object p1, p1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    iget-object p1, p1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    :goto_3
    return v2

    :cond_9
    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->attributes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeNames()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->attributes:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method public getChild(I)Lorg/codehaus/plexus/util/xml/Xpp3Dom;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    return-object p1
.end method

.method public getChild(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/Xpp3Dom;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    return-object p1
.end method

.method public getChildCount()I
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChildren()[Lorg/codehaus/plexus/util/xml/Xpp3Dom;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->EMPTY_DOM_ARRAY:[Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    return-object v0
.end method

.method public getChildren(Ljava/lang/String;)[Lorg/codehaus/plexus/util/xml/Xpp3Dom;
    .registers 6

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object p1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->EMPTY_DOM_ARRAY:[Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    invoke-virtual {v2}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lorg/codehaus/plexus/util/xml/Xpp3Dom;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->parent:Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->value:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->attributes:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->attributes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public removeChild(I)V
    .registers 4

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getChild(I)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->childList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->setParent(Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->attributes:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->attributes:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Attribute name can not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Attribute value can not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParent(Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->parent:Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;

    const-string v2, "UTF-8"

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p0}, Lorg/codehaus/plexus/util/xml/Xpp3DomWriter;->write(Lorg/codehaus/plexus/util/xml/XMLWriter;Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnescapedString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;

    const-string v2, "UTF-8"

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lorg/codehaus/plexus/util/xml/Xpp3DomWriter;->write(Lorg/codehaus/plexus/util/xml/XMLWriter;Lorg/codehaus/plexus/util/xml/Xpp3Dom;Z)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToSerializer(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 4

    new-instance v0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;

    invoke-direct {v0, p1, p2}, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    invoke-static {v0, p0}, Lorg/codehaus/plexus/util/xml/Xpp3DomWriter;->write(Lorg/codehaus/plexus/util/xml/XMLWriter;Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    invoke-virtual {v0}, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->getExceptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->getExceptions()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method
