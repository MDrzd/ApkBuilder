.class public Lorg/codehaus/plexus/util/MatchPattern;
.super Ljava/lang/Object;


# instance fields
.field private final regexPattern:Ljava/lang/String;

.field private final separator:Ljava/lang/String;

.field private final source:Ljava/lang/String;

.field private final tokenized:[Ljava/lang/String;

.field private final tokenizedChar:[[C


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/codehaus/plexus/util/SelectorUtils;->isRegexPrefixedPattern(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/codehaus/plexus/util/MatchPattern;->regexPattern:Ljava/lang/String;

    invoke-static {p1}, Lorg/codehaus/plexus/util/SelectorUtils;->isAntPrefixedPattern(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lorg/codehaus/plexus/util/MatchPattern;->source:Ljava/lang/String;

    iput-object p2, p0, Lorg/codehaus/plexus/util/MatchPattern;->separator:Ljava/lang/String;

    iget-object p1, p0, Lorg/codehaus/plexus/util/MatchPattern;->source:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/codehaus/plexus/util/MatchPattern;->tokenizePathToString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/plexus/util/MatchPattern;->tokenized:[Ljava/lang/String;

    iget-object p1, p0, Lorg/codehaus/plexus/util/MatchPattern;->tokenized:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [[C

    iput-object p1, p0, Lorg/codehaus/plexus/util/MatchPattern;->tokenizedChar:[[C

    const/4 p1, 0x0

    :goto_1
    iget-object p2, p0, Lorg/codehaus/plexus/util/MatchPattern;->tokenized:[Ljava/lang/String;

    array-length p2, p2

    if-ge p1, p2, :cond_2

    iget-object p2, p0, Lorg/codehaus/plexus/util/MatchPattern;->tokenizedChar:[[C

    iget-object v0, p0, Lorg/codehaus/plexus/util/MatchPattern;->tokenized:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/codehaus/plexus/util/MatchPattern;
    .registers 3

    new-instance v0, Lorg/codehaus/plexus/util/MatchPattern;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lorg/codehaus/plexus/util/MatchPattern;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static tokenizePathToString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getTokenizedPathChars()[[C
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/MatchPattern;->tokenizedChar:[[C

    return-object v0
.end method

.method public getTokenizedPathString()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/MatchPattern;->tokenized:[Ljava/lang/String;

    return-object v0
.end method

.method public matchPath(Ljava/lang/String;Z)Z
    .registers 4

    iget-object v0, p0, Lorg/codehaus/plexus/util/MatchPattern;->regexPattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p2, p0, Lorg/codehaus/plexus/util/MatchPattern;->regexPattern:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/MatchPattern;->separator:Ljava/lang/String;

    invoke-static {p0, p1, v0, p2}, Lorg/codehaus/plexus/util/SelectorUtils;->matchAntPathPattern(Lorg/codehaus/plexus/util/MatchPattern;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method matchPath(Ljava/lang/String;[[CZ)Z
    .registers 5

    iget-object v0, p0, Lorg/codehaus/plexus/util/MatchPattern;->regexPattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p2, p0, Lorg/codehaus/plexus/util/MatchPattern;->regexPattern:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/MatchPattern;->getTokenizedPathChars()[[C

    move-result-object p1

    invoke-static {p1, p2, p3}, Lorg/codehaus/plexus/util/SelectorUtils;->matchAntPathPattern([[C[[CZ)Z

    move-result p1

    return p1
.end method

.method public matchPatternStart(Ljava/lang/String;Z)Z
    .registers 7

    iget-object v0, p0, Lorg/codehaus/plexus/util/MatchPattern;->regexPattern:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/MatchPattern;->source:Ljava/lang/String;

    const/16 v2, 0x5c

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p0, p1, v2, p2}, Lorg/codehaus/plexus/util/SelectorUtils;->matchAntPathPatternStart(Lorg/codehaus/plexus/util/MatchPattern;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "/"

    invoke-static {p0, v0, p1, p2}, Lorg/codehaus/plexus/util/SelectorUtils;->matchAntPathPatternStart(Lorg/codehaus/plexus/util/MatchPattern;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public startsWith(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/MatchPattern;->source:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
