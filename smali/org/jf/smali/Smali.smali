.class public Lorg/jf/smali/Smali;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/File;Lorg/jf/dexlib2/writer/builder/DexBuilder;Lorg/jf/smali/SmaliOptions;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/jf/smali/Smali;->assembleSmaliFile(Ljava/io/File;Lorg/jf/dexlib2/writer/builder/DexBuilder;Lorg/jf/smali/SmaliOptions;)Z

    move-result p0

    return p0
.end method

.method public static assemble(Lorg/jf/smali/SmaliOptions;Ljava/util/List;)Z
    .registers 10

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2, v0}, Lorg/jf/smali/Smali;->getSmaliFilesInDir(Ljava/io/File;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot find file or directory \""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Lorg/jf/dexlib2/writer/builder/DexBuilder;

    iget v1, p0, Lorg/jf/smali/SmaliOptions;->apiLevel:I

    invoke-static {v1}, Lorg/jf/dexlib2/Opcodes;->forApi(I)Lorg/jf/dexlib2/Opcodes;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;-><init>(Lorg/jf/dexlib2/Opcodes;)V

    iget v1, p0, Lorg/jf/smali/SmaliOptions;->jobs:I

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    new-instance v4, Lorg/jf/smali/Smali$1;

    invoke-direct {v4, v3, p1, p0}, Lorg/jf/smali/Smali$1;-><init>(Ljava/io/File;Lorg/jf/dexlib2/writer/builder/DexBuilder;Lorg/jf/smali/SmaliOptions;)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    :catch_0
    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :catch_1
    move-exception v6

    :try_start_1
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-eqz v3, :cond_7

    return v2

    :cond_7
    new-instance v0, Lorg/jf/dexlib2/writer/io/FileDataStore;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lorg/jf/smali/SmaliOptions;->outputDexFile:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/io/FileDataStore;-><init>(Ljava/io/File;)V

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->writeTo(Lorg/jf/dexlib2/writer/io/DexDataStore;)V

    return v5
.end method

.method public static varargs assemble(Lorg/jf/smali/SmaliOptions;[Ljava/lang/String;)Z
    .registers 2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/jf/smali/Smali;->assemble(Lorg/jf/smali/SmaliOptions;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private static assembleSmaliFile(Ljava/io/File;Lorg/jf/dexlib2/writer/builder/DexBuilder;Lorg/jf/smali/SmaliOptions;)Z
    .registers 12

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v2, Lorg/jf/smali/smaliFlexLexer;

    invoke-direct {v2, v0}, Lorg/jf/smali/smaliFlexLexer;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    check-cast v0, Lorg/jf/smali/smaliFlexLexer;

    invoke-virtual {v0, p0}, Lorg/jf/smali/smaliFlexLexer;->setSourceFile(Ljava/io/File;)V

    new-instance p0, Lorg/a/a/f;

    move-object v0, v2

    check-cast v0, Lorg/a/a/y;

    invoke-direct {p0, v0}, Lorg/a/a/f;-><init>(Lorg/a/a/y;)V

    iget-boolean v0, p2, Lorg/jf/smali/SmaliOptions;->printTokens:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/a/a/f;->d()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {p0, v0}, Lorg/a/a/f;->d(I)Lorg/a/a/x;

    move-result-object v4

    invoke-interface {v4}, Lorg/a/a/x;->getChannel()I

    move-result v5

    const/16 v6, 0x63

    if-eq v5, v6, :cond_0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lorg/jf/smali/smaliParser;->tokenNames:[Ljava/lang/String;

    invoke-interface {v4}, Lorg/a/a/x;->getType()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lorg/a/a/x;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    :cond_2
    new-instance v0, Lorg/jf/smali/smaliParser;

    invoke-direct {v0, p0}, Lorg/jf/smali/smaliParser;-><init>(Lorg/a/a/z;)V

    iget-boolean v4, p2, Lorg/jf/smali/SmaliOptions;->verboseErrors:Z

    invoke-virtual {v0, v4}, Lorg/jf/smali/smaliParser;->setVerboseErrors(Z)V

    iget-boolean v4, p2, Lorg/jf/smali/SmaliOptions;->allowOdexOpcodes:Z

    invoke-virtual {v0, v4}, Lorg/jf/smali/smaliParser;->setAllowOdex(Z)V

    iget v4, p2, Lorg/jf/smali/SmaliOptions;->apiLevel:I

    invoke-virtual {v0, v4}, Lorg/jf/smali/smaliParser;->setApiLevel(I)V

    invoke-virtual {v0}, Lorg/jf/smali/smaliParser;->smali_file()Lorg/jf/smali/smaliParser$smali_file_return;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jf/smali/smaliParser;->getNumberOfSyntaxErrors()I

    move-result v0

    if-gtz v0, :cond_6

    invoke-interface {v2}, Lorg/jf/smali/LexerErrorInterface;->getNumberOfSyntaxErrors()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lorg/jf/smali/smaliParser$smali_file_return;->getTree()Lorg/a/a/b/d;

    move-result-object v0

    new-instance v2, Lorg/a/a/b/f;

    invoke-direct {v2, v0}, Lorg/a/a/b/f;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0}, Lorg/a/a/b/f;->a(Lorg/a/a/z;)V

    iget-boolean p0, p2, Lorg/jf/smali/SmaliOptions;->printTokens:Z

    if-eqz p0, :cond_4

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/a/a/b/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    new-instance p0, Lorg/jf/smali/smaliTreeWalker;

    invoke-direct {p0, v2}, Lorg/jf/smali/smaliTreeWalker;-><init>(Lorg/a/a/b/p;)V

    iget v0, p2, Lorg/jf/smali/SmaliOptions;->apiLevel:I

    invoke-virtual {p0, v0}, Lorg/jf/smali/smaliTreeWalker;->setApiLevel(I)V

    iget-boolean p2, p2, Lorg/jf/smali/SmaliOptions;->verboseErrors:Z

    invoke-virtual {p0, p2}, Lorg/jf/smali/smaliTreeWalker;->setVerboseErrors(Z)V

    invoke-virtual {p0, p1}, Lorg/jf/smali/smaliTreeWalker;->setDexBuilder(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V

    invoke-virtual {p0}, Lorg/jf/smali/smaliTreeWalker;->smali_file()Lorg/jf/dexlib2/iface/ClassDef;

    invoke-virtual {p0}, Lorg/jf/smali/smaliTreeWalker;->getNumberOfSyntaxErrors()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_5

    const/4 v3, 0x1

    :cond_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return v3

    :cond_6
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return v3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_7
    throw p0
.end method

.method private static getSmaliFilesInDir(Ljava/io/File;Ljava/util/Set;)V
    .registers 7
    .param p0    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, p1}, Lorg/jf/smali/Smali;->getSmaliFilesInDir(Ljava/io/File;Ljava/util/Set;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".smali"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
