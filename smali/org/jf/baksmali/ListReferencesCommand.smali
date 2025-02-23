.class public abstract Lorg/jf/baksmali/ListReferencesCommand;
.super Lorg/jf/baksmali/DexInputCommand;


# instance fields
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

.field private final referenceType:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/baksmali/DexInputCommand;-><init>(Ljava/util/List;)V

    iput p2, p0, Lorg/jf/baksmali/ListReferencesCommand;->referenceType:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-boolean v0, p0, Lorg/jf/baksmali/ListReferencesCommand;->help:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/jf/baksmali/ListReferencesCommand;->inputList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jf/baksmali/ListReferencesCommand;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/jf/baksmali/ListReferencesCommand;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Too many files specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jf/baksmali/ListReferencesCommand;->usage()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/jf/baksmali/ListReferencesCommand;->inputList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jf/baksmali/ListReferencesCommand;->loadDexFile(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/baksmali/ListReferencesCommand;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/baksmali/ListReferencesCommand;->referenceType:I

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getReferences(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/reference/Reference;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/jf/dexlib2/util/ReferenceUtil;->getReferenceString(Lorg/jf/dexlib2/iface/reference/Reference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/jf/baksmali/ListReferencesCommand;->usage()V

    return-void
.end method
