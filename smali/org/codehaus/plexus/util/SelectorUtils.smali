.class public final Lorg/codehaus/plexus/util/SelectorUtils;
.super Ljava/lang/Object;


# static fields
.field public static final ANT_HANDLER_PREFIX:Ljava/lang/String; = "%ant["

.field public static final PATTERN_HANDLER_PREFIX:Ljava/lang/String; = "["

.field public static final PATTERN_HANDLER_SUFFIX:Ljava/lang/String; = "]"

.field public static final REGEX_HANDLER_PREFIX:Ljava/lang/String; = "%regex["

.field private static instance:Lorg/codehaus/plexus/util/SelectorUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/codehaus/plexus/util/SelectorUtils;

    invoke-direct {v0}, Lorg/codehaus/plexus/util/SelectorUtils;-><init>()V

    sput-object v0, Lorg/codehaus/plexus/util/SelectorUtils;->instance:Lorg/codehaus/plexus/util/SelectorUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static equals(CCZ)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_2

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p2

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-eq p2, v1, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance()Lorg/codehaus/plexus/util/SelectorUtils;
    .registers 1

    sget-object v0, Lorg/codehaus/plexus/util/SelectorUtils;->instance:Lorg/codehaus/plexus/util/SelectorUtils;

    return-object v0
.end method

