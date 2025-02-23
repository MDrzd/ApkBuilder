.class public Lorg/jf/baksmali/ListFieldOffsetsCommand;
.super Lorg/jf/baksmali/DexInputCommand;


# annotations
.annotation runtime Lcom/beust/jcommander/Parameters;
    commandDescription = "Lists the instance field offsets for classes in a dex file."
.end annotation

.annotation runtime Lorg/jf/util/jcommander/ExtendedParameters;
    commandAliases = {
        "fieldoffset",
        "fo"
    }
    commandName = "fieldoffsets"
.end annotation


# instance fields
.field private analysisArguments:Lorg/jf/baksmali/AnalysisArguments;
    .annotation runtime Lcom/beust/jcommander/ParametersDelegate;
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

    iput-object p1, p0, Lorg/jf/baksmali/ListFieldOffsetsCommand;->analysisArguments:Lorg/jf/baksmali/AnalysisArguments;

    return-void
.end method

.method private getOptions()Lorg/jf/baksmali/BaksmaliOptions;
    .registers 6
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/baksmali/ListFieldOffsetsCommand;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jf/baksmali/BaksmaliOptions;

    invoke-direct {v0}, Lorg/jf/baksmali/BaksmaliOptions;-><init>()V

    iget v1, p0, Lorg/jf/baksmali/ListFieldOffsetsCommand;->apiLevel:I

    iput v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->apiLevel:I

    :try_start_0
    iget-object v1, p0, Lorg/jf/baksmali/ListFieldOffsetsCommand;->analysisArguments:Lorg/jf/baksmali/AnalysisArguments;

    iget-object v2, p0, Lorg/jf/baksmali/ListFieldOffsetsCommand;->inputFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lorg/jf/baksmali/ListFieldOffsetsCommand;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/jf/baksmali/AnalysisArguments;->loadClassPathForDexFile(Ljava/io/File;Lorg/jf/dexlib2/iface/DexFile;Z)Lorg/jf/dexlib2/analysis/ClassPath;

    move-result-object v1

    iput-object v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error occurred while loading class path files."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call loadDexFile first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-boolean v0, p0, Lorg/jf/baksmali/ListFieldOffsetsCommand;->help:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/jf/baksmali/ListFieldOffsetsCommand;->inputList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jf/baksmali/ListFieldOffsetsCommand;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lorg/jf/baksmali/ListFieldOffsetsCommand;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Too many files specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jf/baksmali/ListFieldOffsetsCommand;->usage()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/jf/baksmali/ListFieldOffsetsCommand;->inputList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jf/baksmali/ListFieldOffsetsCommand;->loadDexFile(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/jf/baksmali/ListFieldOffsetsCommand;->getOptions()Lorg/jf/baksmali/BaksmaliOptions;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lorg/jf/baksmali/ListFieldOffsetsCommand;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getClasses()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jf/dexlib2/iface/ClassDef;

    iget-object v4, v0, Lorg/jf/baksmali/BaksmaliOptions;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v4, v3}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v4

    check-cast v4, Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-virtual {v4}, Lorg/jf/dexlib2/analysis/ClassProto;->getInstanceFields()Lorg/jf/util/SparseArray;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Class "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/jf/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " instance fields\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->write([B)V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4}, Lorg/jf/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Lorg/jf/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Lorg/jf/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jf/dexlib2/iface/reference/FieldReference;

    invoke-interface {v6}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Lorg/jf/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jf/dexlib2/iface/reference/FieldReference;

    invoke-interface {v6}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->write([B)V

    goto/16 :goto_0

    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/jf/baksmali/ListFieldOffsetsCommand;->usage()V

    return-void
.end method
