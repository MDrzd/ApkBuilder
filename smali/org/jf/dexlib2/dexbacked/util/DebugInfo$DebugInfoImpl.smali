.class Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;
.super Lorg/jf/dexlib2/dexbacked/util/DebugInfo;


# static fields
.field private static final EMPTY_LOCAL_INFO:Lorg/jf/dexlib2/iface/debug/LocalInfo;


# instance fields
.field private final debugInfoOffset:I

.field public final dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final methodImpl:Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->EMPTY_LOCAL_INFO:Lorg/jf/dexlib2/iface/debug/LocalInfo;

    return-void
.end method

.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;ILorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/util/DebugInfo;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->debugInfoOffset:I

    iput-object p3, p0, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->methodImpl:Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;

    return-void
.end method

.method static synthetic access$000(Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;)Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;
    .registers 1

    iget-object p0, p0, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->methodImpl:Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;

    return-object p0
.end method

.method static synthetic access$100()Lorg/jf/dexlib2/iface/debug/LocalInfo;
    .registers 1

    sget-object v0, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->EMPTY_LOCAL_INFO:Lorg/jf/dexlib2/iface/debug/LocalInfo;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getParameterNames(Lorg/jf/dexlib2/dexbacked/DexReader;)Ljava/util/Iterator;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->getParameterNames(Lorg/jf/dexlib2/dexbacked/DexReader;)Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;

    move-result-object p1

    return-object p1
.end method

.method public getParameterNames(Lorg/jf/dexlib2/dexbacked/DexReader;)Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;
    .registers 4
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->debugInfoOffset:I

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->skipUleb128()V

    :cond_0
    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v0

    new-instance v1, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$4;

    invoke-direct {v1, p0, p1, v0}, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$4;-><init>(Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;Lorg/jf/dexlib2/dexbacked/DexReader;I)V

    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 10
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->debugInfoOffset:I

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexReader;->readBigUleb128()I

    move-result v5

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->methodImpl:Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->getRegisterCount()I

    move-result v1

    new-array v6, v1, [Lorg/jf/dexlib2/iface/debug/LocalInfo;

    sget-object v2, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->EMPTY_LOCAL_INFO:Lorg/jf/dexlib2/iface/debug/LocalInfo;

    invoke-static {v6, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->methodImpl:Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;

    iget-object v2, v2, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->method:Lorg/jf/dexlib2/dexbacked/DexBackedMethod;

    new-instance v3, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator;

    invoke-virtual {v2}, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->getParameterTypes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2}, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->getParameterAnnotations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->getParameterNames(Lorg/jf/dexlib2/dexbacked/DexReader;)Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;

    move-result-object v7

    invoke-direct {v3, v4, v2, v7}, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Iterator;)V

    sget-object v2, Lorg/jf/dexlib2/AccessFlags;->STATIC:Lorg/jf/dexlib2/AccessFlags;

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->methodImpl:Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;

    iget-object v4, v4, Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;->method:Lorg/jf/dexlib2/dexbacked/DexBackedMethod;

    invoke-virtual {v4}, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->getAccessFlags()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/jf/dexlib2/AccessFlags;->isSet(I)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v7, 0x1

    if-nez v2, :cond_0

    new-instance v2, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$2;

    invoke-direct {v2, p0}, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$2;-><init>(Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;)V

    aput-object v2, v6, v4

    const/4 v4, 0x1

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v4, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jf/dexlib2/iface/debug/LocalInfo;

    aput-object v8, v6, v4

    move v4, v2

    goto :goto_0

    :cond_1
    if-ge v4, v1, :cond_4

    sub-int/2addr v1, v7

    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_4

    aget-object v2, v6, v4

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/debug/LocalInfo;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v7, "J"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "D"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-eq v1, v4, :cond_4

    :cond_3
    aput-object v2, v6, v1

    sget-object v2, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->EMPTY_LOCAL_INFO:Lorg/jf/dexlib2/iface/debug/LocalInfo;

    aput-object v2, v6, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    new-instance v7, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;

    iget-object v3, p0, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v4

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl$3;-><init>(Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II[Lorg/jf/dexlib2/iface/debug/LocalInfo;)V

    return-object v7
.end method
