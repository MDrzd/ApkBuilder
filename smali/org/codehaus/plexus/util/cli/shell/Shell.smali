.class public Lorg/codehaus/plexus/util/cli/shell/Shell;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DEFAULT_QUOTING_TRIGGER_CHARS:[C


# instance fields
.field private argQuoteDelimiter:C

.field private argumentEscapePattern:Ljava/lang/String;

.field private doubleQuotedArgumentEscaped:Z

.field private doubleQuotedExecutableEscaped:Z

.field private exeQuoteDelimiter:C

.field private executable:Ljava/lang/String;

.field private quotedArgumentsEnabled:Z

.field private quotedExecutableEnabled:Z

.field private shellArgs:Ljava/util/List;

.field private shellCommand:Ljava/lang/String;

.field private singleQuotedArgumentEscaped:Z

.field private singleQuotedExecutableEscaped:Z

.field private unconditionallyQuote:Z

.field private workingDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-char v2, v0, v1

    sput-object v0, Lorg/codehaus/plexus/util/cli/shell/Shell;->DEFAULT_QUOTING_TRIGGER_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->shellArgs:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->quotedArgumentsEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->unconditionallyQuote:Z

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->quotedExecutableEnabled:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->doubleQuotedArgumentEscaped:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->singleQuotedArgumentEscaped:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->doubleQuotedExecutableEscaped:Z

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->singleQuotedExecutableEscaped:Z

    const/16 v0, 0x22

    iput-char v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->argQuoteDelimiter:C

    iput-char v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->exeQuoteDelimiter:C

    const-string v0, "\\%s"

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->argumentEscapePattern:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addShellArg(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->shellArgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearArguments()V
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->shellArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lorg/codehaus/plexus/util/cli/shell/Shell;

    invoke-direct {v0}, Lorg/codehaus/plexus/util/cli/shell/Shell;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getExecutable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/plexus/util/cli/shell/Shell;->setExecutable(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getWorkingDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/plexus/util/cli/shell/Shell;->setWorkingDirectory(Ljava/io/File;)V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getShellArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/plexus/util/cli/shell/Shell;->setShellArgs([Ljava/lang/String;)V

    return-object v0
.end method

.method protected getArgumentEscapePattern()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->argumentEscapePattern:Ljava/lang/String;

    return-object v0
.end method

.method protected getArgumentQuoteDelimiter()C
    .registers 2

    iget-char v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->argQuoteDelimiter:C

    return v0
.end method

.method public getCommandLine(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getRawCommandLine(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getEscapeChars(ZZ)[C
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p1, :cond_0

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p2, :cond_1

    const/16 p1, 0x22

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    new-array p1, p1, [C

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p1, v1}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    return-object p1
.end method

.method public getExecutable()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->executable:Ljava/lang/String;

    return-object v0
.end method

.method protected getExecutableQuoteDelimiter()C
    .registers 2

    iget-char v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->exeQuoteDelimiter:C

    return v0
.end method

.method protected getExecutionPreamble()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginalCommandLine(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getRawCommandLine(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getOriginalExecutable()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->executable:Ljava/lang/String;

    return-object v0
.end method

.method protected getQuotingTriggerChars()[C
    .registers 2

    sget-object v0, Lorg/codehaus/plexus/util/cli/shell/Shell;->DEFAULT_QUOTING_TRIGGER_CHARS:[C

    return-object v0
.end method

.method protected getRawCommandLine(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getExecutionPreamble()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->isQuotedExecutableEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getOriginalExecutable()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lorg/codehaus/plexus/util/cli/shell/Shell;->quoteOneItem(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getExecutable()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    array-length p1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p1, :cond_5

    aget-object v4, p2, v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->isQuotedArgumentsEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v4, v2}, Lorg/codehaus/plexus/util/cli/shell/Shell;->quoteOneItem(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getShellArgs()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->shellArgs:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->shellArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->shellArgs:Ljava/util/List;

    iget-object v1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->shellArgs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShellArgsList()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->shellArgs:Ljava/util/List;

    return-object v0
.end method

.method public getShellCommand()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->shellCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getShellCommandLine([Ljava/lang/String;)Ljava/util/List;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getShellCommand()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getShellCommand()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getShellArgs()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getShellArgsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getOriginalExecutable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getCommandLine(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getWorkingDirectory()Ljava/io/File;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->workingDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->workingDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getWorkingDirectoryAsString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->workingDir:Ljava/lang/String;

    return-object v0
.end method

.method protected isDoubleQuotedArgumentEscaped()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->doubleQuotedArgumentEscaped:Z

    return v0
.end method

.method protected isDoubleQuotedExecutableEscaped()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->doubleQuotedExecutableEscaped:Z

    return v0
.end method

.method public isQuotedArgumentsEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->quotedArgumentsEnabled:Z

    return v0
.end method

.method public isQuotedExecutableEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->quotedExecutableEnabled:Z

    return v0
.end method

.method protected isSingleQuotedArgumentEscaped()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->singleQuotedArgumentEscaped:Z

    return v0
.end method

.method protected isSingleQuotedExecutableEscaped()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->singleQuotedExecutableEscaped:Z

    return v0
.end method

.method protected quoteOneItem(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->isSingleQuotedExecutableEscaped()Z

    move-result v0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->isDoubleQuotedExecutableEscaped()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getEscapeChars(ZZ)[C

    move-result-object v4

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getExecutableQuoteDelimiter()C

    move-result p2

    :goto_0
    move v3, p2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getArgumentQuoteDelimiter()C

    move-result p2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getQuotingTriggerChars()[C

    move-result-object v5

    const/16 v6, 0x5c

    iget-boolean v7, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->unconditionallyQuote:Z

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lorg/codehaus/plexus/util/StringUtils;->quoteAndEscape(Ljava/lang/String;C[C[CCZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected setArgumentEscapePattern(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->argumentEscapePattern:Ljava/lang/String;

    return-void
.end method

.method protected setArgumentQuoteDelimiter(C)V
    .registers 2

    iput-char p1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->argQuoteDelimiter:C

    return-void
.end method

.method protected setDoubleQuotedArgumentEscaped(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->doubleQuotedArgumentEscaped:Z

    return-void
.end method

.method protected setDoubleQuotedExecutableEscaped(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->doubleQuotedExecutableEscaped:Z

    return-void
.end method

.method public setExecutable(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x5c

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->executable:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method protected setExecutableQuoteDelimiter(C)V
    .registers 2

    iput-char p1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->exeQuoteDelimiter:C

    return-void
.end method

.method public setQuotedArgumentsEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->quotedArgumentsEnabled:Z

    return-void
.end method

.method public setQuotedExecutableEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->quotedExecutableEnabled:Z

    return-void
.end method

.method public setShellArgs([Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->shellArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->shellArgs:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setShellCommand(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->shellCommand:Ljava/lang/String;

    return-void
.end method

.method protected setSingleQuotedArgumentEscaped(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->singleQuotedArgumentEscaped:Z

    return-void
.end method

.method protected setSingleQuotedExecutableEscaped(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->singleQuotedExecutableEscaped:Z

    return-void
.end method

.method public setUnconditionalQuoting(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->unconditionallyQuote:Z

    return-void
.end method

.method public setWorkingDirectory(Ljava/io/File;)V
    .registers 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->workingDir:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setWorkingDirectory(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/codehaus/plexus/util/cli/shell/Shell;->workingDir:Ljava/lang/String;

    :cond_0
    return-void
.end method
