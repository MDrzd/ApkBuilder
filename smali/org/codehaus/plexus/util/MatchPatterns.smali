.class public Lorg/codehaus/plexus/util/MatchPatterns;
.super Ljava/lang/Object;


# instance fields
.field private final patterns:[Lorg/codehaus/plexus/util/MatchPattern;


# direct methods
.method private constructor <init>([Lorg/codehaus/plexus/util/MatchPattern;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/plexus/util/MatchPatterns;->patterns:[Lorg/codehaus/plexus/util/MatchPattern;

    return-void
.end method

.method public static from(Ljava/lang/Iterable;)Lorg/codehaus/plexus/util/MatchPatterns;
    .registers 2

    new-instance v0, Lorg/codehaus/plexus/util/MatchPatterns;

    invoke-static {p0}, Lorg/codehaus/plexus/util/MatchPatterns;->getMatchPatterns(Ljava/lang/Iterable;)[Lorg/codehaus/plexus/util/MatchPattern;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/codehaus/plexus/util/MatchPatterns;-><init>([Lorg/codehaus/plexus/util/MatchPattern;)V

    return-object v0
.end method

.method public static varargs from([Ljava/lang/String;)Lorg/codehaus/plexus/util/MatchPatterns;
    .registers 5

    array-length v0, p0

    new-array v1, v0, [Lorg/codehaus/plexus/util/MatchPattern;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/codehaus/plexus/util/MatchPattern;->fromString(Ljava/lang/String;)Lorg/codehaus/plexus/util/MatchPattern;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/codehaus/plexus/util/MatchPatterns;

    invoke-direct {p0, v1}, Lorg/codehaus/plexus/util/MatchPatterns;-><init>([Lorg/codehaus/plexus/util/MatchPattern;)V

    return-object p0
.end method

.method private static getMatchPatterns(Ljava/lang/Iterable;)[Lorg/codehaus/plexus/util/MatchPattern;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/codehaus/plexus/util/MatchPattern;->fromString(Ljava/lang/String;)Lorg/codehaus/plexus/util/MatchPattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lorg/codehaus/plexus/util/MatchPattern;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/codehaus/plexus/util/MatchPattern;

    return-object p0
.end method


# virtual methods
.method public matches(Ljava/lang/String;Z)Z
    .registers 4

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/codehaus/plexus/util/MatchPattern;->tokenizePathToString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/codehaus/plexus/util/MatchPatterns;->matches(Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public matches(Ljava/lang/String;[Ljava/lang/String;Z)Z
    .registers 9

    array-length v0, p2

    new-array v0, v0, [[C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/codehaus/plexus/util/MatchPatterns;->patterns:[Lorg/codehaus/plexus/util/MatchPattern;

    array-length v2, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    invoke-virtual {v4, p1, v0, p3}, Lorg/codehaus/plexus/util/MatchPattern;->matchPath(Ljava/lang/String;[[CZ)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method public matchesPatternStart(Ljava/lang/String;Z)Z
    .registers 8

    iget-object v0, p0, Lorg/codehaus/plexus/util/MatchPatterns;->patterns:[Lorg/codehaus/plexus/util/MatchPattern;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1, p2}, Lorg/codehaus/plexus/util/MatchPattern;->matchPatternStart(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
