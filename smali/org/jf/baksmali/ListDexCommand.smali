.class public Lorg/jf/baksmali/ListDexCommand;
.super Lorg/jf/util/jcommander/Command;


# annotations
.annotation runtime Lcom/beust/jcommander/Parameters;
    commandDescription = "Lists the dex files in an apk/oat file."
.end annotation

.annotation runtime Lorg/jf/util/jcommander/ExtendedParameters;
    commandAliases = {
        "d"
    }
    commandName = "dex"
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

.field private inputList:Ljava/util/List;
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "An apk or oat file."
    .end annotation

    .annotation runtime Lorg/jf/util/jcommander/ExtendedParameter;
        argumentNames = {
            "file"
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

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/baksmali/ListDexCommand;->inputList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-boolean v0, p0, Lorg/jf/baksmali/ListDexCommand;->help:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/jf/baksmali/ListDexCommand;->inputList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jf/baksmali/ListDexCommand;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/jf/baksmali/ListDexCommand;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Too many files specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jf/baksmali/ListDexCommand;->usage()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/jf/baksmali/ListDexCommand;->inputList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Could not find the file: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_2
    :try_start_0
    invoke-static {}, Lorg/jf/dexlib2/Opcodes;->getDefault()Lorg/jf/dexlib2/Opcodes;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/jf/dexlib2/DexFileFactory;->loadDexContainer(Ljava/io/File;Lorg/jf/dexlib2/Opcodes;)Lorg/jf/dexlib2/iface/MultiDexContainer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/MultiDexContainer;->getDexEntryNames()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/jf/baksmali/ListDexCommand;->usage()V

    return-void
.end method
