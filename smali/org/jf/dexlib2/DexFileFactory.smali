.class public final Lorg/jf/dexlib2/DexFileFactory;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/jf/dexlib2/DexFileFactory;->fullEntryMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/jf/dexlib2/DexFileFactory;->partialEntryMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static fullEntryMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static loadDexContainer(Ljava/io/File;Lorg/jf/dexlib2/Opcodes;)Lorg/jf/dexlib2/iface/MultiDexContainer;
    .registers 8
    .param p0    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    new-instance v0, Lorg/jf/dexlib2/dexbacked/ZipDexContainer;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/dexbacked/ZipDexContainer;-><init>(Ljava/io/File;Lorg/jf/dexlib2/Opcodes;)V

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/ZipDexContainer;->isZipFile()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {p1, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->fromInputStream(Lorg/jf/dexlib2/Opcodes;Ljava/io/InputStream;)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object v3

    new-instance v4, Lorg/jf/dexlib2/DexFileFactory$SingletonMultiDexContainer;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/jf/dexlib2/DexFileFactory$SingletonMultiDexContainer;-><init>(Ljava/lang/String;Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;)V
    :try_end_0
    .catch Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$NotADexFile; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v4

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-static {p1, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;->fromInputStream(Lorg/jf/dexlib2/Opcodes;Ljava/io/InputStream;)Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;

    move-result-object p1

    new-instance v3, Lorg/jf/dexlib2/DexFileFactory$SingletonMultiDexContainer;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lorg/jf/dexlib2/DexFileFactory$SingletonMultiDexContainer;-><init>(Ljava/lang/String;Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;)V
    :try_end_1
    .catch Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile$NotAnOdexFile; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v3

    :catch_1
    const/4 p1, 0x0

    :try_start_2
    new-instance v3, Lorg/jf/dexlib2/DexFileFactory$FilenameVdexProvider;

    invoke-direct {v3, p0}, Lorg/jf/dexlib2/DexFileFactory$FilenameVdexProvider;-><init>(Ljava/io/File;)V

    invoke-static {v0, v3}, Lorg/jf/dexlib2/dexbacked/OatFile;->fromInputStream(Ljava/io/InputStream;Lorg/jf/dexlib2/dexbacked/OatFile$VdexProvider;)Lorg/jf/dexlib2/dexbacked/OatFile;

    move-result-object v3
    :try_end_2
    .catch Lorg/jf/dexlib2/dexbacked/OatFile$NotAnOatFileException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p1, v3

    :catch_2
    if-eqz p1, :cond_2

    :try_start_3
    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/OatFile;->isSupportedVersion()I

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p1

    :cond_1
    :try_start_4
    new-instance p0, Lorg/jf/dexlib2/DexFileFactory$UnsupportedOatVersionException;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/DexFileFactory$UnsupportedOatVersionException;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0

    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance p1, Lorg/jf/dexlib2/DexFileFactory$UnsupportedFileTypeException;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%s is not an apk, dex, odex or oat file."

    invoke-direct {p1, p0, v0}, Lorg/jf/dexlib2/DexFileFactory$UnsupportedFileTypeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/jf/dexlib2/DexFileFactory$DexFileNotFoundException;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%s does not exist"

    invoke-direct {p1, p0, v0}, Lorg/jf/dexlib2/DexFileFactory$DexFileNotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static loadDexEntry(Ljava/io/File;Ljava/lang/String;ZLorg/jf/dexlib2/Opcodes;)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .registers 8
    .param p0    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    :try_start_0
    new-instance v0, Lorg/jf/dexlib2/dexbacked/ZipDexContainer;

    invoke-direct {v0, p0, p3}, Lorg/jf/dexlib2/dexbacked/ZipDexContainer;-><init>(Ljava/io/File;Lorg/jf/dexlib2/Opcodes;)V

    new-instance p3, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v3, v0}, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;-><init>(Ljava/lang/String;Lorg/jf/dexlib2/iface/MultiDexContainer;)V

    invoke-virtual {p3, p1, p2}, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;->findEntry(Ljava/lang/String;Z)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object p3
    :try_end_0
    .catch Lorg/jf/dexlib2/dexbacked/ZipDexContainer$NotAZipFileException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    new-instance p3, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    :try_start_1
    new-instance v3, Lorg/jf/dexlib2/DexFileFactory$FilenameVdexProvider;

    invoke-direct {v3, p0}, Lorg/jf/dexlib2/DexFileFactory$FilenameVdexProvider;-><init>(Ljava/io/File;)V

    invoke-static {p3, v3}, Lorg/jf/dexlib2/dexbacked/OatFile;->fromInputStream(Ljava/io/InputStream;Lorg/jf/dexlib2/dexbacked/OatFile$VdexProvider;)Lorg/jf/dexlib2/dexbacked/OatFile;

    move-result-object v3
    :try_end_1
    .catch Lorg/jf/dexlib2/dexbacked/OatFile$NotAnOatFileException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    :goto_0
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/OatFile;->isSupportedVersion()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/OatFile;->getDexFiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;-><init>(Ljava/lang/String;Lorg/jf/dexlib2/iface/MultiDexContainer;)V

    invoke-virtual {v1, p1, p2}, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;->findEntry(Ljava/lang/String;Z)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    return-object p0

    :cond_0
    :try_start_3
    new-instance p1, Lorg/jf/dexlib2/DexFileFactory$DexFileNotFoundException;

    const-string p2, "Oat file %s contains no dex files"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-direct {p1, p2, v0}, Lorg/jf/dexlib2/DexFileFactory$DexFileNotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance p0, Lorg/jf/dexlib2/DexFileFactory$UnsupportedOatVersionException;

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/DexFileFactory$UnsupportedOatVersionException;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    throw p0

    :cond_2
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    new-instance p1, Lorg/jf/dexlib2/DexFileFactory$UnsupportedFileTypeException;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "%s is not an apk or oat file."

    invoke-direct {p1, p0, p2}, Lorg/jf/dexlib2/DexFileFactory$UnsupportedFileTypeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/jf/dexlib2/DexFileFactory$DexFileNotFoundException;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "Container file %s does not exist"

    invoke-direct {p1, p0, p2}, Lorg/jf/dexlib2/DexFileFactory$DexFileNotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static loadDexFile(Ljava/io/File;Lorg/jf/dexlib2/Opcodes;)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .registers 7
    .param p0    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    :try_start_0
    new-instance v0, Lorg/jf/dexlib2/dexbacked/ZipDexContainer;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/dexbacked/ZipDexContainer;-><init>(Ljava/io/File;Lorg/jf/dexlib2/Opcodes;)V

    new-instance v3, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;-><init>(Ljava/lang/String;Lorg/jf/dexlib2/iface/MultiDexContainer;)V

    const-string v0, "classes.dex"

    invoke-virtual {v3, v0, v2}, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;->findEntry(Ljava/lang/String;Z)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object v0
    :try_end_0
    .catch Lorg/jf/dexlib2/dexbacked/ZipDexContainer$NotAZipFileException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_1
    invoke-static {p1, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->fromInputStream(Lorg/jf/dexlib2/Opcodes;Ljava/io/InputStream;)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object v3
    :try_end_1
    .catch Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$NotADexFile; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_1
    :try_start_2
    invoke-static {p1, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;->fromInputStream(Lorg/jf/dexlib2/Opcodes;Ljava/io/InputStream;)Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;

    move-result-object p1
    :try_end_2
    .catch Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile$NotAnOdexFile; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catch_2
    const/4 p1, 0x0

    :try_start_3
    new-instance v3, Lorg/jf/dexlib2/DexFileFactory$FilenameVdexProvider;

    invoke-direct {v3, p0}, Lorg/jf/dexlib2/DexFileFactory$FilenameVdexProvider;-><init>(Ljava/io/File;)V

    invoke-static {v0, v3}, Lorg/jf/dexlib2/dexbacked/OatFile;->fromInputStream(Ljava/io/InputStream;Lorg/jf/dexlib2/dexbacked/OatFile$VdexProvider;)Lorg/jf/dexlib2/dexbacked/OatFile;

    move-result-object v3
    :try_end_3
    .catch Lorg/jf/dexlib2/dexbacked/OatFile$NotAnOatFileException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object p1, v3

    :catch_3
    if-eqz p1, :cond_2

    :try_start_4
    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/OatFile;->isSupportedVersion()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/OatFile;->getDexFiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :cond_0
    :try_start_5
    new-instance p1, Lorg/jf/dexlib2/DexFileFactory$DexFileNotFoundException;

    const-string v3, "Oat file %s contains no dex files"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-direct {p1, v3, v2}, Lorg/jf/dexlib2/DexFileFactory$DexFileNotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance p0, Lorg/jf/dexlib2/DexFileFactory$UnsupportedOatVersionException;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/DexFileFactory$UnsupportedOatVersionException;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0

    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance p1, Lorg/jf/dexlib2/DexFileFactory$UnsupportedFileTypeException;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%s is not an apk, dex, odex or oat file."

    invoke-direct {p1, p0, v0}, Lorg/jf/dexlib2/DexFileFactory$UnsupportedFileTypeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/jf/dexlib2/DexFileFactory$DexFileNotFoundException;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%s does not exist"

    invoke-direct {p1, p0, v0}, Lorg/jf/dexlib2/DexFileFactory$DexFileNotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static loadDexFile(Ljava/lang/String;Lorg/jf/dexlib2/Opcodes;)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/jf/dexlib2/DexFileFactory;->loadDexFile(Ljava/io/File;Lorg/jf/dexlib2/Opcodes;)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object p0

    return-object p0
.end method

.method private static partialEntryMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_3

    const/16 v3, 0x2f

    if-eq p1, v3, :cond_3

    if-eq p0, v0, :cond_3

    if-ne p0, v3, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public static writeDexFile(Ljava/lang/String;Lorg/jf/dexlib2/iface/DexFile;)V
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/iface/DexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lorg/jf/dexlib2/writer/pool/DexPool;->writeTo(Ljava/lang/String;Lorg/jf/dexlib2/iface/DexFile;)V

    return-void
.end method
