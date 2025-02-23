.class public Lorg/jf/baksmali/ListVtablesCommand;
.super Lorg/jf/baksmali/DexInputCommand;


# annotations
.annotation runtime Lcom/beust/jcommander/Parameters;
    commandDescription = "Lists the virtual method tables for classes in a dex file."
.end annotation

.annotation runtime Lorg/jf/util/jcommander/ExtendedParameters;
    commandAliases = {
        "vtable",
        "v"
    }
    commandName = "vtables"
.end annotation


# instance fields
.field private analysisArguments:Lorg/jf/baksmali/AnalysisArguments;
    .annotation runtime Lcom/beust/jcommander/ParametersDelegate;
    .end annotation
.end field

.field private checkPackagePrivateArgument:Lorg/jf/baksmali/AnalysisArguments$CheckPackagePrivateArgument;
    .annotation runtime Lcom/beust/jcommander/ParametersDelegate;
    .end annotation
.end field

.field private classes:Ljava/util/List;
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "A comma separated list of classes. Only print the vtable for these classes"
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

.field private oatVersion:I
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "Uses a classpath for the given oat version, regardless of the actual oat version. This can be used, e.g. to list vtables from a dex file, as if they were in an oat file of the given version."
        names = {
            "--override-oat-version"
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

    new-instance p1, Lorg/jf/baksmali/AnalysisArguments;

    invoke-direct {p1}, Lorg/jf/baksmali/AnalysisArguments;-><init>()V

    iput-object p1, p0, Lorg/jf/baksmali/ListVtablesCommand;->analysisArguments:Lorg/jf/baksmali/AnalysisArguments;

    new-instance p1, Lorg/jf/baksmali/AnalysisArguments$CheckPackagePrivateArgument;

    invoke-direct {p1}, Lorg/jf/baksmali/AnalysisArguments$CheckPackagePrivateArgument;-><init>()V

    iput-object p1, p0, Lorg/jf/baksmali/ListVtablesCommand;->checkPackagePrivateArgument:Lorg/jf/baksmali/AnalysisArguments$CheckPackagePrivateArgument;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jf/baksmali/ListVtablesCommand;->classes:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lorg/jf/baksmali/ListVtablesCommand;->oatVersion:I

    return-void
.end method

.method private listClassVtable(Lorg/jf/dexlib2/analysis/ClassProto;)V
    .registers 8

    invoke-virtual {p1}, Lorg/jf/dexlib2/analysis/ClassProto;->getVtable()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/analysis/ClassProto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " extends "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jf/dexlib2/analysis/ClassProto;->getSuperclass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " methods\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->write([B)V

    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/Method;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/Method;->getParameterTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/Method;->getReturnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->write([B)V

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->write([B)V

    return-void
.end method


# virtual methods
.method protected getOptions()Lorg/jf/baksmali/BaksmaliOptions;
    .registers 7

    iget-object v0, p0, Lorg/jf/baksmali/ListVtablesCommand;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jf/baksmali/BaksmaliOptions;

    invoke-direct {v0}, Lorg/jf/baksmali/BaksmaliOptions;-><init>()V

    iget v1, p0, Lorg/jf/baksmali/ListVtablesCommand;->apiLevel:I

    iput v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->apiLevel:I

    :try_start_0
    iget-object v1, p0, Lorg/jf/baksmali/ListVtablesCommand;->analysisArguments:Lorg/jf/baksmali/AnalysisArguments;

    iget-object v2, p0, Lorg/jf/baksmali/ListVtablesCommand;->inputFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lorg/jf/baksmali/ListVtablesCommand;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v4, p0, Lorg/jf/baksmali/ListVtablesCommand;->checkPackagePrivateArgument:Lorg/jf/baksmali/AnalysisArguments$CheckPackagePrivateArgument;

    iget-boolean v4, v4, Lorg/jf/baksmali/AnalysisArguments$CheckPackagePrivateArgument;->checkPackagePrivateAccess:Z

    iget v5, p0, Lorg/jf/baksmali/ListVtablesCommand;->oatVersion:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/jf/baksmali/AnalysisArguments;->loadClassPathForDexFile(Ljava/io/File;Lorg/jf/dexlib2/iface/DexFile;ZI)Lorg/jf/dexlib2/analysis/ClassPath;

    move-result-object v1

    iput-object v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error occurred while loading class path files."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call loadDexFile first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run()V
    .registers 6

    iget-boolean v0, p0, Lorg/jf/baksmali/ListVtablesCommand;->help:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/jf/baksmali/ListVtablesCommand;->inputList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/jf/baksmali/ListVtablesCommand;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lorg/jf/baksmali/ListVtablesCommand;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Too many files specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jf/baksmali/ListVtablesCommand;->usage()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/jf/baksmali/ListVtablesCommand;->inputList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jf/baksmali/ListVtablesCommand;->loadDexFile(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jf/baksmali/ListVtablesCommand;->getOptions()Lorg/jf/baksmali/BaksmaliOptions;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/jf/baksmali/ListVtablesCommand;->classes:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/jf/baksmali/ListVtablesCommand;->classes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/jf/baksmali/ListVtablesCommand;->classes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lorg/jf/baksmali/BaksmaliOptions;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v3, v2}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-direct {p0, v2}, Lorg/jf/baksmali/ListVtablesCommand;->listClassVtable(Lorg/jf/dexlib2/analysis/ClassProto;)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lorg/jf/baksmali/ListVtablesCommand;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getClasses()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/iface/ClassDef;

    sget-object v3, Lorg/jf/dexlib2/AccessFlags;->INTERFACE:Lorg/jf/dexlib2/AccessFlags;

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/ClassDef;->getAccessFlags()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/jf/dexlib2/AccessFlags;->isSet(I)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lorg/jf/baksmali/BaksmaliOptions;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v3, v2}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-direct {p0, v2}, Lorg/jf/baksmali/ListVtablesCommand;->listClassVtable(Lorg/jf/dexlib2/analysis/ClassProto;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_6
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lorg/jf/baksmali/ListVtablesCommand;->usage()V

    return-void
.end method
