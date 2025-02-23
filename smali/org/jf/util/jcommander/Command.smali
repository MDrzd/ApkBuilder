.class public abstract Lorg/jf/util/jcommander/Command;
.super Ljava/lang/Object;


# instance fields
.field protected final commandAncestors:Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/util/jcommander/Command;->commandAncestors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCommandHierarchy()Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lorg/jf/util/jcommander/Command;->commandAncestors:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jf/util/jcommander/Command;->getJCommander()Lcom/beust/jcommander/JCommander;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getJCommander()Lcom/beust/jcommander/JCommander;
    .registers 4

    iget-object v0, p0, Lorg/jf/util/jcommander/Command;->commandAncestors:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beust/jcommander/JCommander;

    invoke-virtual {v0}, Lcom/beust/jcommander/JCommander;->getCommands()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/jf/util/jcommander/ExtendedParameters;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/jf/util/jcommander/ExtendedParameters;

    invoke-interface {v1}, Lorg/jf/util/jcommander/ExtendedParameters;->commandName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beust/jcommander/JCommander;

    return-object v0
.end method

.method public abstract run()V
.end method

.method protected setupCommand(Lcom/beust/jcommander/JCommander;)V
    .registers 2

    return-void
.end method

.method public usage()V
    .registers 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Lorg/jf/util/jcommander/HelpFormatter;

    invoke-direct {v1}, Lorg/jf/util/jcommander/HelpFormatter;-><init>()V

    invoke-static {}, Lorg/jf/util/ConsoleUtil;->getConsoleWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jf/util/jcommander/HelpFormatter;->width(I)Lorg/jf/util/jcommander/HelpFormatter;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jf/util/jcommander/Command;->getCommandHierarchy()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jf/util/jcommander/HelpFormatter;->format(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
