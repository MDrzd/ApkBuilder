.class public Lorg/jf/smali/AssembleCommand;
.super Lorg/jf/util/jcommander/Command;


# annotations
.annotation runtime Lcom/beust/jcommander/Parameters;
    commandDescription = "Assembles smali files into a dex file."
.end annotation

.annotation runtime Lorg/jf/util/jcommander/ExtendedParameters;
    commandAliases = {
        "ass",
        "as",
        "a"
    }
    commandName = "assemble"
.end annotation


# instance fields
.field private allowOdexOpcodes:Z
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "Allows the odex opcodes that dalvik doesn\'t reject to be assembled."
        names = {
            "--allow-odex-opcodes",
            "--allow-odex",
            "--ao"
        }
    .end annotation
.end field

.field private apiLevel:I
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "The numeric api level to use while assembling."
        names = {
            "-a",
            "--api"
        }
    .end annotation

    .annotation runtime Lorg/jf/util/jcommander/ExtendedParameter;
        argumentNames = {
            "api"
        }
    .end annotation
.end field

.field private help:Z
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "Show usage information for this command."
        help = true
        names = {
            "-h",
            "-?",
            "--help"
        }
    .end annotation
.end field

.field private input:Ljava/util/List;
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "Assembles the given files. If a directory is specified, it will be recursively searched for any files with a .smali prefix"
    .end annotation

    .annotation runtime Lorg/jf/util/jcommander/ExtendedParameter;
        argumentNames = {
            "[<file>|<dir>]+"
        }
    .end annotation
.end field

.field private jobs:I
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "The number of threads to use. Defaults to the number of cores available."
        names = {
            "-j",
            "--jobs"
        }
        validateWith = Lcom/beust/jcommander/validators/PositiveInteger;
    .end annotation

    .annotation runtime Lorg/jf/util/jcommander/ExtendedParameter;
        argumentNames = {
            "n"
        }
    .end annotation
.end field

.field private output:Ljava/lang/String;
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "The name/path of the dex file to write."
        names = {
            "-o",
            "--output"
        }
    .end annotation

    .annotation runtime Lorg/jf/util/jcommander/ExtendedParameter;
        argumentNames = {
            "file"
        }
    .end annotation
.end field

.field private verbose:Z
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "Generate verbose error messages."
        names = {
            "--verbose"
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

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    iput p1, p0, Lorg/jf/smali/AssembleCommand;->jobs:I

    const/16 p1, 0xf

    iput p1, p0, Lorg/jf/smali/AssembleCommand;->apiLevel:I

    const-string p1, "out.dex"

    iput-object p1, p0, Lorg/jf/smali/AssembleCommand;->output:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/jf/smali/AssembleCommand;->verbose:Z

    return-void
.end method


# virtual methods
.method protected getOptions()Lorg/jf/smali/SmaliOptions;
    .registers 3

    new-instance v0, Lorg/jf/smali/SmaliOptions;

    invoke-direct {v0}, Lorg/jf/smali/SmaliOptions;-><init>()V

    iget v1, p0, Lorg/jf/smali/AssembleCommand;->jobs:I

    iput v1, v0, Lorg/jf/smali/SmaliOptions;->jobs:I

    iget v1, p0, Lorg/jf/smali/AssembleCommand;->apiLevel:I

    iput v1, v0, Lorg/jf/smali/SmaliOptions;->apiLevel:I

    iget-object v1, p0, Lorg/jf/smali/AssembleCommand;->output:Ljava/lang/String;

    iput-object v1, v0, Lorg/jf/smali/SmaliOptions;->outputDexFile:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/jf/smali/AssembleCommand;->allowOdexOpcodes:Z

    iput-boolean v1, v0, Lorg/jf/smali/SmaliOptions;->allowOdexOpcodes:Z

    iget-boolean v1, p0, Lorg/jf/smali/AssembleCommand;->verbose:Z

    iput-boolean v1, v0, Lorg/jf/smali/SmaliOptions;->verboseErrors:Z

    return-object v0
.end method

.method public run()V
    .registers 3

    iget-boolean v0, p0, Lorg/jf/smali/AssembleCommand;->help:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jf/smali/AssembleCommand;->input:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jf/smali/AssembleCommand;->input:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/jf/smali/AssembleCommand;->getOptions()Lorg/jf/smali/SmaliOptions;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/smali/AssembleCommand;->input:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/jf/smali/Smali;->assemble(Lorg/jf/smali/SmaliOptions;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/jf/smali/AssembleCommand;->usage()V

    return-void
.end method