.method static isAntPrefixedPattern(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    const-string v0, "%ant["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isDoubleStar([C)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    aget-char v1, p0, v0

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-char p0, p0, v1

    if-ne p0, v2, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static isOutOfDate(Ljava/io/File;Ljava/io/File;I)Z
    .registers 10

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    int-to-long v5, p2

    sub-long/2addr v3, v5

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    cmp-long p2, v3, p0

    if-lez p2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method static isRegexPrefixedPattern(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    const-string v0, "%regex["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/codehaus/plexus/util/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/codehaus/plexus/util/SelectorUtils;->match([C[CZ)Z

    move-result p0

    return p0
.end method

.method public static match([C[CZ)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    array-length v5, v1

    sub-int/2addr v5, v4

    array-length v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0x2a

    if-ge v8, v6, :cond_1

    aget-char v10, v0, v8

    if-ne v10, v9, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const/16 v8, 0x3f

    if-nez v6, :cond_5

    if-eq v3, v5, :cond_2

    return v7

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-gt v5, v3, :cond_4

    aget-char v6, v0, v5

    if-eq v6, v8, :cond_3

    aget-char v9, v1, v5

    invoke-static {v6, v9, v2}, Lorg/codehaus/plexus/util/SelectorUtils;->equals(CCZ)Z

    move-result v6

    if-nez v6, :cond_3

    return v7

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    return v4

    :cond_5
    if-nez v3, :cond_6

    return v4

    :cond_6
    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_3
    aget-char v11, v0, v6

    if-eq v11, v9, :cond_8

    if-gt v10, v5, :cond_8

    if-eq v11, v8, :cond_7

    aget-char v12, v1, v10

    invoke-static {v11, v12, v2}, Lorg/codehaus/plexus/util/SelectorUtils;->equals(CCZ)Z

    move-result v11

    if-nez v11, :cond_7

    return v7

    :cond_7
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    if-le v10, v5, :cond_b

    :goto_4
    if-gt v6, v3, :cond_a

    aget-char v1, v0, v6

    if-eq v1, v9, :cond_9

    return v7

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_a
    return v4

    :cond_b
    :goto_5
    aget-char v11, v0, v3

    if-eq v11, v9, :cond_d

    if-gt v10, v5, :cond_d

    if-eq v11, v8, :cond_c

    aget-char v12, v1, v5

    invoke-static {v11, v12, v2}, Lorg/codehaus/plexus/util/SelectorUtils;->equals(CCZ)Z

    move-result v11

    if-nez v11, :cond_c

    return v7

    :cond_c
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_d
    if-le v10, v5, :cond_10

    :goto_6
    if-gt v6, v3, :cond_f

    aget-char v1, v0, v6

    if-eq v1, v9, :cond_e

    return v7

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_f
    return v4

    :cond_10
    :goto_7
    if-eq v6, v3, :cond_19

    if-gt v10, v5, :cond_19

    add-int/lit8 v11, v6, 0x1

    move v12, v11

    :goto_8
    const/4 v13, -0x1

    if-gt v12, v3, :cond_12

    aget-char v14, v0, v12

    if-ne v14, v9, :cond_11

    goto :goto_9

    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_12
    const/4 v12, -0x1

    :goto_9
    if-ne v12, v11, :cond_13

    move v6, v11

    goto :goto_7

    :cond_13
    sub-int v11, v12, v6

    sub-int/2addr v11, v4

    sub-int v14, v5, v10

    add-int/2addr v14, v4

    const/4 v15, 0x0

    :goto_a
    sub-int v9, v14, v11

    if-gt v15, v9, :cond_17

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v11, :cond_16

    add-int v16, v6, v9

    add-int/lit8 v16, v16, 0x1

    aget-char v4, v0, v16

    if-eq v4, v8, :cond_15

    add-int v16, v10, v15

    add-int v16, v16, v9

    aget-char v8, v1, v16

    invoke-static {v4, v8, v2}, Lorg/codehaus/plexus/util/SelectorUtils;->equals(CCZ)Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_c

    :cond_14
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x1

    const/16 v8, 0x3f

    goto :goto_a

    :cond_15
    :goto_c
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x1

    const/16 v8, 0x3f

    goto :goto_b

    :cond_16
    add-int v4, v10, v15

    goto :goto_d

    :cond_17
    const/4 v4, -0x1

    :goto_d
    if-ne v4, v13, :cond_18

    return v7

    :cond_18
    add-int v10, v4, v11

    move v6, v12

    const/4 v4, 0x1

    const/16 v8, 0x3f

    const/16 v9, 0x2a

    goto :goto_7

    :cond_19
    :goto_e
    if-gt v6, v3, :cond_1b

    aget-char v1, v0, v6

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_1a

    return v7

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_1b
    const/4 v1, 0x1

    return v1
.end method

.method static matchAntPathPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    invoke-static {p0, p1, p2}, Lorg/codehaus/plexus/util/SelectorUtils;->separatorPatternStartSlashMismatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p2}, Lorg/codehaus/plexus/util/SelectorUtils;->tokenizePathToString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lorg/codehaus/plexus/util/SelectorUtils;->tokenizePathToString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lorg/codehaus/plexus/util/SelectorUtils;->matchAntPathPattern([Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static matchAntPathPattern(Lorg/codehaus/plexus/util/MatchPattern;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    invoke-static {p0, p1, p2}, Lorg/codehaus/plexus/util/SelectorUtils;->separatorPatternStartSlashMismatch(Lorg/codehaus/plexus/util/MatchPattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/MatchPattern;->getTokenizedPathString()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lorg/codehaus/plexus/util/SelectorUtils;->tokenizePathToString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lorg/codehaus/plexus/util/SelectorUtils;->matchAntPathPattern([Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static matchAntPathPattern([Ljava/lang/String;[Ljava/lang/String;Z)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    array-length v5, v1

    sub-int/2addr v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-gt v7, v3, :cond_1

    if-gt v8, v5, :cond_1

    aget-object v9, v0, v7

    const-string v10, "**"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    aget-object v10, v1, v8

    invoke-static {v9, v10, v2}, Lorg/codehaus/plexus/util/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    return v6

    :cond_0
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    if-le v8, v5, :cond_4

    :goto_1
    if-gt v7, v3, :cond_3

    aget-object v1, v0, v7

    const-string v2, "**"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v6

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    return v4

    :cond_4
    if-le v7, v3, :cond_5

    return v6

    :cond_5
    :goto_2
    if-gt v7, v3, :cond_7

    if-gt v8, v5, :cond_7

    aget-object v9, v0, v3

    const-string v10, "**"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    aget-object v10, v1, v5

    invoke-static {v9, v10, v2}, Lorg/codehaus/plexus/util/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_6

    return v6

    :cond_6
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_7
    if-le v8, v5, :cond_a

    :goto_3
    if-gt v7, v3, :cond_9

    aget-object v1, v0, v7

    const-string v2, "**"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v6

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    return v4

    :cond_a
    :goto_4
    if-eq v7, v3, :cond_12

    if-gt v8, v5, :cond_12

    add-int/lit8 v9, v7, 0x1

    move v10, v9

    :goto_5
    const/4 v11, -0x1

    if-gt v10, v3, :cond_c

    aget-object v12, v0, v10

    const-string v13, "**"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_c
    const/4 v10, -0x1

    :goto_6
    if-ne v10, v9, :cond_d

    move v7, v9

    goto :goto_4

    :cond_d
    sub-int v9, v10, v7

    sub-int/2addr v9, v4

    sub-int v12, v5, v8

    add-int/2addr v12, v4

    const/4 v13, 0x0

    :goto_7
    sub-int v14, v12, v9

    if-gt v13, v14, :cond_10

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v9, :cond_f

    add-int v15, v7, v14

    add-int/2addr v15, v4

    aget-object v15, v0, v15

    add-int v16, v8, v13

    add-int v16, v16, v14

    aget-object v4, v1, v16

    invoke-static {v15, v4, v2}, Lorg/codehaus/plexus/util/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_e

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    goto :goto_7

    :cond_f
    add-int v4, v8, v13

    goto :goto_9

    :cond_10
    const/4 v4, -0x1

    :goto_9
    if-ne v4, v11, :cond_11

    return v6

    :cond_11
    add-int v8, v4, v9

    move v7, v10

    const/4 v4, 0x1

    goto :goto_4

    :cond_12
    :goto_a
    if-gt v7, v3, :cond_14

    aget-object v1, v0, v7

    const-string v2, "**"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v6

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method static matchAntPathPattern([[C[[CZ)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    array-length v5, v1

    sub-int/2addr v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-gt v7, v3, :cond_1

    if-gt v8, v5, :cond_1

    aget-object v9, v0, v7

    invoke-static {v9}, Lorg/codehaus/plexus/util/SelectorUtils;->isDoubleStar([C)Z

    move-result v10

    if-nez v10, :cond_1

    aget-object v10, v1, v8

    invoke-static {v9, v10, v2}, Lorg/codehaus/plexus/util/SelectorUtils;->match([C[CZ)Z

    move-result v9

    if-nez v9, :cond_0

    return v6

    :cond_0
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    if-le v8, v5, :cond_4

    :goto_1
    if-gt v7, v3, :cond_3

    aget-object v1, v0, v7

    invoke-static {v1}, Lorg/codehaus/plexus/util/SelectorUtils;->isDoubleStar([C)Z

    move-result v1

    if-nez v1, :cond_2

    return v6

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    return v4

    :cond_4
    if-le v7, v3, :cond_5

    return v6

    :cond_5
    :goto_2
    if-gt v7, v3, :cond_7

    if-gt v8, v5, :cond_7

    aget-object v9, v0, v3

    invoke-static {v9}, Lorg/codehaus/plexus/util/SelectorUtils;->isDoubleStar([C)Z

    move-result v10

    if-nez v10, :cond_7

    aget-object v10, v1, v5

    invoke-static {v9, v10, v2}, Lorg/codehaus/plexus/util/SelectorUtils;->match([C[CZ)Z

    move-result v9

    if-nez v9, :cond_6

    return v6

    :cond_6
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_7
    if-le v8, v5, :cond_a

    :goto_3
    if-gt v7, v3, :cond_9

    aget-object v1, v0, v7

    invoke-static {v1}, Lorg/codehaus/plexus/util/SelectorUtils;->isDoubleStar([C)Z

    move-result v1

    if-nez v1, :cond_8

    return v6

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    return v4

    :cond_a
    :goto_4
    if-eq v7, v3, :cond_12

    if-gt v8, v5, :cond_12

    add-int/lit8 v9, v7, 0x1

    move v10, v9

    :goto_5
    const/4 v11, -0x1

    if-gt v10, v3, :cond_c

    aget-object v12, v0, v10

    invoke-static {v12}, Lorg/codehaus/plexus/util/SelectorUtils;->isDoubleStar([C)Z

    move-result v12

    if-eqz v12, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_c
    const/4 v10, -0x1

    :goto_6
    if-ne v10, v9, :cond_d

    move v7, v9

    goto :goto_4

    :cond_d
    sub-int v9, v10, v7

    sub-int/2addr v9, v4

    sub-int v12, v5, v8

    add-int/2addr v12, v4

    const/4 v13, 0x0

    :goto_7
    sub-int v14, v12, v9

    if-gt v13, v14, :cond_10

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v9, :cond_f

    add-int v15, v7, v14

    add-int/2addr v15, v4

    aget-object v15, v0, v15

    add-int v16, v8, v13

    add-int v16, v16, v14

    aget-object v4, v1, v16

    invoke-static {v15, v4, v2}, Lorg/codehaus/plexus/util/SelectorUtils;->match([C[CZ)Z

    move-result v4

    if-eqz v4, :cond_e

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    goto :goto_7

    :cond_f
    add-int v4, v8, v13

    goto :goto_9

    :cond_10
    const/4 v4, -0x1

    :goto_9
    if-ne v4, v11, :cond_11

    return v6

    :cond_11
    add-int v8, v4, v9

    move v7, v10

    const/4 v4, 0x1

    goto :goto_4

    :cond_12
    :goto_a
    if-gt v7, v3, :cond_14

    aget-object v1, v0, v7

    invoke-static {v1}, Lorg/codehaus/plexus/util/SelectorUtils;->isDoubleStar([C)Z

    move-result v1

    if-nez v1, :cond_13

    return v6

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method static matchAntPathPatternStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    invoke-static {p0, p1, p2}, Lorg/codehaus/plexus/util/SelectorUtils;->separatorPatternStartSlashMismatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p2}, Lorg/codehaus/plexus/util/SelectorUtils;->tokenizePathToString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lorg/codehaus/plexus/util/SelectorUtils;->matchAntPathPatternStart([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static matchAntPathPatternStart(Lorg/codehaus/plexus/util/MatchPattern;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    invoke-static {p0, p1, p2}, Lorg/codehaus/plexus/util/SelectorUtils;->separatorPatternStartSlashMismatch(Lorg/codehaus/plexus/util/MatchPattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/MatchPattern;->getTokenizedPathString()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lorg/codehaus/plexus/util/SelectorUtils;->matchAntPathPatternStart([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static matchAntPathPatternStart([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 11

    invoke-static {p1, p2}, Lorg/codehaus/plexus/util/SelectorUtils;->tokenizePathToString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p0

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    array-length v1, p1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt v3, p2, :cond_1

    if-gt v4, v1, :cond_1

    aget-object v5, p0, v3

    const-string v6, "**"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    aget-object v6, p1, v4

    invoke-static {v5, v6, p3}, Lorg/codehaus/plexus/util/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-gt v4, v1, :cond_3

    if-gt v3, p2, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v0
.end method

.method public static matchPath(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/codehaus/plexus/util/SelectorUtils;->matchPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static matchPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    invoke-static {p0}, Lorg/codehaus/plexus/util/SelectorUtils;->isRegexPrefixedPattern(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/codehaus/plexus/util/SelectorUtils;->isAntPrefixedPattern(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/codehaus/plexus/util/SelectorUtils;->matchAntPathPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static matchPath(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p0, p1, v0, p2}, Lorg/codehaus/plexus/util/SelectorUtils;->matchPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static matchPatternStart(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/codehaus/plexus/util/SelectorUtils;->matchPatternStart(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static matchPatternStart(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    invoke-static {p0}, Lorg/codehaus/plexus/util/SelectorUtils;->isRegexPrefixedPattern(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lorg/codehaus/plexus/util/SelectorUtils;->isAntPrefixedPattern(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/16 v0, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p0, p1, v2, p2}, Lorg/codehaus/plexus/util/SelectorUtils;->matchAntPathPatternStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "/"

    invoke-static {p0, v0, p1, p2}, Lorg/codehaus/plexus/util/SelectorUtils;->matchAntPathPatternStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public static removeWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static separatorPatternStartSlashMismatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static separatorPatternStartSlashMismatch(Lorg/codehaus/plexus/util/MatchPattern;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p2}, Lorg/codehaus/plexus/util/MatchPattern;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static tokenizePathToString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
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
