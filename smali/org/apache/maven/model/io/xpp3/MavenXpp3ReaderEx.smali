.class public Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;
.super Ljava/lang/Object;


# instance fields
.field private addDefaultEntities:Z

.field public final contentTransformer:Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx$ContentTransformer;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx$1;

    invoke-direct {v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx$1;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;-><init>(Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx$ContentTransformer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx$ContentTransformer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->addDefaultEntities:Z

    iput-object p1, p0, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->contentTransformer:Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx$ContentTransformer;

    return-void
.end method

.method private checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z
    .registers 6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p3, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Duplicated tag: \'"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    invoke-direct {p3, p2, p1, p4}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p3
.end method

.method private checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    if-nez p4, :cond_0

    return-void

    :cond_0
    new-instance p4, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown attribute \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' for tag \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p4, p2, p1, p3}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p4
.end method

.method private checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V
    .registers 5

    if-nez p2, :cond_3

    const/4 p2, 0x1

    :cond_0
    :goto_0
    if-lez p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognised tag: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private getBooleanValue(Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->getBooleanValue(Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private getBooleanValue(Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;)Z
    .registers 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    if-eqz p4, :cond_1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getByteValue(Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)B
    .registers 7

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p4, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to parse element \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\', must be a byte"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p3, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p4

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private getCharacterValue(Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)C
    .registers 4

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method private getDateValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)Ljava/util/Date;
    .registers 7

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    const-string p3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    :cond_0
    const-string p2, "long"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :try_start_0
    new-instance p2, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p4, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :try_start_1
    new-instance p2, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, p3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    new-instance p2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p4, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDateValue(Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)Ljava/util/Date;
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->getDateValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method private getDoubleValue(Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)D
    .registers 7

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p4, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to parse element \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\', must be a floating point number"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p3, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p4

    :cond_1
    :goto_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private getFloatValue(Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)F
    .registers 7

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p4, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to parse element \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\', must be a floating point number"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p3, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p4

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private getIntegerValue(Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)I
    .registers 7

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p4, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to parse element \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\', must be an integer"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p3, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p4

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private getLongValue(Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)J
    .registers 7

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p4, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to parse element \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\', must be a long integer"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p3, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p4

    :cond_1
    :goto_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private getRequiredAttributeValue(Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Missing required value for attribute \'"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private getShortValue(Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)S
    .registers 7

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p4, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to parse element \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\', must be a short integer"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p3, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p4

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private getTrimmedValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->contentTransformer:Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx$ContentTransformer;

    invoke-interface {v0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx$ContentTransformer;->transform(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->getTrimmedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I
    .registers 6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->next()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected START_TAG or END_TAG not "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->TYPES:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_0
    return v0
.end method

.method private parseActivation(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Activation;
    .registers 9

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Activation;

    invoke-direct {v1}, Lorg/apache/maven/model/Activation;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Activation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    const-string v2, "activeByDefault"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "activeByDefault"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Activation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "activeByDefault"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "activeByDefault"

    const-string v4, "false"

    invoke-direct {p0, v2, v3, p1, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->getBooleanValue(Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Activation;->setActiveByDefault(Z)V

    goto :goto_1

    :cond_3
    const-string v2, "jdk"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "jdk"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Activation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jdk"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Activation;->setJdk(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "os"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseActivationOS(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/ActivationOS;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Activation;->setOs(Lorg/apache/maven/model/ActivationOS;)V

    goto :goto_1

    :cond_5
    const-string v2, "property"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseActivationProperty(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/ActivationProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Activation;->setProperty(Lorg/apache/maven/model/ActivationProperty;)V

    goto/16 :goto_1

    :cond_6
    const-string v2, "file"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseActivationFile(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/ActivationFile;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Activation;->setFile(Lorg/apache/maven/model/ActivationFile;)V

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_8
    return-object v1
.end method

.method private parseActivationFile(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/ActivationFile;
    .registers 9

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/ActivationFile;

    invoke-direct {v1}, Lorg/apache/maven/model/ActivationFile;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/ActivationFile;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const-string v2, "missing"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "missing"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/ActivationFile;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "missing"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ActivationFile;->setMissing(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "exists"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "exists"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/ActivationFile;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "exists"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ActivationFile;->setExists(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method private parseActivationOS(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/ActivationOS;
    .registers 9

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/ActivationOS;

    invoke-direct {v1}, Lorg/apache/maven/model/ActivationOS;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/ActivationOS;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    const-string v2, "name"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/ActivationOS;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ActivationOS;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "family"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "family"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/ActivationOS;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "family"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ActivationOS;->setFamily(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "arch"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "arch"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/ActivationOS;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "arch"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ActivationOS;->setArch(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v2, "version"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/ActivationOS;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "version"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ActivationOS;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_7
    return-object v1
.end method

.method private parseActivationProperty(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/ActivationProperty;
    .registers 9

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/ActivationProperty;

    invoke-direct {v1}, Lorg/apache/maven/model/ActivationProperty;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/ActivationProperty;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const-string v2, "name"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/ActivationProperty;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ActivationProperty;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "value"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/ActivationProperty;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ActivationProperty;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method private parseBuild(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Build;
    .registers 12

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Build;

    invoke-direct {v1}, Lorg/apache/maven/model/Build;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Build;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    const-string v2, "sourceDirectory"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "sourceDirectory"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Build;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sourceDirectory"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Build;->setSourceDirectory(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "scriptSourceDirectory"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "scriptSourceDirectory"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Build;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scriptSourceDirectory"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Build;->setScriptSourceDirectory(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "testSourceDirectory"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "testSourceDirectory"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Build;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "testSourceDirectory"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Build;->setTestSourceDirectory(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v2, "outputDirectory"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "outputDirectory"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Build;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "outputDirectory"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Build;->setOutputDirectory(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "testOutputDirectory"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "testOutputDirectory"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Build;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "testOutputDirectory"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Build;->setTestOutputDirectory(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v2, "extensions"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Build;->setExtensions(Ljava/util/List;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v4

    if-ne v4, v3, :cond_2

    const-string v4, "extension"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseExtension(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Extension;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_a
    const-string v2, "defaultGoal"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "defaultGoal"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Build;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "defaultGoal"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Build;->setDefaultGoal(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string v2, "resources"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Build;->setResources(Ljava/util/List;)V

    :goto_4
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v4

    if-ne v4, v3, :cond_2

    const-string v4, "resource"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseResource(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Resource;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_4

    :cond_d
    const-string v2, "testResources"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Build;->setTestResources(Ljava/util/List;)V

    :goto_5
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v4

    if-ne v4, v3, :cond_2

    const-string v4, "testResource"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseResource(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Resource;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_5

    :cond_f
    const-string v2, "directory"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "directory"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Build;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "directory"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Build;->setDirectory(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    const-string v2, "finalName"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "finalName"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Build;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "finalName"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Build;->setFinalName(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    const-string v2, "filters"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Build;->setFilters(Ljava/util/List;)V

    new-instance v4, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v6

    invoke-direct {v4, v5, v6, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v5, "filters"

    invoke-virtual {v1, v5, v4}, Lorg/apache/maven/model/Build;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_6
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v3, :cond_2

    const-string v5, "filter"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    new-instance v5, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v6, v7, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "filters"

    invoke-direct {p0, v5, v6}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_6

    :cond_13
    const-string v2, "pluginManagement"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parsePluginManagement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/PluginManagement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Build;->setPluginManagement(Lorg/apache/maven/model/PluginManagement;)V

    goto/16 :goto_1

    :cond_14
    const-string v2, "plugins"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_16

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Build;->setPlugins(Ljava/util/List;)V

    :goto_7
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v4

    if-ne v4, v3, :cond_2

    const-string v4, "plugin"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parsePlugin(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Plugin;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_15
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_7

    :cond_16
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_17
    return-object v1
.end method

.method private parseBuildBase(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/BuildBase;
    .registers 12

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/BuildBase;

    invoke-direct {v1}, Lorg/apache/maven/model/BuildBase;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/BuildBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    const-string v2, "defaultGoal"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "defaultGoal"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/BuildBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "defaultGoal"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/BuildBase;->setDefaultGoal(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "resources"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/BuildBase;->setResources(Ljava/util/List;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v4

    if-ne v4, v3, :cond_2

    const-string v4, "resource"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseResource(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Resource;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_6
    const-string v2, "testResources"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/BuildBase;->setTestResources(Ljava/util/List;)V

    :goto_4
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v4

    if-ne v4, v3, :cond_2

    const-string v4, "testResource"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseResource(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Resource;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_4

    :cond_8
    const-string v2, "directory"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "directory"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/BuildBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "directory"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/BuildBase;->setDirectory(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v2, "finalName"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "finalName"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/BuildBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "finalName"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/BuildBase;->setFinalName(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string v2, "filters"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/BuildBase;->setFilters(Ljava/util/List;)V

    new-instance v4, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v6

    invoke-direct {v4, v5, v6, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v5, "filters"

    invoke-virtual {v1, v5, v4}, Lorg/apache/maven/model/BuildBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_5
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v3, :cond_2

    const-string v5, "filter"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v5, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v6, v7, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "filters"

    invoke-direct {p0, v5, v6}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_5

    :cond_c
    const-string v2, "pluginManagement"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parsePluginManagement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/PluginManagement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/BuildBase;->setPluginManagement(Lorg/apache/maven/model/PluginManagement;)V

    goto/16 :goto_1

    :cond_d
    const-string v2, "plugins"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/BuildBase;->setPlugins(Ljava/util/List;)V

    :goto_6
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v4

    if-ne v4, v3, :cond_2

    const-string v4, "plugin"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parsePlugin(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Plugin;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_6

    :cond_f
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_10
    return-object v1
.end method

.method private parseCiManagement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/CiManagement;
    .registers 10

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/CiManagement;

    invoke-direct {v1}, Lorg/apache/maven/model/CiManagement;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/CiManagement;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    const-string v2, "system"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "system"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/CiManagement;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "system"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/CiManagement;->setSystem(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "url"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/CiManagement;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/CiManagement;->setUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "notifiers"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/CiManagement;->setNotifiers(Ljava/util/List;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v4

    if-ne v4, v3, :cond_2

    const-string v4, "notifier"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseNotifier(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Notifier;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_8
    return-object v1
.end method

.method private parseConfigurationContainer(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/ConfigurationContainer;
    .registers 10

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/ConfigurationContainer;

    invoke-direct {v1}, Lorg/apache/maven/model/ConfigurationContainer;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/ConfigurationContainer;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    invoke-direct {p0, p1, v4, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    const-string v2, "inherited"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "inherited"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/ConfigurationContainer;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "inherited"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ConfigurationContainer;->setInherited(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "configuration"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "configuration"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/ConfigurationContainer;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-static {p1, v3}, Lorg/codehaus/plexus/util/xml/Xpp3DomBuilder;->build(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ConfigurationContainer;->setConfiguration(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method private parseContributor(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Contributor;
    .registers 12

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Contributor;

    invoke-direct {v1}, Lorg/apache/maven/model/Contributor;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Contributor;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    const-string v2, "name"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Contributor;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Contributor;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "email"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "email"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Contributor;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "email"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Contributor;->setEmail(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "url"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Contributor;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Contributor;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v2, "organization"

    const-string v5, "organisation"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "organization"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Contributor;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "organization"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Contributor;->setOrganization(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "organizationUrl"

    const-string v5, "organisationUrl"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "organizationUrl"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Contributor;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "organizationUrl"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Contributor;->setOrganizationUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v2, "roles"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Contributor;->setRoles(Ljava/util/List;)V

    new-instance v4, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v6

    invoke-direct {v4, v5, v6, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v5, "roles"

    invoke-virtual {v1, v5, v4}, Lorg/apache/maven/model/Contributor;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v3, :cond_2

    const-string v5, "role"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v6, v7, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "roles"

    invoke-direct {p0, v5, v6}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_a
    const-string v2, "timezone"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "timezone"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Contributor;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "timezone"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Contributor;->setTimezone(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string v2, "properties"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "properties"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Contributor;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_4
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v6, v7, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-virtual {v2, v4, v5}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/apache/maven/model/Contributor;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_d
    return-object v1
.end method

.method private parseDependency(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Dependency;
    .registers 10

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Dependency;

    invoke-direct {v1}, Lorg/apache/maven/model/Dependency;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Dependency;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    const-string v2, "groupId"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "groupId"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Dependency;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "groupId"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Dependency;->setGroupId(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "artifactId"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "artifactId"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Dependency;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "artifactId"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Dependency;->setArtifactId(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "version"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Dependency;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "version"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Dependency;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v2, "type"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Dependency;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Dependency;->setType(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "classifier"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "classifier"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Dependency;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "classifier"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Dependency;->setClassifier(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v2, "scope"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "scope"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Dependency;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scope"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Dependency;->setScope(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v2, "systemPath"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "systemPath"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Dependency;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "systemPath"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Dependency;->setSystemPath(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string v2, "exclusions"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Dependency;->setExclusions(Ljava/util/List;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v4

    if-ne v4, v3, :cond_2

    const-string v4, "exclusion"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseExclusion(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Exclusion;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_c
    const-string v2, "optional"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "optional"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Dependency;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "optional"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Dependency;->setOptional(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_e
    return-object v1
.end method

.method private parseDependencyManagement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/DependencyManagement;
    .registers 10

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/DependencyManagement;

    invoke-direct {v1}, Lorg/apache/maven/model/DependencyManagement;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/DependencyManagement;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const-string v2, "dependencies"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/DependencyManagement;->setDependencies(Ljava/util/List;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v4

    if-ne v4, v3, :cond_2

    const-string v4, "dependency"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseDependency(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Dependency;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method private parseDeploymentRepository(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/DeploymentRepository;
    .registers 9

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/DeploymentRepository;

    invoke-direct {v1}, Lorg/apache/maven/model/DeploymentRepository;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/DeploymentRepository;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    const-string v2, "uniqueVersion"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "uniqueVersion"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/DeploymentRepository;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uniqueVersion"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uniqueVersion"

    const-string v4, "true"

    invoke-direct {p0, v2, v3, p1, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->getBooleanValue(Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/DeploymentRepository;->setUniqueVersion(Z)V

    goto :goto_1

    :cond_3
    const-string v2, "releases"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseRepositoryPolicy(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/RepositoryPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/DeploymentRepository;->setReleases(Lorg/apache/maven/model/RepositoryPolicy;)V

    goto :goto_1

    :cond_4
    const-string v2, "snapshots"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseRepositoryPolicy(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/RepositoryPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/DeploymentRepository;->setSnapshots(Lorg/apache/maven/model/RepositoryPolicy;)V

    goto :goto_1

    :cond_5
    const-string v2, "id"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/DeploymentRepository;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/DeploymentRepository;->setId(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v2, "name"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/DeploymentRepository;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/DeploymentRepository;->setName(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "url"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/DeploymentRepository;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/DeploymentRepository;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v2, "layout"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "layout"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/DeploymentRepository;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "layout"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/DeploymentRepository;->setLayout(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_a
    return-object v1
.end method

.method private parseDeveloper(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Developer;
    .registers 12

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Developer;

    invoke-direct {v1}, Lorg/apache/maven/model/Developer;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Developer;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    const-string v2, "id"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Developer;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Developer;->setId(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "name"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Developer;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Developer;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "email"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "email"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Developer;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "email"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Developer;->setEmail(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v2, "url"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Developer;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Developer;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "organization"

    const-string v5, "organisation"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "organization"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Developer;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "organization"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Developer;->setOrganization(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v2, "organizationUrl"

    const-string v5, "organisationUrl"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "organizationUrl"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Developer;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "organizationUrl"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Developer;->setOrganizationUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v2, "roles"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Developer;->setRoles(Ljava/util/List;)V

    new-instance v4, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v6

    invoke-direct {v4, v5, v6, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v5, "roles"

    invoke-virtual {v1, v5, v4}, Lorg/apache/maven/model/Developer;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v3, :cond_2

    const-string v5, "role"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v6, v7, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "roles"

    invoke-direct {p0, v5, v6}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_b
    const-string v2, "timezone"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "timezone"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Developer;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "timezone"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Developer;->setTimezone(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const-string v2, "properties"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "properties"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Developer;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_4
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v6, v7, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-virtual {v2, v4, v5}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/apache/maven/model/Developer;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_e
    return-object v1
.end method

.method private parseDistributionManagement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/DistributionManagement;
    .registers 9

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/DistributionManagement;

    invoke-direct {v1}, Lorg/apache/maven/model/DistributionManagement;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/DistributionManagement;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    const-string v2, "repository"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseDeploymentRepository(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/DeploymentRepository;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/DistributionManagement;->setRepository(Lorg/apache/maven/model/DeploymentRepository;)V

    goto :goto_1

    :cond_3
    const-string v2, "snapshotRepository"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseDeploymentRepository(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/DeploymentRepository;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/DistributionManagement;->setSnapshotRepository(Lorg/apache/maven/model/DeploymentRepository;)V

    goto :goto_1

    :cond_4
    const-string v2, "site"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseSite(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Site;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/DistributionManagement;->setSite(Lorg/apache/maven/model/Site;)V

    goto :goto_1

    :cond_5
    const-string v2, "downloadUrl"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "downloadUrl"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/DistributionManagement;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "downloadUrl"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/DistributionManagement;->setDownloadUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v2, "relocation"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseRelocation(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Relocation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/DistributionManagement;->setRelocation(Lorg/apache/maven/model/Relocation;)V

    goto :goto_1

    :cond_7
    const-string v2, "status"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "status"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/DistributionManagement;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "status"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/DistributionManagement;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_9
    return-object v1
.end method

.method private parseExclusion(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Exclusion;
    .registers 9

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Exclusion;

    invoke-direct {v1}, Lorg/apache/maven/model/Exclusion;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Exclusion;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const-string v2, "artifactId"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "artifactId"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Exclusion;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "artifactId"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Exclusion;->setArtifactId(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "groupId"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "groupId"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Exclusion;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "groupId"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Exclusion;->setGroupId(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method private parseExtension(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Extension;
    .registers 9

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Extension;

    invoke-direct {v1}, Lorg/apache/maven/model/Extension;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Extension;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const-string v2, "groupId"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "groupId"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Extension;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "groupId"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Extension;->setGroupId(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "artifactId"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "artifactId"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Extension;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "artifactId"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Extension;->setArtifactId(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "version"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Extension;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "version"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Extension;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_6
    return-object v1
.end method

.method private parseFileSet(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/FileSet;
    .registers 12

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/FileSet;

    invoke-direct {v1}, Lorg/apache/maven/model/FileSet;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/FileSet;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    const-string v2, "directory"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "directory"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/FileSet;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "directory"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/FileSet;->setDirectory(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "includes"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/FileSet;->setIncludes(Ljava/util/List;)V

    new-instance v4, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v6

    invoke-direct {v4, v5, v6, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v5, "includes"

    invoke-virtual {v1, v5, v4}, Lorg/apache/maven/model/FileSet;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v3, :cond_2

    const-string v5, "include"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v6, v7, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "includes"

    invoke-direct {p0, v5, v6}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_6
    const-string v2, "excludes"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/FileSet;->setExcludes(Ljava/util/List;)V

    new-instance v4, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v6

    invoke-direct {v4, v5, v6, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v5, "excludes"

    invoke-virtual {v1, v5, v4}, Lorg/apache/maven/model/FileSet;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_4
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v3, :cond_2

    const-string v5, "exclude"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v6, v7, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "excludes"

    invoke-direct {p0, v5, v6}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_4

    :cond_8
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_9
    return-object v1
.end method

.method private parseIssueManagement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/IssueManagement;
    .registers 9

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/IssueManagement;

    invoke-direct {v1}, Lorg/apache/maven/model/IssueManagement;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/IssueManagement;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const-string v2, "system"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "system"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/IssueManagement;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "system"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/IssueManagement;->setSystem(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "url"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/IssueManagement;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/IssueManagement;->setUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method private parseLicense(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/License;
    .registers 9

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/License;

    invoke-direct {v1}, Lorg/apache/maven/model/License;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/License;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    const-string v2, "name"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/License;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/License;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "url"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/License;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/License;->setUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "distribution"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "distribution"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/License;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "distribution"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/License;->setDistribution(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v2, "comments"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "comments"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/License;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "comments"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/License;->setComments(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_7
    return-object v1
.end method

.method private parseMailingList(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/MailingList;
    .registers 12

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/MailingList;

    invoke-direct {v1}, Lorg/apache/maven/model/MailingList;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/MailingList;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    const-string v2, "name"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/MailingList;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/MailingList;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "subscribe"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "subscribe"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/MailingList;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "subscribe"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/MailingList;->setSubscribe(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "unsubscribe"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "unsubscribe"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/MailingList;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unsubscribe"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/MailingList;->setUnsubscribe(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v2, "post"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "post"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/MailingList;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "post"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/MailingList;->setPost(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "archive"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "archive"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/MailingList;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "archive"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/MailingList;->setArchive(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v2, "otherArchives"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/MailingList;->setOtherArchives(Ljava/util/List;)V

    new-instance v4, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v6

    invoke-direct {v4, v5, v6, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v5, "otherArchives"

    invoke-virtual {v1, v5, v4}, Lorg/apache/maven/model/MailingList;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v3, :cond_2

    const-string v5, "otherArchive"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v6, v7, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "otherArchives"

    invoke-direct {p0, v5, v6}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_b
    return-object v1
.end method

.method private parseModel(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Model;
    .registers 13

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Model;

    invoke-direct {v1}, Lorg/apache/maven/model/Model;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    const-string v5, "xmlns"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, p1, v4, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2b

    const-string v2, "modelVersion"

    const/4 v5, 0x0

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "modelVersion"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "modelVersion"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setModelVersion(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "parent"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseParent(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Parent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setParent(Lorg/apache/maven/model/Parent;)V

    goto :goto_1

    :cond_5
    const-string v2, "groupId"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "groupId"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "groupId"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setGroupId(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v2, "artifactId"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "artifactId"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "artifactId"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setArtifactId(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "version"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "version"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "version"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v2, "packaging"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "packaging"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "packaging"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setPackaging(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v2, "name"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "name"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "name"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setName(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string v2, "description"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "description"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "description"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setDescription(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string v2, "url"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "url"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "url"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const-string v2, "inceptionYear"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "inceptionYear"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "inceptionYear"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setInceptionYear(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string v2, "organization"

    const-string v6, "organisation"

    invoke-direct {p0, p1, v2, v6, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseOrganization(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Organization;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setOrganization(Lorg/apache/maven/model/Organization;)V

    goto/16 :goto_1

    :cond_e
    const-string v2, "licenses"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setLicenses(Ljava/util/List;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string v5, "license"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseLicense(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/License;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_f
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_10
    const-string v2, "developers"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setDevelopers(Ljava/util/List;)V

    :goto_4
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string v5, "developer"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseDeveloper(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Developer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_11
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_4

    :cond_12
    const-string v2, "contributors"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setContributors(Ljava/util/List;)V

    :goto_5
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string v5, "contributor"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseContributor(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Contributor;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_13
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_5

    :cond_14
    const-string v2, "mailingLists"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_16

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setMailingLists(Ljava/util/List;)V

    :goto_6
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string v5, "mailingList"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseMailingList(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/MailingList;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_15
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_6

    :cond_16
    const-string v2, "prerequisites"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parsePrerequisites(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Prerequisites;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setPrerequisites(Lorg/apache/maven/model/Prerequisites;)V

    goto/16 :goto_1

    :cond_17
    const-string v2, "modules"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_19

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setModules(Ljava/util/List;)V

    new-instance v5, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v6, v7, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v6, "modules"

    invoke-virtual {v1, v6, v5}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_7
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v6

    if-ne v6, v4, :cond_2

    const-string v6, "module"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    new-instance v6, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v7

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v8

    invoke-direct {v6, v7, v8, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    const-string v7, "modules"

    invoke-direct {p0, v6, v7}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_18
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_7

    :cond_19
    const-string v2, "scm"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseScm(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Scm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setScm(Lorg/apache/maven/model/Scm;)V

    goto/16 :goto_1

    :cond_1a
    const-string v2, "issueManagement"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseIssueManagement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/IssueManagement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setIssueManagement(Lorg/apache/maven/model/IssueManagement;)V

    goto/16 :goto_1

    :cond_1b
    const-string v2, "ciManagement"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseCiManagement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/CiManagement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setCiManagement(Lorg/apache/maven/model/CiManagement;)V

    goto/16 :goto_1

    :cond_1c
    const-string v2, "distributionManagement"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseDistributionManagement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/DistributionManagement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setDistributionManagement(Lorg/apache/maven/model/DistributionManagement;)V

    goto/16 :goto_1

    :cond_1d
    const-string v2, "properties"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1e

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v6

    invoke-direct {v2, v5, v6, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v5, "properties"

    invoke-virtual {v1, v5, v2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_8
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v7

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v8

    invoke-direct {v6, v7, v8, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-virtual {v2, v5, v6}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/apache/maven/model/Model;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_1e
    const-string v2, "dependencyManagement"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseDependencyManagement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/DependencyManagement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setDependencyManagement(Lorg/apache/maven/model/DependencyManagement;)V

    goto/16 :goto_1

    :cond_1f
    const-string v2, "dependencies"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setDependencies(Ljava/util/List;)V

    :goto_9
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string v5, "dependency"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseDependency(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Dependency;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_20
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_9

    :cond_21
    const-string v2, "repositories"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_23

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setRepositories(Ljava/util/List;)V

    :goto_a
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string v5, "repository"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseRepository(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Repository;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_22
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_a

    :cond_23
    const-string v2, "pluginRepositories"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_25

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setPluginRepositories(Ljava/util/List;)V

    :goto_b
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string v5, "pluginRepository"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseRepository(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Repository;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_24
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_b

    :cond_25
    const-string v2, "build"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseBuild(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Build;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setBuild(Lorg/apache/maven/model/Build;)V

    goto/16 :goto_1

    :cond_26
    const-string v2, "reports"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_27

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "reports"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Model;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-static {p1, v3}, Lorg/codehaus/plexus/util/xml/Xpp3DomBuilder;->build(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setReports(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_27
    const-string v2, "reporting"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseReporting(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Reporting;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setReporting(Lorg/apache/maven/model/Reporting;)V

    goto/16 :goto_1

    :cond_28
    const-string v2, "profiles"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_2a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Model;->setProfiles(Ljava/util/List;)V

    :goto_c
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string v5, "profile"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseProfile(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Profile;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_29
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_c

    :cond_2a
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_2b
    return-object v1
.end method

.method private parseModelBase(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/ModelBase;
    .registers 13

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/ModelBase;

    invoke-direct {v1}, Lorg/apache/maven/model/ModelBase;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/ModelBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    invoke-direct {p0, p1, v4, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_11

    const-string v2, "modules"

    const/4 v5, 0x0

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ModelBase;->setModules(Ljava/util/List;)V

    new-instance v5, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v6, v7, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v6, "modules"

    invoke-virtual {v1, v6, v5}, Lorg/apache/maven/model/ModelBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v6

    if-ne v6, v4, :cond_2

    const-string v6, "module"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v7

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v8

    invoke-direct {v6, v7, v8, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    const-string v7, "modules"

    invoke-direct {p0, v6, v7}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_5
    const-string v2, "distributionManagement"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseDistributionManagement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/DistributionManagement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ModelBase;->setDistributionManagement(Lorg/apache/maven/model/DistributionManagement;)V

    goto :goto_1

    :cond_6
    const-string v2, "properties"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v6

    invoke-direct {v2, v5, v6, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v5, "properties"

    invoke-virtual {v1, v5, v2}, Lorg/apache/maven/model/ModelBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_4
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v7

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v8

    invoke-direct {v6, v7, v8, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-virtual {v2, v5, v6}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/apache/maven/model/ModelBase;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string v2, "dependencyManagement"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseDependencyManagement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/DependencyManagement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ModelBase;->setDependencyManagement(Lorg/apache/maven/model/DependencyManagement;)V

    goto/16 :goto_1

    :cond_8
    const-string v2, "dependencies"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ModelBase;->setDependencies(Ljava/util/List;)V

    :goto_5
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string v5, "dependency"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseDependency(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Dependency;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_5

    :cond_a
    const-string v2, "repositories"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ModelBase;->setRepositories(Ljava/util/List;)V

    :goto_6
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string v5, "repository"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseRepository(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Repository;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_6

    :cond_c
    const-string v2, "pluginRepositories"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ModelBase;->setPluginRepositories(Ljava/util/List;)V

    :goto_7
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string v5, "pluginRepository"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseRepository(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Repository;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_7

    :cond_e
    const-string v2, "reports"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "reports"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/ModelBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-static {p1, v3}, Lorg/codehaus/plexus/util/xml/Xpp3DomBuilder;->build(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ModelBase;->setReports(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_f
    const-string v2, "reporting"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseReporting(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Reporting;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ModelBase;->setReporting(Lorg/apache/maven/model/Reporting;)V

    goto/16 :goto_1

    :cond_10
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_11
    return-object v1
.end method

.method private parseNotifier(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Notifier;
    .registers 12

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Notifier;

    invoke-direct {v1}, Lorg/apache/maven/model/Notifier;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Notifier;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    const-string v2, "type"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Notifier;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Notifier;->setType(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "sendOnError"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "sendOnError"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Notifier;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sendOnError"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sendOnError"

    const-string v4, "true"

    invoke-direct {p0, v2, v3, p1, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->getBooleanValue(Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Notifier;->setSendOnError(Z)V

    goto :goto_1

    :cond_5
    const-string v2, "sendOnFailure"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "sendOnFailure"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Notifier;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sendOnFailure"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sendOnFailure"

    const-string v4, "true"

    invoke-direct {p0, v2, v3, p1, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->getBooleanValue(Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Notifier;->setSendOnFailure(Z)V

    goto/16 :goto_1

    :cond_6
    const-string v2, "sendOnSuccess"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "sendOnSuccess"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Notifier;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sendOnSuccess"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sendOnSuccess"

    const-string v4, "true"

    invoke-direct {p0, v2, v3, p1, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->getBooleanValue(Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Notifier;->setSendOnSuccess(Z)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "sendOnWarning"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "sendOnWarning"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Notifier;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sendOnWarning"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sendOnWarning"

    const-string v4, "true"

    invoke-direct {p0, v2, v3, p1, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->getBooleanValue(Ljava/lang/String;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Notifier;->setSendOnWarning(Z)V

    goto/16 :goto_1

    :cond_8
    const-string v2, "address"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "address"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Notifier;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "address"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Notifier;->setAddress(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v2, "configuration"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "configuration"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Notifier;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v6, v7, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-virtual {v2, v4, v5}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/apache/maven/model/Notifier;->addConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_b
    return-object v1
.end method

.method private parseOrganization(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Organization;
    .registers 9

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Organization;

    invoke-direct {v1}, Lorg/apache/maven/model/Organization;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Organization;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const-string v2, "name"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Organization;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Organization;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "url"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Organization;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Organization;->setUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method private parseParent(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Parent;
    .registers 9

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Parent;

    invoke-direct {v1}, Lorg/apache/maven/model/Parent;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Parent;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    const-string v2, "groupId"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "groupId"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Parent;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "groupId"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Parent;->setGroupId(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "artifactId"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "artifactId"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Parent;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "artifactId"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Parent;->setArtifactId(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "version"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Parent;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "version"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Parent;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v2, "relativePath"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "relativePath"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Parent;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "relativePath"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Parent;->setRelativePath(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_7
    return-object v1
.end method

.method private parsePatternSet(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/PatternSet;
    .registers 12

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/PatternSet;

    invoke-direct {v1}, Lorg/apache/maven/model/PatternSet;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/PatternSet;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    const-string v2, "includes"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/PatternSet;->setIncludes(Ljava/util/List;)V

    new-instance v4, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v6

    invoke-direct {v4, v5, v6, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v5, "includes"

    invoke-virtual {v1, v5, v4}, Lorg/apache/maven/model/PatternSet;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v3, :cond_2

    const-string v5, "include"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v6, v7, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "includes"

    invoke-direct {p0, v5, v6}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_5
    const-string v2, "excludes"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/PatternSet;->setExcludes(Ljava/util/List;)V

    new-instance v4, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v6

    invoke-direct {v4, v5, v6, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v5, "excludes"

    invoke-virtual {v1, v5, v4}, Lorg/apache/maven/model/PatternSet;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_4
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v3, :cond_2

    const-string v5, "exclude"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v6, v7, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "excludes"

    invoke-direct {p0, v5, v6}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_4

    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_8
    return-object v1
.end method

.method private parsePlugin(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Plugin;
    .registers 11

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Plugin;

    invoke-direct {v1}, Lorg/apache/maven/model/Plugin;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Plugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    invoke-direct {p0, p1, v4, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_f

    const-string v2, "groupId"

    const/4 v5, 0x0

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "groupId"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Plugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "groupId"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Plugin;->setGroupId(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "artifactId"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "artifactId"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Plugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "artifactId"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Plugin;->setArtifactId(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "version"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "version"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Plugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "version"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Plugin;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v2, "extensions"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "extensions"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Plugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "extensions"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Plugin;->setExtensions(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "executions"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Plugin;->setExecutions(Ljava/util/List;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string v5, "execution"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parsePluginExecution(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/PluginExecution;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_9
    const-string v2, "dependencies"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Plugin;->setDependencies(Ljava/util/List;)V

    :goto_4
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string v5, "dependency"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseDependency(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Dependency;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_4

    :cond_b
    const-string v2, "goals"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "goals"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Plugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-static {p1, v3}, Lorg/codehaus/plexus/util/xml/Xpp3DomBuilder;->build(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Plugin;->setGoals(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_c
    const-string v2, "inherited"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "inherited"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Plugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "inherited"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Plugin;->setInherited(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string v2, "configuration"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "configuration"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Plugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-static {p1, v3}, Lorg/codehaus/plexus/util/xml/Xpp3DomBuilder;->build(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Plugin;->setConfiguration(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_e
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_f
    return-object v1
.end method

.method private parsePluginConfiguration(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/PluginConfiguration;
    .registers 10

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/PluginConfiguration;

    invoke-direct {v1}, Lorg/apache/maven/model/PluginConfiguration;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/PluginConfiguration;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    const-string v2, "pluginManagement"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parsePluginManagement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/PluginManagement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/PluginConfiguration;->setPluginManagement(Lorg/apache/maven/model/PluginManagement;)V

    goto :goto_1

    :cond_4
    const-string v2, "plugins"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/PluginConfiguration;->setPlugins(Ljava/util/List;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v4

    if-ne v4, v3, :cond_2

    const-string v4, "plugin"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parsePlugin(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Plugin;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_1

    :cond_7
    return-object v1
.end method

.method private parsePluginContainer(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/PluginContainer;
    .registers 10

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/PluginContainer;

    invoke-direct {v1}, Lorg/apache/maven/model/PluginContainer;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/PluginContainer;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const-string v2, "plugins"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/PluginContainer;->setPlugins(Ljava/util/List;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v4

    if-ne v4, v3, :cond_2

    const-string v4, "plugin"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parsePlugin(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Plugin;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method private parsePluginExecution(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/PluginExecution;
    .registers 13

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/PluginExecution;

    invoke-direct {v1}, Lorg/apache/maven/model/PluginExecution;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/PluginExecution;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    invoke-direct {p0, p1, v4, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_a

    const-string v2, "id"

    const/4 v5, 0x0

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "id"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/PluginExecution;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "id"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/PluginExecution;->setId(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "phase"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "phase"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/PluginExecution;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "phase"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/PluginExecution;->setPhase(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "goals"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/PluginExecution;->setGoals(Ljava/util/List;)V

    new-instance v5, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v6, v7, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v6, "goals"

    invoke-virtual {v1, v6, v5}, Lorg/apache/maven/model/PluginExecution;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v6

    if-ne v6, v4, :cond_2

    const-string v6, "goal"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v7

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v8

    invoke-direct {v6, v7, v8, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    const-string v7, "goals"

    invoke-direct {p0, v6, v7}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_7
    const-string v2, "inherited"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "inherited"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/PluginExecution;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "inherited"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/PluginExecution;->setInherited(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v2, "configuration"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "configuration"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/PluginExecution;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-static {p1, v3}, Lorg/codehaus/plexus/util/xml/Xpp3DomBuilder;->build(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/PluginExecution;->setConfiguration(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_a
    return-object v1
.end method

.method private parsePluginManagement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/PluginManagement;
    .registers 10

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/PluginManagement;

    invoke-direct {v1}, Lorg/apache/maven/model/PluginManagement;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/PluginManagement;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const-string v2, "plugins"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/PluginManagement;->setPlugins(Ljava/util/List;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v4

    if-ne v4, v3, :cond_2

    const-string v4, "plugin"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parsePlugin(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Plugin;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method private parsePrerequisites(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Prerequisites;
    .registers 9

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Prerequisites;

    invoke-direct {v1}, Lorg/apache/maven/model/Prerequisites;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Prerequisites;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const-string v2, "maven"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "maven"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Prerequisites;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "maven"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Prerequisites;->setMaven(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method private parseProfile(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Profile;
    .registers 13

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Profile;

    invoke-direct {v1}, Lorg/apache/maven/model/Profile;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Profile;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    invoke-direct {p0, p1, v4, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_14

    const-string v2, "id"

    const/4 v5, 0x0

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "id"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Profile;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "id"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Profile;->setId(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "activation"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseActivation(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Activation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Profile;->setActivation(Lorg/apache/maven/model/Activation;)V

    goto :goto_1

    :cond_5
    const-string v2, "build"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseBuildBase(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/BuildBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Profile;->setBuild(Lorg/apache/maven/model/BuildBase;)V

    goto :goto_1

    :cond_6
    const-string v2, "modules"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Profile;->setModules(Ljava/util/List;)V

    new-instance v5, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v6, v7, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v6, "modules"

    invoke-virtual {v1, v6, v5}, Lorg/apache/maven/model/Profile;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v6

    if-ne v6, v4, :cond_2

    const-string v6, "module"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v7

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v8

    invoke-direct {v6, v7, v8, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    const-string v7, "modules"

    invoke-direct {p0, v6, v7}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_8
    const-string v2, "distributionManagement"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseDistributionManagement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/DistributionManagement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Profile;->setDistributionManagement(Lorg/apache/maven/model/DistributionManagement;)V

    goto/16 :goto_1

    :cond_9
    const-string v2, "properties"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v6

    invoke-direct {v2, v5, v6, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v5, "properties"

    invoke-virtual {v1, v5, v2}, Lorg/apache/maven/model/Profile;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_4
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v7

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v8

    invoke-direct {v6, v7, v8, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-virtual {v2, v5, v6}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/apache/maven/model/Profile;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    const-string v2, "dependencyManagement"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseDependencyManagement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/DependencyManagement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Profile;->setDependencyManagement(Lorg/apache/maven/model/DependencyManagement;)V

    goto/16 :goto_1

    :cond_b
    const-string v2, "dependencies"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Profile;->setDependencies(Ljava/util/List;)V

    :goto_5
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string v5, "dependency"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseDependency(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Dependency;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_5

    :cond_d
    const-string v2, "repositories"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Profile;->setRepositories(Ljava/util/List;)V

    :goto_6
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string v5, "repository"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseRepository(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Repository;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_6

    :cond_f
    const-string v2, "pluginRepositories"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Profile;->setPluginRepositories(Ljava/util/List;)V

    :goto_7
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string v5, "pluginRepository"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseRepository(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Repository;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_7

    :cond_11
    const-string v2, "reports"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "reports"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/Profile;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-static {p1, v3}, Lorg/codehaus/plexus/util/xml/Xpp3DomBuilder;->build(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Profile;->setReports(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_12
    const-string v2, "reporting"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseReporting(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Reporting;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Profile;->setReporting(Lorg/apache/maven/model/Reporting;)V

    goto/16 :goto_1

    :cond_13
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_14
    return-object v1
.end method

.method private parseRelocation(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Relocation;
    .registers 9

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Relocation;

    invoke-direct {v1}, Lorg/apache/maven/model/Relocation;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Relocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    const-string v2, "groupId"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "groupId"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Relocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "groupId"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Relocation;->setGroupId(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "artifactId"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "artifactId"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Relocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "artifactId"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Relocation;->setArtifactId(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "version"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Relocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "version"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Relocation;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v2, "message"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "message"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Relocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Relocation;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_7
    return-object v1
.end method

.method private parseReportPlugin(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/ReportPlugin;
    .registers 11

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/ReportPlugin;

    invoke-direct {v1}, Lorg/apache/maven/model/ReportPlugin;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/ReportPlugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    invoke-direct {p0, p1, v4, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_b

    const-string v2, "groupId"

    const/4 v5, 0x0

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "groupId"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/ReportPlugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "groupId"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ReportPlugin;->setGroupId(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "artifactId"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "artifactId"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/ReportPlugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "artifactId"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ReportPlugin;->setArtifactId(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "version"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "version"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/ReportPlugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "version"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ReportPlugin;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v2, "reportSets"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ReportPlugin;->setReportSets(Ljava/util/List;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string v5, "reportSet"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseReportSet(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/ReportSet;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_8
    const-string v2, "inherited"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "inherited"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/ReportPlugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "inherited"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ReportPlugin;->setInherited(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v2, "configuration"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "configuration"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/ReportPlugin;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-static {p1, v3}, Lorg/codehaus/plexus/util/xml/Xpp3DomBuilder;->build(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ReportPlugin;->setConfiguration(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_b
    return-object v1
.end method

.method private parseReportSet(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/ReportSet;
    .registers 13

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/ReportSet;

    invoke-direct {v1}, Lorg/apache/maven/model/ReportSet;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/ReportSet;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    invoke-direct {p0, p1, v4, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    const-string v2, "id"

    const/4 v5, 0x0

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "id"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/ReportSet;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "id"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ReportSet;->setId(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "reports"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ReportSet;->setReports(Ljava/util/List;)V

    new-instance v5, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v6, v7, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v6, "reports"

    invoke-virtual {v1, v6, v5}, Lorg/apache/maven/model/ReportSet;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v6

    if-ne v6, v4, :cond_2

    const-string v6, "report"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v7

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v8

    invoke-direct {v6, v7, v8, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    const-string v7, "reports"

    invoke-direct {p0, v6, v7}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_6
    const-string v2, "inherited"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "inherited"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/ReportSet;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "inherited"

    invoke-direct {p0, v2, v4}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ReportSet;->setInherited(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "configuration"

    invoke-direct {p0, p1, v2, v5, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v5

    invoke-direct {v2, v4, v5, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v4, "configuration"

    invoke-virtual {v1, v4, v2}, Lorg/apache/maven/model/ReportSet;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-static {p1, v3}, Lorg/codehaus/plexus/util/xml/Xpp3DomBuilder;->build(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/ReportSet;->setConfiguration(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_9
    return-object v1
.end method

.method private parseReporting(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Reporting;
    .registers 10

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Reporting;

    invoke-direct {v1}, Lorg/apache/maven/model/Reporting;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Reporting;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    const-string v2, "excludeDefaults"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "excludeDefaults"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Reporting;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "excludeDefaults"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Reporting;->setExcludeDefaults(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "outputDirectory"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "outputDirectory"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Reporting;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "outputDirectory"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Reporting;->setOutputDirectory(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "plugins"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Reporting;->setPlugins(Ljava/util/List;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v4

    if-ne v4, v3, :cond_2

    const-string v4, "plugin"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseReportPlugin(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/ReportPlugin;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_8
    return-object v1
.end method

.method private parseRepository(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Repository;
    .registers 9

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Repository;

    invoke-direct {v1}, Lorg/apache/maven/model/Repository;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Repository;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    const-string v2, "releases"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseRepositoryPolicy(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/RepositoryPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Repository;->setReleases(Lorg/apache/maven/model/RepositoryPolicy;)V

    goto :goto_1

    :cond_3
    const-string v2, "snapshots"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseRepositoryPolicy(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/RepositoryPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Repository;->setSnapshots(Lorg/apache/maven/model/RepositoryPolicy;)V

    goto :goto_1

    :cond_4
    const-string v2, "id"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Repository;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Repository;->setId(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "name"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Repository;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Repository;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v2, "url"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Repository;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Repository;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "layout"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "layout"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Repository;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "layout"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Repository;->setLayout(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_9
    return-object v1
.end method

.method private parseRepositoryBase(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/RepositoryBase;
    .registers 9

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/RepositoryBase;

    invoke-direct {v1}, Lorg/apache/maven/model/RepositoryBase;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/RepositoryBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    const-string v2, "id"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/RepositoryBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/RepositoryBase;->setId(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "name"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/RepositoryBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/RepositoryBase;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "url"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/RepositoryBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/RepositoryBase;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v2, "layout"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "layout"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/RepositoryBase;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "layout"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/RepositoryBase;->setLayout(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_7
    return-object v1
.end method

.method private parseRepositoryPolicy(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/RepositoryPolicy;
    .registers 9

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/RepositoryPolicy;

    invoke-direct {v1}, Lorg/apache/maven/model/RepositoryPolicy;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/RepositoryPolicy;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const-string v2, "enabled"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "enabled"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/RepositoryPolicy;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/RepositoryPolicy;->setEnabled(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "updatePolicy"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "updatePolicy"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/RepositoryPolicy;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "updatePolicy"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/RepositoryPolicy;->setUpdatePolicy(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "checksumPolicy"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "checksumPolicy"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/RepositoryPolicy;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "checksumPolicy"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/RepositoryPolicy;->setChecksumPolicy(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_6
    return-object v1
.end method

.method private parseResource(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Resource;
    .registers 12

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Resource;

    invoke-direct {v1}, Lorg/apache/maven/model/Resource;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Resource;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    const-string v2, "targetPath"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "targetPath"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Resource;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "targetPath"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Resource;->setTargetPath(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "filtering"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "filtering"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Resource;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "filtering"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Resource;->setFiltering(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "directory"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "directory"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Resource;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "directory"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Resource;->setDirectory(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v2, "includes"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Resource;->setIncludes(Ljava/util/List;)V

    new-instance v4, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v6

    invoke-direct {v4, v5, v6, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v5, "includes"

    invoke-virtual {v1, v5, v4}, Lorg/apache/maven/model/Resource;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_3
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v3, :cond_2

    const-string v5, "include"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v6, v7, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "includes"

    invoke-direct {p0, v5, v6}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_3

    :cond_8
    const-string v2, "excludes"

    invoke-direct {p0, p1, v2, v4, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Resource;->setExcludes(Ljava/util/List;)V

    new-instance v4, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v6

    invoke-direct {v4, v5, v6, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v5, "excludes"

    invoke-virtual {v1, v5, v4}, Lorg/apache/maven/model/Resource;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    :goto_4
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v5

    if-ne v5, v3, :cond_2

    const-string v5, "exclude"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v6, v7, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lorg/apache/maven/model/InputLocation;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "excludes"

    invoke-direct {p0, v5, v6}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto :goto_4

    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_b
    return-object v1
.end method

.method private parseScm(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Scm;
    .registers 9

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Scm;

    invoke-direct {v1}, Lorg/apache/maven/model/Scm;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Scm;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    const-string v2, "connection"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "connection"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Scm;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "connection"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Scm;->setConnection(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "developerConnection"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "developerConnection"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Scm;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "developerConnection"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Scm;->setDeveloperConnection(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "tag"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "tag"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Scm;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tag"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Scm;->setTag(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v2, "url"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Scm;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Scm;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_7
    return-object v1
.end method

.method private parseSite(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Site;
    .registers 9

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/maven/model/Site;

    invoke-direct {v1}, Lorg/apache/maven/model/Site;-><init>()V

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Site;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-direct {p0, p1, v3, v0, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownAttribute(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextTag()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->nextTag(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;)I

    move-result v2

    :goto_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const-string v2, "id"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Site;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Site;->setId(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "name"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Site;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Site;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "url"

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkFieldWithDuplicate(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/apache/maven/model/InputLocation;

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/apache/maven/model/InputLocation;-><init>(IILorg/apache/maven/model/InputSource;)V

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Lorg/apache/maven/model/Site;->setLocation(Ljava/lang/Object;Lorg/apache/maven/model/InputLocation;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-direct {p0, v2, v3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->interpolatedTrimmed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/maven/model/Site;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->checkUnknownElement(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Z)V

    goto/16 :goto_1

    :cond_6
    return-object v1
.end method

.method private read(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Model;
    .registers 10

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    if-eqz p2, :cond_1

    const-string v0, "project"

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Expected root element \'project\' but found \'"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->parseModel(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Model;

    move-result-object v0

    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/maven/model/Model;->setModelEncoding(Ljava/lang/String;)V

    move-object v3, v0

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    new-instance p2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string p3, "Duplicated tag: \'project\'"

    invoke-direct {p2, p3, p1, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    :goto_2
    invoke-interface {p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    return-object v3

    :cond_5
    new-instance p2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string p3, "Expected root element \'project\' but found no element at all: invalid XML document"

    invoke-direct {p2, p3, p1, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public getAddDefaultEntities()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->addDefaultEntities:Z

    return v0
.end method

.method public read(Ljava/io/InputStream;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Model;
    .registers 4

    invoke-static {p1}, Lorg/codehaus/plexus/util/ReaderFactory;->newXmlReader(Ljava/io/InputStream;)Lorg/codehaus/plexus/util/xml/XmlStreamReader;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->read(Ljava/io/Reader;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Model;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/Reader;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Model;
    .registers 6

    iget-boolean v0, p0, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->addDefaultEntities:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;

    sget-object v1, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->defaultEntityReplacementMap:Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;

    invoke-direct {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;-><init>(Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;

    invoke-direct {v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;-><init>()V

    :goto_0
    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->read(Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;ZLorg/apache/maven/model/InputSource;)Lorg/apache/maven/model/Model;

    move-result-object p1

    return-object p1
.end method

.method public setAddDefaultEntities(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/maven/model/io/xpp3/MavenXpp3ReaderEx;->addDefaultEntities:Z

    return-void
.end method
