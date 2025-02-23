.class public Lorg/codehaus/plexus/util/xml/pull/MXSerializer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;


# static fields
.field private static final BUF_LEN:I

.field protected static final PROPERTY_LOCATION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#location"

.field private static final TRACE_SIZING:Z = false

.field protected static final XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field protected static final XML_URI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field protected static final precomputedPrefixes:[Ljava/lang/String;


# instance fields
.field protected final FEATURE_NAMES_INTERNED:Ljava/lang/String;

.field protected final FEATURE_SERIALIZER_ATTVALUE_USE_APOSTROPHE:Ljava/lang/String;

.field protected final PROPERTY_SERIALIZER_INDENTATION:Ljava/lang/String;

.field protected final PROPERTY_SERIALIZER_LINE_SEPARATOR:Ljava/lang/String;

.field protected attributeUseApostrophe:Z

.field protected autoDeclaredPrefixes:I

.field protected buf:[C

.field private checkNamesInterned:Z

.field protected depth:I

.field protected doIndent:Z

.field protected elName:[Ljava/lang/String;

.field protected elNamespace:[Ljava/lang/String;

.field protected elNamespaceCount:[I

.field protected finished:Z

.field protected indentationBuf:[C

.field protected indentationJump:I

.field protected indentationString:Ljava/lang/String;

.field protected lineSeparator:Ljava/lang/String;

.field protected location:Ljava/lang/String;

.field protected maxIndentLevel:I

.field protected namesInterned:Z

.field protected namespaceEnd:I

.field protected namespacePrefix:[Ljava/lang/String;

.field protected namespaceUri:[Ljava/lang/String;

.field protected offsetNewLine:I

.field protected out:Ljava/io/Writer;

.field protected pastRoot:Z

.field protected seenBracket:Z

.field protected seenBracketBracket:Z

.field protected seenTag:Z

.field protected setPrefixCalled:Z

.field protected startTagIncomplete:Z

.field protected writeIndentation:Z

.field protected writeLineSeparator:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/16 v0, 0x2000

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    :goto_0
    sput v0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->BUF_LEN:I

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->precomputedPrefixes:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->precomputedPrefixes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->precomputedPrefixes:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://xmlpull.org/v1/doc/features.html#serializer-attvalue-use-apostrophe"

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->FEATURE_SERIALIZER_ATTVALUE_USE_APOSTROPHE:Ljava/lang/String;

    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->FEATURE_NAMES_INTERNED:Ljava/lang/String;

    const-string v0, "http://xmlpull.org/v1/doc/properties.html#serializer-indentation"

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->PROPERTY_SERIALIZER_INDENTATION:Ljava/lang/String;

    const-string v0, "http://xmlpull.org/v1/doc/properties.html#serializer-line-separator"

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->PROPERTY_SERIALIZER_LINE_SEPARATOR:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->indentationString:Ljava/lang/String;

    const-string v0, "\n"

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->lineSeparator:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespace:[Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespace:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elName:[Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespace:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespaceCount:[I

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceUri:[Ljava/lang/String;

    sget v1, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->BUF_LEN:I

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->buf:[C

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->checkNamesInterned:Z

    return-void
.end method

.method private static addPrintable(Ljava/lang/StringBuilder;C)V
    .registers 4

    const/16 v0, 0x22

    if-eq p1, v0, :cond_4

    const/16 v0, 0x27

    if-eq p1, v0, :cond_3

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/16 v0, 0x20

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7e

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\u"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-void

    :pswitch_0
    const-string p1, "\\r"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_1
    const-string p1, "\\f"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_2
    const-string p1, "\\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_3
    const-string p1, "\\t"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_4
    const-string p1, "\\b"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_2
    const-string p1, "\\\\"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_3
    const-string p1, "\\\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_4
    const-string p1, "\\\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkInterning(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namesInterned:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "all names passed as arguments must be internedwhen NAMES INTERNED feature is enabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private generatePrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->autoDeclaredPrefixes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->autoDeclaredPrefixes:I

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->autoDeclaredPrefixes:I

    sget-object v1, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->precomputedPrefixes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->precomputedPrefixes:[Ljava/lang/String;

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->autoDeclaredPrefixes:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->autoDeclaredPrefixes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->ensureNamespacesCapacity()V

    :cond_1
    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceUri:[Ljava/lang/String;

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    aput-object p1, v1, v2

    iget p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    return-object v0
.end method

.method private getLocation()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->location:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " @"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method protected static final printable(C)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->addPrintable(Ljava/lang/StringBuilder;C)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static final printable(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v0, v2}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->addPrintable(Ljava/lang/StringBuilder;C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeNamespaceDeclarations()V
    .registers 6

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespaceCount:[I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_0
    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->doIndent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceUri:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeIndent()V

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, ""

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string v2, " xmlns:"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string v2, " xmlns="

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->attributeUseApostrophe:Z

    const/16 v3, 0x22

    const/16 v4, 0x27

    if-eqz v2, :cond_2

    const/16 v2, 0x27

    goto :goto_2

    :cond_2
    const/16 v2, 0x22

    :goto_2
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceUri:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeAttributeValue(Ljava/lang/String;Ljava/io/Writer;)V

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->attributeUseApostrophe:Z

    if-eqz v2, :cond_3

    const/16 v3, 0x27

    :cond_3
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;
    .registers 6

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namesInterned:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->checkNamesInterned:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->checkInterning(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->lookupOrDeclarePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->generatePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_3
    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const/16 p2, 0x3d

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    iget-boolean p2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->attributeUseApostrophe:Z

    const/16 v0, 0x22

    const/16 v1, 0x27

    if-eqz p2, :cond_4

    const/16 p2, 0x27

    goto :goto_1

    :cond_4
    const/16 p2, 0x22

    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p0, p3, p1}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeAttributeValue(Ljava/lang/String;Ljava/io/Writer;)V

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    iget-boolean p2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->attributeUseApostrophe:Z

    if-eqz p2, :cond_5

    const/16 v0, 0x27

    :cond_5
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-object p0

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "startTag() must be called before attribute()"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->getLocation()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cdsect(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->setPrefixCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracket:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->closeStartTag()V

    :cond_1
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    :cond_2
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string v0, "]]>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected closeStartTag()V
    .registers 5

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->finished:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracket:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracketBracket:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracket:Z

    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->setPrefixCalled:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->setPrefixCalled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeNamespaceDeclarations()V

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespaceCount:[I

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    aput v3, v0, v2

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trying to close start tag that is not opened"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startTag() must be called immediately after setPrefix()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trying to write past already finished output"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public comment(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->setPrefixCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracket:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->closeStartTag()V

    :cond_1
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    :cond_2
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->setPrefixCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracket:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->closeStartTag()V

    :cond_1
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    :cond_2
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "<!DOCTYPE "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public endDocument()V
    .registers 4

    :goto_0
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespace:[Ljava/lang/String;

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elName:[Ljava/lang/String;

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeLineSeparator:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->pastRoot:Z

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->finished:Z

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;
    .registers 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracketBracket:Z

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracket:Z

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namesInterned:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->checkNamesInterned:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->checkInterning(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespace:[Ljava/lang/String;

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_a

    if-eqz p2, :cond_9

    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->checkNamesInterned:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namesInterned:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->checkInterning(Ljava/lang/String;)V

    :cond_2
    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namesInterned:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elName:[Ljava/lang/String;

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    aget-object v1, v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namesInterned:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elName:[Ljava/lang/String;

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    aget-object v1, v1, v2

    if-ne p2, v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected element name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elName:[Ljava/lang/String;

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->getLocation()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeNamespaceDeclarations()V

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string p2, " />"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    goto :goto_2

    :cond_6
    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->doIndent:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeIndent()V

    :cond_7
    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string v3, "</"

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->lookupOrDeclarePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    :cond_8
    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    :goto_2
    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespaceCount:[I

    iget p2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    aget p1, p1, p2

    iput p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    iput-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "end tag name can not be null"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected namespace "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespace:[Ljava/lang/String;

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->getLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected ensureElementsCapacity()V
    .registers 7

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elName:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-lez v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    new-array v4, v1, [Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elName:[Ljava/lang/String;

    invoke-static {v5, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elName:[Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespace:[Ljava/lang/String;

    invoke-static {v5, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iput-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespace:[Ljava/lang/String;

    new-array v1, v1, [I

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespaceCount:[I

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_4
    aput v2, v1, v2

    :goto_2
    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespaceCount:[I

    return-void
.end method

.method protected ensureNamespacesCapacity()V
    .registers 6

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    new-array v1, v0, [Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceUri:[Ljava/lang/String;

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceUri:[Ljava/lang/String;

    return-void
.end method

.method public entityRef(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->setPrefixCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracket:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->closeStartTag()V

    :cond_1
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    :cond_2
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->finished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->closeStartTag()V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public getDepth()I
    .registers 2

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_2

    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namesInterned:Z

    return p1

    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#serializer-attvalue-use-apostrophe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->attributeUseApostrophe:Z

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "feature name can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elName:[Ljava/lang/String;

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespace:[Ljava/lang/String;

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namesInterned:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->checkNamesInterned:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->checkInterning(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceUri:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->generatePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "default namespace cannot have prefix"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "namespace must be not null"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_3

    const-string v0, "http://xmlpull.org/v1/doc/properties.html#serializer-indentation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->indentationString:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#serializer-line-separator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->lineSeparator:Ljava/lang/String;

    return-object p1

    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->location:Ljava/lang/String;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "property name can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getWriter()Ljava/io/Writer;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    return-object v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->setPrefixCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracket:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->closeStartTag()V

    :cond_1
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "empty string is not allowed for ignorable whitespace"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected lookupOrDeclarePrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->setPrefixCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracket:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->closeStartTag()V

    :cond_1
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    :cond_2
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string v0, "?>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected rebuildIndentationBuf()V
    .registers 8

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->doIndent:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->offsetNewLine:I

    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeLineSeparator:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->offsetNewLine:I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->offsetNewLine:I

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->maxIndentLevel:I

    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeIndentation:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->indentationString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->indentationJump:I

    const/16 v2, 0x41

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->indentationJump:I

    div-int/2addr v2, v3

    iput v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->maxIndentLevel:I

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->maxIndentLevel:I

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->indentationJump:I

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    :cond_2
    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->indentationBuf:[C

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->indentationBuf:[C

    array-length v2, v2

    if-ge v2, v1, :cond_4

    :cond_3
    add-int/lit8 v1, v1, 0x8

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->indentationBuf:[C

    :cond_4
    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeLineSeparator:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->indentationBuf:[C

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v3, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :cond_6
    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeIndentation:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :goto_2
    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->maxIndentLevel:I

    if-ge v1, v3, :cond_8

    move v3, v2

    const/4 v2, 0x0

    :goto_3
    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->indentationString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_7

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->indentationBuf:[C

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->indentationString:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v4, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_2

    :cond_8
    return-void
.end method

.method protected reset()V
    .registers 6

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->location:Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->autoDeclaredPrefixes:I

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespaceCount:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elName:[Ljava/lang/String;

    aput-object v0, v3, v2

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespace:[Ljava/lang/String;

    aput-object v0, v3, v2

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespaceCount:[I

    const/4 v4, 0x2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    const-string v3, "xmlns"

    aput-object v3, v0, v2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceUri:[Ljava/lang/String;

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    const-string v3, "http://www.w3.org/2000/xmlns/"

    aput-object v3, v0, v2

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    const-string v3, "xml"

    aput-object v3, v0, v2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceUri:[Ljava/lang/String;

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    const-string v3, "http://www.w3.org/XML/1998/namespace"

    aput-object v3, v0, v2

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->finished:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->pastRoot:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->setPrefixCalled:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracket:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracketBracket:Z

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 5

    if-eqz p1, :cond_2

    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namesInterned:Z

    return-void

    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#serializer-attvalue-use-apostrophe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->attributeUseApostrophe:Z

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unsupported feature "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "feature name can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->reset()V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    return-void

    :cond_0
    new-instance p2, Ljava/io/OutputStreamWriter;

    invoke-direct {p2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "output stream can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutput(Ljava/io/Writer;)V
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->reset()V

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->closeStartTag()V

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namesInterned:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->checkNamesInterned:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->checkInterning(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_a

    :goto_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespaceCount:[I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    aget v0, v0, v1

    :goto_1
    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eq p1, v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "duplicated prefix "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->getLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namesInterned:Z

    if-nez v0, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->checkNamesInterned:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, p2}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->checkInterning(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_9

    :goto_2
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_8

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->ensureNamespacesCapacity()V

    :cond_8
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceUri:[Ljava/lang/String;

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    aput-object p2, p1, v0

    iget p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    iput-boolean p2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->setPrefixCalled:Z

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "namespace must be not null"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "prefix must be not null"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    if-eqz p1, :cond_7

    const-string v0, "http://xmlpull.org/v1/doc/properties.html#serializer-indentation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->indentationString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#serializer-line-separator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->lineSeparator:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->location:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->lineSeparator:Ljava/lang/String;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeLineSeparator:Z

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->indentationString:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->indentationString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeIndentation:Z

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->indentationString:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeLineSeparator:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeIndentation:Z

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :cond_5
    :goto_3
    iput-boolean p2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->doIndent:Z

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->rebuildIndentationBuf()V

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    return-void

    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unsupported property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "property name can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 7

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->attributeUseApostrophe:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "<?xml version=\'1.0\'"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "<?xml version=\"1.0\""

    goto :goto_0

    :goto_1
    const/16 v0, 0x22

    const/16 v1, 0x27

    if-eqz p1, :cond_3

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string v3, " encoding="

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    iget-boolean v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->attributeUseApostrophe:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x27

    goto :goto_2

    :cond_1
    const/16 v3, 0x22

    :goto_2
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->attributeUseApostrophe:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x27

    goto :goto_3

    :cond_2
    const/16 v2, 0x22

    :goto_3
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    :cond_3
    if-eqz p2, :cond_7

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string v2, " standalone="

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->attributeUseApostrophe:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x27

    goto :goto_4

    :cond_4
    const/16 v2, 0x22

    :goto_4
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string p2, "yes"

    :goto_5
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string p2, "no"

    goto :goto_5

    :goto_6
    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    iget-boolean p2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->attributeUseApostrophe:Z

    if-eqz p2, :cond_6

    const/16 v0, 0x27

    :cond_6
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_7
    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const-string p2, "?>"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-boolean p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeLineSeparator:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    iget-object p2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;
    .registers 9

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->closeStartTag()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracketBracket:Z

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracket:Z

    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->doIndent:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeIndent()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->setPrefixCalled:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elName:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->ensureElementsCapacity()V

    :cond_2
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->checkNamesInterned:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namesInterned:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->checkInterning(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespace:[Ljava/lang/String;

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    iget-boolean v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namesInterned:Z

    if-nez v3, :cond_5

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    :goto_0
    move-object v3, p1

    :goto_1
    aput-object v3, v0, v2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->checkNamesInterned:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namesInterned:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p2}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->checkInterning(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elName:[Ljava/lang/String;

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    iget-boolean v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namesInterned:Z

    if-nez v3, :cond_8

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_8
    :goto_2
    move-object v3, p2

    :goto_3
    aput-object v3, v0, v2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x0

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    if-lez v2, :cond_d

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespaceCount:[I

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    sub-int/2addr v4, v1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    if-ne v2, v1, :cond_d

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceUri:[Ljava/lang/String;

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    sub-int/2addr v3, v1

    aget-object v2, v2, v3

    if-eq v2, p1, :cond_9

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_9
    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    sub-int/2addr v4, v1

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->elNamespaceCount:[I

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    sub-int/2addr v5, v1

    aget v4, v4, v5

    sub-int/2addr v4, v1

    :goto_4
    const/4 v5, 0x2

    if-lt v4, v5, :cond_d

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object v5, v5, v4

    if-eq v5, v3, :cond_b

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_b
    :goto_5
    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceUri:[Ljava/lang/String;

    aget-object v4, v5, v4

    if-eq v4, v2, :cond_c

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    move-object v0, v3

    :cond_d
    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->lookupOrDeclarePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_13

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_7

    :cond_f
    iget p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceEnd:I

    sub-int/2addr p1, v1

    :goto_6
    if-ltz p1, :cond_13

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->namespaceUri:[Ljava/lang/String;

    aget-object p1, v0, p1

    if-nez p1, :cond_10

    const-string p1, ""

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_11

    goto :goto_7

    :cond_11
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start tag can not be written in empty default namespace as default namespace is currently bound to \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->getLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_12
    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_13
    :goto_7
    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setOutput() must called set before serialization can start"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;
    .registers 3

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->setPrefixCalled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->closeStartTag()V

    :cond_1
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    :cond_2
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeElementContent(Ljava/lang/String;Ljava/io/Writer;)V

    return-object p0
.end method

.method public text([CII)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;
    .registers 5

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->setPrefixCalled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->closeStartTag()V

    :cond_1
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenTag:Z

    :cond_2
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeElementContent([CIILjava/io/Writer;)V

    return-object p0
.end method

.method protected writeAttributeValue(Ljava/lang/String;Ljava/io/Writer;)V
    .registers 9

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->attributeUseApostrophe:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    goto :goto_0

    :cond_0
    const/16 v0, 0x22

    :goto_0
    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->attributeUseApostrophe:Z

    if-eqz v1, :cond_1

    const-string v1, "&apos;"

    goto :goto_1

    :cond_1
    const-string v1, "&quot;"

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_c

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x26

    if-ne v4, v5, :cond_3

    if-le v2, v3, :cond_2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    const-string v3, "&amp;"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    :cond_3
    const/16 v5, 0x3c

    if-ne v4, v5, :cond_5

    if-le v2, v3, :cond_4

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_4
    const-string v3, "&lt;"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v3, v2, 0x1

    goto :goto_5

    :cond_5
    if-ne v4, v0, :cond_7

    if-le v2, v3, :cond_6

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const/16 v5, 0x20

    if-ge v4, v5, :cond_b

    const/16 v5, 0xd

    if-eq v4, v5, :cond_9

    const/16 v5, 0xa

    if-eq v4, v5, :cond_9

    const/16 v5, 0x9

    if-ne v4, v5, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "character "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not allowed in output"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_4
    if-le v2, v3, :cond_a

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_a
    const-string v3, "&#"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v3, 0x3b

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_3

    :cond_b
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_c
    if-lez v3, :cond_d

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected writeElementContent(Ljava/lang/String;Ljava/io/Writer;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_b

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracket:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iput-boolean v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracketBracket:Z

    goto/16 :goto_3

    :cond_0
    iput-boolean v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracket:Z

    goto/16 :goto_3

    :cond_1
    const/16 v4, 0x26

    if-ne v3, v4, :cond_3

    if-le v1, v2, :cond_2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    const-string v2, "&amp;"

    :goto_1
    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    goto :goto_2

    :cond_3
    const/16 v4, 0x3c

    if-ne v3, v4, :cond_5

    if-le v1, v2, :cond_4

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_4
    const-string v2, "&lt;"

    goto :goto_1

    :cond_5
    iget-boolean v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracketBracket:Z

    if-eqz v4, :cond_7

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_7

    if-le v1, v2, :cond_6

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_6
    const-string v2, "&gt;"

    goto :goto_1

    :cond_7
    const/16 v4, 0x20

    if-ge v3, v4, :cond_9

    const/16 v4, 0x9

    if-eq v3, v4, :cond_9

    const/16 v4, 0xa

    if-eq v3, v4, :cond_9

    const/16 v4, 0xd

    if-ne v3, v4, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "character "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not allowed in output"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_2
    iget-boolean v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracket:Z

    if-eqz v3, :cond_a

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracket:Z

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracketBracket:Z

    :cond_a
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    if-lez v2, :cond_c

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected writeElementContent([CIILjava/io/Writer;)V
    .registers 8

    add-int/2addr p3, p2

    move v0, p2

    :goto_0
    if-ge p2, p3, :cond_b

    aget-char v1, p1, p2

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracket:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracketBracket:Z

    goto/16 :goto_3

    :cond_0
    iput-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracket:Z

    goto/16 :goto_3

    :cond_1
    const/16 v2, 0x26

    if-ne v1, v2, :cond_3

    if-le p2, v0, :cond_2

    sub-int v1, p2, v0

    invoke-virtual {p4, p1, v0, v1}, Ljava/io/Writer;->write([CII)V

    :cond_2
    const-string v0, "&amp;"

    :goto_1
    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, p2, 0x1

    goto :goto_2

    :cond_3
    const/16 v2, 0x3c

    if-ne v1, v2, :cond_5

    if-le p2, v0, :cond_4

    sub-int v1, p2, v0

    invoke-virtual {p4, p1, v0, v1}, Ljava/io/Writer;->write([CII)V

    :cond_4
    const-string v0, "&lt;"

    goto :goto_1

    :cond_5
    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracketBracket:Z

    if-eqz v2, :cond_7

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_7

    if-le p2, v0, :cond_6

    sub-int v1, p2, v0

    invoke-virtual {p4, p1, v0, v1}, Ljava/io/Writer;->write([CII)V

    :cond_6
    const-string v0, "&gt;"

    goto :goto_1

    :cond_7
    const/16 v2, 0x20

    if-ge v1, v2, :cond_9

    const/16 v2, 0x9

    if-eq v1, v2, :cond_9

    const/16 v2, 0xa

    if-eq v1, v2, :cond_9

    const/16 v2, 0xd

    if-ne v1, v2, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "character "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not allowed in output"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->getLocation()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_2
    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracket:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracket:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->seenBracketBracket:Z

    :cond_a
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_b
    if-le p3, v0, :cond_c

    sub-int/2addr p3, v0

    invoke-virtual {p4, p1, v0, p3}, Ljava/io/Writer;->write([CII)V

    :cond_c
    return-void
.end method

.method protected writeIndent()V
    .registers 6

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->writeLineSeparator:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->offsetNewLine:I

    :goto_0
    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->maxIndentLevel:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->maxIndentLevel:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->depth:I

    :goto_1
    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->out:Ljava/io/Writer;

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->indentationBuf:[C

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->indentationJump:I

    mul-int v1, v1, v4

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;->offsetNewLine:I

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/Writer;->write([CII)V

    return-void
.end method
