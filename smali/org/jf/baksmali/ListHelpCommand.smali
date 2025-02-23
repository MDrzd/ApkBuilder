.class public Lorg/jf/baksmali/ListHelpCommand;
.super Lorg/jf/util/jcommander/Command;


# annotations
.annotation runtime Lcom/beust/jcommander/Parameters;
    commandDescription = "Shows usage information"
.end annotation

.annotation runtime Lorg/jf/util/jcommander/ExtendedParameters;
    commandAliases = {
        "h"
    }
    commandName = "help"
.end annotation


# instance fields
.field private commands:Ljava/util/List;
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "If specified, show the detailed usage information for the given commands"
    .end annotation

    .annotation runtime Lorg/jf/util/jcommander/ExtendedParameter;
        argumentNames = {
            "commands"
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
    .registers 9

    iget-object v0, p0, Lorg/jf/baksmali/ListHelpCommand;->commands:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jf/baksmali/ListHelpCommand;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lorg/jf/baksmali/ListHelpCommand;->commandAncestors:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beust/jcommander/JCommander;

    iget-object v1, p0, Lorg/jf/baksmali/ListHelpCommand;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v4}, Lorg/jf/util/jcommander/ExtendedCommands;->getSubcommand(Lcom/beust/jcommander/JCommander;Ljava/lang/String;)Lcom/beust/jcommander/JCommander;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "No such command: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Lorg/jf/util/jcommander/HelpFormatter;

    invoke-direct {v6}, Lorg/jf/util/jcommander/HelpFormatter;-><init>()V

    invoke-static {}, Lorg/jf/util/ConsoleUtil;->getConsoleWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/jf/util/jcommander/HelpFormatter;->width(I)Lorg/jf/util/jcommander/HelpFormatter;

    move-result-object v6

    invoke-virtual {v5}, Lcom/beust/jcommander/JCommander;->getObjects()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jf/util/jcommander/Command;

    invoke-virtual {v5}, Lorg/jf/util/jcommander/Command;->getCommandHierarchy()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/jf/util/jcommander/HelpFormatter;->format(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Lorg/jf/util/jcommander/HelpFormatter;

    invoke-direct {v1}, Lorg/jf/util/jcommander/HelpFormatter;-><init>()V

    invoke-static {}, Lorg/jf/util/ConsoleUtil;->getConsoleWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jf/util/jcommander/HelpFormatter;->width(I)Lorg/jf/util/jcommander/HelpFormatter;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/baksmali/ListHelpCommand;->commandAncestors:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/jf/util/jcommander/HelpFormatter;->format(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Lorg/jf/util/jcommander/HelpFormatter;

    invoke-direct {v1}, Lorg/jf/util/jcommander/HelpFormatter;-><init>()V

    invoke-static {}, Lorg/jf/util/ConsoleUtil;->getConsoleWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jf/util/jcommander/HelpFormatter;->width(I)Lorg/jf/util/jcommander/HelpFormatter;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/baksmali/ListHelpCommand;->commandAncestors:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/jf/util/jcommander/HelpFormatter;->format(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
