.class public Lcom/gmail/heagoo/apkeditor/pro/DexDecoder;
.super Ljava/lang/Object;


# instance fields
.field private dexFilePath:Ljava/lang/String;

.field private strWarning:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/pro/DexDecoder;->dexFilePath:Ljava/lang/String;

    return-void
.end method

.method private getOptions()Lorg/jf/baksmali/BaksmaliOptions;
    .registers 4

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


# virtual methods
.method public dex2smali(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/pro/DexDecoder;->dexFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/pro/DexDecoder;->loadDexFile(Ljava/lang/String;)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->hasOdexOpcodes()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "You are disassembling an odex file without deodexing it. You won\'t be able to re-assemble the results unless you deodex it"

    iput-object v1, p0, Lcom/gmail/heagoo/apkeditor/pro/DexDecoder;->strWarning:Ljava/lang/String;

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t create the output directory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/pro/DexDecoder;->getOptions()Lorg/jf/baksmali/BaksmaliOptions;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lorg/jf/baksmali/Baksmali;->disassembleDexFile(Lorg/jf/dexlib2/iface/DexFile;Ljava/io/File;ILorg/jf/baksmali/BaksmaliOptions;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Baksmali.disassembleDexFile failed."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getWarning()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/pro/DexDecoder;->strWarning:Ljava/lang/String;

    return-object v0
.end method

.method protected loadDexFile(Ljava/lang/String;)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 p1, 0xf

    invoke-static {p1}, Lorg/jf/dexlib2/Opcodes;->forApi(I)Lorg/jf/dexlib2/Opcodes;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/jf/dexlib2/DexFileFactory;->loadDexFile(Ljava/io/File;Lorg/jf/dexlib2/Opcodes;)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t find file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
