.class public Lorg/codehaus/plexus/util/xml/XmlReaderException;
.super Ljava/io/IOException;


# instance fields
.field private _bomEncoding:Ljava/lang/String;

.field private _contentTypeEncoding:Ljava/lang/String;

.field private _contentTypeMime:Ljava/lang/String;

.field private _is:Ljava/io/InputStream;

.field private _xmlEncoding:Ljava/lang/String;

.field private _xmlGuessEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 14

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/codehaus/plexus/util/xml/XmlReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 8

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/codehaus/plexus/util/xml/XmlReaderException;->_contentTypeMime:Ljava/lang/String;

    iput-object p3, p0, Lorg/codehaus/plexus/util/xml/XmlReaderException;->_contentTypeEncoding:Ljava/lang/String;

    iput-object p4, p0, Lorg/codehaus/plexus/util/xml/XmlReaderException;->_bomEncoding:Ljava/lang/String;

    iput-object p5, p0, Lorg/codehaus/plexus/util/xml/XmlReaderException;->_xmlGuessEncoding:Ljava/lang/String;

    iput-object p6, p0, Lorg/codehaus/plexus/util/xml/XmlReaderException;->_xmlEncoding:Ljava/lang/String;

    iput-object p7, p0, Lorg/codehaus/plexus/util/xml/XmlReaderException;->_is:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getBomEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlReaderException;->_bomEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypeEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlReaderException;->_contentTypeEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypeMime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlReaderException;->_contentTypeMime:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlReaderException;->_is:Ljava/io/InputStream;

    return-object v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlReaderException;->_xmlEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlGuessEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlReaderException;->_xmlGuessEncoding:Ljava/lang/String;

    return-object v0
.end method
