.class public Lorg/codehaus/plexus/util/DirectoryWalker;
.super Ljava/lang/Object;


# instance fields
.field private baseDir:Ljava/io/File;

.field private baseDirOffset:I

.field private debugEnabled:Z

.field private dirStack:Ljava/util/Stack;

.field private excludes:Ljava/util/List;

.field private includes:Ljava/util/List;

.field private isCaseSensitive:Z

.field private listeners:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->isCaseSensitive:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->debugEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->includes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->excludes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->listeners:Ljava/util/List;

    return-void
.end method

.method private fireDebugMessage(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/plexus/util/DirectoryWalkListener;

    invoke-interface {v1, p1}, Lorg/codehaus/plexus/util/DirectoryWalkListener;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireStep(Ljava/io/File;)V
    .registers 5

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->dirStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;

    invoke-virtual {v0}, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->getPercentage()I

    move-result v0

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/plexus/util/DirectoryWalkListener;

    invoke-interface {v2, v0, p1}, Lorg/codehaus/plexus/util/DirectoryWalkListener;->directoryWalkStep(ILjava/io/File;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireWalkFinished()V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/plexus/util/DirectoryWalkListener;

    invoke-interface {v1}, Lorg/codehaus/plexus/util/DirectoryWalkListener;->directoryWalkFinished()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireWalkStarting()V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/plexus/util/DirectoryWalkListener;

    iget-object v2, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->baseDir:Ljava/io/File;

    invoke-interface {v1, v2}, Lorg/codehaus/plexus/util/DirectoryWalkListener;->directoryWalkStarting(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fixPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :cond_0
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_1

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private isExcluded(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->excludes:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/codehaus/plexus/util/DirectoryWalker;->isMatch(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isIncluded(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->includes:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/codehaus/plexus/util/DirectoryWalker;->isMatch(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isMatch(Ljava/util/List;Ljava/lang/String;)Z
    .registers 5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->isCaseSensitive:Z

    invoke-static {v0, p2, v1}, Lorg/codehaus/plexus/util/SelectorUtils;->matchPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private relativeToBaseDir(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->baseDirOffset:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private scanDir(Ljava/io/File;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;

    array-length v2, v0

    invoke-direct {v1, p0, p1, v2}, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;-><init>(Lorg/codehaus/plexus/util/DirectoryWalker;Ljava/io/File;I)V

    iget-object p1, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->dirStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->percentageOffset:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    :goto_0
    iput-wide v2, v1, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->percentageSize:D

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->dirStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->getNextPercentageOffset()D

    move-result-wide v2

    iput-wide v2, v1, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->percentageOffset:D

    invoke-virtual {p1}, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->getNextPercentageSize()D

    move-result-wide v2

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->dirStack:Ljava/util/Stack;

    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    :goto_2
    array-length v2, v0

    if-ge p1, v2, :cond_5

    iput p1, v1, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->index:I

    aget-object v2, v0, p1

    invoke-direct {p0, v2}, Lorg/codehaus/plexus/util/DirectoryWalker;->relativeToBaseDir(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codehaus/plexus/util/DirectoryWalker;->isExcluded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is excluded."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codehaus/plexus/util/DirectoryWalker;->fireDebugMessage(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    aget-object v3, v0, p1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v2, v0, p1

    invoke-direct {p0, v2}, Lorg/codehaus/plexus/util/DirectoryWalker;->scanDir(Ljava/io/File;)V

    goto :goto_3

    :cond_3
    invoke-direct {p0, v2}, Lorg/codehaus/plexus/util/DirectoryWalker;->isIncluded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    aget-object v2, v0, p1

    invoke-direct {p0, v2}, Lorg/codehaus/plexus/util/DirectoryWalker;->fireStep(Ljava/io/File;)V

    :cond_4
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->dirStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addDirectoryWalkListener(Lorg/codehaus/plexus/util/DirectoryWalkListener;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addExclude(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->excludes:Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/DirectoryWalker;->fixPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInclude(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->includes:Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/DirectoryWalker;->fixPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSCMExcludes()V
    .registers 5

    sget-object v0, Lorg/codehaus/plexus/util/DirectoryScanner;->DEFAULTEXCLUDES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lorg/codehaus/plexus/util/DirectoryWalker;->addExclude(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBaseDir()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->baseDir:Ljava/io/File;

    return-object v0
.end method

.method public getExcludes()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->excludes:Ljava/util/List;

    return-object v0
.end method

.method public getIncludes()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->includes:Ljava/util/List;

    return-object v0
.end method

.method public removeDirectoryWalkListener(Lorg/codehaus/plexus/util/DirectoryWalkListener;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scan()V
    .registers 5

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->baseDir:Ljava/io/File;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->baseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->baseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->includes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "**"

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/DirectoryWalker;->addInclude(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->debugEnabled:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DirectoryWalker Scan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  Base Dir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->baseDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  Includes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->includes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n    - \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "\n  Excludes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->excludes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n    - \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/DirectoryWalker;->fireDebugMessage(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lorg/codehaus/plexus/util/DirectoryWalker;->fireWalkStarting()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->dirStack:Ljava/util/Stack;

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->baseDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/DirectoryWalker;->scanDir(Ljava/io/File;)V

    invoke-direct {p0}, Lorg/codehaus/plexus/util/DirectoryWalker;->fireWalkFinished()V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scan Failure.  BaseDir is not a directory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scan Failure.  BaseDir does not exist."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scan Failure.  BaseDir not specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBaseDir(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->baseDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->baseDirOffset:I

    return-void
.end method

.method public setDebugMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->debugEnabled:Z

    return-void
.end method

.method public setExcludes(Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->excludes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->excludes:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/DirectoryWalker;->fixPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIncludes(Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->includes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryWalker;->includes:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/DirectoryWalker;->fixPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
