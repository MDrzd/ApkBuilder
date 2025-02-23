.class public Lorg/jf/smali/Main;
.super Lorg/jf/util/jcommander/Command;


# annotations
.annotation runtime Lorg/jf/util/jcommander/ExtendedParameters;
    commandName = "smali"
    includeParametersInUsage = true
    postfixDescription = "See smali help <command> for more information about a specific command"
.end annotation


# static fields
.field public static final VERSION:Ljava/lang/String;


# instance fields
.field private help:Z
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "Show usage information"
        help = true
        names = {
            "-h",
            "-?",
            "--help"
        }
    .end annotation
.end field

.field private jc:Lcom/beust/jcommander/JCommander;

.field public version:Z
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "Print the version of baksmali and then exit"
        help = true
        names = {
            "-v",
            "--version"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/jf/smali/Main;->loadVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jf/smali/Main;->VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jf/util/jcommander/Command;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private static loadVersion()Ljava/lang/String;
    .registers 3

    const-class v0, Lorg/jf/smali/Main;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "smali.properties"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "[unknown version]"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v0, "application.version"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lorg/jf/smali/Main;

    invoke-direct {v0}, Lorg/jf/smali/Main;-><init>()V

    new-instance v1, Lcom/beust/jcommander/JCommander;

    invoke-direct {v1, v0}, Lcom/beust/jcommander/JCommander;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lorg/jf/smali/Main;->jc:Lcom/beust/jcommander/JCommander;

    const-string v2, "smali"

    invoke-virtual {v1, v2}, Lcom/beust/jcommander/JCommander;->setProgramName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jf/smali/Main;->getCommandHierarchy()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/jf/smali/AssembleCommand;

    invoke-direct {v3, v2}, Lorg/jf/smali/AssembleCommand;-><init>(Ljava/util/List;)V

    invoke-static {v1, v3}, Lorg/jf/util/jcommander/ExtendedCommands;->addExtendedCommand(Lcom/beust/jcommander/JCommander;Lorg/jf/util/jcommander/Command;)V

    new-instance v3, Lorg/jf/smali/HelpCommand;

    invoke-direct {v3, v2}, Lorg/jf/smali/HelpCommand;-><init>(Ljava/util/List;)V

    invoke-static {v1, v3}, Lorg/jf/util/jcommander/ExtendedCommands;->addExtendedCommand(Lcom/beust/jcommander/JCommander;Lorg/jf/util/jcommander/Command;)V

    new-instance v3, Lorg/jf/smali/HelpCommand$HlepCommand;

    invoke-direct {v3, v2}, Lorg/jf/smali/HelpCommand$HlepCommand;-><init>(Ljava/util/List;)V

    invoke-static {v1, v3}, Lorg/jf/util/jcommander/ExtendedCommands;->addExtendedCommand(Lcom/beust/jcommander/JCommander;Lorg/jf/util/jcommander/Command;)V

    invoke-virtual {v1, p0}, Lcom/beust/jcommander/JCommander;->parse([Ljava/lang/String;)V

    iget-boolean p0, v0, Lorg/jf/smali/Main;->version:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lorg/jf/smali/Main;->version()V

    :cond_0
    invoke-virtual {v1}, Lcom/beust/jcommander/JCommander;->getParsedCommand()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-boolean p0, v0, Lorg/jf/smali/Main;->help:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/beust/jcommander/JCommander;->getCommands()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1}, Lcom/beust/jcommander/JCommander;->getParsedCommand()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/beust/jcommander/JCommander;

    invoke-virtual {p0}, Lcom/beust/jcommander/JCommander;->getObjects()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jf/util/jcommander/Command;

    invoke-virtual {p0}, Lorg/jf/util/jcommander/Command;->run()V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/jf/smali/Main;->usage()V

    return-void
.end method

.method protected static version()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "smali "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/jf/smali/Main;->VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (http://smali.org)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Copyright (C) 2010 Ben Gruver (JesusFreke@JesusFreke.com)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "BSD license (http://www.opensource.org/licenses/bsd-license.php)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method protected getJCommander()Lcom/beust/jcommander/JCommander;
    .registers 2

    iget-object v0, p0, Lorg/jf/smali/Main;->jc:Lcom/beust/jcommander/JCommander;

    return-object v0
.end method

.method public run()V
    .registers 1

    return-void
.end method
