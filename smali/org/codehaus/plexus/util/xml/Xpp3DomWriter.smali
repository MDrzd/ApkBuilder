.class public Lorg/codehaus/plexus/util/xml/Xpp3DomWriter;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static write(Ljava/io/PrintWriter;Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V
    .registers 3

    new-instance v0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;

    invoke-direct {v0, p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;-><init>(Ljava/io/PrintWriter;)V

    invoke-static {v0, p1}, Lorg/codehaus/plexus/util/xml/Xpp3DomWriter;->write(Lorg/codehaus/plexus/util/xml/XMLWriter;Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    return-void
.end method

.method public static write(Ljava/io/Writer;Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V
    .registers 3

    new-instance v0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;

    invoke-direct {v0, p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {v0, p1}, Lorg/codehaus/plexus/util/xml/Xpp3DomWriter;->write(Lorg/codehaus/plexus/util/xml/XMLWriter;Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V

    return-void
.end method

.method public static write(Lorg/codehaus/plexus/util/xml/XMLWriter;Lorg/codehaus/plexus/util/xml/Xpp3Dom;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/codehaus/plexus/util/xml/Xpp3DomWriter;->write(Lorg/codehaus/plexus/util/xml/XMLWriter;Lorg/codehaus/plexus/util/xml/Xpp3Dom;Z)V

    return-void
.end method

.method public static write(Lorg/codehaus/plexus/util/xml/XMLWriter;Lorg/codehaus/plexus/util/xml/Xpp3Dom;Z)V
    .registers 9

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/codehaus/plexus/util/xml/XMLWriter;->startElement(Ljava/lang/String;)V

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

    invoke-interface {p0, v4, v5}, Lorg/codehaus/plexus/util/xml/XMLWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getChildren()[Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {p0, v3, p2}, Lorg/codehaus/plexus/util/xml/Xpp3DomWriter;->write(Lorg/codehaus/plexus/util/xml/XMLWriter;Lorg/codehaus/plexus/util/xml/Xpp3Dom;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    invoke-interface {p0, p1}, Lorg/codehaus/plexus/util/xml/XMLWriter;->writeText(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-interface {p0, p1}, Lorg/codehaus/plexus/util/xml/XMLWriter;->writeMarkup(Ljava/lang/String;)V

    :cond_3
    :goto_2
    invoke-interface {p0}, Lorg/codehaus/plexus/util/xml/XMLWriter;->endElement()V

    return-void
.end method
