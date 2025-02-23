.class public abstract Lorg/jf/baksmali/DexInputCommand;
.super Lorg/jf/util/jcommander/Command;


# instance fields
.field public apiLevel:I
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "The numeric api level of the file being disassembled."
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

.field protected dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

.field protected inputEntry:Ljava/lang/String;

.field protected inputFile:Ljava/io/File;

.field protected inputList:Ljava/util/List;
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "A dex/apk/oat/odex file. For apk or oat files that contain multiple dex files, you can specify the specific entry to use as if the apk/oat file was a directory. e.g. \"app.apk/classes2.dex\". For more information, see \"baksmali help input\"."
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

    invoke-direct {p0, p1}, Lorg/jf/util/jcommander/Command;-><init>(Ljava/util/List;)V

    const/16 p1, 0xf

    iput p1, p0, Lorg/jf/baksmali/DexInputCommand;->apiLevel:I

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/baksmali/DexInputCommand;->inputList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected loadDexFile(Ljava/lang/String;)V
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t find file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_2
    iput-object v0, p0, Lorg/jf/baksmali/DexInputCommand;->inputFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-le p1, v3, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v3, 0x22

    if-ne p1, v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iput-object v2, p0, Lorg/jf/baksmali/DexInputCommand;->inputEntry:Ljava/lang/String;

    :try_start_0
    iget p1, p0, Lorg/jf/baksmali/DexInputCommand;->apiLevel:I

    invoke-static {p1}, Lorg/jf/dexlib2/Opcodes;->forApi(I)Lorg/jf/dexlib2/Opcodes;

    move-result-object p1

    invoke-static {v0, v2, v1, p1}, Lorg/jf/dexlib2/DexFileFactory;->loadDexEntry(Ljava/io/File;Ljava/lang/String;ZLorg/jf/dexlib2/Opcodes;)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/baksmali/DexInputCommand;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    :try_start_1
    iget p1, p0, Lorg/jf/baksmali/DexInputCommand;->apiLevel:I

    invoke-static {p1}, Lorg/jf/dexlib2/Opcodes;->forApi(I)Lorg/jf/dexlib2/Opcodes;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/jf/dexlib2/DexFileFactory;->loadDexFile(Ljava/io/File;Lorg/jf/dexlib2/Opcodes;)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/baksmali/DexInputCommand;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
