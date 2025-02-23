.class public Lorg/jf/baksmali/AnalysisArguments;
.super Ljava/lang/Object;


# instance fields
.field public bootClassPath:Ljava/util/List;
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "A colon separated list of the files to include in the bootclasspath when analyzing the dex file. If not specified, baksmali will attempt to choose an appropriate default. When analyzing oat files, this can simply be the path to the device\'s boot.oat file. A single empty string can be used to specify that an empty bootclasspath should be used. (e.g. --bootclasspath \"\") See baksmali help classpath for more information."
        names = {
            "-b",
            "--bootclasspath",
            "--bcp"
        }
        splitter = Lorg/jf/util/jcommander/ColonParameterSplitter;
    .end annotation

    .annotation runtime Lorg/jf/util/jcommander/ExtendedParameter;
        argumentNames = {
            "classpath"
        }
    .end annotation
.end field

.field public classPath:Ljava/util/List;
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "A colon separated list of additional files to include in the classpath when analyzing the dex file. These will be added to the classpath after any bootclasspath entries."
        names = {
            "-c",
            "--classpath",
            "--cp"
        }
        splitter = Lorg/jf/util/jcommander/ColonParameterSplitter;
    .end annotation

    .annotation runtime Lorg/jf/util/jcommander/ExtendedParameter;
        argumentNames = {
            "classpath"
        }
    .end annotation
.end field

.field public classPathDirectories:Ljava/util/List;
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "A directory to search for classpath files. This option can be used multiple times to specify multiple directories to search. They will be searched in the order they are provided."
        names = {
            "-d",
            "--classpath-dir",
            "--cpd",
            "--dir"
        }
    .end annotation

    .annotation runtime Lorg/jf/util/jcommander/ExtendedParameter;
        argumentNames = {
            "dir"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jf/baksmali/AnalysisArguments;->bootClassPath:Ljava/util/List;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/jf/baksmali/AnalysisArguments;->classPath:Ljava/util/List;

    iput-object v0, p0, Lorg/jf/baksmali/AnalysisArguments;->classPathDirectories:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public loadClassPathForDexFile(Ljava/io/File;Lorg/jf/dexlib2/iface/DexFile;Z)Lorg/jf/dexlib2/analysis/ClassPath;
    .registers 5
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/iface/DexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jf/baksmali/AnalysisArguments;->loadClassPathForDexFile(Ljava/io/File;Lorg/jf/dexlib2/iface/DexFile;ZI)Lorg/jf/dexlib2/analysis/ClassPath;

    move-result-object p1

    return-object p1
.end method

.method public loadClassPathForDexFile(Ljava/io/File;Lorg/jf/dexlib2/iface/DexFile;ZI)Lorg/jf/dexlib2/analysis/ClassPath;
    .registers 12
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/iface/DexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p4, v1, :cond_0

    instance-of v1, p2, Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;

    if-eqz v1, :cond_1

    move-object p3, p2

    check-cast p3, Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;

    invoke-virtual {p3}, Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;->getContainer()Lorg/jf/dexlib2/dexbacked/OatFile;

    move-result-object p3

    invoke-virtual {p3}, Lorg/jf/dexlib2/dexbacked/OatFile;->getOatVersion()I

    move-result p4

    :cond_0
    const/4 p3, 0x1

    :cond_1
    iget-object v1, p0, Lorg/jf/baksmali/AnalysisArguments;->classPathDirectories:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jf/baksmali/AnalysisArguments;->classPathDirectories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/baksmali/AnalysisArguments;->classPathDirectories:Ljava/util/List;

    :cond_3
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lorg/jf/baksmali/AnalysisArguments;->classPathDirectories:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/jf/baksmali/AnalysisArguments;->classPathDirectories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Warning: directory %s does not exist. Ignoring."

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v3, v6, v2

    :goto_1
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Warning: %s is not a directory. Ignoring."

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v3, v6, v2

    goto :goto_1

    :cond_5
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lorg/jf/baksmali/AnalysisArguments;->bootClassPath:Ljava/util/List;

    if-nez v1, :cond_7

    new-instance v0, Lorg/jf/dexlib2/analysis/ClassPathResolver;

    iget-object v1, p0, Lorg/jf/baksmali/AnalysisArguments;->classPath:Ljava/util/List;

    invoke-direct {v0, p1, v1, p2}, Lorg/jf/dexlib2/analysis/ClassPathResolver;-><init>(Ljava/util/List;Ljava/util/List;Lorg/jf/dexlib2/iface/DexFile;)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lorg/jf/baksmali/AnalysisArguments;->bootClassPath:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_8

    iget-object v0, p0, Lorg/jf/baksmali/AnalysisArguments;->bootClassPath:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lorg/jf/dexlib2/analysis/ClassPathResolver;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/baksmali/AnalysisArguments;->classPath:Ljava/util/List;

    invoke-direct {v0, p1, v1, v2, p2}, Lorg/jf/dexlib2/analysis/ClassPathResolver;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/jf/dexlib2/iface/DexFile;)V

    goto :goto_2

    :cond_8
    new-instance v0, Lorg/jf/dexlib2/analysis/ClassPathResolver;

    iget-object v1, p0, Lorg/jf/baksmali/AnalysisArguments;->bootClassPath:Ljava/util/List;

    iget-object v2, p0, Lorg/jf/baksmali/AnalysisArguments;->classPath:Ljava/util/List;

    invoke-direct {v0, p1, v1, v2, p2}, Lorg/jf/dexlib2/analysis/ClassPathResolver;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/jf/dexlib2/iface/DexFile;)V

    :goto_2
    if-nez p4, :cond_9

    instance-of p1, p2, Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;

    if-eqz p1, :cond_9

    check-cast p2, Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;->getContainer()Lorg/jf/dexlib2/dexbacked/OatFile;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/OatFile;->getOatVersion()I

    move-result p4

    :cond_9
    new-instance p1, Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/ClassPathResolver;->getResolvedClassProviders()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2, p3, p4}, Lorg/jf/dexlib2/analysis/ClassPath;-><init>(Ljava/lang/Iterable;ZI)V

    return-object p1
.end method
