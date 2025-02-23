.class public Lorg/jf/baksmali/DumpCommand;
.super Lorg/jf/baksmali/DexInputCommand;


# annotations
.annotation runtime Lcom/beust/jcommander/Parameters;
    commandDescription = "Prints an annotated hex dump for the given dex file"
.end annotation

.annotation runtime Lorg/jf/util/jcommander/ExtendedParameters;
    commandAliases = {
        "du"
    }
    commandName = "dump"
.end annotation


# instance fields
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


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/baksmali/DexInputCommand;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static dump(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Ljava/io/OutputStream;)V
    .registers 5
    .param p0    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/io/OutputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {}, Lorg/jf/util/ConsoleUtil;->getConsoleWidth()I

    move-result p1

    if-gtz p1, :cond_0

    const/16 p1, 0x78

    :cond_0
    new-instance v1, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getOpcodes()Lorg/jf/dexlib2/Opcodes;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;-><init>(Lorg/jf/dexlib2/Opcodes;Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;)V

    new-instance p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;

    invoke-direct {p0, v1, p1}, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;-><init>(Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;I)V

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->writeAnnotations(Ljava/io/Writer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-boolean v0, p0, Lorg/jf/baksmali/DumpCommand;->help:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jf/baksmali/DumpCommand;->inputList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jf/baksmali/DumpCommand;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jf/baksmali/DumpCommand;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Too many files specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jf/baksmali/DumpCommand;->usage()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/jf/baksmali/DumpCommand;->inputList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jf/baksmali/DumpCommand;->loadDexFile(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lorg/jf/baksmali/DumpCommand;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, v1}, Lorg/jf/baksmali/DumpCommand;->dump(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "There was an error while dumping the dex file"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/jf/baksmali/DumpCommand;->usage()V

    return-void
.end method
