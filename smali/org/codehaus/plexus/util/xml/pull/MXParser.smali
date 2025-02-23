.class public Lorg/codehaus/plexus/util/xml/pull/MXParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;


# static fields
.field protected static final FEATURE_NAMES_INTERNED:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#names-interned"

.field protected static final FEATURE_XML_ROUNDTRIP:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

.field protected static final LOOKUP_MAX:I = 0x400

.field protected static final LOOKUP_MAX_CHAR:C = '\u0400'

.field private static final MAX_CODE_POINT:I = 0x10ffff

.field private static final MAX_HIGH_SURROGATE:C = '\udbff'

.field private static final MIN_CODE_POINT:I = 0x0

.field private static final MIN_HIGH_SURROGATE:C = '\ud800'

.field private static final MIN_SUPPLEMENTARY_CODE_POINT:I = 0x10000

.field protected static final NCODING:[C

.field protected static final NO:[C

.field protected static final PROPERTY_LOCATION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#location"

.field protected static final PROPERTY_XMLDECL_CONTENT:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-content"

.field protected static final PROPERTY_XMLDECL_STANDALONE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

.field protected static final PROPERTY_XMLDECL_VERSION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

.field protected static final READ_CHUNK_SIZE:I = 0x2000

.field protected static final TANDALONE:[C

.field private static final TRACE_SIZING:Z = false

.field protected static final VERSION:[C

.field protected static final XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field protected static final XML_URI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field protected static final YES:[C

.field protected static lookupNameChar:[Z

.field protected static lookupNameStartChar:[Z


# instance fields
.field protected allStringsInterned:Z

.field protected attributeCount:I

.field protected attributeName:[Ljava/lang/String;

.field protected attributeNameHash:[I

.field protected attributePrefix:[Ljava/lang/String;

.field protected attributeUri:[Ljava/lang/String;

.field protected attributeValue:[Ljava/lang/String;

.field protected buf:[C

.field protected bufAbsoluteStart:I

.field protected bufEnd:I

.field protected bufLoadFactor:I

.field protected bufSoftLimit:I

.field protected bufStart:I

.field protected charRefOneCharBuf:[C

.field protected columnNumber:I

.field protected depth:I

.field protected elName:[Ljava/lang/String;

.field protected elNamespaceCount:[I

.field protected elPrefix:[Ljava/lang/String;

.field protected elRawName:[[C

.field protected elRawNameEnd:[I

.field protected elRawNameLine:[I

.field protected elUri:[Ljava/lang/String;

.field protected emptyElementTag:Z

.field protected entityEnd:I

.field protected entityName:[Ljava/lang/String;

.field protected entityNameBuf:[[C

.field protected entityNameHash:[I

.field protected entityRefName:Ljava/lang/String;

.field protected entityReplacement:[Ljava/lang/String;

.field protected entityReplacementBuf:[[C

.field protected eventType:I

.field protected inputEncoding:Ljava/lang/String;

.field protected lineNumber:I

.field protected location:Ljava/lang/String;

.field protected namespaceEnd:I

.field protected namespacePrefix:[Ljava/lang/String;

.field protected namespacePrefixHash:[I

.field protected namespaceUri:[Ljava/lang/String;

.field protected pastEndTag:Z

.field protected pc:[C

.field protected pcEnd:I

.field protected pcStart:I

.field protected pos:I

.field protected posEnd:I

.field protected posStart:I

.field protected preventBufferCompaction:Z

.field protected processNamespaces:Z

.field protected reachedEnd:Z

.field protected reader:Ljava/io/Reader;

.field private final replacementMapTemplate:Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;

.field protected roundtripSupported:Z

.field protected seenAmpersand:Z

.field protected seenDocdecl:Z

.field protected seenEndTag:Z

.field protected seenMarkup:Z

.field protected seenRoot:Z

.field protected seenStartTag:Z

.field protected text:Ljava/lang/String;

.field protected tokenize:Z

.field protected usePC:Z

.field protected xmlDeclContent:Ljava/lang/String;

.field protected xmlDeclStandalone:Ljava/lang/Boolean;

.field protected xmlDeclVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "version"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->VERSION:[C

    const-string v0, "ncoding"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->NCODING:[C

    const-string v0, "tandalone"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->TANDALONE:[C

    const-string v0, "yes"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->YES:[C

    const-string v0, "no"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->NO:[C

    const/16 v0, 0x400

    new-array v1, v0, [Z

    sput-object v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->lookupNameStartChar:[Z

    new-array v1, v0, [Z

    sput-object v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->lookupNameChar:[Z

    const/16 v1, 0x3a

    invoke-static {v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->setNameStart(C)V

    const/16 v1, 0x41

    :goto_0
    const/16 v2, 0x5a

    if-gt v1, v2, :cond_0

    invoke-static {v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x5f

    invoke-static {v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->setNameStart(C)V

    const/16 v1, 0x61

    :goto_1
    const/16 v2, 0x7a

    if-gt v1, v2, :cond_1

    invoke-static {v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_1

    :cond_1
    const/16 v1, 0xc0

    :goto_2
    const/16 v2, 0x2ff

    if-gt v1, v2, :cond_2

    invoke-static {v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_2

    :cond_2
    const/16 v1, 0x370

    :goto_3
    const/16 v2, 0x37d

    if-gt v1, v2, :cond_3

    invoke-static {v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_3

    :cond_3
    const/16 v1, 0x37f

    :goto_4
    if-ge v1, v0, :cond_4

    invoke-static {v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_4

    :cond_4
    const/16 v0, 0x2d

    invoke-static {v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->setName(C)V

    const/16 v0, 0x2e

    invoke-static {v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->setName(C)V

    const/16 v0, 0x30

    :goto_5
    const/16 v1, 0x39

    if-gt v0, v1, :cond_5

    invoke-static {v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->setName(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_5

    :cond_5
    const/16 v0, 0xb7

    invoke-static {v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->setName(C)V

    const/16 v0, 0x300

    :goto_6
    const/16 v1, 0x36f

    if-gt v0, v1, :cond_6

    invoke-static {v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->setName(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_6

    :cond_6
    return-void
.end method

.method public constructor <init>()V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5f

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufLoadFactor:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    cmp-long v4, v0, v2

    const/16 v0, 0x2000

    if-lez v4, :cond_0

    const/16 v1, 0x2000

    goto :goto_0

    :cond_0
    const/16 v1, 0x100

    :goto_0
    new-array v1, v1, [C

    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufLoadFactor:I

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    array-length v4, v4

    mul-int v1, v1, v4

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufSoftLimit:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x40

    :goto_1
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->charRefOneCharBuf:[C

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->replacementMapTemplate:Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5f

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufLoadFactor:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    cmp-long v4, v0, v2

    const/16 v0, 0x2000

    if-lez v4, :cond_0

    const/16 v1, 0x2000

    goto :goto_0

    :cond_0
    const/16 v1, 0x100

    :goto_0
    new-array v1, v1, [C

    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufLoadFactor:I

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    array-length v4, v4

    mul-int v1, v1, v4

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufSoftLimit:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x40

    :goto_1
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->charRefOneCharBuf:[C

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->replacementMapTemplate:Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;

    return-void
.end method

.method protected static final fastHash([CII)I
    .registers 5

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    aget-char v0, p0, p1

    shl-int/lit8 v0, v0, 0x7

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    aget-char v1, p0, v1

    add-int/2addr v0, v1

    const/16 v1, 0x10

    if-le p2, v1, :cond_1

    shl-int/lit8 v0, v0, 0x7

    div-int/lit8 v1, p2, 0x4

    add-int/2addr v1, p1

    aget-char v1, p0, v1

    add-int/2addr v0, v1

    :cond_1
    const/16 v1, 0x8

    if-le p2, v1, :cond_2

    shl-int/lit8 v0, v0, 0x7

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    aget-char p0, p0, p1

    add-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method private static findFragment(I[CII)I
    .registers 8

    if-ge p2, p0, :cond_1

    if-le p0, p3, :cond_0

    move p0, p3

    :cond_0
    return p0

    :cond_1
    sub-int v0, p3, p2

    const/16 v1, 0x41

    if-le v0, v1, :cond_2

    add-int/lit8 p2, p3, -0xa

    :cond_2
    add-int/lit8 v0, p2, 0x1

    :cond_3
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-le v0, p0, :cond_4

    sub-int v2, p3, v0

    if-gt v2, v1, :cond_4

    aget-char v2, p1, v0

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_3

    sub-int v2, p2, v0

    const/16 v3, 0xa

    if-gt v2, v3, :cond_4

    goto :goto_0

    :cond_4
    return v0
.end method

.method private static isHighSurrogate(C)Z
    .registers 2

    const v0, 0xd800

    if-gt v0, p0, :cond_0

    const v0, 0xdbff

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isSupplementaryCodePoint(I)Z
    .registers 2

    const/high16 v0, 0x10000

    if-gt v0, p0, :cond_0

    const v0, 0x10ffff

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isValidCodePoint(I)Z
    .registers 2

    if-ltz p0, :cond_0

    const v0, 0x10ffff

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final setName(C)V
    .registers 3

    sget-object v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->lookupNameChar:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    return-void
.end method

.method private static final setNameStart(C)V
    .registers 3

    sget-object v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->lookupNameStartChar:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    invoke-static {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->setName(C)V

    return-void
.end method

.method public static toChars(I)[C
    .registers 5

    invoke-static {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isSupplementaryCodePoint(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/high16 v0, 0x10000

    sub-int/2addr p0, v0

    const v0, 0xd800

    shr-int/lit8 v3, p0, 0xa

    and-int/lit16 v3, v3, 0x3ff

    or-int/2addr v0, v3

    const v3, 0xdc00

    and-int/lit16 p0, p0, 0x3ff

    or-int/2addr p0, v3

    const/4 v3, 0x2

    new-array v3, v3, [C

    int-to-char v0, v0

    aput-char v0, v3, v2

    int-to-char p0, p0

    aput-char p0, v3, v1

    return-object v3

    :cond_0
    new-array v0, v1, [C

    int-to-char p0, p0

    aput-char p0, v0, v2

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static toCodePoint(CC)I
    .registers 2

    and-int/lit16 p0, p0, 0x3ff

    shl-int/lit8 p0, p0, 0xa

    and-int/lit16 p1, p1, 0x3ff

    or-int/2addr p0, p1

    const/high16 p1, 0x10000

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "&#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityName:[Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, p2

    const/4 p2, 0x0

    :goto_0
    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityName:[Ljava/lang/String;

    array-length v4, v4

    if-ge p2, v4, :cond_1

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityName:[Ljava/lang/String;

    aget-object v4, v4, p2

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityName:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object v3, v3, p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move-object p2, v3

    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensureEntityCapacity()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityName:[Ljava/lang/String;

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityNameBuf:[[C

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    aput-object v0, p1, v3

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityReplacement:[Ljava/lang/String;

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    aput-object p2, p1, v0

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityReplacementBuf:[[C

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    aput-object p2, p1, v0

    iget-boolean p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->allStringsInterned:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityNameHash:[I

    iget p2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityNameBuf:[[C

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    aget-object v0, v0, v3

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityNameBuf:[[C

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    aget-object v3, v3, v4

    array-length v3, v3

    invoke-static {v0, v1, v3}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->fastHash([CII)I

    move-result v0

    aput v0, p1, p2

    :cond_3
    iget p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    return-void
.end method

.method protected ensureAttributesCapacity(I)V
    .registers 7

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lt p1, v0, :cond_8

    const/4 v2, 0x7

    if-le p1, v2, :cond_1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    if-lez v0, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    new-array v3, p1, [Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iput-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    new-array v3, p1, [Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributePrefix:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iput-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributePrefix:[Ljava/lang/String;

    new-array v3, p1, [Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeUri:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iput-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeUri:[Ljava/lang/String;

    new-array v3, p1, [Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeValue:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iput-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeValue:[Ljava/lang/String;

    iget-boolean v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->allStringsInterned:Z

    if-nez v3, :cond_8

    new-array p1, p1, [I

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeNameHash:[I

    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeNameHash:[I

    :cond_8
    return-void
.end method

.method protected ensureElementsCapacity()V
    .registers 7

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elName:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elName:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-lt v2, v0, :cond_a

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    const/4 v4, 0x7

    if-lt v2, v4, :cond_1

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    mul-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    add-int/lit8 v2, v2, 0x2

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    new-array v4, v2, [Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elName:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iput-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elName:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elPrefix:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iput-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elPrefix:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elUri:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iput-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elUri:[Ljava/lang/String;

    new-array v4, v2, [I

    if-eqz v3, :cond_6

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elNamespaceCount:[I

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_6
    aput v1, v4, v1

    :goto_3
    iput-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elNamespaceCount:[I

    new-array v4, v2, [I

    if-eqz v3, :cond_7

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawNameEnd:[I

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iput-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawNameEnd:[I

    new-array v4, v2, [I

    if-eqz v3, :cond_8

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawNameLine:[I

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    iput-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawNameLine:[I

    new-array v2, v2, [[C

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawName:[[C

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    iput-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawName:[[C

    :cond_a
    return-void
.end method

.method protected ensureEntityCapacity()V
    .registers 9

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityReplacementBuf:[[C

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityReplacementBuf:[[C

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    if-lt v2, v0, :cond_4

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    const/4 v2, 0x7

    if-le v0, v2, :cond_1

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    new-array v2, v0, [Ljava/lang/String;

    new-array v3, v0, [[C

    new-array v4, v0, [Ljava/lang/String;

    new-array v5, v0, [[C

    iget-object v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityName:[Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityName:[Ljava/lang/String;

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    invoke-static {v6, v1, v2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityNameBuf:[[C

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    invoke-static {v6, v1, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityReplacement:[Ljava/lang/String;

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    invoke-static {v6, v1, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityReplacementBuf:[[C

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityName:[Ljava/lang/String;

    iput-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityNameBuf:[[C

    iput-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityReplacement:[Ljava/lang/String;

    iput-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityReplacementBuf:[[C

    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->allStringsInterned:Z

    if-nez v2, :cond_4

    new-array v0, v0, [I

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityNameHash:[I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityNameHash:[I

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityNameHash:[I

    :cond_4
    return-void
.end method

.method protected ensureNamespacesCapacity(I)V
    .registers 7

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespacePrefix:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespacePrefix:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lt p1, v0, :cond_4

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    new-array v0, p1, [Ljava/lang/String;

    new-array v2, p1, [Ljava/lang/String;

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespacePrefix:[Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceUri:[Ljava/lang/String;

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespacePrefix:[Ljava/lang/String;

    iput-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceUri:[Ljava/lang/String;

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_4

    new-array p1, p1, [I

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespacePrefixHash:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespacePrefixHash:[I

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespacePrefixHash:[I

    :cond_4
    return-void
.end method

.method protected ensurePC(I)V
    .registers 5

    const/16 v0, 0x2000

    if-le p1, v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    const/16 p1, 0x4000

    :goto_0
    new-array p1, p1, [C

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    return-void
.end method

.method protected fillBuf()V
    .registers 8

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufEnd:I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufSoftLimit:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufStart:I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufSoftLimit:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->preventBufferCompaction:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufStart:I

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    if-lt v1, v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufStart:I

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufEnd:I

    iget v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufStart:I

    sub-int/2addr v5, v6

    invoke-static {v0, v1, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufStart:I

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufEnd:I

    iget v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufStart:I

    sub-int/2addr v5, v6

    invoke-static {v1, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufLoadFactor:I

    if-lez v0, :cond_4

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufLoadFactor:I

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    array-length v1, v1

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufSoftLimit:I

    :cond_4
    :goto_2
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufEnd:I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufEnd:I

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufStart:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    iput v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufStart:I

    :cond_5
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    array-length v0, v0

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufEnd:I

    sub-int/2addr v0, v1

    const/16 v1, 0x2000

    if-le v0, v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    array-length v0, v0

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufEnd:I

    sub-int v1, v0, v1

    :goto_3
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->reader:Ljava/io/Reader;

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufEnd:I

    invoke-virtual {v0, v4, v5, v1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-lez v0, :cond_7

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufEnd:I

    return-void

    :cond_7
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    if-nez v0, :cond_9

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "input contained no data"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_4
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenRoot:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    if-nez v0, :cond_a

    iput-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->reachedEnd:Z

    return-void

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    if-lez v1, :cond_f

    const-string v1, " - expected end tag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    if-le v1, v2, :cond_b

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    :goto_5
    if-lez v1, :cond_c

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawName:[[C

    aget-object v4, v4, v1

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawNameEnd:[I

    aget v5, v5, v1

    invoke-direct {v2, v4, v3, v5}, Ljava/lang/String;-><init>([CII)V

    const-string v4, "</"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_c
    const-string v1, " to close"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    :goto_6
    if-lez v1, :cond_e

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    if-eq v1, v2, :cond_d

    const-string v2, " and"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawName:[[C

    aget-object v4, v4, v1

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawNameEnd:[I

    aget v5, v5, v1

    invoke-direct {v2, v4, v3, v5}, Ljava/lang/String;-><init>([CII)V

    const-string v4, " start tag <"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from line "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawNameLine:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_e
    const-string v1, ", parser stopped on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no more data available"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error reading input, returned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v1, "reader must be set before parsing is started"

    invoke-direct {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeCount()I
    .registers 3

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .registers 5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute position must be 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .registers 5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->processNamespaces:Z

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute position must be 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .registers 5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->processNamespaces:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributePrefix:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute position must be 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .registers 5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    const-string p1, "CDATA"

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute position must be 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .registers 5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute position must be 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    if-eqz p2, :cond_8

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->processNamespaces:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    :goto_0
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object p1, p1, v2

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    move-object p1, v1

    :cond_4
    if-nez p1, :cond_7

    :goto_1
    iget p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    if-ge v2, p1, :cond_6

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    aget-object p1, p1, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object p1, p1, v2

    return-object p1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-object v1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "when namespaces processing is disabled attribute namespace must be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attribute name can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColumnNumber()I
    .registers 2

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->columnNumber:I

    return v0
.end method

.method public getDepth()I
    .registers 2

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    return v0
.end method

.method public getEventType()I
    .registers 2

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_4

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->processNamespaces:Z

    return p1

    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->roundtripSupported:Z

    return p1

    :cond_3
    return v1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "feature name should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInputEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->inputEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .registers 2

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->lineNumber:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elName:[Ljava/lang/String;

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elName:[Ljava/lang/String;

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityRefName:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityRefName:Ljava/lang/String;

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elUri:[Ljava/lang/String;

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0

    :cond_1
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elUri:[Ljava/lang/String;

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_3

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "http://www.w3.org/XML/1998/namespace"

    return-object p1

    :cond_2
    const-string v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "http://www.w3.org/2000/xmlns/"

    return-object p1

    :cond_3
    iget p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_5

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNamespaceCount(I)I
    .registers 5

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elNamespaceCount:[I

    aget p1, v0, p1

    return p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "namespace count may be for depth 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .registers 5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exceeded number of available namespaces "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .registers 5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exceeded number of available namespaces "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    invoke-static {v0, v1, v3, v4}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->findFragment(I[CII)I

    move-result v0

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    if-ge v0, v1, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v3, v0

    invoke-direct {v2, v1, v0, v3}, Ljava/lang/String;-><init>([CII)V

    :cond_0
    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    if-gtz v1, :cond_1

    if-lez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->TYPES:[Ljava/lang/String;

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " seen "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->location:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->location:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elPrefix:[Ljava/lang/String;

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elPrefix:[Ljava/lang/String;

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_4

    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->xmlDeclVersion:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-content"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->xmlDeclContent:Ljava/lang/String;

    return-object p1

    :cond_2
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->location:Ljava/lang/String;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "property name should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getText()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->text:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->text:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    :goto_1
    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->text:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->text:Ljava/lang/String;

    return-object v0

    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextCharacters([I)[C
    .registers 6

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    aput v0, p1, v1

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    sub-int/2addr v0, v1

    aput v0, p1, v2

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    return-object p1

    :cond_0
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    aput v0, p1, v1

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    sub-int/2addr v0, v1

    aput v0, p1, v2

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    return-object p1

    :cond_1
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/16 v3, 0x9

    if-eq v0, v3, :cond_5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v3, 0x6

    if-eq v0, v3, :cond_5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/16 v3, 0x8

    if-eq v0, v3, :cond_5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v3, 0x7

    if-eq v0, v3, :cond_5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown text eventType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    aput v0, p1, v2

    aput v0, p1, v1

    const/4 p1, 0x0

    return-object p1

    :cond_5
    :goto_1
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    aput v0, p1, v1

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    sub-int/2addr v0, v1

    aput v0, p1, v2

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    return-object p1
.end method

.method public isAttributeDefault(I)Z
    .registers 5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute position must be 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEmptyElementTag()Z
    .registers 4

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->emptyElementTag:Z

    return v0

    :cond_0
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const/4 v1, 0x0

    const-string v2, "parser must be on START_TAG to check for empty element"

    invoke-direct {v0, v2, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected isNameChar(C)Z
    .registers 4

    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    sget-object v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->lookupNameChar:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_3

    :cond_0
    if-lt p1, v0, :cond_1

    const/16 v0, 0x2027

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x202a

    if-lt p1, v0, :cond_2

    const/16 v0, 0x218f

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x2800

    if-lt p1, v0, :cond_4

    const v0, 0xffef

    if-gt p1, v0, :cond_4

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method protected isNameStartChar(C)Z
    .registers 4

    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    sget-object v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->lookupNameStartChar:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_3

    :cond_0
    if-lt p1, v0, :cond_1

    const/16 v0, 0x2027

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x202a

    if-lt p1, v0, :cond_2

    const/16 v0, 0x218f

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x2800

    if-lt p1, v0, :cond_4

    const v0, 0xffef

    if-gt p1, v0, :cond_4

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method protected isS(C)Z
    .registers 3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isWhitespace()Z
    .registers 5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v1, "no content available to check for whitespaces"

    invoke-direct {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    :goto_1
    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    aget-char v3, v3, v0

    invoke-virtual {p0, v3}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isS(C)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    :goto_2
    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    aget-char v3, v3, v0

    invoke-virtual {p0, v3}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isS(C)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return v1
.end method

.method protected joinPC()V
    .registers 7

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/2addr v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v3, v3

    if-lt v1, v3, :cond_0

    invoke-virtual {p0, v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_0
    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-static {v1, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iput-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    return-void
.end method

.method protected lookuEntityReplacement(I)[C
    .registers 8

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->fastHash([CII)I

    move-result v0

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_6

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityNameHash:[I

    aget v2, v2, v1

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityNameBuf:[[C

    aget-object v2, v2, v1

    array-length v2, v2

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityNameBuf:[[C

    aget-object v2, v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_0

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    add-int/2addr v5, v3

    aget-char v4, v4, v5

    aget-char v5, v2, v3

    if-ne v4, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object p1, p1, v1

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->text:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityReplacementBuf:[[C

    aget-object p1, p1, v1

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityRefName:Ljava/lang/String;

    iget p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_6

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityRefName:Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityName:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->text:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityReplacementBuf:[[C

    aget-object p1, v0, p1

    return-object p1

    :cond_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method protected more()C
    .registers 4

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->fillBuf()V

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->reachedEnd:Z

    if-eqz v0, :cond_0

    const v0, 0xffff

    return v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->lineNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->lineNumber:I

    iput v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->columnNumber:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->columnNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->columnNumber:I

    :goto_0
    return v0
.end method

.method protected newString([CII)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method protected newStringIntern([CII)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public next()I
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->nextImpl()I

    move-result v0

    return v0
.end method

.method protected nextImpl()I
    .registers 14

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->text:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iput v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufStart:I

    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pastEndTag:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pastEndTag:Z

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elNamespaceCount:[I

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    aget v2, v2, v4

    iput v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    :cond_0
    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->emptyElementTag:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->emptyElementTag:Z

    iput-boolean v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pastEndTag:Z

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    return v0

    :cond_1
    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    if-lez v2, :cond_31

    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenStartTag:Z

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenStartTag:Z

    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->parseStartTag()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenEndTag:Z

    if-eqz v2, :cond_5

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenEndTag:Z

    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->parseEndTag()I

    move-result v0

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenMarkup:Z

    const/16 v4, 0x26

    const/16 v5, 0x3c

    if-eqz v2, :cond_6

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenMarkup:Z

    const/16 v2, 0x3c

    goto :goto_1

    :cond_6
    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenAmpersand:Z

    if-eqz v2, :cond_7

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenAmpersand:Z

    const/16 v2, 0x26

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v2

    :goto_1
    iget v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v6, v3

    iput v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x4

    if-ne v2, v5, :cond_13

    if-eqz v6, :cond_8

    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v2, :cond_8

    iput-boolean v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenMarkup:Z

    :goto_3
    iput v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    return v8

    :cond_8
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v2

    const/16 v9, 0x2f

    if-ne v2, v9, :cond_9

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-nez v0, :cond_4

    if-eqz v6, :cond_4

    iput-boolean v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenEndTag:Z

    goto :goto_3

    :cond_9
    const/16 v9, 0x21

    if-ne v2, v9, :cond_f

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v2

    const/16 v8, 0x2d

    if-ne v2, v8, :cond_c

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->parseComment()V

    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v2, :cond_a

    const/16 v0, 0x9

    goto :goto_0

    :cond_a
    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-nez v2, :cond_b

    if-eqz v6, :cond_b

    :goto_4
    const/4 v7, 0x1

    goto/16 :goto_7

    :cond_b
    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    iput v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    goto/16 :goto_7

    :cond_c
    const/16 v8, 0x5b

    if-ne v2, v8, :cond_e

    invoke-virtual {p0, v6}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->parseCDSect(Z)V

    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v2, :cond_d

    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_d
    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    sub-int/2addr v8, v2

    if-lez v8, :cond_1c

    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-nez v2, :cond_1b

    const/4 v6, 0x1

    goto :goto_4

    :cond_e
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unexpected character in markup "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_f
    const/16 v9, 0x3f

    if-ne v2, v9, :cond_11

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->parsePI()Z

    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v2, :cond_10

    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_10
    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-nez v2, :cond_b

    if-eqz v6, :cond_b

    goto :goto_4

    :cond_11
    invoke-virtual {p0, v2}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isNameStartChar(C)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-nez v0, :cond_2

    if-eqz v6, :cond_2

    iput-boolean v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenStartTag:Z

    goto/16 :goto_3

    :cond_12
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unexpected character in markup "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_13
    if-ne v2, v4, :cond_1d

    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v2, :cond_14

    if-eqz v6, :cond_14

    iput-boolean v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenAmpersand:Z

    goto/16 :goto_3

    :cond_14
    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    add-int/2addr v2, v8

    iget v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->parseEntityRef()[C

    move-result-object v9

    iget-boolean v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v10, :cond_15

    const/4 v0, 0x6

    goto/16 :goto_0

    :cond_15
    if-nez v9, :cond_17

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v1, :cond_16

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityRefName:Ljava/lang/String;

    :cond_16
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "could not resolve entity named \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityRefName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_17
    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v2, v10

    iput v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v8, v2

    iput v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-nez v2, :cond_19

    if-eqz v6, :cond_18

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->joinPC()V

    const/4 v7, 0x0

    goto :goto_5

    :cond_18
    iput-boolean v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    :cond_19
    :goto_5
    array-length v2, v9

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v2, :cond_1b

    aget-char v8, v9, v6

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v11, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v11, v11

    if-lt v10, v11, :cond_1a

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {p0, v10}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_1a
    iget-object v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v11, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v8, v10, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_1b
    const/4 v6, 0x1

    :cond_1c
    :goto_7
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v2

    goto/16 :goto_2

    :cond_1d
    if-eqz v7, :cond_1e

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->joinPC()V

    const/4 v7, 0x0

    :cond_1e
    iget-boolean v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v6, :cond_20

    iget-boolean v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->roundtripSupported:Z

    if-nez v6, :cond_1f

    goto :goto_8

    :cond_1f
    const/4 v6, 0x0

    goto :goto_9

    :cond_20
    :goto_8
    const/4 v6, 0x1

    :goto_9
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_21
    const/16 v11, 0x5d

    if-ne v2, v11, :cond_23

    if-eqz v8, :cond_22

    const/4 v9, 0x1

    goto :goto_b

    :cond_22
    const/4 v8, 0x1

    goto :goto_b

    :cond_23
    if-eqz v9, :cond_25

    const/16 v11, 0x3e

    if-eq v2, v11, :cond_24

    goto :goto_a

    :cond_24
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v2, "characters ]]> are not allowed in content"

    invoke-direct {v1, v2, p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_25
    :goto_a
    if-eqz v8, :cond_26

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_26
    :goto_b
    if-eqz v6, :cond_2f

    const/16 v11, 0xd

    const/16 v12, 0xa

    if-ne v2, v11, :cond_2a

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-nez v2, :cond_28

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    if-le v2, v10, :cond_27

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->joinPC()V

    goto :goto_c

    :cond_27
    iput-boolean v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    :cond_28
    :goto_c
    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v10, v10

    if-lt v2, v10, :cond_29

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {p0, v2}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_29
    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v12, v2, v10

    const/4 v10, 0x1

    goto :goto_e

    :cond_2a
    if-ne v2, v12, :cond_2d

    if-nez v10, :cond_2c

    iget-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-eqz v2, :cond_2c

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v10, v10

    if-lt v2, v10, :cond_2b

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {p0, v2}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_2b
    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v12, v2, v10

    :cond_2c
    :goto_d
    const/4 v10, 0x0

    goto :goto_e

    :cond_2d
    iget-boolean v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-eqz v10, :cond_2c

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v11, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v11, v11

    if-lt v10, v11, :cond_2e

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {p0, v10}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_2e
    iget-object v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v11, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v2, v10, v11

    goto :goto_d

    :cond_2f
    :goto_e
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v2

    if-eq v2, v5, :cond_30

    if-ne v2, v4, :cond_21

    :cond_30
    iget v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v6, v3

    iput v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_31
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenRoot:Z

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->parseEpilog()I

    move-result v0

    return v0

    :cond_32
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->parseProlog()I

    move-result v0

    return v0
.end method

.method public nextTag()I
    .registers 5

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->next()I

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isWhitespace()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->next()I

    :cond_0
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected START_TAG or END_TAG not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/codehaus/plexus/util/xml/pull/MXParser;->TYPES:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getEventType()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_0
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->next()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->next()I

    move-result v2

    if-ne v2, v3, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TEXT must be immediately followed by END_TAG and not "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/codehaus/plexus/util/xml/pull/MXParser;->TYPES:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getEventType()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    if-ne v0, v3, :cond_2

    const-string v0, ""

    return-object v0

    :cond_2
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v2, "parser must be on START_TAG or TEXT to read text"

    invoke-direct {v0, v2, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v2, "parser must be on START_TAG to read next text"

    invoke-direct {v0, v2, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public nextToken()I
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->nextImpl()I

    move-result v0

    return v0
.end method

.method protected parseAttribute()C
    .registers 17

    move-object/from16 v0, p0

    iget v1, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget v2, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    add-int/2addr v1, v2

    iget v2, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v4, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    add-int/2addr v2, v4

    iget-object v4, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v5, v3

    aget-char v4, v4, v5

    const/16 v5, 0x3a

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    iget-boolean v7, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->processNamespaces:Z

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v2, "when namespaces processing enabled colon can not be at attribute name start"

    invoke-direct {v1, v2, v0, v6}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    iget-boolean v7, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->processNamespaces:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    const/16 v7, 0x78

    if-ne v4, v7, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v7

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    :goto_2
    invoke-virtual {v0, v7}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isNameChar(C)Z

    move-result v12

    const/4 v13, 0x4

    const/4 v14, 0x2

    if-eqz v12, :cond_b

    iget-boolean v12, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->processNamespaces:Z

    if-eqz v12, :cond_a

    if-eqz v4, :cond_8

    const/4 v12, 0x5

    if-ge v10, v12, :cond_8

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v3, :cond_3

    const/16 v12, 0x6d

    if-eq v7, v12, :cond_8

    :goto_3
    const/4 v4, 0x0

    goto :goto_4

    :cond_3
    if-ne v10, v14, :cond_4

    const/16 v12, 0x6c

    if-eq v7, v12, :cond_8

    goto :goto_3

    :cond_4
    const/4 v14, 0x3

    if-ne v10, v14, :cond_5

    const/16 v12, 0x6e

    if-eq v7, v12, :cond_8

    goto :goto_3

    :cond_5
    if-ne v10, v13, :cond_6

    const/16 v12, 0x73

    if-eq v7, v12, :cond_8

    goto :goto_3

    :cond_6
    if-ne v10, v12, :cond_8

    if-ne v7, v5, :cond_7

    goto :goto_4

    :cond_7
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v2, "after xmlns in attribute name must be colonwhen namespaces are enabled"

    invoke-direct {v1, v2, v0, v6}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    :goto_4
    if-ne v7, v5, :cond_a

    if-ne v11, v9, :cond_9

    iget v7, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v7, v3

    iget v11, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    add-int/2addr v7, v11

    move v11, v7

    goto :goto_5

    :cond_9
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v2, "only one colon is allowed in attribute name when namespaces are enabled"

    invoke-direct {v1, v2, v0, v6}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v7

    goto :goto_2

    :cond_b
    iget v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    invoke-virtual {v0, v5}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensureAttributesCapacity(I)V

    iget-boolean v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->processNamespaces:Z

    if-eqz v5, :cond_11

    if-ge v10, v13, :cond_c

    const/4 v4, 0x0

    :cond_c
    if-eqz v4, :cond_f

    if-eq v11, v9, :cond_e

    iget v2, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v2, v14

    iget v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int v5, v11, v5

    sub-int/2addr v2, v5

    if-eqz v2, :cond_d

    iget-object v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v10, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int v10, v11, v10

    add-int/2addr v10, v3

    invoke-virtual {v0, v5, v10, v2}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    :cond_d
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v2, "namespace prefix is required after xmlns:  when namespaces are enabled"

    invoke-direct {v1, v2, v0, v6}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_e
    move-object v2, v6

    goto/16 :goto_7

    :cond_f
    if-eq v11, v9, :cond_10

    sub-int v5, v11, v2

    iget-object v10, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributePrefix:[Ljava/lang/String;

    iget v12, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    iget-object v13, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v15, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v2, v15

    invoke-virtual {v0, v13, v2, v5}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v12

    iget v2, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v2, v14

    iget v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int v5, v11, v5

    sub-int/2addr v2, v5

    iget-object v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    iget v10, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    iget-object v12, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v13, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int v13, v11, v13

    add-int/2addr v13, v3

    invoke-virtual {v0, v12, v13, v2}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v10

    goto :goto_6

    :cond_10
    iget-object v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributePrefix:[Ljava/lang/String;

    iget v10, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    aput-object v6, v5, v10

    iget-object v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    iget v10, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    iget-object v12, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v13, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int v13, v2, v13

    iget v14, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v14, v3

    iget v15, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v2, v15

    sub-int/2addr v14, v2

    invoke-virtual {v0, v12, v13, v14}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v10

    :goto_6
    iget-boolean v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->allStringsInterned:Z

    if-nez v5, :cond_12

    iget-object v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeNameHash:[I

    iget v10, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v12

    aput v12, v5, v10

    goto :goto_7

    :cond_11
    iget-object v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    iget v10, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    iget-object v12, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v13, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int v13, v2, v13

    iget v14, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v14, v3

    iget v15, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v2, v15

    sub-int/2addr v14, v2

    invoke-virtual {v0, v12, v13, v14}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v10

    iget-boolean v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->allStringsInterned:Z

    if-nez v5, :cond_12

    iget-object v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeNameHash:[I

    iget v10, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v12

    aput v12, v5, v10

    :cond_12
    :goto_7
    invoke-virtual {v0, v7}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isS(C)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v7

    goto :goto_7

    :cond_13
    const/16 v5, 0x3d

    if-ne v7, v5, :cond_36

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v5

    invoke-virtual {v0, v5}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isS(C)Z

    move-result v7

    if-nez v7, :cond_14

    const/16 v7, 0x22

    if-eq v5, v7, :cond_16

    const/16 v7, 0x27

    if-ne v5, v7, :cond_15

    goto :goto_8

    :cond_15
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "attribute value must start with quotation or apostrophe not "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v6}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_16
    :goto_8
    iput-boolean v8, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    iget v7, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iput v7, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    iget v7, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    iput v7, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    const/4 v7, 0x0

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v10

    if-eq v10, v5, :cond_29

    const/16 v12, 0x3c

    if-eq v10, v12, :cond_28

    const/16 v12, 0x26

    const/16 v13, 0xd

    if-ne v10, v12, :cond_1d

    iget v7, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v7, v3

    iput v7, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget-boolean v7, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-nez v7, :cond_19

    iget v7, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v12, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    if-le v7, v12, :cond_17

    const/4 v7, 0x1

    goto :goto_a

    :cond_17
    const/4 v7, 0x0

    :goto_a
    if-eqz v7, :cond_18

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->joinPC()V

    goto :goto_b

    :cond_18
    iput-boolean v3, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    iput v8, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iput v8, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    :cond_19
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->parseEntityRef()[C

    move-result-object v7

    if-nez v7, :cond_1b

    iget-object v1, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v1, :cond_1a

    iget-object v1, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v2, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget v3, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v4, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityRefName:Ljava/lang/String;

    :cond_1a
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "could not resolve entity named \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityRefName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v6}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_1b
    array-length v12, v7

    const/4 v14, 0x0

    :goto_c
    if-ge v14, v12, :cond_20

    aget-char v15, v7, v14

    iget v9, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v6, v6

    if-lt v9, v6, :cond_1c

    iget v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {v0, v6}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_1c
    iget-object v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v9, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v8, v9, 0x1

    iput v8, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v15, v6, v9

    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    goto :goto_c

    :cond_1d
    const/16 v6, 0x9

    const/16 v8, 0xa

    if-eq v10, v6, :cond_21

    if-eq v10, v8, :cond_21

    if-ne v10, v13, :cond_1e

    goto :goto_d

    :cond_1e
    iget-boolean v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-eqz v6, :cond_20

    iget v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v7, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v7, v7

    if-lt v6, v7, :cond_1f

    iget v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {v0, v6}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_1f
    iget-object v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v7, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v10, v6, v7

    :cond_20
    const/4 v6, 0x0

    goto :goto_10

    :cond_21
    :goto_d
    iget-boolean v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-nez v6, :cond_23

    iget v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v6, v3

    iput v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v9, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    if-le v6, v9, :cond_22

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->joinPC()V

    goto :goto_e

    :cond_22
    iput-boolean v3, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    const/4 v6, 0x0

    iput v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    iput v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    goto :goto_f

    :cond_23
    :goto_e
    const/4 v6, 0x0

    :goto_f
    iget v9, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v12, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v12, v12

    if-lt v9, v12, :cond_24

    iget v9, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {v0, v9}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_24
    if-ne v10, v8, :cond_25

    if-nez v7, :cond_26

    :cond_25
    iget-object v7, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v8, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    const/16 v9, 0x20

    aput-char v9, v7, v8

    :cond_26
    :goto_10
    if-ne v10, v13, :cond_27

    const/4 v7, 0x1

    goto :goto_11

    :cond_27
    const/4 v7, 0x0

    :goto_11
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    goto/16 :goto_9

    :cond_28
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v2, "markup not allowed inside attribute value - illegal < "

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_29
    iget-boolean v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->processNamespaces:Z

    if-eqz v5, :cond_34

    if-eqz v4, :cond_34

    iget-boolean v4, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-nez v4, :cond_2a

    iget-object v4, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v6, v3

    iget v7, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    :goto_12
    sub-int/2addr v6, v7

    invoke-virtual {v0, v4, v5, v6}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->newStringIntern([CII)Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    :cond_2a
    iget-object v4, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    iget v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget v7, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    goto :goto_12

    :goto_13
    iget v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    invoke-virtual {v0, v5}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensureNamespacesCapacity(I)V

    const/4 v5, -0x1

    if-eq v11, v5, :cond_2c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2b

    iget-object v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    aput-object v2, v5, v6

    iget-boolean v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->allStringsInterned:Z

    if-nez v5, :cond_2d

    iget-object v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespacePrefixHash:[I

    iget v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    aput v9, v5, v6

    move v7, v9

    goto :goto_14

    :cond_2b
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v2, "non-default namespace can not be declared to be empty string"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_2c
    const/4 v5, 0x0

    iget-object v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget v7, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    aput-object v5, v6, v7

    iget-boolean v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->allStringsInterned:Z

    if-nez v5, :cond_2d

    iget-object v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespacePrefixHash:[I

    iget v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    const/4 v7, -0x1

    aput v7, v5, v6

    goto :goto_14

    :cond_2d
    const/4 v7, -0x1

    :goto_14
    iget-object v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceUri:[Ljava/lang/String;

    iget v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    aput-object v4, v5, v6

    iget-object v4, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elNamespaceCount:[I

    iget v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    sub-int/2addr v5, v3

    aget v4, v4, v5

    iget v5, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    sub-int/2addr v5, v3

    :goto_15
    if-lt v5, v4, :cond_33

    iget-boolean v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->allStringsInterned:Z

    if-nez v6, :cond_2e

    if-nez v2, :cond_2f

    :cond_2e
    iget-object v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v6, v6, v5

    if-eq v6, v2, :cond_31

    :cond_2f
    iget-boolean v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->allStringsInterned:Z

    if-nez v6, :cond_30

    if-eqz v2, :cond_30

    iget-object v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespacePrefixHash:[I

    aget v6, v6, v5

    if-ne v6, v7, :cond_30

    iget-object v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    goto :goto_16

    :cond_30
    add-int/lit8 v5, v5, -0x1

    goto :goto_15

    :cond_31
    :goto_16
    if-nez v2, :cond_32

    const-string v1, "default"

    goto :goto_17

    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_17
    new-instance v2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "duplicated namespace declaration for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " prefix"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    :cond_33
    iget v2, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    add-int/2addr v2, v3

    iput v2, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    goto :goto_19

    :cond_34
    iget-boolean v2, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-nez v2, :cond_35

    iget-object v2, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeValue:[Ljava/lang/String;

    iget v4, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    new-instance v5, Ljava/lang/String;

    iget-object v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v7, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget v8, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v8, v3

    iget v9, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    sub-int/2addr v8, v9

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    aput-object v5, v2, v4

    goto :goto_18

    :cond_35
    iget-object v2, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeValue:[Ljava/lang/String;

    iget v4, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    new-instance v5, Ljava/lang/String;

    iget-object v6, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v7, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    iget v8, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget v9, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    sub-int/2addr v8, v9

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    aput-object v5, v2, v4

    :goto_18
    iget v2, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    add-int/2addr v2, v3

    iput v2, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    :goto_19
    iget v2, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    return v10

    :cond_36
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v2, "expected = after attribute name"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected parseCDSect(Z)V
    .registers 13

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x43

    if-ne v0, v2, :cond_19

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_18

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    const/16 v2, 0x41

    if-ne v0, v2, :cond_17

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    const/16 v3, 0x54

    if-ne v0, v3, :cond_16

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    if-ne v0, v2, :cond_15

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_14

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->lineNumber:I

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->columnNumber:I

    iget-boolean v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->roundtripSupported:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    :try_start_0
    iget-boolean p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-nez p1, :cond_3

    iget p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    if-le p1, v6, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->joinPC()V

    goto :goto_2

    :cond_2
    iput-boolean v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    iput v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iput v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_8

    :cond_3
    :goto_2
    const/4 p1, 0x0

    const/4 v6, 0x0

    :cond_4
    :goto_3
    const/4 v7, 0x0

    :cond_5
    :goto_4
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v8
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v9, 0x5d

    if-ne v8, v9, :cond_7

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_6

    :cond_6
    const/4 v6, 0x1

    goto :goto_6

    :cond_7
    const/16 v9, 0x3e

    if-ne v8, v9, :cond_b

    if-eqz p1, :cond_a

    if-nez v6, :cond_8

    goto :goto_5

    :cond_8
    if-eqz v3, :cond_9

    iget-boolean p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    :cond_9
    iget p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    add-int/lit8 p1, p1, -0x3

    iput p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    return-void

    :cond_a
    :goto_5
    const/4 p1, 0x0

    const/4 v6, 0x0

    goto :goto_6

    :cond_b
    if-eqz p1, :cond_c

    const/4 p1, 0x0

    :cond_c
    :goto_6
    if-eqz v3, :cond_5

    const/16 v9, 0xd

    const/16 v10, 0xa

    if-ne v8, v9, :cond_10

    :try_start_1
    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int v7, v0, v7

    iput v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v7, v4

    iput v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget-boolean v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-nez v7, :cond_e

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    if-le v7, v8, :cond_d

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->joinPC()V

    goto :goto_7

    :cond_d
    iput-boolean v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    iput v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iput v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    :cond_e
    :goto_7
    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v8, v8

    if-lt v7, v8, :cond_f

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {p0, v7}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_f
    iget-object v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v10, v7, v8

    const/4 v7, 0x1

    goto :goto_4

    :cond_10
    if-ne v8, v10, :cond_12

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-eqz v7, :cond_4

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v8, v8

    if-lt v7, v8, :cond_11

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {p0, v7}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_11
    iget-object v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v10, v7, v8

    goto/16 :goto_3

    :cond_12
    iget-boolean v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-eqz v7, :cond_4

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v9, v9

    if-lt v7, v9, :cond_13

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {p0, v7}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_13
    iget-object v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v8, v7, v9
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :goto_8
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CDATA section started on line "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and column "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " was not closed"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_14
    new-instance p1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v0, "expected <![CDATA[ for comment start"

    invoke-direct {p1, v0, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    :cond_15
    new-instance p1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v0, "expected <[CDATA[ for comment start"

    invoke-direct {p1, v0, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    :cond_16
    new-instance p1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v0, "expected <[CDATA[ for comment start"

    invoke-direct {p1, v0, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    :cond_17
    new-instance p1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v0, "expected <[CDATA[ for comment start"

    invoke-direct {p1, v0, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    :cond_18
    new-instance p1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v0, "expected <[CDATA[ for comment start"

    invoke-direct {p1, v0, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    :cond_19
    new-instance p1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v0, "expected <[CDATA[ for comment start"

    invoke-direct {p1, v0, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected parseComment()V
    .registers 14

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_12

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    :cond_0
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->lineNumber:I

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->columnNumber:I

    :try_start_0
    iget-boolean v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    iget-boolean v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->roundtripSupported:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_2
    :goto_1
    const/4 v9, 0x0

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v10

    const/16 v11, 0x3e

    if-eqz v7, :cond_5

    if-ne v10, v11, :cond_4

    goto :goto_3

    :cond_4
    new-instance v2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "in comment after two dashes (--) next character must be > not "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    if-ne v10, v2, :cond_7

    if-nez v8, :cond_6

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    if-ne v10, v11, :cond_a

    if-nez v7, :cond_8

    const/4 v7, 0x0

    goto :goto_4

    :cond_8
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    :cond_9
    return-void

    :cond_a
    :goto_4
    const/4 v8, 0x0

    :goto_5
    if-eqz v4, :cond_3

    const/16 v11, 0xd

    const/16 v12, 0xa

    if-ne v10, v11, :cond_e

    :try_start_1
    iget-boolean v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-nez v9, :cond_c

    iget v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v9, v6

    iput v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    if-le v9, v10, :cond_b

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->joinPC()V

    goto :goto_6

    :cond_b
    iput-boolean v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    iput v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iput v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    :cond_c
    :goto_6
    iget v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v10, v10

    if-lt v9, v10, :cond_d

    iget v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {p0, v9}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_d
    iget-object v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v12, v9, v10

    const/4 v9, 0x1

    goto :goto_2

    :cond_e
    if-ne v10, v12, :cond_10

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-eqz v9, :cond_2

    iget v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v10, v10

    if-lt v9, v10, :cond_f

    iget v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {p0, v9}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_f
    iget-object v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v12, v9, v10

    goto/16 :goto_1

    :cond_10
    iget-boolean v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-eqz v9, :cond_2

    iget v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v11, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v11, v11

    if-lt v9, v11, :cond_11

    iget v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {p0, v9}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_11
    iget-object v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v11, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v10, v9, v11
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "comment started on line "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and column "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " was not closed"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    :cond_12
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v2, "expected <!-- for comment start"

    invoke-direct {v0, v2, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected parseDocdecl()V
    .registers 9

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x4f

    if-ne v0, v2, :cond_13

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    const/16 v2, 0x43

    if-ne v0, v2, :cond_12

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    const/16 v2, 0x54

    if-ne v0, v2, :cond_11

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    const/16 v2, 0x59

    if-ne v0, v2, :cond_10

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    const/16 v2, 0x50

    if-ne v0, v2, :cond_f

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    const/16 v2, 0x45

    if-ne v0, v2, :cond_e

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->roundtripSupported:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    :cond_1
    :goto_1
    const/4 v4, 0x0

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    const/16 v6, 0x5d

    if-ne v5, v6, :cond_4

    add-int/lit8 v1, v1, -0x1

    :cond_4
    const/16 v6, 0x3e

    if-ne v5, v6, :cond_6

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    return-void

    :cond_6
    :goto_3
    if-eqz v0, :cond_2

    const/16 v6, 0xd

    const/16 v7, 0xa

    if-ne v5, v6, :cond_a

    iget-boolean v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-nez v4, :cond_8

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v4, v3

    iput v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    if-le v4, v5, :cond_7

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->joinPC()V

    goto :goto_4

    :cond_7
    iput-boolean v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    iput v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iput v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    :cond_8
    :goto_4
    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v5, v5

    if-lt v4, v5, :cond_9

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {p0, v4}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_9
    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v7, v4, v5

    const/4 v4, 0x1

    goto :goto_2

    :cond_a
    if-ne v5, v7, :cond_c

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v5, v5

    if-lt v4, v5, :cond_b

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {p0, v4}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_b
    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v7, v4, v5

    goto :goto_1

    :cond_c
    iget-boolean v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v6, v6

    if-lt v4, v6, :cond_d

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {p0, v4}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_d
    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v5, v4, v6

    goto/16 :goto_1

    :cond_e
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v2, "expected <!DOCTYPE"

    invoke-direct {v0, v2, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_f
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v2, "expected <!DOCTYPE"

    invoke-direct {v0, v2, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_10
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v2, "expected <!DOCTYPE"

    invoke-direct {v0, v2, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_11
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v2, "expected <!DOCTYPE"

    invoke-direct {v0, v2, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_12
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v2, "expected <!DOCTYPE"

    invoke-direct {v0, v2, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_13
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v2, "expected <!DOCTYPE"

    invoke-direct {v0, v2, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public parseEndTag()I
    .registers 12

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isNameStartChar(C)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    add-int/2addr v4, v0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isNameChar(C)Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v5, v3

    sub-int/2addr v5, v4

    iget-object v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawName:[[C

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    aget-object v6, v6, v7

    iget-object v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawNameEnd:[I

    iget v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    aget v7, v7, v8

    const/4 v8, 0x0

    if-ne v7, v5, :cond_5

    move v7, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    iget-object v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    add-int/lit8 v10, v7, 0x1

    aget-char v7, v9, v7

    aget-char v9, v6, v4

    if-ne v7, v9, :cond_1

    add-int/lit8 v4, v4, 0x1

    move v7, v10

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6, v8, v5}, Ljava/lang/String;-><init>([CII)V

    new-instance v1, Ljava/lang/String;

    iget-object v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    sub-int/2addr v10, v4

    sub-int/2addr v10, v3

    invoke-direct {v1, v6, v10, v5}, Ljava/lang/String;-><init>([CII)V

    new-instance v3, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "end tag name </"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> must be the same as start tag <"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> from line "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawNameLine:[I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    aget v0, v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p0, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isS(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    goto :goto_1

    :cond_3
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_4

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iput-boolean v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pastEndTag:Z

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    return v1

    :cond_4
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "expected > to finsh end tag not "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from line "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawNameLine:[I

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    aget v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawNameEnd:[I

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    aget v1, v1, v3

    invoke-direct {v0, v6, v8, v1}, Ljava/lang/String;-><init>([CII)V

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    invoke-direct {v1, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    new-instance v3, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "end tag name </"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> must match start tag name <"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> from line "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawNameLine:[I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    aget v0, v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p0, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    :cond_6
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "expected name start and not "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected parseEntityRef()[C
    .registers 14

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityRefName:Ljava/lang/String;

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x61

    const/16 v4, 0x3b

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x23

    if-ne v1, v7, :cond_a

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v1

    const/16 v7, 0x78

    const/16 v8, 0x39

    const/16 v9, 0x30

    if-ne v1, v7, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v7

    if-lt v7, v9, :cond_0

    if-gt v7, v8, :cond_0

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v10, v7, -0x30

    :goto_1
    add-int/2addr v1, v10

    int-to-char v1, v1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-lt v7, v3, :cond_1

    const/16 v10, 0x66

    if-gt v7, v10, :cond_1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v10, v7, -0x57

    goto :goto_1

    :cond_1
    const/16 v10, 0x41

    if-lt v7, v10, :cond_2

    const/16 v10, 0x46

    if-gt v7, v10, :cond_2

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v10, v7, -0x37

    goto :goto_1

    :cond_2
    if-ne v7, v4, :cond_3

    goto :goto_3

    :cond_3
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "character reference (with hex value) may not contain "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-lt v1, v9, :cond_5

    if-gt v1, v8, :cond_5

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v3, v1

    int-to-char v3, v3

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v1

    goto :goto_2

    :cond_5
    if-ne v1, v4, :cond_9

    move v1, v3

    :goto_3
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v0, v5

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->toChars(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->charRefOneCharBuf:[C

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->charRefOneCharBuf:[C

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->charRefOneCharBuf:[C

    array-length v1, v1

    invoke-virtual {p0, v0, v6, v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->text:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->charRefOneCharBuf:[C

    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->charRefOneCharBuf:[C

    aput-char v1, v0, v6

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->charRefOneCharBuf:[C

    invoke-virtual {p0, v0, v6, v5}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->text:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->charRefOneCharBuf:[C

    return-object v0

    :cond_9
    new-instance v2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "character reference (with decimal value) may not contain "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    :cond_a
    invoke-virtual {p0, v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isNameStartChar(C)Z

    move-result v2

    if-eqz v2, :cond_19

    :goto_4
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v1

    if-eq v1, v4, :cond_c

    invoke-virtual {p0, v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isNameChar(C)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    new-instance v2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "entity reference name can not contain character "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    :cond_c
    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v1, v5

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    sub-int/2addr v1, v2

    const/16 v2, 0x74

    const/4 v4, 0x2

    if-ne v1, v4, :cond_e

    iget-object v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    aget-char v7, v7, v8

    const/16 v8, 0x6c

    if-ne v7, v8, :cond_e

    iget-object v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    add-int/2addr v8, v5

    aget-char v7, v7, v8

    if-ne v7, v2, :cond_e

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v0, :cond_d

    const-string v0, "<"

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->text:Ljava/lang/String;

    :cond_d
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x3c

    aput-char v1, v0, v6

    :goto_5
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->charRefOneCharBuf:[C

    return-object v0

    :cond_e
    const/16 v7, 0x70

    const/4 v8, 0x3

    if-ne v1, v8, :cond_10

    iget-object v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    aget-char v9, v9, v10

    if-ne v9, v3, :cond_10

    iget-object v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    add-int/2addr v10, v5

    aget-char v9, v9, v10

    const/16 v10, 0x6d

    if-ne v9, v10, :cond_10

    iget-object v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    add-int/2addr v10, v4

    aget-char v9, v9, v10

    if-ne v9, v7, :cond_10

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v0, :cond_f

    const-string v0, "&"

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->text:Ljava/lang/String;

    :cond_f
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x26

    aput-char v1, v0, v6

    goto :goto_5

    :cond_10
    if-ne v1, v4, :cond_12

    iget-object v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    aget-char v9, v9, v10

    const/16 v10, 0x67

    if-ne v9, v10, :cond_12

    iget-object v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    add-int/2addr v10, v5

    aget-char v9, v9, v10

    if-ne v9, v2, :cond_12

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v0, :cond_11

    const-string v0, ">"

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->text:Ljava/lang/String;

    :cond_11
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x3e

    aput-char v1, v0, v6

    goto :goto_5

    :cond_12
    const/16 v9, 0x6f

    const/4 v10, 0x4

    if-ne v1, v10, :cond_14

    iget-object v11, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v12, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    aget-char v11, v11, v12

    if-ne v11, v3, :cond_14

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v11, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    add-int/2addr v11, v5

    aget-char v3, v3, v11

    if-ne v3, v7, :cond_14

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    add-int/2addr v7, v4

    aget-char v3, v3, v7

    if-ne v3, v9, :cond_14

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    add-int/2addr v7, v8

    aget-char v3, v3, v7

    const/16 v7, 0x73

    if-ne v3, v7, :cond_14

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v0, :cond_13

    const-string v0, "\'"

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->text:Ljava/lang/String;

    :cond_13
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x27

    aput-char v1, v0, v6

    goto/16 :goto_5

    :cond_14
    if-ne v1, v10, :cond_16

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    aget-char v3, v3, v7

    const/16 v7, 0x71

    if-ne v3, v7, :cond_16

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    add-int/2addr v7, v5

    aget-char v3, v3, v7

    const/16 v5, 0x75

    if-ne v3, v5, :cond_16

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    add-int/2addr v5, v4

    aget-char v3, v3, v5

    if-ne v3, v9, :cond_16

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    add-int/2addr v4, v8

    aget-char v3, v3, v4

    if-ne v3, v2, :cond_16

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v0, :cond_15

    const-string v0, "\""

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->text:Ljava/lang/String;

    :cond_15
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x22

    aput-char v1, v0, v6

    goto/16 :goto_5

    :cond_16
    invoke-virtual {p0, v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->lookuEntityReplacement(I)[C

    move-result-object v1

    if-eqz v1, :cond_17

    return-object v1

    :cond_17
    iget-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v1, :cond_18

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->text:Ljava/lang/String;

    :cond_18
    return-object v0

    :cond_19
    new-instance v2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "entity reference names can not start with character \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected parseEpilog()I
    .registers 11

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1b

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->reachedEnd:Z

    if-eqz v0, :cond_0

    iput v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    return v2

    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->roundtripSupported:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x7

    :try_start_0
    iget-boolean v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenMarkup:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v6, v2

    aget-char v5, v5, v6

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v5

    :goto_1
    iput-boolean v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenMarkup:Z

    iget v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v6, v2

    iput v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget-boolean v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->reachedEnd:Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v6, :cond_17

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_3
    const/16 v8, 0x3c

    const/16 v9, 0xa

    if-ne v5, v8, :cond_b

    if-eqz v6, :cond_4

    :try_start_1
    iget-boolean v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v5, :cond_4

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iput-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenMarkup:Z

    iput v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    return v4

    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v5

    iget-boolean v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->reachedEnd:Z

    if-nez v8, :cond_18

    const/16 v8, 0x3f

    if-ne v5, v8, :cond_5

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->parsePI()Z

    iget-boolean v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v5, :cond_15

    const/16 v0, 0x8

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    return v0

    :cond_5
    const/16 v8, 0x21

    if-ne v5, v8, :cond_8

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v5

    iget-boolean v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->reachedEnd:Z

    if-nez v8, :cond_18

    const/16 v8, 0x44

    if-ne v5, v8, :cond_6

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->parseDocdecl()V

    iget-boolean v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v5, :cond_15

    iput v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    return v9

    :cond_6
    const/16 v8, 0x2d

    if-ne v5, v8, :cond_7

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->parseComment()V

    iget-boolean v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v5, :cond_15

    const/16 v0, 0x9

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    return v0

    :cond_7
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "unexpected markup <!"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    const/16 v0, 0x2f

    if-eq v5, v0, :cond_a

    invoke-virtual {p0, v5}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isNameStartChar(C)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "start tag not allowed in epilog but got "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_9
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "in epilog expected ignorable content and not "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_a
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "end tag not allowed in epilog but got "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_b
    invoke-virtual {p0, v5}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isS(C)Z

    move-result v8
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v8, :cond_16

    if-eqz v0, :cond_14

    const/16 v6, 0xd

    if-ne v5, v6, :cond_f

    :try_start_2
    iget-boolean v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-nez v5, :cond_d

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v5, v2

    iput v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    if-le v5, v6, :cond_c

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->joinPC()V

    goto :goto_2

    :cond_c
    iput-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    iput v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iput v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    :cond_d
    :goto_2
    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v6, v6

    if-lt v5, v6, :cond_e

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {p0, v5}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_e
    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v9, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    goto :goto_4

    :cond_f
    if-ne v5, v9, :cond_12

    if-nez v7, :cond_11

    iget-boolean v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-eqz v5, :cond_11

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v6, v6

    if-lt v5, v6, :cond_10

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {p0, v5}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_10
    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v9, v5, v6

    :cond_11
    :goto_3
    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_4

    :cond_12
    iget-boolean v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-eqz v6, :cond_11

    iget v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v7, v7

    if-lt v6, v7, :cond_13

    iget v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {p0, v6}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_13
    iget-object v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v5, v6, v7
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    const/4 v6, 0x1

    goto :goto_5

    :cond_14
    const/4 v6, 0x1

    :cond_15
    :goto_4
    :try_start_3
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v5

    iget-boolean v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->reachedEnd:Z

    if-eqz v8, :cond_3

    goto :goto_6

    :cond_16
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "in epilog non whitespace content is not allowed but got "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_17
    const/4 v6, 0x0

    goto :goto_6

    :catch_1
    const/4 v6, 0x0

    :catch_2
    :goto_5
    iput-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->reachedEnd:Z

    :cond_18
    :goto_6
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->reachedEnd:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v0, :cond_19

    if-eqz v6, :cond_19

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iput v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    return v4

    :cond_19
    iput v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    return v2

    :cond_1a
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v1, "internal error in parseEpilog"

    invoke-direct {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v2, "already reached end of XML input"

    invoke-direct {v0, v2, p0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected parsePI()Z
    .registers 17

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v0, :cond_0

    iget v0, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    iput v0, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    :cond_0
    iget v2, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->lineNumber:I

    iget v3, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->columnNumber:I

    iget v0, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    iget-boolean v4, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    iget-boolean v4, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->roundtripSupported:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v7

    invoke-virtual {v1, v7}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isS(C)Z

    move-result v8
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_17

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    :goto_1
    const/16 v13, 0x3f

    if-ne v7, v13, :cond_2

    const/4 v10, 0x1

    goto/16 :goto_3

    :cond_2
    const/16 v13, 0x3e

    if-ne v7, v13, :cond_6

    if-nez v10, :cond_4

    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_4
    iget-boolean v0, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v0, :cond_5

    iget v0, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x2

    iput v0, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    if-eqz v4, :cond_5

    iget v0, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    sub-int/2addr v0, v6

    iput v0, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    :cond_5
    return v6

    :cond_6
    if-ne v11, v8, :cond_3

    :try_start_1
    invoke-virtual {v1, v7}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isS(C)Z

    move-result v10

    if-eqz v10, :cond_3

    iget v10, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    add-int/lit8 v11, v10, -0x1

    sub-int v10, v11, v0

    const/4 v13, 0x3

    if-ne v10, v13, :cond_3

    iget-object v10, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    aget-char v10, v10, v0

    const/16 v14, 0x78

    if-eq v10, v14, :cond_7

    iget-object v10, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    aget-char v10, v10, v0

    const/16 v15, 0x58

    if-ne v10, v15, :cond_3

    :cond_7
    iget-object v10, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    add-int/lit8 v15, v0, 0x1

    aget-char v10, v10, v15

    const/16 v8, 0x6d

    if-eq v10, v8, :cond_8

    iget-object v10, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    aget-char v10, v10, v15

    const/16 v6, 0x4d

    if-ne v10, v6, :cond_3

    :cond_8
    iget-object v6, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    add-int/lit8 v10, v0, 0x2

    aget-char v6, v6, v10

    const/16 v5, 0x6c

    if-eq v6, v5, :cond_9

    iget-object v6, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    aget-char v6, v6, v10

    const/16 v9, 0x4c

    if-ne v6, v9, :cond_3

    :cond_9
    if-gt v0, v13, :cond_d

    iget-object v4, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    aget-char v4, v4, v0

    if-eq v4, v14, :cond_b

    iget-object v4, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    aget-char v4, v4, v15

    if-eq v4, v8, :cond_b

    iget-object v4, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    aget-char v4, v4, v10

    if-ne v4, v5, :cond_a

    goto :goto_2

    :cond_a
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v4, "XMLDecl must have xml name in lowercase"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v1, v5}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_b
    :goto_2
    invoke-virtual {v1, v7}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->parseXmlDecl(C)V

    iget-boolean v4, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v4, :cond_c

    iget v4, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    add-int/lit8 v4, v4, -0x2

    iput v4, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    :cond_c
    add-int/2addr v0, v13

    iget v4, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    add-int/lit8 v4, v4, -0x2

    sub-int/2addr v4, v0

    iget-object v5, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    invoke-virtual {v1, v5, v0, v4}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->xmlDeclContent:Ljava/lang/String;

    const/4 v0, 0x0

    return v0

    :cond_d
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v4, "processing instruction can not have PITarget with reserved xml name"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v1, v5}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :goto_3
    if-eqz v4, :cond_16

    const/16 v5, 0xd

    const/16 v6, 0xa

    if-ne v7, v5, :cond_11

    iget-boolean v5, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-nez v5, :cond_f

    iget v5, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    iput v5, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v5, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v7, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    if-le v5, v7, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->joinPC()V

    goto :goto_4

    :cond_e
    const/4 v5, 0x1

    iput-boolean v5, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    const/4 v8, 0x0

    iput v8, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iput v8, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    goto :goto_5

    :cond_f
    :goto_4
    const/4 v5, 0x1

    const/4 v8, 0x0

    :goto_5
    iget v7, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v9, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v9, v9

    if-lt v7, v9, :cond_10

    iget v7, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {v1, v7}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_10
    iget-object v7, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v9, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v6, v7, v9

    const/4 v12, 0x1

    goto :goto_7

    :cond_11
    const/4 v5, 0x1

    const/4 v8, 0x0

    if-ne v7, v6, :cond_14

    if-nez v12, :cond_13

    iget-boolean v7, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-eqz v7, :cond_13

    iget v7, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v9, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v9, v9

    if-lt v7, v9, :cond_12

    iget v7, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {v1, v7}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_12
    iget-object v7, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v9, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v6, v7, v9

    :cond_13
    :goto_6
    const/4 v12, 0x0

    goto :goto_7

    :cond_14
    iget-boolean v6, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-eqz v6, :cond_13

    iget v6, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v9, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v9, v9

    if-lt v6, v9, :cond_15

    iget v6, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {v1, v6}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_15
    iget-object v6, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v9, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v7, v6, v9

    goto :goto_6

    :cond_16
    const/4 v5, 0x1

    const/4 v8, 0x0

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v7

    const/4 v6, 0x1

    const/4 v8, -0x1

    goto/16 :goto_1

    :cond_17
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v4, "processing instruction PITarget must be exactly after <? and not white space character"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v1, v5}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v4, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "processing instruction started on line "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and column "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was not closed"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected parseProlog()I
    .registers 10

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenMarkup:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v2, v1

    aget-char v0, v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    :goto_0
    iget v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const v2, 0xfffe

    if-eq v0, v2, :cond_1

    const v2, 0xfeff

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v1, "first character in input was UNICODE noncharacter (0xFFFE)- input requires int swapping"

    invoke-direct {v0, v1, p0, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenMarkup:Z

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v4, v1

    iput v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iget-boolean v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-ne v4, v1, :cond_3

    iget-boolean v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->roundtripSupported:Z

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    const/16 v7, 0x3c

    const/16 v8, 0xa

    if-ne v0, v7, :cond_d

    if-eqz v5, :cond_4

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenMarkup:Z

    const/4 v0, 0x7

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    return v0

    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    const/16 v7, 0x3f

    if-ne v0, v7, :cond_6

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->parsePI()Z

    move-result v0

    iget-boolean v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v7, :cond_17

    if-eqz v0, :cond_5

    iput v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    return v2

    :cond_5
    const/16 v0, 0x8

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    return v0

    :cond_6
    const/16 v7, 0x21

    if-ne v0, v7, :cond_a

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    const/16 v7, 0x44

    if-ne v0, v7, :cond_8

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenDocdecl:Z

    if-nez v0, :cond_7

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenDocdecl:Z

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->parseDocdecl()V

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v0, :cond_17

    iput v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    return v8

    :cond_7
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v1, "only one docdecl allowed in XML document"

    invoke-direct {v0, v1, p0, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    const/16 v7, 0x2d

    if-ne v0, v7, :cond_9

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->parseComment()V

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->tokenize:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x9

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    return v0

    :cond_9
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "unexpected markup <!"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    const/16 v2, 0x2f

    if-eq v0, v2, :cond_c

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isNameStartChar(C)Z

    move-result v2

    if-eqz v2, :cond_b

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenRoot:Z

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->parseStartTag()I

    move-result v0

    return v0

    :cond_b
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "expected start tag name and not "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_c
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "expected start tag name and not "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isS(C)Z

    move-result v5

    if-eqz v5, :cond_18

    if-eqz v4, :cond_16

    const/16 v5, 0xd

    if-ne v0, v5, :cond_11

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-nez v0, :cond_f

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    if-le v0, v5, :cond_e

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->joinPC()V

    goto :goto_4

    :cond_e
    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    iput v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iput v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    :cond_f
    :goto_4
    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v5, v5

    if-lt v0, v5, :cond_10

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_10
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v8, v0, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    goto :goto_6

    :cond_11
    if-ne v0, v8, :cond_14

    if-nez v6, :cond_13

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v5, v5

    if-lt v0, v5, :cond_12

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_12
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v8, v0, v5

    :cond_13
    :goto_5
    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_6

    :cond_14
    iget-boolean v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    if-eqz v5, :cond_13

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iget-object v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    array-length v6, v6

    if-lt v5, v6, :cond_15

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    invoke-virtual {p0, v5}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensurePC(I)V

    :cond_15
    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pc:[C

    iget v6, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    aput-char v0, v5, v6

    goto :goto_5

    :cond_16
    const/4 v5, 0x1

    :cond_17
    :goto_6
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    goto/16 :goto_3

    :cond_18
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "only whitespace content allowed before start tag and not "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseStartTag()I
    .registers 14

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    const/4 v2, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->emptyElementTag:Z

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v3, v1

    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v5, v1

    aget-char v4, v4, v5

    const/16 v5, 0x3a

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    iget-boolean v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->processNamespaces:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v1, "when namespaces processing enabled colon can not be at element name start"

    invoke-direct {v0, v1, p0, v6}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v4, -0x1

    const/4 v7, -0x1

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v8

    invoke-virtual {p0, v8}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isNameChar(C)Z

    move-result v9

    if-eqz v9, :cond_4

    if-ne v8, v5, :cond_2

    iget-boolean v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->processNamespaces:Z

    if-eqz v8, :cond_2

    if-ne v7, v4, :cond_3

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v7, v1

    iget v8, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    add-int/2addr v7, v8

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v1, "only one colon is allowed in name of element when namespaces are enabled"

    invoke-direct {v0, v1, p0, v6}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->ensureElementsCapacity()V

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v5, v1

    iget v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int v9, v3, v9

    sub-int/2addr v5, v9

    iget-object v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawName:[[C

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    aget-object v9, v9, v10

    if-eqz v9, :cond_5

    iget-object v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawName:[[C

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    aget-object v9, v9, v10

    array-length v9, v9

    if-ge v9, v5, :cond_6

    :cond_5
    iget-object v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawName:[[C

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    mul-int/lit8 v11, v5, 0x2

    new-array v11, v11, [C

    aput-object v11, v9, v10

    :cond_6
    iget-object v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int v10, v3, v10

    iget-object v11, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawName:[[C

    iget v12, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    aget-object v11, v11, v12

    invoke-static {v9, v10, v11, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawNameEnd:[I

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    aput v5, v9, v10

    iget-object v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elRawNameLine:[I

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    iget v11, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->lineNumber:I

    aput v11, v9, v10

    iget-boolean v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->processNamespaces:Z

    if-eqz v9, :cond_8

    if-eq v7, v4, :cond_7

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elPrefix:[Ljava/lang/String;

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    iget-object v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int v10, v3, v10

    sub-int v3, v7, v3

    invoke-virtual {p0, v9, v10, v3}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elName:[Ljava/lang/String;

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    iget-object v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    add-int/lit8 v10, v7, 0x1

    iget v11, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v10, v11

    iget v11, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr v11, v2

    iget v12, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v7, v12

    sub-int/2addr v11, v7

    invoke-virtual {p0, v9, v10, v11}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elPrefix:[Ljava/lang/String;

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    aput-object v6, v4, v7

    :cond_8
    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elName:[Ljava/lang/String;

    iget v7, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    iget-object v9, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    iget v10, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v3, v10

    invoke-virtual {p0, v9, v3, v5}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    move-object v3, v6

    :goto_2
    invoke-virtual {p0, v8}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isS(C)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_3
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v8

    goto :goto_2

    :cond_9
    const/16 v4, 0x3e

    if-eq v8, v4, :cond_e

    const/16 v5, 0x2f

    if-ne v8, v5, :cond_c

    iget-boolean v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->emptyElementTag:Z

    if-nez v5, :cond_b

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->emptyElementTag:Z

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v5

    if-ne v5, v4, :cond_a

    goto :goto_4

    :cond_a
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected > to end empty tag not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v6}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_b
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string v1, "repeated / in tag declaration"

    invoke-direct {v0, v1, p0, v6}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_c
    invoke-virtual {p0, v8}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isNameStartChar(C)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->parseAttribute()C

    goto :goto_3

    :cond_d
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start tag unexpected character "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v6}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    :goto_4
    iget-boolean v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->processNamespaces:Z

    if-eqz v4, :cond_1a

    invoke-virtual {p0, v3}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    if-nez v3, :cond_f

    const-string v4, ""

    goto :goto_5

    :cond_f
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "could not determine namespace bound to element prefix "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v6}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_10
    :goto_5
    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elUri:[Ljava/lang/String;

    iget v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    aput-object v4, v3, v5

    const/4 v3, 0x0

    :goto_6
    iget v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    if-ge v3, v4, :cond_13

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributePrefix:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_12

    invoke-virtual {p0, v4}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeUri:[Ljava/lang/String;

    aput-object v5, v4, v3

    goto :goto_7

    :cond_11
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "could not determine namespace bound to attribute prefix "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v6}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_12
    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeUri:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v3

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_13
    :goto_8
    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    if-ge v1, v3, :cond_1f

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_19

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-ne v4, v5, :cond_18

    iget-boolean v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->allStringsInterned:Z

    if-eqz v4, :cond_14

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    :cond_14
    iget-boolean v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->allStringsInterned:Z

    if-nez v4, :cond_18

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeNameHash:[I

    aget v4, v4, v3

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeNameHash:[I

    aget v5, v5, v1

    if-ne v4, v5, :cond_18

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_15
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v2, v2, v3

    if-eqz v2, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_16
    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_17
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "duplicated attributes "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v6}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    :cond_1a
    :goto_a
    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    if-ge v1, v3, :cond_1f

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_1e

    iget-boolean v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->allStringsInterned:Z

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    :cond_1b
    iget-boolean v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->allStringsInterned:Z

    if-nez v4, :cond_1d

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeNameHash:[I

    aget v4, v4, v3

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeNameHash:[I

    aget v5, v5, v1

    if-ne v4, v5, :cond_1d

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_c

    :cond_1c
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v1, v2, v1

    new-instance v2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "duplicated attributes "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p0, v6}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    :cond_1d
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1f
    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->elNamespaceCount:[I

    iget v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    aput v3, v0, v1

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iput v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    return v2
.end method

.method protected parseXmlDecl(C)V
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->preventBufferCompaction:Z

    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufStart:I

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->skipS(C)C

    move-result p1

    sget-object v2, Lorg/codehaus/plexus/util/xml/pull/MXParser;->VERSION:[C

    invoke-virtual {p0, p1, v2}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->requireInput(C[C)C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->skipS(C)C

    move-result p1

    const/4 v2, 0x0

    const/16 v3, 0x3d

    if-ne p1, v3, :cond_8

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->skipS(C)C

    move-result p1

    const/16 v3, 0x27

    if-eq p1, v3, :cond_1

    const/16 v3, 0x22

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "expected apostrophe (\') or quotation mark (\") after version and not "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    iget v3, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v4

    if-eq v4, p1, :cond_7

    const/16 v5, 0x61

    if-lt v4, v5, :cond_3

    const/16 v5, 0x7a

    if-le v4, v5, :cond_2

    :cond_3
    const/16 v5, 0x41

    if-lt v4, v5, :cond_4

    const/16 v5, 0x5a

    if-le v4, v5, :cond_2

    :cond_4
    const/16 v5, 0x30

    if-lt v4, v5, :cond_5

    const/16 v5, 0x39

    if-le v4, v5, :cond_2

    :cond_5
    const/16 v5, 0x5f

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_2

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version value expected to be in ([a-zA-Z0-9_.:] | \'-\') not "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    iget p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, v3, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->parseXmlDeclWithVersion(II)V

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->preventBufferCompaction:Z

    return-void

    :cond_8
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "expected equals sign (=) after version and not "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected parseXmlDeclWithVersion(II)V
    .registers 15

    sub-int/2addr p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_15

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    aget-char v1, v1, p1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_15

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    add-int/lit8 v2, p1, 0x1

    aget-char v1, v1, v2

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_15

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    add-int/lit8 v3, p1, 0x2

    aget-char v1, v1, v3

    const/16 v3, 0x30

    if-ne v1, v3, :cond_15

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    invoke-virtual {p0, v1, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->xmlDeclVersion:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->skipS(C)C

    move-result p1

    const/16 p2, 0x65

    const/16 v1, 0x22

    const/16 v4, 0x27

    const/16 v5, 0x3d

    if-ne p1, p2, :cond_b

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result p1

    sget-object p2, Lorg/codehaus/plexus/util/xml/pull/MXParser;->NCODING:[C

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->requireInput(C[C)C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->skipS(C)C

    move-result p1

    if-ne p1, v5, :cond_a

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->skipS(C)C

    move-result p1

    if-eq p1, v4, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected apostrophe (\') or quotation mark (\") after encoding and not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    iget p2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v6

    const/16 v7, 0x5a

    const/16 v8, 0x41

    const/16 v9, 0x7a

    const/16 v10, 0x61

    if-lt v6, v10, :cond_2

    if-le v6, v9, :cond_3

    :cond_2
    if-lt v6, v8, :cond_9

    if-gt v6, v7, :cond_9

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v6

    if-eq v6, p1, :cond_8

    if-lt v6, v10, :cond_4

    if-le v6, v9, :cond_3

    :cond_4
    if-lt v6, v8, :cond_5

    if-le v6, v7, :cond_3

    :cond_5
    if-lt v6, v3, :cond_6

    const/16 v11, 0x39

    if-le v6, v11, :cond_3

    :cond_6
    if-eq v6, v2, :cond_3

    const/16 v11, 0x5f

    if-eq v6, v11, :cond_3

    const/16 v11, 0x2d

    if-ne v6, v11, :cond_7

    goto :goto_1

    :cond_7
    new-instance p1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "<?xml encoding value expected to be in ([A-Za-z0-9._] | \'-\') not "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    :cond_8
    iget p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    add-int/lit8 p1, p1, -0x1

    iget-object v2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    sub-int/2addr p1, p2

    invoke-virtual {p0, v2, p2, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->inputEncoding:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result p1

    goto :goto_2

    :cond_9
    new-instance p1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "<?xml encoding name expected to start with [A-Za-z] not "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    :cond_a
    new-instance p2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected equals sign (=) after encoding and not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    :cond_b
    :goto_2
    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->skipS(C)C

    move-result p1

    const/16 p2, 0x73

    if-ne p1, p2, :cond_12

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result p1

    sget-object p2, Lorg/codehaus/plexus/util/xml/pull/MXParser;->TANDALONE:[C

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->requireInput(C[C)C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->skipS(C)C

    move-result p1

    if-ne p1, v5, :cond_11

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->skipS(C)C

    move-result p1

    if-eq p1, v4, :cond_d

    if-ne p1, v1, :cond_c

    goto :goto_3

    :cond_c
    new-instance p2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected apostrophe (\') or quotation mark (\") after encoding and not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    :cond_d
    :goto_3
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result p2

    const/16 v1, 0x79

    if-ne p2, v1, :cond_e

    sget-object v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->YES:[C

    invoke-virtual {p0, p2, v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->requireInput(C[C)C

    move-result p2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    goto :goto_5

    :cond_e
    const/16 v1, 0x6e

    if-ne p2, v1, :cond_10

    sget-object v1, Lorg/codehaus/plexus/util/xml/pull/MXParser;->NO:[C

    invoke-virtual {p0, p2, v1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->requireInput(C[C)C

    move-result p2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    :goto_5
    if-ne p2, p1, :cond_f

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result p1

    goto :goto_6

    :cond_f
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " after standalone value not "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_10
    new-instance p1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected \'yes\' or \'no\' after standalone and not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    :cond_11
    new-instance p2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected equals sign (=) after standalone and not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    :cond_12
    :goto_6
    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->skipS(C)C

    move-result p1

    const/16 p2, 0x3f

    if-ne p1, p2, :cond_14

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result p1

    const/16 p2, 0x3e

    if-ne p1, p2, :cond_13

    return-void

    :cond_13
    new-instance p2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected ?> as last part of <?xml not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    :cond_14
    new-instance p2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected ?> as last part of <?xml not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    :cond_15
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "only 1.0 is supported as <?xml version not \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->buf:[C

    invoke-direct {v3, v4, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v3}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected printable(C)Ljava/lang/String;
    .registers 4

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const-string p1, "\\n"

    return-object p1

    :cond_0
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    const-string p1, "\\r"

    return-object p1

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    const-string p1, "\\t"

    return-object p1

    :cond_2
    const/16 v0, 0x27

    if-ne p1, v0, :cond_3

    const-string p1, "\\\'"

    return-object p1

    :cond_3
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_5

    const/16 v0, 0x20

    if-ge p1, v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected printable(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->processNamespaces:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "processing namespaces must be enabled on parser (or factory) to have possible namespaces declared on elements"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, " (position:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/codehaus/plexus/util/xml/pull/MXParser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " with name \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    const-string v2, ""

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    const-string v2, " and"

    goto :goto_3

    :cond_6
    const-string v2, ""

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " with namespace \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_7
    const-string v2, ""

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but got"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getEventType()I

    move-result v2

    if-eq p1, v2, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/codehaus/plexus/util/xml/pull/MXParser;->TYPES:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getEventType()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_8
    const-string p1, ""

    :goto_5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_9

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, " name \'"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_9
    const-string p1, ""

    :goto_6
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, " and"

    goto :goto_7

    :cond_a
    const-string p1, ""

    :goto_7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, " namespace \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_b
    const-string p1, ""

    :goto_8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (position:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected requireInput(C[C)C
    .registers 7

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-char v2, p2, v1

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "expected "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and not "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    return p1
.end method

.method protected requireNextS()C
    .registers 5

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isS(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->skipS(C)C

    move-result v0

    return v0

    :cond_0
    new-instance v1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "white space is required and not "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected reset()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->location:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->lineNumber:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->columnNumber:I

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenRoot:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->reachedEnd:Z

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->emptyElementTag:Z

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->depth:I

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->attributeCount:I

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->namespaceEnd:I

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->setupFromTemplate()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->reader:Ljava/io/Reader;

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->inputEncoding:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->preventBufferCompaction:Z

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufAbsoluteStart:I

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufStart:I

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->bufEnd:I

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posEnd:I

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->posStart:I

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pos:I

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcStart:I

    iput v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pcEnd:I

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->usePC:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenStartTag:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenEndTag:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->pastEndTag:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenAmpersand:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenMarkup:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->seenDocdecl:Z

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->xmlDeclVersion:Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->xmlDeclContent:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->resetStringCache()V

    return-void
.end method

.method protected resetStringCache()V
    .registers 1

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 5

    if-eqz p1, :cond_7

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->eventType:I

    if-nez p1, :cond_0

    iput-boolean p2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->processNamespaces:Z

    return-void

    :cond_0
    new-instance p1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const/4 p2, 0x0

    const-string v0, "namespace processing feature can only be changed before parsing"

    invoke-direct {p1, v0, p0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string p2, "interning names in this implementation is not supported"

    invoke-direct {p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_4

    :goto_0
    return-void

    :cond_4
    new-instance p1, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    const-string p2, "processing DOCDECL is not supported"

    invoke-direct {p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string v0, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean p2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->roundtripSupported:Z

    return-void

    :cond_6
    new-instance p2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unsupported feature "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "feature name should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Lorg/codehaus/plexus/util/ReaderFactory;->newReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lorg/codehaus/plexus/util/ReaderFactory;->newXmlReader(Ljava/io/InputStream;)Lorg/codehaus/plexus/util/xml/XmlStreamReader;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->setInput(Ljava/io/Reader;)V

    iput-object p2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->inputEncoding:Ljava/lang/String;

    return-void

    :goto_1
    new-instance p2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "could not create reader : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "could not create reader for encoding "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input stream can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInput(Ljava/io/Reader;)V
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->reset()V

    iput-object p1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->reader:Ljava/io/Reader;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->location:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p2, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unsupported property: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setupFromTemplate()V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->replacementMapTemplate:Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->replacementMapTemplate:Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;

    iget v0, v0, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityEnd:I

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->replacementMapTemplate:Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;

    iget-object v1, v1, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityName:[Ljava/lang/String;

    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityName:[Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->replacementMapTemplate:Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;

    iget-object v1, v1, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityNameBuf:[[C

    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityNameBuf:[[C

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->replacementMapTemplate:Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;

    iget-object v1, v1, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityReplacement:[Ljava/lang/String;

    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityReplacement:[Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->replacementMapTemplate:Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;

    iget-object v1, v1, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityReplacementBuf:[[C

    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityReplacementBuf:[[C

    iget-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->replacementMapTemplate:Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;

    iget-object v1, v1, Lorg/codehaus/plexus/util/xml/pull/EntityReplacementMap;->entityNameHash:[I

    iput-object v1, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityNameHash:[I

    iput v0, p0, Lorg/codehaus/plexus/util/xml/pull/MXParser;->entityEnd:I

    :cond_0
    return-void
.end method

.method protected skipS(C)C
    .registers 3

    :goto_0
    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->isS(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->more()C

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public skipSubTree()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, v0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-lez v0, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/MXParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-ne v2, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
