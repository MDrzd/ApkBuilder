.class public Lorg/codehaus/plexus/util/cli/Commandline;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final OS_NAME:Ljava/lang/String; = "os.name"

.field protected static final WINDOWS:Ljava/lang/String; = "Windows"


# instance fields
.field protected arguments:Ljava/util/Vector;

.field protected envVars:Ljava/util/Map;

.field protected executable:Ljava/lang/String;

.field private pid:J

.field private shell:Lorg/codehaus/plexus/util/cli/shell/Shell;

.field private workingDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->arguments:Ljava/util/Vector;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->envVars:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->pid:J

    invoke-direct {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->setDefaultShell()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->arguments:Ljava/util/Vector;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->envVars:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->pid:J

    invoke-direct {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->setDefaultShell()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->translateCommandline(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error translating Commandline."

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/cli/Commandline;->setExecutable(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->createArgument()Lorg/codehaus/plexus/util/cli/Commandline$Argument;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/codehaus/plexus/util/cli/Commandline$Argument;->setValue(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/plexus/util/cli/shell/Shell;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->arguments:Ljava/util/Vector;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->envVars:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->pid:J

    iput-object p2, p0, Lorg/codehaus/plexus/util/cli/Commandline;->shell:Lorg/codehaus/plexus/util/cli/shell/Shell;

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->translateCommandline(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error translating Commandline."

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    aget-object p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/codehaus/plexus/util/cli/Commandline;->setExecutable(Ljava/lang/String;)V

    const/4 p2, 0x1

    :goto_1
    array-length v0, p1

    if-ge p2, v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->createArgument()Lorg/codehaus/plexus/util/cli/Commandline$Argument;

    move-result-object v0

    aget-object v1, p1, p2

    invoke-virtual {v0, v1}, Lorg/codehaus/plexus/util/cli/Commandline$Argument;->setValue(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/plexus/util/cli/shell/Shell;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->arguments:Ljava/util/Vector;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->envVars:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->pid:J

    iput-object p1, p0, Lorg/codehaus/plexus/util/cli/Commandline;->shell:Lorg/codehaus/plexus/util/cli/shell/Shell;

    return-void
.end method

.method public static quoteArgument(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setDefaultShell()V
    .registers 2

    const-string v0, "windows"

    invoke-static {v0}, Lorg/codehaus/plexus/util/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "win9x"

    invoke-static {v0}, Lorg/codehaus/plexus/util/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/codehaus/plexus/util/cli/shell/CommandShell;

    invoke-direct {v0}, Lorg/codehaus/plexus/util/cli/shell/CommandShell;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/cli/Commandline;->setShell(Lorg/codehaus/plexus/util/cli/shell/Shell;)V

    return-void

    :cond_0
    new-instance v0, Lorg/codehaus/plexus/util/cli/shell/CmdShell;

    invoke-direct {v0}, Lorg/codehaus/plexus/util/cli/shell/CmdShell;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/codehaus/plexus/util/cli/shell/BourneShell;

    invoke-direct {v0}, Lorg/codehaus/plexus/util/cli/shell/BourneShell;-><init>()V

    goto :goto_0
.end method

.method public static toString([Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static translateCommandline(Ljava/lang/String;)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->translateCommandline(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private verifyShellState()V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->shell:Lorg/codehaus/plexus/util/cli/shell/Shell;

    invoke-virtual {v0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getWorkingDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->shell:Lorg/codehaus/plexus/util/cli/shell/Shell;

    iget-object v1, p0, Lorg/codehaus/plexus/util/cli/Commandline;->workingDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/codehaus/plexus/util/cli/shell/Shell;->setWorkingDirectory(Ljava/io/File;)V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->shell:Lorg/codehaus/plexus/util/cli/shell/Shell;

    invoke-virtual {v0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getOriginalExecutable()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->shell:Lorg/codehaus/plexus/util/cli/shell/Shell;

    iget-object v1, p0, Lorg/codehaus/plexus/util/cli/Commandline;->executable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codehaus/plexus/util/cli/shell/Shell;->setExecutable(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addArg(Lorg/codehaus/plexus/util/cli/Arg;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/plexus/util/cli/Commandline;->addArg(Lorg/codehaus/plexus/util/cli/Arg;Z)V

    return-void
.end method

.method public addArg(Lorg/codehaus/plexus/util/cli/Arg;Z)V
    .registers 4

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/codehaus/plexus/util/cli/Commandline;->arguments:Ljava/util/Vector;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    return-void

    :cond_0
    iget-object p2, p0, Lorg/codehaus/plexus/util/cli/Commandline;->arguments:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addArguments([Ljava/lang/String;)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->createArgument()Lorg/codehaus/plexus/util/cli/Commandline$Argument;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/codehaus/plexus/util/cli/Commandline$Argument;->setValue(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addEnvironment(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->envVars:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addSystemEnvironment()V
    .registers 5

    invoke-static {}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->getSystemEnvVars()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/codehaus/plexus/util/cli/Commandline;->envVars:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/plexus/util/cli/Commandline;->addEnvironment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clear()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->executable:Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->workingDir:Ljava/io/File;

    iget-object v1, p0, Lorg/codehaus/plexus/util/cli/Commandline;->shell:Lorg/codehaus/plexus/util/cli/shell/Shell;

    invoke-virtual {v1, v0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->setExecutable(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->shell:Lorg/codehaus/plexus/util/cli/shell/Shell;

    invoke-virtual {v0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->clearArguments()V

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->arguments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public clearArgs()V
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->arguments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lorg/codehaus/plexus/util/cli/Commandline;

    iget-object v1, p0, Lorg/codehaus/plexus/util/cli/Commandline;->shell:Lorg/codehaus/plexus/util/cli/shell/Shell;

    invoke-virtual {v1}, Lorg/codehaus/plexus/util/cli/shell/Shell;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/plexus/util/cli/shell/Shell;

    invoke-direct {v0, v1}, Lorg/codehaus/plexus/util/cli/Commandline;-><init>(Lorg/codehaus/plexus/util/cli/shell/Shell;)V

    iget-object v1, p0, Lorg/codehaus/plexus/util/cli/Commandline;->executable:Ljava/lang/String;

    iput-object v1, v0, Lorg/codehaus/plexus/util/cli/Commandline;->executable:Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/cli/Commandline;->workingDir:Ljava/io/File;

    iput-object v1, v0, Lorg/codehaus/plexus/util/cli/Commandline;->workingDir:Ljava/io/File;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/plexus/util/cli/Commandline;->addArguments([Ljava/lang/String;)V

    return-object v0
.end method

.method public createArg()Lorg/codehaus/plexus/util/cli/Arg;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/cli/Commandline;->createArg(Z)Lorg/codehaus/plexus/util/cli/Arg;

    move-result-object v0

    return-object v0
.end method

.method public createArg(Z)Lorg/codehaus/plexus/util/cli/Arg;
    .registers 4

    new-instance v0, Lorg/codehaus/plexus/util/cli/Commandline$Argument;

    invoke-direct {v0}, Lorg/codehaus/plexus/util/cli/Commandline$Argument;-><init>()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/codehaus/plexus/util/cli/Commandline;->arguments:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/codehaus/plexus/util/cli/Commandline;->arguments:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public createArgument()Lorg/codehaus/plexus/util/cli/Commandline$Argument;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/cli/Commandline;->createArgument(Z)Lorg/codehaus/plexus/util/cli/Commandline$Argument;

    move-result-object v0

    return-object v0
.end method

.method public createArgument(Z)Lorg/codehaus/plexus/util/cli/Commandline$Argument;
    .registers 4

    new-instance v0, Lorg/codehaus/plexus/util/cli/Commandline$Argument;

    invoke-direct {v0}, Lorg/codehaus/plexus/util/cli/Commandline$Argument;-><init>()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/codehaus/plexus/util/cli/Commandline;->arguments:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/codehaus/plexus/util/cli/Commandline;->arguments:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public createMarker()Lorg/codehaus/plexus/util/cli/Commandline$Marker;
    .registers 3

    new-instance v0, Lorg/codehaus/plexus/util/cli/Commandline$Marker;

    iget-object v1, p0, Lorg/codehaus/plexus/util/cli/Commandline;->arguments:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/plexus/util/cli/Commandline$Marker;-><init>(Lorg/codehaus/plexus/util/cli/Commandline;I)V

    return-object v0
.end method

.method public execute()Ljava/lang/Process;
    .registers 5

    invoke-direct {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->verifyShellState()V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->getEnvironmentVariables()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/plexus/util/cli/Commandline;->shell:Lorg/codehaus/plexus/util/cli/shell/Shell;

    invoke-virtual {v1}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getWorkingDirectory()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Lorg/codehaus/plexus/util/cli/CommandLineException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Path \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" does not specify a directory."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/plexus/util/cli/CommandLineException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/codehaus/plexus/util/cli/CommandLineException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Working directory \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" does not exist!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/plexus/util/cli/CommandLineException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v1, Lorg/codehaus/plexus/util/cli/CommandLineException;

    const-string v2, "Error while executing process."

    invoke-direct {v1, v2, v0}, Lorg/codehaus/plexus/util/cli/CommandLineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getArguments()[Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lorg/codehaus/plexus/util/cli/Commandline;->arguments:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/codehaus/plexus/util/cli/Commandline;->arguments:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/codehaus/plexus/util/cli/Commandline;->arguments:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/plexus/util/cli/Arg;

    invoke-interface {v3}, Lorg/codehaus/plexus/util/cli/Arg;->getParts()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1
.end method

.method public getCommandline()[Ljava/lang/String;
    .registers 6

    const-string v0, "windows"

    invoke-static {v0}, Lorg/codehaus/plexus/util/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->getShellCommandline()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->getLiteralExecutable()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    array-length v1, v0

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getEnvironmentVariables()[Ljava/lang/String;
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->addSystemEnvironment()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->envVars:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/codehaus/plexus/util/cli/Commandline;->envVars:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/codehaus/plexus/util/cli/Commandline;->envVars:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/codehaus/plexus/util/cli/CommandLineException;

    const-string v2, "Error setting up environmental variables"

    invoke-direct {v1, v2, v0}, Lorg/codehaus/plexus/util/cli/CommandLineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getExecutable()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->shell:Lorg/codehaus/plexus/util/cli/shell/Shell;

    invoke-virtual {v0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getExecutable()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->executable:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getLiteralExecutable()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->executable:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()J
    .registers 6

    iget-wide v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->pid:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->pid:J

    :cond_0
    iget-wide v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->pid:J

    return-wide v0
.end method

.method public getShell()Lorg/codehaus/plexus/util/cli/shell/Shell;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->shell:Lorg/codehaus/plexus/util/cli/shell/Shell;

    return-object v0
.end method

.method public getShellCommandline()[Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->verifyShellState()V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->getShell()Lorg/codehaus/plexus/util/cli/shell/Shell;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getShellCommandLine([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSystemEnvVars()Ljava/util/Properties;
    .registers 2

    invoke-static {}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->getSystemEnvVars()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getWorkingDirectory()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->shell:Lorg/codehaus/plexus/util/cli/shell/Shell;

    invoke-virtual {v0}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getWorkingDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->workingDir:Ljava/io/File;

    :cond_0
    return-object v0
.end method

.method public setExecutable(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->shell:Lorg/codehaus/plexus/util/cli/shell/Shell;

    invoke-virtual {v0, p1}, Lorg/codehaus/plexus/util/cli/shell/Shell;->setExecutable(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/codehaus/plexus/util/cli/Commandline;->executable:Ljava/lang/String;

    return-void
.end method

.method public setPid(J)V
    .registers 3

    iput-wide p1, p0, Lorg/codehaus/plexus/util/cli/Commandline;->pid:J

    return-void
.end method

.method public setShell(Lorg/codehaus/plexus/util/cli/shell/Shell;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/cli/Commandline;->shell:Lorg/codehaus/plexus/util/cli/shell/Shell;

    return-void
.end method

.method public setWorkingDirectory(Ljava/io/File;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->shell:Lorg/codehaus/plexus/util/cli/shell/Shell;

    invoke-virtual {v0, p1}, Lorg/codehaus/plexus/util/cli/shell/Shell;->setWorkingDirectory(Ljava/io/File;)V

    iput-object p1, p0, Lorg/codehaus/plexus/util/cli/Commandline;->workingDir:Ljava/io/File;

    return-void
.end method

.method public setWorkingDirectory(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->shell:Lorg/codehaus/plexus/util/cli/shell/Shell;

    invoke-virtual {v0, p1}, Lorg/codehaus/plexus/util/cli/shell/Shell;->setWorkingDirectory(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline;->workingDir:Ljava/io/File;

    return-void
.end method

.method public size()I
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->getShellCommandline()[Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-static {v0, v1}, Lorg/codehaus/plexus/util/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
