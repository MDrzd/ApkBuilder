.class public Lorg/codehaus/plexus/util/xml/XmlReader;
.super Ljava/io/Reader;


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final CHARSET_PATTERN:Ljava/util/regex/Pattern;

.field private static final EBCDIC:Ljava/lang/String; = "CP1047"

.field static final ENCODING_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_EX_1:Ljava/text/MessageFormat;

.field private static final HTTP_EX_2:Ljava/text/MessageFormat;

.field private static final HTTP_EX_3:Ljava/text/MessageFormat;

.field private static final RAW_EX_1:Ljava/text/MessageFormat;

.field private static final RAW_EX_2:Ljava/text/MessageFormat;

.field private static final US_ASCII:Ljava/lang/String; = "US-ASCII"

.field private static final UTF_16:Ljava/lang/String; = "UTF-16"

.field private static final UTF_16BE:Ljava/lang/String; = "UTF-16BE"

.field private static final UTF_16LE:Ljava/lang/String; = "UTF-16LE"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static _staticDefaultEncoding:Ljava/lang/String;


# instance fields
.field private _defaultEncoding:Ljava/lang/String;

.field private _encoding:Ljava/lang/String;

.field private _reader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "charset=([.[^; ]]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/xml/XmlReader;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "<\\?xml.*encoding[\\s]*=[\\s]*((?:\".[^\"]*\")|(?:\'.[^\']*\'))"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/xml/XmlReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/codehaus/plexus/util/xml/XmlReader;->RAW_EX_1:Ljava/text/MessageFormat;

    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/codehaus/plexus/util/xml/XmlReader;->RAW_EX_2:Ljava/text/MessageFormat;

    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/codehaus/plexus/util/xml/XmlReader;->HTTP_EX_1:Ljava/text/MessageFormat;

    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/codehaus/plexus/util/xml/XmlReader;->HTTP_EX_2:Ljava/text/MessageFormat;

    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Invalid MIME"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/codehaus/plexus/util/xml/XmlReader;->HTTP_EX_3:Ljava/text/MessageFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/xml/XmlReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/codehaus/plexus/util/xml/XmlReader;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/plexus/util/xml/XmlReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codehaus/plexus/util/xml/XmlReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    if-nez p4, :cond_0

    sget-object p4, Lorg/codehaus/plexus/util/xml/XmlReader;->_staticDefaultEncoding:Ljava/lang/String;

    :cond_0
    iput-object p4, p0, Lorg/codehaus/plexus/util/xml/XmlReader;->_defaultEncoding:Ljava/lang/String;

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/plexus/util/xml/XmlReader;->doHttpStream(Ljava/io/InputStream;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/codehaus/plexus/util/xml/XmlStreamReaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    if-eqz p3, :cond_1

    invoke-direct {p0, p2, p1}, Lorg/codehaus/plexus/util/xml/XmlReader;->doLenientDetection(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;)V

    return-void

    :cond_1
    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    sget-object v0, Lorg/codehaus/plexus/util/xml/XmlReader;->_staticDefaultEncoding:Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlReader;->_defaultEncoding:Ljava/lang/String;

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/codehaus/plexus/util/xml/XmlReader;->doRawStream(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Lorg/codehaus/plexus/util/xml/XmlStreamReaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lorg/codehaus/plexus/util/xml/XmlReader;->doLenientDetection(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;)V

    return-void

    :cond_0
    throw p1
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 2

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/XmlReader;-><init>(Ljava/net/URLConnection;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URLConnection;)V
    .registers 5

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    sget-object v0, Lorg/codehaus/plexus/util/xml/XmlReader;->_staticDefaultEncoding:Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlReader;->_defaultEncoding:Ljava/lang/String;

    instance-of v0, p1, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lorg/codehaus/plexus/util/xml/XmlReader;->doHttpStream(Ljava/io/InputStream;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/codehaus/plexus/util/xml/XmlStreamReaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/codehaus/plexus/util/xml/XmlReader;->doLenientDetection(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lorg/codehaus/plexus/util/xml/XmlReader;->doHttpStream(Ljava/io/InputStream;Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/codehaus/plexus/util/xml/XmlStreamReaderException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/codehaus/plexus/util/xml/XmlReader;->doLenientDetection(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;)V

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lorg/codehaus/plexus/util/xml/XmlReader;->doRawStream(Ljava/io/InputStream;Z)V
    :try_end_2
    .catch Lorg/codehaus/plexus/util/xml/XmlStreamReaderException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/codehaus/plexus/util/xml/XmlReader;->doLenientDetection(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;)V

    return-void
.end method

.method private calculateHttpEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/lang/String;
    .registers 23

    move-object v0, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v7, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    and-int v8, p7, v9

    if-eqz v8, :cond_1

    move-object v1, v7

    goto/16 :goto_3

    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/codehaus/plexus/util/xml/XmlReader;->isAppXml(Ljava/lang/String;)Z

    move-result v8

    invoke-static/range {p1 .. p1}, Lorg/codehaus/plexus/util/xml/XmlReader;->isTextXml(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x5

    if-nez v8, :cond_3

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    new-instance v9, Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;

    sget-object v8, Lorg/codehaus/plexus/util/xml/XmlReader;->HTTP_EX_3:Ljava/text/MessageFormat;

    new-array v13, v13, [Ljava/lang/Object;

    aput-object p1, v13, v1

    aput-object v4, v13, v2

    aput-object v5, v13, v12

    aput-object v6, v13, v11

    aput-object v7, v13, v10

    invoke-virtual {v8, v13}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v9

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    throw v9

    :cond_3
    :goto_1
    if-nez v4, :cond_6

    if-eqz v8, :cond_4

    move-object/from16 v8, p6

    invoke-direct {p0, v5, v6, v7, v8}, Lorg/codehaus/plexus/util/xml/XmlReader;->calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_4
    iget-object v1, v0, Lorg/codehaus/plexus/util/xml/XmlReader;->_defaultEncoding:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, "US-ASCII"

    goto/16 :goto_3

    :cond_5
    iget-object v1, v0, Lorg/codehaus/plexus/util/xml/XmlReader;->_defaultEncoding:Ljava/lang/String;

    goto/16 :goto_3

    :cond_6
    move-object/from16 v8, p6

    if-eqz v5, :cond_8

    const-string v9, "UTF-16BE"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "UTF-16LE"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    new-instance v9, Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;

    sget-object v14, Lorg/codehaus/plexus/util/xml/XmlReader;->HTTP_EX_1:Ljava/text/MessageFormat;

    new-array v13, v13, [Ljava/lang/Object;

    aput-object p1, v13, v1

    aput-object v4, v13, v2

    aput-object v5, v13, v12

    aput-object v6, v13, v11

    aput-object v7, v13, v10

    invoke-virtual {v14, v13}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v9

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    throw v9

    :cond_8
    :goto_2
    const-string v9, "UTF-16"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    if-eqz v5, :cond_9

    const-string v9, "UTF-16"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v1, v5

    goto :goto_3

    :cond_9
    new-instance v9, Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;

    sget-object v14, Lorg/codehaus/plexus/util/xml/XmlReader;->HTTP_EX_2:Ljava/text/MessageFormat;

    new-array v13, v13, [Ljava/lang/Object;

    aput-object p1, v13, v1

    aput-object v4, v13, v2

    aput-object v5, v13, v12

    aput-object v6, v13, v11

    aput-object v7, v13, v10

    invoke-virtual {v14, v13}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v9

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    throw v9

    :cond_a
    move-object v1, v4

    :goto_3
    return-object v1
.end method

.method private calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .registers 16

    if-nez p1, :cond_5

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "UTF-16"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "UTF-16BE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "UTF-16LE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move-object p1, p2

    goto/16 :goto_5

    :cond_2
    move-object p1, p3

    goto/16 :goto_5

    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/XmlReader;->_defaultEncoding:Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/XmlReader;->_defaultEncoding:Ljava/lang/String;

    goto/16 :goto_5

    :cond_5
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_a

    if-eqz p2, :cond_7

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    new-instance v0, Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;

    sget-object v5, Lorg/codehaus/plexus/util/xml/XmlReader;->RAW_EX_1:Ljava/text/MessageFormat;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    aput-object p3, v4, v1

    invoke-virtual {v5, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    throw v0

    :cond_7
    :goto_1
    if-eqz p3, :cond_9

    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    new-instance v0, Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;

    sget-object v5, Lorg/codehaus/plexus/util/xml/XmlReader;->RAW_EX_1:Ljava/text/MessageFormat;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    aput-object p3, v4, v1

    invoke-virtual {v5, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    throw v0

    :cond_9
    :goto_2
    const-string p1, "UTF-8"

    goto/16 :goto_5

    :cond_a
    const-string v0, "UTF-16BE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    new-instance v0, Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;

    sget-object v5, Lorg/codehaus/plexus/util/xml/XmlReader;->RAW_EX_2:Ljava/text/MessageFormat;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    aput-object p3, v4, v1

    invoke-virtual {v5, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    throw v0

    :cond_c
    :goto_3
    if-eqz p2, :cond_e

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4

    :cond_d
    new-instance p4, Ljava/io/IOException;

    sget-object v0, Lorg/codehaus/plexus/util/xml/XmlReader;->RAW_EX_1:Ljava/text/MessageFormat;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    aput-object p3, v4, v1

    invoke-virtual {v0, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p4

    :cond_e
    :goto_4
    if-eqz p3, :cond_10

    const-string v0, "UTF-16"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    new-instance v0, Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;

    sget-object v5, Lorg/codehaus/plexus/util/xml/XmlReader;->RAW_EX_1:Ljava/text/MessageFormat;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    aput-object p3, v4, v1

    invoke-virtual {v5, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    throw v0

    :cond_10
    :goto_5
    return-object p1
.end method

.method private doHttpStream(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .registers 13

    new-instance v8, Ljava/io/BufferedInputStream;

    const/16 v0, 0x1000

    invoke-direct {v8, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-static {p2}, Lorg/codehaus/plexus/util/xml/XmlReader;->getContentTypeMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lorg/codehaus/plexus/util/xml/XmlReader;->getContentTypeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Lorg/codehaus/plexus/util/xml/XmlReader;->getBOMEncoding(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Lorg/codehaus/plexus/util/xml/XmlReader;->getXMLGuessEncoding(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lorg/codehaus/plexus/util/xml/XmlReader;->getXmlProlog(Ljava/io/BufferedInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v8

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/codehaus/plexus/util/xml/XmlReader;->calculateHttpEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v8, p1}, Lorg/codehaus/plexus/util/xml/XmlReader;->prepareReader(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method private doLenientDetection(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;)V
    .registers 5

    if-eqz p1, :cond_0

    const-string v0, "text/html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "text/xml"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-virtual {p2}, Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lorg/codehaus/plexus/util/xml/XmlReader;->doHttpStream(Ljava/io/InputStream;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/codehaus/plexus/util/xml/XmlStreamReaderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object p2, p1

    :cond_0
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;->getXmlEncoding()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;->getContentTypeEncoding()Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/XmlReader;->_defaultEncoding:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, "UTF-8"

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/XmlReader;->_defaultEncoding:Ljava/lang/String;

    :cond_3
    :goto_1
    invoke-virtual {p2}, Lorg/codehaus/plexus/util/xml/XmlStreamReaderException;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/codehaus/plexus/util/xml/XmlReader;->prepareReader(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private doRawStream(Ljava/io/InputStream;Z)V
    .registers 5

    new-instance p2, Ljava/io/BufferedInputStream;

    const/16 v0, 0x1000

    invoke-direct {p2, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-static {p2}, Lorg/codehaus/plexus/util/xml/XmlReader;->getBOMEncoding(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lorg/codehaus/plexus/util/xml/XmlReader;->getXMLGuessEncoding(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/codehaus/plexus/util/xml/XmlReader;->getXmlProlog(Ljava/io/BufferedInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/codehaus/plexus/util/xml/XmlReader;->calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/codehaus/plexus/util/xml/XmlReader;->prepareReader(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method private static getBOMEncoding(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x3

    new-array v1, v0, [I

    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v3, 0x1

    aput v0, v1, v3

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v4, 0x2

    aput v0, v1, v4

    aget v0, v1, v2

    const/16 v5, 0xff

    const/16 v6, 0xfe

    if-ne v0, v6, :cond_0

    aget v0, v1, v3

    if-ne v0, v5, :cond_0

    const-string v0, "UTF-16BE"

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    goto :goto_1

    :cond_0
    aget v0, v1, v2

    if-ne v0, v5, :cond_1

    aget v0, v1, v3

    if-ne v0, v6, :cond_1

    const-string v0, "UTF-16LE"

    goto :goto_0

    :cond_1
    aget v0, v1, v2

    const/16 v2, 0xef

    if-ne v0, v2, :cond_2

    aget v0, v1, v3

    const/16 v2, 0xbb

    if-ne v0, v2, :cond_2

    aget v0, v1, v4

    const/16 v1, 0xbf

    if-ne v0, v1, :cond_2

    const-string v0, "UTF-8"

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private static getContentTypeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lorg/codehaus/plexus/util/xml/XmlReader;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method private static getContentTypeMime(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static getDefaultEncoding()Ljava/lang/String;
    .registers 1

    sget-object v0, Lorg/codehaus/plexus/util/xml/XmlReader;->_staticDefaultEncoding:Ljava/lang/String;

    return-object v0
.end method

.method private static getXMLGuessEncoding(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x4

    new-array v1, v0, [I

    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v3, 0x1

    aput v0, v1, v3

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v4, 0x2

    aput v0, v1, v4

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v5, 0x3

    aput v0, v1, v5

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    aget p0, v1, v2

    const/16 v0, 0x3f

    const/16 v6, 0x3c

    if-nez p0, :cond_0

    aget p0, v1, v3

    if-ne p0, v6, :cond_0

    aget p0, v1, v4

    if-nez p0, :cond_0

    aget p0, v1, v5

    if-ne p0, v0, :cond_0

    const-string p0, "UTF-16BE"

    goto :goto_0

    :cond_0
    aget p0, v1, v2

    if-ne p0, v6, :cond_1

    aget p0, v1, v3

    if-nez p0, :cond_1

    aget p0, v1, v4

    if-ne p0, v0, :cond_1

    aget p0, v1, v5

    if-nez p0, :cond_1

    const-string p0, "UTF-16LE"

    goto :goto_0

    :cond_1
    aget p0, v1, v2

    if-ne p0, v6, :cond_2

    aget p0, v1, v3

    if-ne p0, v0, :cond_2

    aget p0, v1, v4

    const/16 v0, 0x78

    if-ne p0, v0, :cond_2

    aget p0, v1, v5

    const/16 v0, 0x6d

    if-ne p0, v0, :cond_2

    const-string p0, "UTF-8"

    goto :goto_0

    :cond_2
    aget p0, v1, v2

    const/16 v0, 0x4c

    if-ne p0, v0, :cond_3

    aget p0, v1, v3

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_3

    aget p0, v1, v4

    const/16 v0, 0xa7

    if-ne p0, v0, :cond_3

    aget p0, v1, v5

    const/16 v0, 0x94

    if-ne p0, v0, :cond_3

    const-string p0, "CP1047"

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getXmlProlog(Ljava/io/BufferedInputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/16 v1, 0x1000

    new-array v2, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    move-object v9, v0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/16 v8, 0x1000

    :goto_0
    if-eq v4, v5, :cond_0

    if-ne v6, v5, :cond_0

    if-ge v7, v1, :cond_0

    add-int/2addr v7, v4

    sub-int/2addr v8, v4

    invoke-virtual {p0, v2, v7, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2, v3, v7, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 v6, 0x3e

    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    goto :goto_0

    :cond_0
    if-ne v6, v5, :cond_2

    if-ne v4, v5, :cond_1

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected end of XML stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "XML prolog or ROOT element not found on first "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-lez v7, :cond_4

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    new-instance p0, Ljava/io/BufferedReader;

    new-instance p1, Ljava/io/StringReader;

    const/4 v1, 0x1

    add-int/2addr v6, v1

    invoke-virtual {v9, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    sget-object p0, Lorg/codehaus/plexus/util/xml/XmlReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method private static isAppXml(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_1

    const-string v0, "application/xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/xml-dtd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/xml-external-parsed-entity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isTextXml(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_1

    const-string v0, "text/xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/xml-external-parsed-entity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private prepareReader(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlReader;->_reader:Ljava/io/Reader;

    iput-object p2, p0, Lorg/codehaus/plexus/util/xml/XmlReader;->_encoding:Ljava/lang/String;

    return-void
.end method

.method public static setDefaultEncoding(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lorg/codehaus/plexus/util/xml/XmlReader;->_staticDefaultEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlReader;->_reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlReader;->_encoding:Ljava/lang/String;

    return-object v0
.end method

.method public read([CII)I
    .registers 5

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlReader;->_reader:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p1

    return p1
.end method
