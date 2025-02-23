.class public Lorg/codehaus/plexus/util/DirectoryScanner;
.super Lorg/codehaus/plexus/util/AbstractScanner;


# instance fields
.field protected basedir:Ljava/io/File;

.field protected dirsDeselected:Ljava/util/Vector;

.field protected dirsExcluded:Ljava/util/Vector;

.field protected dirsIncluded:Ljava/util/Vector;

.field protected dirsNotIncluded:Ljava/util/Vector;

.field protected everythingIncluded:Z

.field protected filesDeselected:Ljava/util/Vector;

.field protected filesExcluded:Ljava/util/Vector;

.field protected filesIncluded:Ljava/util/Vector;

.field protected filesNotIncluded:Ljava/util/Vector;

.field private followSymlinks:Z

.field protected haveSlowResults:Z

.field private final tokenizedEmpty:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lorg/codehaus/plexus/util/AbstractScanner;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->haveSlowResults:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->followSymlinks:Z

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->everythingIncluded:Z

    const-string v0, ""

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/codehaus/plexus/util/MatchPattern;->tokenizePathToString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->tokenizedEmpty:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBasedir()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->basedir:Ljava/io/File;

    return-object v0
.end method

.method public getDeselectedDirectories()[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/DirectoryScanner;->slowScan()V

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsDeselected:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsDeselected:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0
.end method

.method public getDeselectedFiles()[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/DirectoryScanner;->slowScan()V

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->filesDeselected:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->filesDeselected:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0
.end method

.method public getExcludedDirectories()[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/DirectoryScanner;->slowScan()V

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0
.end method

.method public getExcludedFiles()[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/DirectoryScanner;->slowScan()V

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->filesExcluded:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->filesExcluded:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIncludedDirectories()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsIncluded:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsIncluded:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIncludedFiles()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->filesIncluded:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->filesIncluded:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0
.end method

.method public getNotIncludedDirectories()[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/DirectoryScanner;->slowScan()V

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsNotIncluded:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsNotIncluded:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0
.end method

.method public getNotIncludedFiles()[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/DirectoryScanner;->slowScan()V

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->filesNotIncluded:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->filesNotIncluded:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0
.end method

.method public isEverythingIncluded()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->everythingIncluded:Z

    return v0
.end method

.method public isParentSymbolicLink(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    invoke-static {}, Lorg/codehaus/plexus/util/Java7Detector;->isJava7()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/codehaus/plexus/util/NioFiles;->isSymbolicLink(Ljava/io/File;)Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected isSelected(Ljava/lang/String;Ljava/io/File;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public isSymbolicLink(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    invoke-static {}, Lorg/codehaus/plexus/util/Java7Detector;->isJava7()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/codehaus/plexus/util/NioFiles;->isSymbolicLink(Ljava/io/File;)Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public scan()V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->basedir:Ljava/io/File;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/DirectoryScanner;->setupDefaultFilters()V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/DirectoryScanner;->setupMatchPatterns()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->filesIncluded:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->filesNotIncluded:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->filesExcluded:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->filesDeselected:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsIncluded:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsNotIncluded:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsDeselected:Ljava/util/Vector;

    const-string v0, ""

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->tokenizedEmpty:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/plexus/util/DirectoryScanner;->isIncluded(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->tokenizedEmpty:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/plexus/util/DirectoryScanner;->isExcluded(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/plexus/util/DirectoryScanner;->isSelected(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsIncluded:Ljava/util/Vector;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsDeselected:Ljava/util/Vector;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsNotIncluded:Ljava/util/Vector;

    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->basedir:Ljava/io/File;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/plexus/util/DirectoryScanner;->scandir(Ljava/io/File;Ljava/lang/String;Z)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "basedir "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "basedir "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No basedir set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected scandir(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 12

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    :cond_0
    iget-boolean v2, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->followSymlinks:Z

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lorg/codehaus/plexus/util/DirectoryScanner;->isParentSymbolicLink(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    :goto_1
    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    iget-object v7, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->filesExcluded:Ljava/util/Vector;

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v6, "IOException caught while checking for links, couldn\'t get canonical path!"

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_4
    array-length v2, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_e

    aget-object v4, v0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/codehaus/plexus/util/MatchPattern;->tokenizePathToString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0, v5, v6}, Lorg/codehaus/plexus/util/DirectoryScanner;->isIncluded(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, v5, v6}, Lorg/codehaus/plexus/util/DirectoryScanner;->isExcluded(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0, v5, v7}, Lorg/codehaus/plexus/util/DirectoryScanner;->isSelected(Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsIncluded:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz p3, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :cond_5
    iput-boolean v1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->everythingIncluded:Z

    iget-object v4, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsDeselected:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz p3, :cond_8

    invoke-virtual {p0, v5}, Lorg/codehaus/plexus/util/DirectoryScanner;->couldHoldIncluded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :cond_6
    iput-boolean v1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->everythingIncluded:Z

    iget-object v4, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz p3, :cond_8

    invoke-virtual {p0, v5}, Lorg/codehaus/plexus/util/DirectoryScanner;->couldHoldIncluded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :cond_7
    iput-boolean v1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->everythingIncluded:Z

    iget-object v4, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsNotIncluded:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz p3, :cond_8

    invoke-virtual {p0, v5}, Lorg/codehaus/plexus/util/DirectoryScanner;->couldHoldIncluded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v7, v4, p3}, Lorg/codehaus/plexus/util/DirectoryScanner;->scandir(Ljava/io/File;Ljava/lang/String;Z)V

    :cond_8
    if-nez p3, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v7, v4, p3}, Lorg/codehaus/plexus/util/DirectoryScanner;->scandir(Ljava/io/File;Ljava/lang/String;Z)V

    goto :goto_6

    :cond_9
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p0, v5, v6}, Lorg/codehaus/plexus/util/DirectoryScanner;->isIncluded(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0, v5, v6}, Lorg/codehaus/plexus/util/DirectoryScanner;->isExcluded(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0, v5, v7}, Lorg/codehaus/plexus/util/DirectoryScanner;->isSelected(Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->filesIncluded:Ljava/util/Vector;

    goto :goto_5

    :cond_a
    iput-boolean v1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->everythingIncluded:Z

    iget-object v4, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->filesDeselected:Ljava/util/Vector;

    goto :goto_5

    :cond_b
    iput-boolean v1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->everythingIncluded:Z

    iget-object v4, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->filesExcluded:Ljava/util/Vector;

    goto :goto_5

    :cond_c
    iput-boolean v1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->everythingIncluded:Z

    iget-object v4, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->filesNotIncluded:Ljava/util/Vector;

    :goto_5
    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_d
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_e
    return-void
.end method

.method public setBasedir(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->basedir:Ljava/io/File;

    return-void
.end method

.method public setBasedir(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/io/File;

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x5c

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/DirectoryScanner;->setBasedir(Ljava/io/File;)V

    return-void
.end method

.method public setFollowSymlinks(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->followSymlinks:Z

    return-void
.end method

.method protected slowScan()V
    .registers 9

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->haveSlowResults:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsExcluded:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsNotIncluded:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->dirsNotIncluded:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    invoke-virtual {p0, v5}, Lorg/codehaus/plexus/util/DirectoryScanner;->couldHoldIncluded(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v6, v5, v3}, Lorg/codehaus/plexus/util/DirectoryScanner;->scandir(Ljava/io/File;Ljava/lang/String;Z)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    array-length v0, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    aget-object v4, v1, v2

    invoke-virtual {p0, v4}, Lorg/codehaus/plexus/util/DirectoryScanner;->couldHoldIncluded(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->basedir:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4, v3}, Lorg/codehaus/plexus/util/DirectoryScanner;->scandir(Ljava/io/File;Ljava/lang/String;Z)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/DirectoryScanner;->haveSlowResults:Z

    return-void
.end method
