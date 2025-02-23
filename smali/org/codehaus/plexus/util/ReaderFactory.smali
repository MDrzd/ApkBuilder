.class public Lorg/codehaus/plexus/util/ReaderFactory;
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

    sput-object v0, Lorg/codehaus/plexus/util/ReaderFactory;->FILE_ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newPlatformReader(Ljava/io/File;)Ljava/io/Reader;
    .registers 2

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static newPlatformReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .registers 2

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static newPlatformReader(Ljava/net/URL;)Ljava/io/Reader;
    .registers 2

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static newReader(Ljava/io/File;Ljava/lang/String;)Ljava/io/Reader;
    .registers 4

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;
    .registers 3

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newReader(Ljava/net/URL;Ljava/lang/String;)Ljava/io/Reader;
    .registers 3

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newXmlReader(Ljava/io/File;)Lorg/codehaus/plexus/util/xml/XmlStreamReader;
    .registers 2

    new-instance v0, Lorg/codehaus/plexus/util/xml/XmlStreamReader;

    invoke-direct {v0, p0}, Lorg/codehaus/plexus/util/xml/XmlStreamReader;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static newXmlReader(Ljava/io/InputStream;)Lorg/codehaus/plexus/util/xml/XmlStreamReader;
    .registers 2

    new-instance v0, Lorg/codehaus/plexus/util/xml/XmlStreamReader;

    invoke-direct {v0, p0}, Lorg/codehaus/plexus/util/xml/XmlStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static newXmlReader(Ljava/net/URL;)Lorg/codehaus/plexus/util/xml/XmlStreamReader;
    .registers 2

    new-instance v0, Lorg/codehaus/plexus/util/xml/XmlStreamReader;

    invoke-direct {v0, p0}, Lorg/codehaus/plexus/util/xml/XmlStreamReader;-><init>(Ljava/net/URL;)V

    return-object v0
.end method
