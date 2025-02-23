.class public Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/MethodImplementation;


# instance fields
.field private final codeOffset:I

.field public final dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final method:Lorg/jf/dexlib2/dexbacked/DexBackedMethod;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/dexbacked/DexBackedMethod;I)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/dexbacked/DexBackedMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput-object p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->method:Lorg/jf/dexlib2/dexbacked/DexBackedMethod;

    iput p3, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->codeOffset:I

    return-void
.end method

.method private getDebugInfo()Lorg/jf/dexlib2/dexbacked/util/DebugInfo;
    .registers 6
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->codeOffset:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readInt(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-gez v0, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "%s: Invalid debug offset"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->method:Lorg/jf/dexlib2/dexbacked/DexBackedMethod;

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v0, v1, p0}, Lorg/jf/dexlib2/dexbacked/util/DebugInfo;->newOrEmpty(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;ILorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;)Lorg/jf/dexlib2/dexbacked/util/DebugInfo;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v3, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v3, v3, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->buf:[B

    array-length v3, v3

    if-lt v0, v3, :cond_2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "%s: Invalid debug offset"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->method:Lorg/jf/dexlib2/dexbacked/DexBackedMethod;

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v0, v1, p0}, Lorg/jf/dexlib2/dexbacked/util/DebugInfo;->newOrEmpty(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;ILorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;)Lorg/jf/dexlib2/dexbacked/util/DebugInfo;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v1, v0, p0}, Lorg/jf/dexlib2/dexbacked/util/DebugInfo;->newOrEmpty(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;ILorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;)Lorg/jf/dexlib2/dexbacked/util/DebugInfo;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v0, v1, p0}, Lorg/jf/dexlib2/dexbacked/util/DebugInfo;->newOrEmpty(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;ILorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;)Lorg/jf/dexlib2/dexbacked/util/DebugInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDebugItems()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->getDebugInfo()Lorg/jf/dexlib2/dexbacked/util/DebugInfo;

    move-result-object v0

    return-object v0
.end method

.method public getInstructions()Ljava/lang/Iterable;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->codeOffset:I

    add-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v0

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->codeOffset:I

    add-int/lit8 v1, v1, 0x10

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    new-instance v2, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation$1;

    invoke-direct {v2, p0, v1, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation$1;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;II)V

    return-object v2
.end method

.method public getParameterNames(Lorg/jf/dexlib2/dexbacked/DexReader;)Ljava/util/Iterator;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->getDebugInfo()Lorg/jf/dexlib2/dexbacked/util/DebugInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/dexbacked/util/DebugInfo;->getParameterNames(Lorg/jf/dexlib2/dexbacked/DexReader;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getRegisterCount()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->codeOffset:I

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUshort(I)I

    move-result v0

    return v0
.end method

.method public getTryBlocks()Ljava/util/List;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->codeOffset:I

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUshort(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->codeOffset:I

    add-int/lit8 v2, v2, 0xc

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v1

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->codeOffset:I

    add-int/lit8 v2, v2, 0x10

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    const/4 v1, 0x4

    invoke-static {v2, v1}, Lorg/jf/util/AlignmentUtils;->alignOffset(II)I

    move-result v1

    shl-int/lit8 v2, v0, 0x3

    add-int/2addr v2, v1

    new-instance v3, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation$2;

    invoke-direct {v3, p0, v1, v2, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation$2;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;III)V

    return-object v3

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
