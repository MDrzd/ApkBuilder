.class public Lorg/jf/baksmali/DisassembleCommand;
.super Lorg/jf/baksmali/DexInputCommand;


# annotations
.annotation runtime Lcom/beust/jcommander/Parameters;
    commandDescription = "Disassembles a dex file."
.end annotation

.annotation runtime Lorg/jf/util/jcommander/ExtendedParameters;
    commandAliases = {
        "dis",
        "d"
    }
    commandName = "disassemble"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private accessorComments:Z
    .annotation runtime Lcom/beust/jcommander/Parameter;
        arity = 0x1
        description = "Generate helper comments for synthetic accessors. True by default, use --accessor-comments=false to disable."
        names = {
            "--accessor-comments",
            "--ac"
        }
    .end annotation

    .annotation runtime Lorg/jf/util/jcommander/ExtendedParameter;
        argumentNames = {
            "boolean"
        }
    .end annotation
.end field

.field protected analysisArguments:Lorg/jf/baksmali/AnalysisArguments;
    .annotation runtime Lcom/beust/jcommander/ParametersDelegate;
    .end annotation
.end field

.field private classes:Ljava/util/List;
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "A comma separated list of classes. Only disassemble these classes"
        names = {
            "--classes"
        }
    .end annotation

    .annotation runtime Lorg/jf/util/jcommander/ExtendedParameter;
        argumentNames = {
            "classes"
        }
    .end annotation
.end field

.field private codeOffsets:Z
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "Add a comment before each instruction with it\'s code offset within the method."
        names = {
            "--code-offsets",
            "--offsets",
            "--off"
        }
    .end annotation
.end field

