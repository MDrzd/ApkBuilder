.class public Lorg/codehaus/plexus/util/cli/shell/BourneShell;
.super Lorg/codehaus/plexus/util/cli/shell/Shell;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/cli/shell/BourneShell;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    invoke-direct {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/cli/shell/BourneShell;->setUnconditionalQuoting(Z)V

    const-string v1, "/bin/sh"

    invoke-virtual {p0, v1}, Lorg/codehaus/plexus/util/cli/shell/BourneShell;->setShellCommand(Ljava/lang/String;)V

    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Lorg/codehaus/plexus/util/cli/shell/BourneShell;->setArgumentQuoteDelimiter(C)V

    invoke-virtual {p0, v1}, Lorg/codehaus/plexus/util/cli/shell/BourneShell;->setExecutableQuoteDelimiter(C)V

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/cli/shell/BourneShell;->setSingleQuotedArgumentEscaped(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/codehaus/plexus/util/cli/shell/BourneShell;->setSingleQuotedExecutableEscaped(Z)V

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/cli/shell/BourneShell;->setQuotedExecutableEnabled(Z)V

    const-string v0, "\'\\%s\'"

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/cli/shell/BourneShell;->setArgumentEscapePattern(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "-l"

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/cli/shell/BourneShell;->addShellArg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getExecutable()Ljava/lang/String;
    .registers 3

    const-string v0, "windows"

    invoke-static {v0}, Lorg/codehaus/plexus/util/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getExecutable()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getOriginalExecutable()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/plexus/util/cli/shell/BourneShell;->quoteOneItem(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getExecutionPreamble()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/BourneShell;->getWorkingDirectoryAsString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/BourneShell;->getWorkingDirectoryAsString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/codehaus/plexus/util/cli/shell/BourneShell;->quoteOneItem(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " && "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShellArgs()[Ljava/lang/String;
    .registers 5

    invoke-super {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getShellArgs()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    :cond_0
    array-length v2, v0

    if-lez v2, :cond_1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string v3, "-c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    const-string v1, "-c"

    aput-object v1, v2, v0

    move-object v0, v2

    :cond_1
    return-object v0
.end method

.method public getShellArgsList()Ljava/util/List;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getShellArgsList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const-string v1, "-c"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected quoteOneItem(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    const-string v1, "\'\"\'\"\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
