.class public abstract Lorg/codehaus/plexus/util/AbstractScanner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/codehaus/plexus/util/Scanner;


# static fields
.field public static final DEFAULTEXCLUDES:[Ljava/lang/String;


# instance fields
.field protected excludes:[Ljava/lang/String;

.field private excludesPatterns:Lorg/codehaus/plexus/util/MatchPatterns;

.field protected includes:[Ljava/lang/String;

.field private includesPatterns:Lorg/codehaus/plexus/util/MatchPatterns;

.field protected isCaseSensitive:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "**/*~"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "**/#*#"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "**/.#*"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "**/%*%"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "**/._*"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "**/CVS"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "**/CVS/**"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "**/.cvsignore"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "**/RCS"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "**/RCS/**"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "**/SCCS"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "**/SCCS/**"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "**/vssver.scc"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "**/project.pj"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "**/.svn"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "**/.svn/**"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "**/.arch-ids"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "**/.arch-ids/**"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "**/.bzr"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "**/.bzr/**"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "**/.MySCMServerInfo"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "**/.DS_Store"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "**/.metadata"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "**/.metadata/**"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "**/.hg"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "**/.hgignore"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "**/.hg/**"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "**/.git"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "**/.gitignore"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "**/.gitattributes"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "**/.git/**"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "**/BitKeeper"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "**/BitKeeper/**"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "**/ChangeSet"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "**/ChangeSet/**"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "**/_darcs"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "**/_darcs/**"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "**/.darcsrepo"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "**/.darcsrepo/**"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "**/-darcs-backup*"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "**/.darcs-temp-mail"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sput-object v0, Lorg/codehaus/plexus/util/AbstractScanner;->DEFAULTEXCLUDES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/AbstractScanner;->isCaseSensitive:Z

    return-void
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/codehaus/plexus/util/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected static match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/codehaus/plexus/util/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected static matchPath(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/codehaus/plexus/util/SelectorUtils;->matchPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected static matchPath(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/codehaus/plexus/util/SelectorUtils;->matchPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected static matchPatternStart(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/codehaus/plexus/util/SelectorUtils;->matchPatternStart(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected static matchPatternStart(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/codehaus/plexus/util/SelectorUtils;->matchPatternStart(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private normalizePattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "%regex["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x5c

    if-eqz v0, :cond_1

    sget-char v0, Ljava/io/File;->separatorChar:C

    if-ne v0, v1, :cond_0

    const-string v0, "/"

    const-string v1, "\\\\"

    :goto_0
    invoke-static {p1, v0, v1}, Lorg/codehaus/plexus/util/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_0
    const-string v0, "\\\\"

    const-string v1, "/"

    goto :goto_0

    :cond_1
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x2f

    :goto_1
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "**"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_2
    return-object p1
.end method


# virtual methods
.method public addDefaultExcludes()V
    .registers 8

    iget-object v0, p0, Lorg/codehaus/plexus/util/AbstractScanner;->excludes:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/AbstractScanner;->excludes:[Ljava/lang/String;

    array-length v0, v0

    :goto_0
    sget-object v2, Lorg/codehaus/plexus/util/AbstractScanner;->DEFAULTEXCLUDES:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-lez v0, :cond_1

    iget-object v3, p0, Lorg/codehaus/plexus/util/AbstractScanner;->excludes:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_1
    sget-object v3, Lorg/codehaus/plexus/util/AbstractScanner;->DEFAULTEXCLUDES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    add-int v3, v1, v0

    sget-object v4, Lorg/codehaus/plexus/util/AbstractScanner;->DEFAULTEXCLUDES:[Ljava/lang/String;

    aget-object v4, v4, v1

    const/16 v5, 0x2f

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lorg/codehaus/plexus/util/AbstractScanner;->excludes:[Ljava/lang/String;

    return-void
.end method

.method protected couldHoldIncluded(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lorg/codehaus/plexus/util/AbstractScanner;->includesPatterns:Lorg/codehaus/plexus/util/MatchPatterns;

    iget-boolean v1, p0, Lorg/codehaus/plexus/util/AbstractScanner;->isCaseSensitive:Z

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/plexus/util/MatchPatterns;->matchesPatternStart(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected isExcluded(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lorg/codehaus/plexus/util/AbstractScanner;->excludesPatterns:Lorg/codehaus/plexus/util/MatchPatterns;

    iget-boolean v1, p0, Lorg/codehaus/plexus/util/AbstractScanner;->isCaseSensitive:Z

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/plexus/util/MatchPatterns;->matches(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected isExcluded(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lorg/codehaus/plexus/util/AbstractScanner;->excludesPatterns:Lorg/codehaus/plexus/util/MatchPatterns;

    iget-boolean v1, p0, Lorg/codehaus/plexus/util/AbstractScanner;->isCaseSensitive:Z

    invoke-virtual {v0, p1, p2, v1}, Lorg/codehaus/plexus/util/MatchPatterns;->matches(Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected isIncluded(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lorg/codehaus/plexus/util/AbstractScanner;->includesPatterns:Lorg/codehaus/plexus/util/MatchPatterns;

    iget-boolean v1, p0, Lorg/codehaus/plexus/util/AbstractScanner;->isCaseSensitive:Z

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/plexus/util/MatchPatterns;->matches(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected isIncluded(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lorg/codehaus/plexus/util/AbstractScanner;->includesPatterns:Lorg/codehaus/plexus/util/MatchPatterns;

    iget-boolean v1, p0, Lorg/codehaus/plexus/util/AbstractScanner;->isCaseSensitive:Z

    invoke-virtual {v0, p1, p2, v1}, Lorg/codehaus/plexus/util/MatchPatterns;->matches(Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setCaseSensitive(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/plexus/util/AbstractScanner;->isCaseSensitive:Z

    return-void
.end method

.method public setExcludes([Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/codehaus/plexus/util/AbstractScanner;->excludes:[Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lorg/codehaus/plexus/util/AbstractScanner;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public setIncludes([Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/codehaus/plexus/util/AbstractScanner;->includes:[Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lorg/codehaus/plexus/util/AbstractScanner;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0
.end method

.method protected setupDefaultFilters()V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/plexus/util/AbstractScanner;->includes:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/plexus/util/AbstractScanner;->includes:[Ljava/lang/String;

    iget-object v0, p0, Lorg/codehaus/plexus/util/AbstractScanner;->includes:[Ljava/lang/String;

    const-string v2, "**"

    aput-object v2, v0, v1

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/AbstractScanner;->excludes:[Ljava/lang/String;

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/plexus/util/AbstractScanner;->excludes:[Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected setupMatchPatterns()V
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/AbstractScanner;->includes:[Ljava/lang/String;

    invoke-static {v0}, Lorg/codehaus/plexus/util/MatchPatterns;->from([Ljava/lang/String;)Lorg/codehaus/plexus/util/MatchPatterns;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/plexus/util/AbstractScanner;->includesPatterns:Lorg/codehaus/plexus/util/MatchPatterns;

    iget-object v0, p0, Lorg/codehaus/plexus/util/AbstractScanner;->excludes:[Ljava/lang/String;

    invoke-static {v0}, Lorg/codehaus/plexus/util/MatchPatterns;->from([Ljava/lang/String;)Lorg/codehaus/plexus/util/MatchPatterns;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/plexus/util/AbstractScanner;->excludesPatterns:Lorg/codehaus/plexus/util/MatchPatterns;

    return-void
.end method
