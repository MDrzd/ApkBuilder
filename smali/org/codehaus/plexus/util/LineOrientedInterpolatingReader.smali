.class public Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;
.super Ljava/io/FilterReader;


# static fields
.field private static final CARRIAGE_RETURN_CHAR:C = '\r'

.field public static final DEFAULT_END_DELIM:Ljava/lang/String; = "}"

.field public static final DEFAULT_ESCAPE_SEQ:Ljava/lang/String; = "\\"

.field public static final DEFAULT_START_DELIM:Ljava/lang/String; = "${"

.field private static final NEWLINE_CHAR:C = '\n'


# instance fields
.field private final context:Ljava/util/Map;

.field private final endDelim:Ljava/lang/String;

.field private final escapeSeq:Ljava/lang/String;

.field private line:Ljava/lang/String;

.field private lineIdx:I

.field private final minExpressionSize:I

.field private final pushbackReader:Ljava/io/PushbackReader;

.field private final reflector:Lorg/codehaus/plexus/util/reflection/Reflector;

.field private final startDelim:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Ljava/util/Map;)V
    .registers 9

    const-string v3, "${"

    const-string v4, "}"

    const-string v5, "\\"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;-><init>(Ljava/io/Reader;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-string v5, "\\"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;-><init>(Ljava/io/Reader;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->lineIdx:I

    iput-object p3, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->startDelim:Ljava/lang/String;

    iput-object p4, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->endDelim:Ljava/lang/String;

    iput-object p5, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->escapeSeq:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p3, p4

    const/4 p4, 0x1

    add-int/2addr p3, p4

    iput p3, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->minExpressionSize:I

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->context:Ljava/util/Map;

    new-instance p2, Lorg/codehaus/plexus/util/reflection/Reflector;

    invoke-direct {p2}, Lorg/codehaus/plexus/util/reflection/Reflector;-><init>()V

    iput-object p2, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->reflector:Lorg/codehaus/plexus/util/reflection/Reflector;

    instance-of p2, p1, Ljava/io/PushbackReader;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/io/PushbackReader;

    iput-object p1, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->pushbackReader:Ljava/io/PushbackReader;

    return-void

    :cond_0
    new-instance p2, Ljava/io/PushbackReader;

    invoke-direct {p2, p1, p4}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    iput-object p2, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->pushbackReader:Ljava/io/PushbackReader;

    return-void
.end method

.method private evaluateExpressions(Ljava/util/Set;)Ljava/util/Map;
    .registers 9

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->startDelim:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->endDelim:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->context:Ljava/util/Map;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_2

    :try_start_0
    iget-object v5, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->reflector:Lorg/codehaus/plexus/util/reflection/Reflector;

    aget-object v6, v2, v4

    invoke-virtual {v5, v3, v6}, Lorg/codehaus/plexus/util/reflection/Reflector;->getObjectProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Lorg/codehaus/plexus/util/reflection/ReflectorException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_1

    move-object v3, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move-object v3, v5

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/codehaus/plexus/util/reflection/ReflectorException;->printStackTrace()V

    :cond_2
    :goto_2
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private findAndReplaceUnlessEscaped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, -0x1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_3

    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->escapeSeq:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v3, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->escapeSeq:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget-object v3, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->escapeSeq:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    if-gez v1, :cond_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v1, p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, p1, v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private findDelimiter(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7

    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->escapeSeq:Ljava/lang/String;

    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->escapeSeq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->escapeSeq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1

    if-ne v1, v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/4 p3, -0x1

    move p3, v0

    const/4 v0, -0x1

    :cond_1
    if-gez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->endDelim:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p3, v1, :cond_0

    :cond_2
    return v0
.end method

.method private parseForExpressions(Ljava/lang/String;)Ljava/util/Set;
    .registers 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    :cond_0
    iget-object v2, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->startDelim:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v1}, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->findDelimiter(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->endDelim:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, p1, v2, v3}, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->findDelimiter(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v3, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->endDelim:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->minExpressionSize:I

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_0

    :cond_1
    return-object v0
.end method

.method private readAndInterpolateLine()V
    .registers 3

    invoke-direct {p0}, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->parseForExpressions(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->evaluateExpressions(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->replaceWithInterpolatedValues(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iput-object v0, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->line:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->lineIdx:I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->line:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->lineIdx:I

    return-void
.end method

.method private readLine()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->pushbackReader:Ljava/io/PushbackReader;

    invoke-virtual {v2}, Ljava/io/PushbackReader;->read()I

    move-result v2

    if-ltz v2, :cond_3

    int-to-char v2, v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->pushbackReader:Ljava/io/PushbackReader;

    invoke-virtual {v1, v2}, Ljava/io/PushbackReader;->unread(I)V

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private replaceWithInterpolatedValues(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 5

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->findAndReplaceUnlessEscaped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public read()I
    .registers 4

    iget-object v0, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->line:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->lineIdx:I

    iget-object v1, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->line:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->readAndInterpolateLine()V

    :cond_1
    const/4 v0, -0x1

    iget-object v1, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->line:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->lineIdx:I

    iget-object v2, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->line:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->line:Ljava/lang/String;

    iget v1, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->lineIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->lineIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_2
    return v0
.end method

.method public read([CII)I
    .registers 7

    const/4 v0, 0x0

    move v0, p2

    const/4 v1, 0x0

    :goto_0
    add-int v2, p2, p3

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->read()I

    move-result v2

    if-ltz v2, :cond_0

    int-to-char v2, v2

    aput-char v2, p1, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, -0x1

    :cond_1
    return v1
.end method

.method public skip(J)J
    .registers 9

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    cmp-long v4, v0, p1

    if-gez v4, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/LineOrientedInterpolatingReader;->read()I

    move-result v4

    if-ltz v4, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    add-long/2addr v0, v4

    goto :goto_0

    :cond_0
    return-wide v2
.end method
