.class public Lcom/gmail/heagoo/apkeditor/pro/DexEncoder;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/File;Lorg/jf/dexlib2/writer/builder/DexBuilder;Lorg/jf/smali/SmaliOptions;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/gmail/heagoo/apkeditor/pro/DexEncoder;->assembleSmaliFile(Ljava/io/File;Lorg/jf/dexlib2/writer/builder/DexBuilder;Lorg/jf/smali/SmaliOptions;)Z

    move-result p0

    return p0
.end method

.method private static assembleSmaliFile(Ljava/io/File;Lorg/jf/dexlib2/writer/builder/DexBuilder;Lorg/jf/smali/SmaliOptions;)Z
    .registers 8

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

    new-instance v0, Lorg/a/a/f;

    move-object v3, v2

    check-cast v3, Lorg/a/a/y;

    invoke-direct {v0, v3}, Lorg/a/a/f;-><init>(Lorg/a/a/y;)V

    new-instance v3, Lorg/jf/smali/smaliParser;

    invoke-direct {v3, v0}, Lorg/jf/smali/smaliParser;-><init>(Lorg/a/a/z;)V

    iget-boolean v4, p2, Lorg/jf/smali/SmaliOptions;->verboseErrors:Z

    invoke-virtual {v3, v4}, Lorg/jf/smali/smaliParser;->setVerboseErrors(Z)V

    iget-boolean v4, p2, Lorg/jf/smali/SmaliOptions;->allowOdexOpcodes:Z

    invoke-virtual {v3, v4}, Lorg/jf/smali/smaliParser;->setAllowOdex(Z)V

    iget v4, p2, Lorg/jf/smali/SmaliOptions;->apiLevel:I

    invoke-virtual {v3, v4}, Lorg/jf/smali/smaliParser;->setApiLevel(I)V

    invoke-virtual {v3}, Lorg/jf/smali/smaliParser;->smali_file()Lorg/jf/smali/smaliParser$smali_file_return;

    move-result-object v4

    invoke-virtual {v3}, Lorg/jf/smali/smaliParser;->getNumberOfSyntaxErrors()I

    move-result v3

    if-gtz v3, :cond_4

    invoke-interface {v2}, Lorg/jf/smali/LexerErrorInterface;->getNumberOfSyntaxErrors()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lorg/jf/smali/smaliParser$smali_file_return;->getTree()Lorg/a/a/b/d;

    move-result-object v3

    new-instance v4, Lorg/a/a/b/f;

    invoke-direct {v4, v3}, Lorg/a/a/b/f;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Lorg/a/a/b/f;->a(Lorg/a/a/z;)V

    iget-boolean v0, p2, Lorg/jf/smali/SmaliOptions;->printTokens:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Lorg/a/a/b/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lorg/jf/smali/smaliTreeWalker;

    invoke-direct {v0, v4}, Lorg/jf/smali/smaliTreeWalker;-><init>(Lorg/a/a/b/p;)V

    iget v3, p2, Lorg/jf/smali/SmaliOptions;->apiLevel:I

    invoke-virtual {v0, v3}, Lorg/jf/smali/smaliTreeWalker;->setApiLevel(I)V

    iget-boolean p2, p2, Lorg/jf/smali/SmaliOptions;->verboseErrors:Z

    invoke-virtual {v0, p2}, Lorg/jf/smali/smaliTreeWalker;->setVerboseErrors(Z)V

    invoke-virtual {v0, p1}, Lorg/jf/smali/smaliTreeWalker;->setDexBuilder(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V

    invoke-virtual {v0}, Lorg/jf/smali/smaliTreeWalker;->smali_file()Lorg/jf/dexlib2/iface/ClassDef;

    invoke-virtual {v0}, Lorg/jf/smali/smaliTreeWalker;->getNumberOfSyntaxErrors()I

    move-result p1

    if-eqz p1, :cond_3

    check-cast v2, Lorg/jf/smali/smaliFlexLexer;

    invoke-virtual {v2}, Lorg/jf/smali/smaliFlexLexer;->getErrorMessages()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error occurred while compiling "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    :try_start_2
    check-cast v2, Lorg/jf/smali/smaliFlexLexer;

    invoke-virtual {v2}, Lorg/jf/smali/smaliFlexLexer;->getErrorMessages()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error occurred while compiling "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_6
    throw p0
.end method

.method private static getSmaliFilesInDir(Ljava/io/File;Ljava/util/Set;)V
    .registers 7

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

    invoke-static {v2, p1}, Lcom/gmail/heagoo/apkeditor/pro/DexEncoder;->getSmaliFilesInDir(Ljava/io/File;Ljava/util/Set;)V

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

.method public static smali2Dex(Ljava/lang/String;Ljava/lang/String;Lcom/gmail/heagoo/apkeditor/e/a;)V
    .registers 10

    new-instance v0, Lorg/jf/smali/SmaliOptions;

    invoke-direct {v0}, Lorg/jf/smali/SmaliOptions;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    iput v1, v0, Lorg/jf/smali/SmaliOptions;->jobs:I

    const/16 v1, 0xf

    iput v1, v0, Lorg/jf/smali/SmaliOptions;->apiLevel:I

    iput-object p1, v0, Lorg/jf/smali/SmaliOptions;->outputDexFile:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, v0, Lorg/jf/smali/SmaliOptions;->allowOdexOpcodes:Z

    iput-boolean p1, v0, Lorg/jf/smali/SmaliOptions;->verboseErrors:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :try_start_0
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/gmail/heagoo/apkeditor/pro/DexEncoder;->getSmaliFilesInDir(Ljava/io/File;Ljava/util/Set;)V

    new-instance p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;

    invoke-static {v1}, Lorg/jf/dexlib2/Opcodes;->forApi(I)Lorg/jf/dexlib2/Opcodes;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;-><init>(Lorg/jf/dexlib2/Opcodes;)V

    iget v1, v0, Lorg/jf/smali/SmaliOptions;->jobs:I

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    new-instance v5, Lcom/gmail/heagoo/apkeditor/pro/DexEncoder$1;

    invoke-direct {v5, v4, p0, v0}, Lcom/gmail/heagoo/apkeditor/pro/DexEncoder$1;-><init>(Ljava/io/File;Lorg/jf/dexlib2/writer/builder/DexBuilder;Lorg/jf/smali/SmaliOptions;)V

    invoke-interface {v1, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 p1, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    invoke-interface {p2, v4, v2}, Lcom/gmail/heagoo/apkeditor/e/a;->a(II)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-nez p1, :cond_3

    new-instance p1, Lorg/jf/dexlib2/writer/io/FileDataStore;

    new-instance p2, Ljava/io/File;

    iget-object v0, v0, Lorg/jf/smali/SmaliOptions;->outputDexFile:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/jf/dexlib2/writer/io/FileDataStore;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->writeTo(Lorg/jf/dexlib2/writer/io/DexDataStore;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    :cond_3
    :try_start_3
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Encountered errors while compiling smali files."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "UNEXPECTED TOP-LEVEL ERROR: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "UNEXPECTED TOP-LEVEL EXCEPTION: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static writeReferences(Ljava/util/List;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/common/collect/Ordering;->sortedCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_1
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_1
    throw p0
.end method
