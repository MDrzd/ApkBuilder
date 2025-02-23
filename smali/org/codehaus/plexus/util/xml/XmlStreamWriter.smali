.class public Lorg/codehaus/plexus/util/xml/XmlStreamWriter;
.super Ljava/io/Writer;


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field static final ENCODING_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private encoding:Ljava/lang/String;

.field private out:Ljava/io/OutputStream;

.field private writer:Ljava/io/Writer;

.field private xmlPrologWriter:Ljava/io/StringWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/codehaus/plexus/util/xml/XmlReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    sput-object v0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->out:Ljava/io/OutputStream;

    return-void
.end method

.method private detectEncoding([CII)V
    .registers 10

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v1, p3

    const/16 v2, 0x1000

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    rsub-int v1, v1, 0x1000

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    invoke-virtual {v3, p1, p2, v1}, Ljava/io/StringWriter;->write([CII)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "<?xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "?>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    sget-object v2, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->encoding:Ljava/lang/String;

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->encoding:Ljava/lang/String;

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->encoding:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lt v3, v2, :cond_3

    :cond_2
    const-string v2, "UTF-8"

    :goto_1
    iput-object v2, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->encoding:Ljava/lang/String;

    :cond_3
    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->encoding:Ljava/lang/String;

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->encoding:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->writer:Ljava/io/Writer;

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-le p3, v1, :cond_4

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->writer:Ljava/io/Writer;

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    :cond_4
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->encoding:Ljava/lang/String;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->encoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->writer:Ljava/io/Writer;

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    :cond_0
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public write([CII)V
    .registers 5

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->detectEncoding([CII)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method
