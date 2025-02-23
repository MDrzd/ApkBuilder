.class public Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/codehaus/plexus/util/xml/XMLWriter;


# static fields
.field protected static final LS:Ljava/lang/String;

.field private static final amp:Ljava/util/regex/Pattern;

.field private static final crlf:Ljava/util/regex/Pattern;

.field private static final crlf_str:Ljava/lang/String; = "\r\n"

.field private static final dqoute:Ljava/util/regex/Pattern;

.field private static final gt:Ljava/util/regex/Pattern;

.field private static final lowers:Ljava/util/regex/Pattern;

.field private static final lt:Ljava/util/regex/Pattern;

.field private static final sqoute:Ljava/util/regex/Pattern;


# instance fields
.field private depth:I

.field private docType:Ljava/lang/String;

.field private elementStack:Ljava/util/LinkedList;

.field private encoding:Ljava/lang/String;

.field private lineIndenter:Ljava/lang/String;

.field private lineSeparator:Ljava/lang/String;

.field private readyForNewLine:Z

.field private tagInProgress:Z

.field private tagIsEmpty:Z

.field private writer:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->LS:Ljava/lang/String;

    const-string v0, "&"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->amp:Ljava/util/regex/Pattern;

    const-string v0, "<"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->lt:Ljava/util/regex/Pattern;

    const-string v0, ">"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->gt:Ljava/util/regex/Pattern;

    const-string v0, "\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->dqoute:Ljava/util/regex/Pattern;

    const-string v0, "\'"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->sqoute:Ljava/util/regex/Pattern;

    const-string v0, "\r\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->crlf:Ljava/util/regex/Pattern;

    const-string v0, "([\u0000-\u001f])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->lowers:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "  "

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    sget-object v3, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->LS:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->elementStack:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->setWriter(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p2}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->setLineIndenter(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->setLineSeparator(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->setDocType(Ljava/lang/String;)V

    if-nez p5, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->writeDocumentHeaders()V

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;-><init>(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, p2}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->amp:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "&amp;"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->lt:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "&lt;"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    sget-object v0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->gt:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "&gt;"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    sget-object v0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->dqoute:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "&quot;"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_4

    sget-object v0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->sqoute:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "&apos;"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private static escapeXmlAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->crlf:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "&#10;"

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object v0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->lowers:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private finishTag()V
    .registers 3

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->tagInProgress:Z

    if-eqz v0, :cond_0

    const-string v0, ">"

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->write(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->tagInProgress:Z

    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->readyForNewLine:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->endOfLine()V

    :cond_1
    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->readyForNewLine:Z

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->tagIsEmpty:Z

    return-void
.end method

.method private write(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method private writeDocumentHeaders()V
    .registers 3

    const-string v0, "<?xml version=\"1.0\""

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " encoding=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->write(Ljava/lang/String;)V

    :cond_0
    const-string v0, "?>"

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->endOfLine()V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->getDocType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "<!DOCTYPE "

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->getDocType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->write(Ljava/lang/String;)V

    const-string v0, ">"

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->endOfLine()V

    :cond_1
    return-void
.end method

.method private writeText(Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->readyForNewLine:Z

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->tagIsEmpty:Z

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->finishTag()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object p2, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->lineSeparator:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/codehaus/plexus/util/StringUtils;->unifyLineSeparators(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->write(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, " "

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->write(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->write(Ljava/lang/String;)V

    const-string p1, "=\""

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->write(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->escapeXmlAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->write(Ljava/lang/String;)V

    const-string p1, "\""

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public endElement()V
    .registers 4

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->setDepth(I)V

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->tagIsEmpty:Z

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->readyForNewLine:Z

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->finishTag()V

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->elementStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->finishTag()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "</"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->elementStack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->write(Ljava/lang/String;)V

    :goto_0
    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->readyForNewLine:Z

    return-void
.end method

.method protected endOfLine()V
    .registers 3

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->getDepth()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->getLineIndenter()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getDepth()I
    .registers 2

    iget v0, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->depth:I

    return v0
.end method

.method protected getDocType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->docType:Ljava/lang/String;

    return-object v0
.end method

.method protected getElementStack()Ljava/util/LinkedList;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->elementStack:Ljava/util/LinkedList;

    return-object v0
.end method

.method protected getEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method protected getLineIndenter()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->lineIndenter:Ljava/lang/String;

    return-object v0
.end method

.method protected getLineSeparator()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getWriter()Ljava/io/PrintWriter;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->writer:Ljava/io/PrintWriter;

    return-object v0
.end method

.method protected setDepth(I)V
    .registers 2

    iput p1, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->depth:I

    return-void
.end method

.method protected setDocType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->docType:Ljava/lang/String;

    return-void
.end method

.method protected setEncoding(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->encoding:Ljava/lang/String;

    return-void
.end method

.method protected setLineIndenter(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->lineIndenter:Ljava/lang/String;

    return-void
.end method

.method protected setLineSeparator(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method protected setWriter(Ljava/io/PrintWriter;)V
    .registers 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->writer:Ljava/io/PrintWriter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "writer could not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->tagIsEmpty:Z

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->finishTag()V

    const-string v0, "<"

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->write(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->elementStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->tagInProgress:Z

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->getDepth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->setDepth(I)V

    iput-boolean p1, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->readyForNewLine:Z

    iput-boolean p1, p0, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->tagIsEmpty:Z

    return-void
.end method

.method public writeMarkup(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->writeText(Ljava/lang/String;Z)V

    return-void
.end method

.method public writeText(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;->writeText(Ljava/lang/String;Z)V

    return-void
.end method
