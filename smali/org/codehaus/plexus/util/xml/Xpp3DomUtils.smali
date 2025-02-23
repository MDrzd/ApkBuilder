.class public Lorg/codehaus/plexus/util/xml/Xpp3DomUtils;
.super Ljava/lang/Object;


# static fields
.field public static final CHILDREN_COMBINATION_APPEND:Ljava/lang/String; = "append"

.field public static final CHILDREN_COMBINATION_MERGE:Ljava/lang/String; = "merge"

.field public static final CHILDREN_COMBINATION_MODE_ATTRIBUTE:Ljava/lang/String; = "combine.children"

.field public static final DEFAULT_CHILDREN_COMBINATION_MODE:Ljava/lang/String; = "merge"

.field public static final DEFAULT_SELF_COMBINATION_MODE:Ljava/lang/String; = "merge"

.field public static final ID_COMBINATION_MODE_ATTRIBUTE:Ljava/lang/String; = "combine.id"

.field public static final SELF_COMBINATION_MERGE:Ljava/lang/String; = "merge"

.field public static final SELF_COMBINATION_MODE_ATTRIBUTE:Ljava/lang/String; = "combine.self"

.field public static final SELF_COMBINATION_OVERRIDE:Ljava/lang/String; = "override"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .registers 16

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "combine.self"

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/plexus/util/xml/Xpp3DomUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string v1, "override"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/plexus/util/xml/Xpp3DomUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->setValue(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getAttributeNames()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_4

    aget-object v5, v0, v4

    invoke-virtual {p0, v5}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/codehaus/plexus/util/xml/Xpp3DomUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1, v5}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2

    :cond_5
    const-string v0, "combine.children"

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/plexus/util/xml/Xpp3DomUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "append"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getChildren()[Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object p1

    array-length v1, p1

    move v4, v0

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_b

    aget-object v5, p1, v0

    const-string v6, "combine.id"

    invoke-virtual {v5, v6}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6}, Lorg/codehaus/plexus/util/xml/Xpp3DomUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getChildren()[Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object v8

    array-length v9, v8

    move-object v10, v7

    move v7, v4

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v9, :cond_8

    aget-object v11, v8, v4

    const-string v12, "combine.id"

    invoke-virtual {v11, v12}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object v10, v11

    const/4 v7, 0x1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    move v4, v7

    goto :goto_5

    :cond_9
    invoke-virtual {v5}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getChild(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object v10

    :goto_5
    if-eqz v4, :cond_a

    if-eqz v10, :cond_a

    invoke-static {v10, v5, p2}, Lorg/codehaus/plexus/util/xml/Xpp3DomUtils;->mergeIntoXpp3Dom(Lorg/codehaus/plexus/util/xml/Xpp3Dom;Lorg/codehaus/plexus/util/xml/Xpp3Dom;Ljava/lang/Boolean;)V

    goto :goto_6

    :cond_a
    new-instance v6, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    invoke-direct {v6, v5}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;-><init>(Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    invoke-virtual {p0, v6}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->addChild(Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    return-void
.end method

.method public static mergeXpp3Dom(Lorg/codehaus/plexus/util/xml/Xpp3Dom;Lorg/codehaus/plexus/util/xml/Xpp3Dom;)Lorg/codehaus/plexus/util/xml/Xpp3Dom;
    .registers 3

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/codehaus/plexus/util/xml/Xpp3DomUtils;->mergeIntoXpp3Dom(Lorg/codehaus/plexus/util/xml/Xpp3Dom;Lorg/codehaus/plexus/util/xml/Xpp3Dom;Ljava/lang/Boolean;)V

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static mergeXpp3Dom(Lorg/codehaus/plexus/util/xml/Xpp3Dom;Lorg/codehaus/plexus/util/xml/Xpp3Dom;Ljava/lang/Boolean;)Lorg/codehaus/plexus/util/xml/Xpp3Dom;
    .registers 3

    if-eqz p0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/codehaus/plexus/util/xml/Xpp3DomUtils;->mergeIntoXpp3Dom(Lorg/codehaus/plexus/util/xml/Xpp3Dom;Lorg/codehaus/plexus/util/xml/Xpp3Dom;Ljava/lang/Boolean;)V

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public writeToSerializer(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V
    .registers 5

    new-instance v0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;

    invoke-direct {v0, p1, p2}, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    invoke-static {v0, p3}, Lorg/codehaus/plexus/util/xml/Xpp3DomWriter;->write(Lorg/codehaus/plexus/util/xml/XMLWriter;Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

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
