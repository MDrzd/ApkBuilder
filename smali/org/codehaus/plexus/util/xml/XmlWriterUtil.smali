.class public Lorg/codehaus/plexus/util/xml/XmlWriterUtil;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_COLUMN_LINE:I = 0x50

.field public static final DEFAULT_INDENTATION_SIZE:I = 0x2

.field public static final LS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->LS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeComment(Lorg/codehaus/plexus/util/xml/XMLWriter;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->writeComment(Lorg/codehaus/plexus/util/xml/XMLWriter;Ljava/lang/String;II)V

    return-void
.end method

.method public static writeComment(Lorg/codehaus/plexus/util/xml/XMLWriter;Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->writeComment(Lorg/codehaus/plexus/util/xml/XMLWriter;Ljava/lang/String;II)V

    return-void
.end method

.method public static writeComment(Lorg/codehaus/plexus/util/xml/XMLWriter;Ljava/lang/String;II)V
    .registers 5

    const/16 v0, 0x50

    invoke-static {p0, p1, p2, p3, v0}, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->writeComment(Lorg/codehaus/plexus/util/xml/XMLWriter;Ljava/lang/String;III)V

    return-void
.end method

.method public static writeComment(Lorg/codehaus/plexus/util/xml/XMLWriter;Ljava/lang/String;III)V
    .registers 15

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    :goto_0
    const-string v0, "<!--"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "<!--"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "-->"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    if-gez p2, :cond_3

    const/4 p2, 0x0

    :cond_3
    if-gez p3, :cond_4

    const/4 p3, 0x0

    :cond_4
    if-gez p4, :cond_5

    const/16 p4, 0x50

    :cond_5
    const-string v1, " "

    mul-int p2, p2, p3

    invoke-static {v1, p2}, Lorg/codehaus/plexus/util/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, p4

    add-int/lit8 p3, p3, -0x3

    add-int/lit8 p3, p3, -0x1

    sget-object p4, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->LS:Ljava/lang/String;

    invoke-static {p1, p4}, Lorg/codehaus/plexus/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<!-- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    move-object v2, p4

    const/4 p4, 0x0

    :goto_2
    if-ge p4, v1, :cond_b

    aget-object v3, p1, p4

    const-string v4, " "

    invoke-static {v3, v4}, Lorg/codehaus/plexus/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move-object v5, v2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_9

    aget-object v6, v3, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-le v7, p3, :cond_8

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x5

    if-eq v7, v9, :cond_7

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    sub-int v7, p3, v7

    if-lez v7, :cond_6

    const-string v7, " "

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    sub-int v9, p3, v9

    invoke-static {v7, v9}, Lorg/codehaus/plexus/util/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    const-string v7, "-->"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v7, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->LS:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Lorg/codehaus/plexus/util/xml/XMLWriter;->writeMarkup(Ljava/lang/String;)V

    :cond_7
    new-instance v5, Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "<!-- "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int v2, p3, v2

    if-lez v2, :cond_a

    const-string v2, " "

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int v3, p3, v3

    invoke-static {v2, v3}, Lorg/codehaus/plexus/util/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    add-int/lit8 p4, p4, 0x1

    move-object v2, v5

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-gt p1, p3, :cond_c

    const-string p1, " "

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Lorg/codehaus/plexus/util/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    const-string p1, "-->"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p1, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->LS:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/codehaus/plexus/util/xml/XMLWriter;->writeMarkup(Ljava/lang/String;)V

    return-void
.end method

.method public static writeCommentLineBreak(Lorg/codehaus/plexus/util/xml/XMLWriter;)V
    .registers 2

    const/16 v0, 0x50

    invoke-static {p0, v0}, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->writeCommentLineBreak(Lorg/codehaus/plexus/util/xml/XMLWriter;I)V

    return-void
.end method

.method public static writeCommentLineBreak(Lorg/codehaus/plexus/util/xml/XMLWriter;I)V
    .registers 5

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const/16 p1, 0x50

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<!-- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    sub-int/2addr p1, v0

    invoke-static {v2, p1}, Lorg/codehaus/plexus/util/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->LS:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/codehaus/plexus/util/xml/XMLWriter;->writeMarkup(Ljava/lang/String;)V

    return-void
.end method

.method public static writeCommentText(Lorg/codehaus/plexus/util/xml/XMLWriter;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->writeCommentText(Lorg/codehaus/plexus/util/xml/XMLWriter;Ljava/lang/String;II)V

    return-void
.end method

.method public static writeCommentText(Lorg/codehaus/plexus/util/xml/XMLWriter;Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->writeCommentText(Lorg/codehaus/plexus/util/xml/XMLWriter;Ljava/lang/String;II)V

    return-void
.end method

.method public static writeCommentText(Lorg/codehaus/plexus/util/xml/XMLWriter;Ljava/lang/String;II)V
    .registers 5

    const/16 v0, 0x50

    invoke-static {p0, p1, p2, p3, v0}, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->writeCommentText(Lorg/codehaus/plexus/util/xml/XMLWriter;Ljava/lang/String;III)V

    return-void
.end method

.method public static writeCommentText(Lorg/codehaus/plexus/util/xml/XMLWriter;Ljava/lang/String;III)V
    .registers 8

    const/4 v0, 0x0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    if-gez p3, :cond_1

    const/4 p3, 0x0

    :cond_1
    if-gez p4, :cond_2

    const/16 p4, 0x50

    :cond_2
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->writeLineBreak(Lorg/codehaus/plexus/util/xml/XMLWriter;I)V

    const-string v1, " "

    mul-int v2, p2, p3

    invoke-static {v1, v2}, Lorg/codehaus/plexus/util/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/codehaus/plexus/util/xml/XMLWriter;->writeMarkup(Ljava/lang/String;)V

    invoke-static {p0, p4}, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->writeCommentLineBreak(Lorg/codehaus/plexus/util/xml/XMLWriter;I)V

    invoke-static {p0, p1, p2, p3, p4}, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->writeComment(Lorg/codehaus/plexus/util/xml/XMLWriter;Ljava/lang/String;III)V

    const-string p1, " "

    invoke-static {p1, v2}, Lorg/codehaus/plexus/util/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/codehaus/plexus/util/xml/XMLWriter;->writeMarkup(Ljava/lang/String;)V

    invoke-static {p0, p4}, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->writeCommentLineBreak(Lorg/codehaus/plexus/util/xml/XMLWriter;I)V

    invoke-static {p0, v0, p2, p3}, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->writeLineBreak(Lorg/codehaus/plexus/util/xml/XMLWriter;III)V

    return-void
.end method

.method public static writeLineBreak(Lorg/codehaus/plexus/util/xml/XMLWriter;)V
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->writeLineBreak(Lorg/codehaus/plexus/util/xml/XMLWriter;I)V

    return-void
.end method

.method public static writeLineBreak(Lorg/codehaus/plexus/util/xml/XMLWriter;I)V
    .registers 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    sget-object v1, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->LS:Ljava/lang/String;

    invoke-interface {p0, v1}, Lorg/codehaus/plexus/util/xml/XMLWriter;->writeMarkup(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeLineBreak(Lorg/codehaus/plexus/util/xml/XMLWriter;II)V
    .registers 4

    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->writeLineBreak(Lorg/codehaus/plexus/util/xml/XMLWriter;III)V

    return-void
.end method

.method public static writeLineBreak(Lorg/codehaus/plexus/util/xml/XMLWriter;III)V
    .registers 4

    invoke-static {p0, p1}, Lorg/codehaus/plexus/util/xml/XmlWriterUtil;->writeLineBreak(Lorg/codehaus/plexus/util/xml/XMLWriter;I)V

    const/4 p1, 0x0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    if-gez p3, :cond_1

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    const-string p3, " "

    mul-int p2, p2, p1

    invoke-static {p3, p2}, Lorg/codehaus/plexus/util/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/codehaus/plexus/util/xml/XMLWriter;->writeText(Ljava/lang/String;)V

    return-void
.end method
