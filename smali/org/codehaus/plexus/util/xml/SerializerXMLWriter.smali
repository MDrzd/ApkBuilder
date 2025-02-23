.class public Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/codehaus/plexus/util/xml/XMLWriter;


# instance fields
.field private final elements:Ljava/util/Stack;

.field private exceptions:Ljava/util/List;

.field private final namespace:Ljava/lang/String;

.field private final serializer:Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->elements:Ljava/util/Stack;

    iput-object p2, p0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->serializer:Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->namespace:Ljava/lang/String;

    return-void
.end method

.method private storeException(Ljava/io/IOException;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->exceptions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->exceptions:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->exceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->serializer:Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->namespace:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->storeException(Ljava/io/IOException;)V

    return-void
.end method

.method public endElement()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->serializer:Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->namespace:Ljava/lang/String;

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->elements:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->storeException(Ljava/io/IOException;)V

    return-void
.end method

.method public getExceptions()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->exceptions:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->exceptions:Ljava/util/List;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->serializer:Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->namespace:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->elements:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->storeException(Ljava/io/IOException;)V

    return-void
.end method

.method public writeMarkup(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->serializer:Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->cdsect(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->storeException(Ljava/io/IOException;)V

    return-void
.end method

.method public writeText(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->serializer:Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/SerializerXMLWriter;->storeException(Ljava/io/IOException;)V

    return-void
.end method
