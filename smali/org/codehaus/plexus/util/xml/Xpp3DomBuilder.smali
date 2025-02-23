.class public Lorg/codehaus/plexus/util/xml/Xpp3DomBuilder;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_TRIM:Z = true


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/io/InputStream;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/Xpp3Dom;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/codehaus/plexus/util/xml/Xpp3DomBuilder;->build(Ljava/io/InputStream;Ljava/lang/String;Z)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object p0

    return-object p0
.end method

.method public static build(Ljava/io/InputStream;Ljava/lang/String;Z)Lorg/codehaus/plexus/util/xml/Xpp3Dom;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;

    invoke-direct {v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;-><init>()V

    invoke-interface {v0, p0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/codehaus/plexus/util/xml/Xpp3DomBuilder;->build(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    invoke-static {p0}, Lorg/codehaus/plexus/util/IOUtil;->close(Ljava/io/InputStream;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lorg/codehaus/plexus/util/IOUtil;->close(Ljava/io/InputStream;)V

    throw p1
.end method

.method public static build(Ljava/io/Reader;)Lorg/codehaus/plexus/util/xml/Xpp3Dom;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/codehaus/plexus/util/xml/Xpp3DomBuilder;->build(Ljava/io/Reader;Z)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object p0

    return-object p0
.end method

.method public static build(Ljava/io/Reader;Z)Lorg/codehaus/plexus/util/xml/Xpp3Dom;
    .registers 3

    :try_start_0
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;

    invoke-direct {v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;-><init>()V

    invoke-interface {v0, p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-static {v0, p1}, Lorg/codehaus/plexus/util/xml/Xpp3DomBuilder;->build(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    invoke-static {p0}, Lorg/codehaus/plexus/util/IOUtil;->close(Ljava/io/Reader;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lorg/codehaus/plexus/util/IOUtil;->close(Ljava/io/Reader;)V

    throw p1
.end method

.method public static build(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)Lorg/codehaus/plexus/util/xml/Xpp3Dom;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/codehaus/plexus/util/xml/Xpp3DomBuilder;->build(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object p0

    return-object p0
.end method

.method public static build(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)Lorg/codehaus/plexus/util/xml/Xpp3Dom;
    .registers 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-eq v2, v5, :cond_b

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v2, v6, :cond_5

    invoke-interface {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    invoke-direct {v4, v2}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    invoke-virtual {v2, v4}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->addChild(Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->isEmptyElementTag()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v6, v2, :cond_4

    invoke-interface {p0, v6}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v6}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v7, :cond_3

    const-string v7, "xml:space"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "preserve"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v7, 0x1

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    move v4, v7

    goto :goto_6

    :cond_5
    const/4 v6, 0x4

    if-ne v2, v6, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_6

    if-nez v4, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :cond_6
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_7
    const/4 v6, 0x3

    if-ne v2, v6, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getChildCount()I

    move-result v8

    if-nez v8, :cond_9

    if-nez v6, :cond_8

    invoke-virtual {v5, v7}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->setValue(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->setValue(Ljava/lang/String;)V

    :cond_9
    :goto_5
    if-nez v2, :cond_a

    return-object v5

    :cond_a
    :goto_6
    invoke-interface {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->next()I

    move-result v2

    goto/16 :goto_0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "End of document found before returning to 0 depth"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
