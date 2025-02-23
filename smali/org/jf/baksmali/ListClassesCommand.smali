.class public Lorg/jf/baksmali/ListClassesCommand;
.super Lorg/jf/baksmali/DexInputCommand;


# annotations
.annotation runtime Lcom/beust/jcommander/Parameters;
    commandDescription = "Lists the classes in a dex file."
.end annotation

.annotation runtime Lorg/jf/util/jcommander/ExtendedParameters;
    commandAliases = {
        "class",
        "c"
    }
    commandName = "classes"
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

    invoke-direct {p0, p1}, Lorg/jf/baksmali/DexInputCommand;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-boolean v0, p0, Lorg/jf/baksmali/ListClassesCommand;->help:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/jf/baksmali/ListClassesCommand;->inputList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jf/baksmali/ListClassesCommand;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/jf/baksmali/ListClassesCommand;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Too many files specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jf/baksmali/ListClassesCommand;->usage()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/jf/baksmali/ListClassesCommand;->inputList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jf/baksmali/ListClassesCommand;->loadDexFile(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/baksmali/ListClassesCommand;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getClasses()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/ClassDef;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/jf/baksmali/ListClassesCommand;->usage()V

    return-void
.end method
