.class public Lorg/jf/baksmali/DeodexCommand;
.super Lorg/jf/baksmali/DisassembleCommand;


# annotations
.annotation runtime Lcom/beust/jcommander/Parameters;
    commandDescription = "Deodexes an odex/oat file"
.end annotation

.annotation runtime Lorg/jf/util/jcommander/ExtendedParameters;
    commandAliases = {
        "de",
        "x"
    }
    commandName = "deodex"
.end annotation


# instance fields
.field protected checkPackagePrivateArgument:Lorg/jf/baksmali/AnalysisArguments$CheckPackagePrivateArgument;
    .annotation runtime Lcom/beust/jcommander/ParametersDelegate;
    .end annotation
.end field

.field private inlineTable:Ljava/lang/String;
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "Specify a file containing a custom inline method table to use. See the \"deodexerant\" tool in the smali github repository to dump the inline method table from a device that uses dalvik."
        names = {
            "--inline-table",
            "--inline",
            "--it"
        }
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

    invoke-direct {p0, p1}, Lorg/jf/baksmali/DisassembleCommand;-><init>(Ljava/util/List;)V

    new-instance p1, Lorg/jf/baksmali/AnalysisArguments$CheckPackagePrivateArgument;

    invoke-direct {p1}, Lorg/jf/baksmali/AnalysisArguments$CheckPackagePrivateArgument;-><init>()V

    iput-object p1, p0, Lorg/jf/baksmali/DeodexCommand;->checkPackagePrivateArgument:Lorg/jf/baksmali/AnalysisArguments$CheckPackagePrivateArgument;

    return-void
.end method


# virtual methods
.method protected getOptions()Lorg/jf/baksmali/BaksmaliOptions;
    .registers 10

    invoke-super {p0}, Lorg/jf/baksmali/DisassembleCommand;->getOptions()Lorg/jf/baksmali/BaksmaliOptions;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->deodex:Z

    iget-object v2, p0, Lorg/jf/baksmali/DeodexCommand;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    instance-of v2, v2, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/jf/baksmali/DeodexCommand;->inlineTable:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v1, p0, Lorg/jf/baksmali/DeodexCommand;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    check-cast v1, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;->getOdexVersion()I

    move-result v1

    invoke-static {v1}, Lorg/jf/dexlib2/analysis/InlineMethodResolver;->createInlineMethodResolver(I)Lorg/jf/dexlib2/analysis/InlineMethodResolver;

    move-result-object v1

    iput-object v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->inlineResolver:Lorg/jf/dexlib2/analysis/InlineMethodResolver;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/jf/baksmali/DeodexCommand;->inlineTable:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Could not find file: %s"

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/jf/baksmali/DeodexCommand;->inlineTable:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    :cond_1
    :try_start_0
    new-instance v3, Lorg/jf/dexlib2/analysis/CustomInlineMethodResolver;

    iget-object v6, v0, Lorg/jf/baksmali/BaksmaliOptions;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-direct {v3, v6, v2}, Lorg/jf/dexlib2/analysis/CustomInlineMethodResolver;-><init>(Lorg/jf/dexlib2/analysis/ClassPath;Ljava/io/File;)V

    iput-object v3, v0, Lorg/jf/baksmali/BaksmaliOptions;->inlineResolver:Lorg/jf/dexlib2/analysis/InlineMethodResolver;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error while reading file: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected needsClassPath()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected shouldCheckPackagePrivateAccess()Z
    .registers 2

    iget-object v0, p0, Lorg/jf/baksmali/DeodexCommand;->checkPackagePrivateArgument:Lorg/jf/baksmali/AnalysisArguments$CheckPackagePrivateArgument;

    iget-boolean v0, v0, Lorg/jf/baksmali/AnalysisArguments$CheckPackagePrivateArgument;->checkPackagePrivateAccess:Z

    return v0
.end method

.method protected showDeodexWarning()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