.field private debugInfo:Z
    .annotation runtime Lcom/beust/jcommander/Parameter;
        arity = 0x1
        description = "Whether to include debug information in the output (.local, .param, .line, etc.). True by default, use --debug-info=false to disable."
        names = {
            "--debug-info",
            "--di"
        }
    .end annotation

    .annotation runtime Lorg/jf/util/jcommander/ExtendedParameter;
        argumentNames = {
            "boolean"
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

.field private implicitReferences:Z
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "Use implicit method and field references (without the class name) for methods and fields from the current class."
        names = {
            "--implicit-references",
            "--implicit",
            "--ir"
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

.field private localsDirective:Z
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "When disassembling, output the .locals directive with the number of non-parameter registers instead of the .registers directive with the total number of registers."
        names = {
            "-l",
            "--use-locals"
        }
    .end annotation
.end field

.field private normalizeVirtualMethods:Z
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "Normalize virtual method references to use the base class where the method is originally declared."
        names = {
            "--normalize-virtual-methods",
            "--norm",
            "--nvm"
        }
    .end annotation
.end field

.field private outputDir:Ljava/lang/String;
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "The directory to write the disassembled files to."
        names = {
            "-o",
            "--output"
        }
    .end annotation

    .annotation runtime Lorg/jf/util/jcommander/ExtendedParameter;
        argumentNames = {
            "dir"
        }
    .end annotation
.end field

.field private parameterRegisters:Z
    .annotation runtime Lcom/beust/jcommander/Parameter;
        arity = 0x1
        description = "Use the pNN syntax for registers that refer to a method parameter on method entry. True by default, use --parameter-registers=false to disable."
        names = {
            "--parameter-registers",
            "--preg",
            "--pr"
        }
    .end annotation

    .annotation runtime Lorg/jf/util/jcommander/ExtendedParameter;
        argumentNames = {
            "boolean"
        }
    .end annotation
.end field

.field private registerInfoTypes:Ljava/util/List;
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "Add comments before/after each instruction with information about register types. The value is a comma-separated list of any of ALL, ALLPRE, ALLPOST, ARGS, DEST, MERGE and FULLMERGE. See \"baksmali help register-info\" for more information."
        names = {
            "-r",
            "--register-info"
        }
    .end annotation

    .annotation runtime Lorg/jf/util/jcommander/ExtendedParameter;
        argumentNames = {
            "register info specifier"
        }
    .end annotation
.end field

.field private resourceIdFiles:Ljava/util/List;
    .annotation runtime Lcom/beust/jcommander/Parameter;
        arity = 0x2
        description = "This will attempt to find any resource id references within the bytecode and add a comment with the name of the resource being referenced. The parameter accepts 2 values:an arbitrary resource prefix and the path to a public.xml file. For example: --resolve-resources android.R framework/res/values/public.xml. This option can be specified multiple times to provide resources from multiple packages."
        names = {
            "--resolve-resources",
            "--rr"
        }
    .end annotation

    .annotation runtime Lorg/jf/util/jcommander/ExtendedParameter;
        argumentNames = {
            "resource prefix",
            "public.xml file"
        }
    .end annotation
.end field

.field private sequentialLabels:Z
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "Create label names using a sequential numbering scheme per label type, rather than using the bytecode address."
        names = {
            "--sequential-labels",
            "--seq",
            "--sl"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/baksmali/DexInputCommand;-><init>(Ljava/util/List;)V

    new-instance p1, Lorg/jf/baksmali/AnalysisArguments;

    invoke-direct {p1}, Lorg/jf/baksmali/AnalysisArguments;-><init>()V

    iput-object p1, p0, Lorg/jf/baksmali/DisassembleCommand;->analysisArguments:Lorg/jf/baksmali/AnalysisArguments;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/jf/baksmali/DisassembleCommand;->debugInfo:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jf/baksmali/DisassembleCommand;->codeOffsets:Z

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/jf/baksmali/DisassembleCommand;->resourceIdFiles:Ljava/util/List;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    iput v1, p0, Lorg/jf/baksmali/DisassembleCommand;->jobs:I

    iput-boolean v0, p0, Lorg/jf/baksmali/DisassembleCommand;->localsDirective:Z

    iput-boolean p1, p0, Lorg/jf/baksmali/DisassembleCommand;->accessorComments:Z

    iput-boolean v0, p0, Lorg/jf/baksmali/DisassembleCommand;->normalizeVirtualMethods:Z

    const-string v1, "out"

    iput-object v1, p0, Lorg/jf/baksmali/DisassembleCommand;->outputDir:Ljava/lang/String;

    iput-boolean p1, p0, Lorg/jf/baksmali/DisassembleCommand;->parameterRegisters:Z

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/baksmali/DisassembleCommand;->registerInfoTypes:Ljava/util/List;

    iput-boolean v0, p0, Lorg/jf/baksmali/DisassembleCommand;->sequentialLabels:Z

    iput-boolean v0, p0, Lorg/jf/baksmali/DisassembleCommand;->implicitReferences:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jf/baksmali/DisassembleCommand;->classes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected getOptions()Lorg/jf/baksmali/BaksmaliOptions;
    .registers 12

    iget-object v0, p0, Lorg/jf/baksmali/DisassembleCommand;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    if-eqz v0, :cond_e

    new-instance v0, Lorg/jf/baksmali/BaksmaliOptions;

    invoke-direct {v0}, Lorg/jf/baksmali/BaksmaliOptions;-><init>()V

    invoke-virtual {p0}, Lorg/jf/baksmali/DisassembleCommand;->needsClassPath()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/jf/baksmali/DisassembleCommand;->analysisArguments:Lorg/jf/baksmali/AnalysisArguments;

    iget-object v3, p0, Lorg/jf/baksmali/DisassembleCommand;->inputFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lorg/jf/baksmali/DisassembleCommand;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p0}, Lorg/jf/baksmali/DisassembleCommand;->shouldCheckPackagePrivateAccess()Z

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Lorg/jf/baksmali/AnalysisArguments;->loadClassPathForDexFile(Ljava/io/File;Lorg/jf/dexlib2/iface/DexFile;Z)Lorg/jf/dexlib2/analysis/ClassPath;

    move-result-object v1

    iput-object v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "\n\nError occurred while loading class path files. Aborting."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/jf/baksmali/DisassembleCommand;->resourceIdFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_3

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lorg/jf/baksmali/DisassembleCommand;->resourceIdFiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lorg/jf/baksmali/DisassembleCommand;->resourceIdFiles:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lorg/jf/baksmali/DisassembleCommand;->resourceIdFiles:Ljava/util/List;

    add-int/lit8 v8, v5, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Can\'t find file: %s"

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v8, v10, v4

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_1
    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/jf/baksmali/BaksmaliOptions;->loadResourceIds(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error while loading resource files:"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Lorg/xml/sax/SAXException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_2

    :catch_2
    move-exception v1

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error while loading resource files:"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_2
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_3
    :goto_3
    iget-boolean v1, p0, Lorg/jf/baksmali/DisassembleCommand;->parameterRegisters:Z

    iput-boolean v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->parameterRegisters:Z

    iget-boolean v1, p0, Lorg/jf/baksmali/DisassembleCommand;->localsDirective:Z

    iput-boolean v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->localsDirective:Z

    iget-boolean v1, p0, Lorg/jf/baksmali/DisassembleCommand;->sequentialLabels:Z

    iput-boolean v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->sequentialLabels:Z

    iget-boolean v1, p0, Lorg/jf/baksmali/DisassembleCommand;->debugInfo:Z

    iput-boolean v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->debugInfo:Z

    iget-boolean v1, p0, Lorg/jf/baksmali/DisassembleCommand;->codeOffsets:Z

    iput-boolean v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->codeOffsets:Z

    iget-boolean v1, p0, Lorg/jf/baksmali/DisassembleCommand;->accessorComments:Z

    iput-boolean v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->accessorComments:Z

    iget-boolean v1, p0, Lorg/jf/baksmali/DisassembleCommand;->implicitReferences:Z

    iput-boolean v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->implicitReferences:Z

    iget-boolean v1, p0, Lorg/jf/baksmali/DisassembleCommand;->normalizeVirtualMethods:Z

    iput-boolean v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->normalizeVirtualMethods:Z

    iput v4, v0, Lorg/jf/baksmali/BaksmaliOptions;->registerInfo:I

    iget-object v1, p0, Lorg/jf/baksmali/DisassembleCommand;->registerInfoTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "ALL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v5, v0, Lorg/jf/baksmali/BaksmaliOptions;->registerInfo:I

    or-int/2addr v5, v3

    :goto_5
    iput v5, v0, Lorg/jf/baksmali/BaksmaliOptions;->registerInfo:I

    goto :goto_6

    :cond_5
    const-string v6, "ALLPRE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v5, v0, Lorg/jf/baksmali/BaksmaliOptions;->registerInfo:I

    or-int/lit8 v5, v5, 0x2

    goto :goto_5

    :cond_6
    const-string v6, "ALLPOST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget v5, v0, Lorg/jf/baksmali/BaksmaliOptions;->registerInfo:I

    or-int/lit8 v5, v5, 0x4

    goto :goto_5

    :cond_7
    const-string v6, "ARGS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget v5, v0, Lorg/jf/baksmali/BaksmaliOptions;->registerInfo:I

    or-int/lit8 v5, v5, 0x8

    goto :goto_5

    :cond_8
    const-string v6, "DEST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget v5, v0, Lorg/jf/baksmali/BaksmaliOptions;->registerInfo:I

    or-int/lit8 v5, v5, 0x10

    goto :goto_5

    :cond_9
    const-string v6, "MERGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget v5, v0, Lorg/jf/baksmali/BaksmaliOptions;->registerInfo:I

    or-int/lit8 v5, v5, 0x20

    goto :goto_5

    :cond_a
    const-string v6, "FULLMERGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget v5, v0, Lorg/jf/baksmali/BaksmaliOptions;->registerInfo:I

    or-int/lit8 v5, v5, 0x40

    goto :goto_5

    :cond_b
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Invalid register info type: %s"

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v5, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jf/baksmali/DisassembleCommand;->usage()V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :goto_6
    iget v5, v0, Lorg/jf/baksmali/BaksmaliOptions;->registerInfo:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_4

    iget v5, v0, Lorg/jf/baksmali/BaksmaliOptions;->registerInfo:I

    and-int/lit8 v5, v5, -0x21

    iput v5, v0, Lorg/jf/baksmali/BaksmaliOptions;->registerInfo:I

    goto/16 :goto_4

    :cond_c
    iget-boolean v1, p0, Lorg/jf/baksmali/DisassembleCommand;->accessorComments:Z

    if-eqz v1, :cond_d

    new-instance v1, Lorg/jf/dexlib2/util/SyntheticAccessorResolver;

    iget-object v2, p0, Lorg/jf/baksmali/DisassembleCommand;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getOpcodes()Lorg/jf/dexlib2/Opcodes;

    move-result-object v2

    iget-object v3, p0, Lorg/jf/baksmali/DisassembleCommand;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v3}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getClasses()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jf/dexlib2/util/SyntheticAccessorResolver;-><init>(Lorg/jf/dexlib2/Opcodes;Ljava/lang/Iterable;)V

    iput-object v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->syntheticAccessorResolver:Lorg/jf/dexlib2/util/SyntheticAccessorResolver;

    :cond_d
    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call loadDexFile first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected needsClassPath()Z
    .registers 2

    iget-object v0, p0, Lorg/jf/baksmali/DisassembleCommand;->registerInfoTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/jf/baksmali/DisassembleCommand;->normalizeVirtualMethods:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .registers 8

    iget-boolean v0, p0, Lorg/jf/baksmali/DisassembleCommand;->help:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/jf/baksmali/DisassembleCommand;->inputList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/jf/baksmali/DisassembleCommand;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jf/baksmali/DisassembleCommand;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Too many files specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jf/baksmali/DisassembleCommand;->usage()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/jf/baksmali/DisassembleCommand;->inputList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jf/baksmali/DisassembleCommand;->loadDexFile(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jf/baksmali/DisassembleCommand;->showDeodexWarning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jf/baksmali/DisassembleCommand;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->hasOdexOpcodes()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Warning: You are disassembling an odex/oat file without deodexing it. You won\'t be able to re-assemble the results unless you deodex it. See \"baksmali help deodex\""

    invoke-static {v0, v3}, Lorg/jf/util/StringWrapper;->printWrappedString(Ljava/io/PrintStream;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lorg/jf/baksmali/DisassembleCommand;->outputDir:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t create the output directory "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/jf/baksmali/DisassembleCommand;->outputDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    :cond_3
    iget-object v3, p0, Lorg/jf/baksmali/DisassembleCommand;->analysisArguments:Lorg/jf/baksmali/AnalysisArguments;

    iget-object v3, v3, Lorg/jf/baksmali/AnalysisArguments;->classPathDirectories:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/jf/baksmali/DisassembleCommand;->analysisArguments:Lorg/jf/baksmali/AnalysisArguments;

    iget-object v3, v3, Lorg/jf/baksmali/AnalysisArguments;->classPathDirectories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lorg/jf/baksmali/DisassembleCommand;->analysisArguments:Lorg/jf/baksmali/AnalysisArguments;

    new-array v1, v1, [Ljava/lang/String;

    iget-object v5, p0, Lorg/jf/baksmali/DisassembleCommand;->inputFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v3, Lorg/jf/baksmali/AnalysisArguments;->classPathDirectories:Ljava/util/List;

    :cond_5
    iget-object v1, p0, Lorg/jf/baksmali/DisassembleCommand;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lorg/jf/baksmali/DisassembleCommand;->jobs:I

    invoke-virtual {p0}, Lorg/jf/baksmali/DisassembleCommand;->getOptions()Lorg/jf/baksmali/BaksmaliOptions;

    move-result-object v3

    iget-object v5, p0, Lorg/jf/baksmali/DisassembleCommand;->classes:Ljava/util/List;

    invoke-static {v1, v0, v2, v3, v5}, Lorg/jf/baksmali/Baksmali;->disassembleDexFile(Lorg/jf/dexlib2/iface/DexFile;Ljava/io/File;ILorg/jf/baksmali/BaksmaliOptions;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    :cond_6
    return-void

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lorg/jf/baksmali/DisassembleCommand;->usage()V

    return-void
.end method

.method protected shouldCheckPackagePrivateAccess()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected showDeodexWarning()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
