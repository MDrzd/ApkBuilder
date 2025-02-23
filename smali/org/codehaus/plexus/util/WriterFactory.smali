.class public Lorg/codehaus/plexus/util/WriterFactory;
.super Ljava/lang/Object;


# static fields
.field public static final FILE_ENCODING:Ljava/lang/String;

.field public static final ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field public static final US_ASCII:Ljava/lang/String; = "US-ASCII"

.field public static final UTF_16:Ljava/lang/String; = "UTF-16"

.field public static final UTF_16BE:Ljava/lang/String; = "UTF-16BE"

.field public static final UTF_16LE:Ljava/lang/String; = "UTF-16LE"

.field public static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/WriterFactory;->FILE_ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newPlatformWriter(Ljava/io/File;)Ljava/io/Writer;
    .registers 2

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static newPlatformWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    .registers 2

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static newWriter(Ljava/io/File;Ljava/lang/String;)Ljava/io/Writer;
    .registers 3

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/codehaus/plexus/util/WriterFactory;->newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public static newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    .registers 3

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newXmlWriter(Ljava/io/File;)Lorg/codehaus/plexus/util/xml/XmlStreamWriter;
    .registers 2

    new-instance v0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;

    invoke-direct {v0, p0}, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static newXmlWriter(Ljava/io/OutputStream;)Lorg/codehaus/plexus/util/xml/XmlStreamWriter;
    .registers 2

    new-instance v0, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;

    invoke-direct {v0, p0}, Lorg/codehaus/plexus/util/xml/XmlStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method
