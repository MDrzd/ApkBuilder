.class public Lcom/gmail/heagoo/apkeditor/pro/ResourceDecoder;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeResources(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/pro/ResourceDecoder;->loadDexFile(Ljava/lang/String;)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t create the output directory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    invoke-static {}, Lcom/gmail/heagoo/apkeditor/pro/ResourceDecoder;->getOptions()Lorg/jf/baksmali/BaksmaliOptions;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lorg/jf/baksmali/Baksmali_r;->disassembleDexResource(Lorg/jf/dexlib2/iface/DexFile;Ljava/io/File;ILorg/jf/baksmali/BaksmaliOptions;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Baksmali.disassembleDexFile failed."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getOptions()Lorg/jf/baksmali/BaksmaliOptions;
    .registers 3

    new-instance v0, Lorg/jf/baksmali/BaksmaliOptions;

    invoke-direct {v0}, Lorg/jf/baksmali/BaksmaliOptions;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->parameterRegisters:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/jf/baksmali/BaksmaliOptions;->localsDirective:Z

    iput-boolean v2, v0, Lorg/jf/baksmali/BaksmaliOptions;->sequentialLabels:Z

    iput-boolean v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->debugInfo:Z

    iput-boolean v2, v0, Lorg/jf/baksmali/BaksmaliOptions;->codeOffsets:Z

    iput-boolean v1, v0, Lorg/jf/baksmali/BaksmaliOptions;->accessorComments:Z

    iput-boolean v2, v0, Lorg/jf/baksmali/BaksmaliOptions;->implicitReferences:Z

    iput-boolean v2, v0, Lorg/jf/baksmali/BaksmaliOptions;->normalizeVirtualMethods:Z

    iput v2, v0, Lorg/jf/baksmali/BaksmaliOptions;->registerInfo:I

    return-object v0
.end method

.method protected static loadDexFile(Ljava/lang/String;)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 p0, 0xf

    invoke-static {p0}, Lorg/jf/dexlib2/Opcodes;->forApi(I)Lorg/jf/dexlib2/Opcodes;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/jf/dexlib2/DexFileFactory;->loadDexFile(Ljava/io/File;Lorg/jf/dexlib2/Opcodes;)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t find file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
