.class public Lorg/codehaus/plexus/util/xml/XmlUtil;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_INDENTATION_SIZE:I = 0x2

.field public static final DEFAULT_LINE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/xml/XmlUtil;->DEFAULT_LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isXml(Ljava/io/File;)Z
    .registers 5

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/codehaus/plexus/util/ReaderFactory;->newXmlReader(Ljava/io/File;)Lorg/codehaus/plexus/util/xml/XmlStreamReader;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;

    invoke-direct {v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;-><init>()V

    invoke-interface {v1, p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextToken()I

    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lorg/codehaus/plexus/util/IOUtil;->close(Ljava/io/Reader;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    :goto_0
    invoke-static {p0}, Lorg/codehaus/plexus/util/IOUtil;->close(Ljava/io/Reader;)V

    throw v0

    :catch_0
    move-object p0, v0

    :catch_1
    invoke-static {p0}, Lorg/codehaus/plexus/util/IOUtil;->close(Ljava/io/Reader;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The file \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' is not a file."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "f could not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static prettyFormat(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4

    sget-object v0, Lorg/codehaus/plexus/util/xml/XmlUtil;->DEFAULT_LINE_SEPARATOR:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p0, p1, v1, v0}, Lorg/codehaus/plexus/util/xml/XmlUtil;->prettyFormat(Ljava/io/InputStream;Ljava/io/OutputStream;ILjava/lang/String;)V

    return-void
.end method

.method public static prettyFormat(Ljava/io/InputStream;Ljava/io/OutputStream;ILjava/lang/String;)V
    .registers 7

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/codehaus/plexus/util/ReaderFactory;->newXmlReader(Ljava/io/InputStream;)Lorg/codehaus/plexus/util/xml/XmlStreamReader;

    move-result-object p0
    :try_end_0
    .catch Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance p1, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;

    invoke-direct {p1, v1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, " "

    invoke-static {v2, p2}, Lorg/codehaus/plexus/util/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->setLineIndenter(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->setLineSeparator(Ljava/lang/String;)V

    new-instance p2, Lorg/codehaus/plexus/util/xml/pull/MXParser;

    invoke-direct {p2}, Lorg/codehaus/plexus/util/xml/pull/MXParser;-><init>()V

    invoke-interface {p2, p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-static {p2, p1}, Lorg/codehaus/plexus/util/xml/XmlUtil;->prettyFormatInternal(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;)V

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v0}, Lorg/codehaus/plexus/util/IOUtil;->close(Ljava/io/Writer;)V

    invoke-static {v0}, Lorg/codehaus/plexus/util/IOUtil;->close(Ljava/io/Reader;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, v0

    :goto_0
    move-object v0, p0

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object p0, v0

    move-object v1, p0

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v1, v0

    :goto_1
    :try_start_4
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to parse the XML: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    move-object p0, v0

    :goto_2
    invoke-static {v1}, Lorg/codehaus/plexus/util/IOUtil;->close(Ljava/io/Writer;)V

    invoke-static {p0}, Lorg/codehaus/plexus/util/IOUtil;->close(Ljava/io/Reader;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The os is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The is is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static prettyFormat(Ljava/io/Reader;Ljava/io/Writer;)V
    .registers 4

    sget-object v0, Lorg/codehaus/plexus/util/xml/XmlUtil;->DEFAULT_LINE_SEPARATOR:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p0, p1, v1, v0}, Lorg/codehaus/plexus/util/xml/XmlUtil;->prettyFormat(Ljava/io/Reader;Ljava/io/Writer;ILjava/lang/String;)V

    return-void
.end method

.method public static prettyFormat(Ljava/io/Reader;Ljava/io/Writer;ILjava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    new-instance v0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;

    invoke-direct {v0, p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;-><init>(Ljava/io/Writer;)V

    const-string p1, " "

    invoke-static {p1, p2}, Lorg/codehaus/plexus/util/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->setLineIndenter(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->setLineSeparator(Ljava/lang/String;)V

    new-instance p1, Lorg/codehaus/plexus/util/xml/pull/MXParser;

    invoke-direct {p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;-><init>()V

    :try_start_0
    invoke-interface {p1, p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-static {p1, v0}, Lorg/codehaus/plexus/util/xml/XmlUtil;->prettyFormatInternal(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;)V
    :try_end_0
    .catch Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to parse the XML: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The writer is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The reader is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static prettyFormatInternal(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;)V
    .registers 8

    invoke-interface {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_c

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->getLineIndenter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->writeText(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-interface {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->startElement(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    goto/16 :goto_6

    :cond_2
    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    invoke-interface {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {v0}, Lorg/codehaus/plexus/util/StringUtils;->removeDuplicateWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->writeText(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_3
    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->endElement()V

    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_4
    const/16 v5, 0x9

    if-ne v0, v5, :cond_7

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->writeMarkup(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->getDepth()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->getLineIndenter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->writeMarkup(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<!--"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->writeMarkup(Ljava/lang/String;)V

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->writeMarkup(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->getDepth()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v0, v2, :cond_6

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->getLineIndenter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->writeMarkup(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/16 v4, 0xa

    if-ne v0, v4, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "<!DOCTYPE"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->writeMarkup(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->endOfLine()V

    goto :goto_6

    :cond_8
    const/16 v4, 0x8

    if-ne v0, v4, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "<?"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?>"

    goto :goto_4

    :cond_9
    const/4 v4, 0x5

    if-ne v0, v4, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "<![CDATA["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]]>"

    :goto_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->writeMarkup(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    const/4 v4, 0x6

    if-ne v0, v4, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "&"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    goto :goto_5

    :cond_b
    :goto_6
    invoke-interface {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextToken()I

    move-result v0

    goto/16 :goto_0

    :cond_c
    return-void
.end method
