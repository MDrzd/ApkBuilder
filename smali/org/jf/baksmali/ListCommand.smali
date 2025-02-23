.class public Lorg/jf/baksmali/ListCommand;
.super Lorg/jf/util/jcommander/Command;


# annotations
.annotation runtime Lcom/beust/jcommander/Parameters;
    commandDescription = "Lists various objects in a dex file."
.end annotation

.annotation runtime Lorg/jf/util/jcommander/ExtendedParameters;
    commandAliases = {
        "l"
    }
    commandName = "list"
.end annotation


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


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/util/jcommander/Command;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-virtual {p0}, Lorg/jf/baksmali/ListCommand;->getJCommander()Lcom/beust/jcommander/JCommander;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jf/baksmali/ListCommand;->help:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/beust/jcommander/JCommander;->getParsedCommand()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/beust/jcommander/JCommander;->getCommands()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/beust/jcommander/JCommander;->getParsedCommand()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beust/jcommander/JCommander;

    invoke-virtual {v0}, Lcom/beust/jcommander/JCommander;->getObjects()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/util/jcommander/Command;

    invoke-virtual {v0}, Lorg/jf/util/jcommander/Command;->run()V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/jf/baksmali/ListCommand;->usage()V

    return-void
.end method

.method protected setupCommand(Lcom/beust/jcommander/JCommander;)V
    .registers 4

    invoke-virtual {p0}, Lorg/jf/baksmali/ListCommand;->getCommandHierarchy()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/jf/baksmali/ListStringsCommand;

    invoke-direct {v1, v0}, Lorg/jf/baksmali/ListStringsCommand;-><init>(Ljava/util/List;)V

    invoke-static {p1, v1}, Lorg/jf/util/jcommander/ExtendedCommands;->addExtendedCommand(Lcom/beust/jcommander/JCommander;Lorg/jf/util/jcommander/Command;)V

    new-instance v1, Lorg/jf/baksmali/ListMethodsCommand;

    invoke-direct {v1, v0}, Lorg/jf/baksmali/ListMethodsCommand;-><init>(Ljava/util/List;)V

    invoke-static {p1, v1}, Lorg/jf/util/jcommander/ExtendedCommands;->addExtendedCommand(Lcom/beust/jcommander/JCommander;Lorg/jf/util/jcommander/Command;)V

    new-instance v1, Lorg/jf/baksmali/ListFieldsCommand;

    invoke-direct {v1, v0}, Lorg/jf/baksmali/ListFieldsCommand;-><init>(Ljava/util/List;)V

    invoke-static {p1, v1}, Lorg/jf/util/jcommander/ExtendedCommands;->addExtendedCommand(Lcom/beust/jcommander/JCommander;Lorg/jf/util/jcommander/Command;)V

    new-instance v1, Lorg/jf/baksmali/ListTypesCommand;

    invoke-direct {v1, v0}, Lorg/jf/baksmali/ListTypesCommand;-><init>(Ljava/util/List;)V

    invoke-static {p1, v1}, Lorg/jf/util/jcommander/ExtendedCommands;->addExtendedCommand(Lcom/beust/jcommander/JCommander;Lorg/jf/util/jcommander/Command;)V

    new-instance v1, Lorg/jf/baksmali/ListClassesCommand;

    invoke-direct {v1, v0}, Lorg/jf/baksmali/ListClassesCommand;-><init>(Ljava/util/List;)V

    invoke-static {p1, v1}, Lorg/jf/util/jcommander/ExtendedCommands;->addExtendedCommand(Lcom/beust/jcommander/JCommander;Lorg/jf/util/jcommander/Command;)V

    new-instance v1, Lorg/jf/baksmali/ListDexCommand;

    invoke-direct {v1, v0}, Lorg/jf/baksmali/ListDexCommand;-><init>(Ljava/util/List;)V

    invoke-static {p1, v1}, Lorg/jf/util/jcommander/ExtendedCommands;->addExtendedCommand(Lcom/beust/jcommander/JCommander;Lorg/jf/util/jcommander/Command;)V

    new-instance v1, Lorg/jf/baksmali/ListVtablesCommand;

    invoke-direct {v1, v0}, Lorg/jf/baksmali/ListVtablesCommand;-><init>(Ljava/util/List;)V

    invoke-static {p1, v1}, Lorg/jf/util/jcommander/ExtendedCommands;->addExtendedCommand(Lcom/beust/jcommander/JCommander;Lorg/jf/util/jcommander/Command;)V

    new-instance v1, Lorg/jf/baksmali/ListFieldOffsetsCommand;

    invoke-direct {v1, v0}, Lorg/jf/baksmali/ListFieldOffsetsCommand;-><init>(Ljava/util/List;)V

    invoke-static {p1, v1}, Lorg/jf/util/jcommander/ExtendedCommands;->addExtendedCommand(Lcom/beust/jcommander/JCommander;Lorg/jf/util/jcommander/Command;)V

    new-instance v1, Lorg/jf/baksmali/ListDependenciesCommand;

    invoke-direct {v1, v0}, Lorg/jf/baksmali/ListDependenciesCommand;-><init>(Ljava/util/List;)V

    invoke-static {p1, v1}, Lorg/jf/util/jcommander/ExtendedCommands;->addExtendedCommand(Lcom/beust/jcommander/JCommander;Lorg/jf/util/jcommander/Command;)V

    new-instance v1, Lorg/jf/baksmali/ListHelpCommand;

    invoke-direct {v1, v0}, Lorg/jf/baksmali/ListHelpCommand;-><init>(Ljava/util/List;)V

    invoke-static {p1, v1}, Lorg/jf/util/jcommander/ExtendedCommands;->addExtendedCommand(Lcom/beust/jcommander/JCommander;Lorg/jf/util/jcommander/Command;)V

    new-instance v1, Lorg/jf/baksmali/ListHelpCommand$ListHlepCommand;

    invoke-direct {v1, v0}, Lorg/jf/baksmali/ListHelpCommand$ListHlepCommand;-><init>(Ljava/util/List;)V

    invoke-static {p1, v1}, Lorg/jf/util/jcommander/ExtendedCommands;->addExtendedCommand(Lcom/beust/jcommander/JCommander;Lorg/jf/util/jcommander/Command;)V

    return-void
.end method
