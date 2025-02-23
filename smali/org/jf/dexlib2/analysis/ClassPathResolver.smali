.class public Lorg/jf/dexlib2/analysis/ClassPathResolver;
.super Ljava/lang/Object;


# instance fields
.field private final classPathDirs:Ljava/lang/Iterable;

.field private final classProviders:Ljava/util/List;

.field private final loadedFiles:Ljava/util/Set;

.field private final opcodes:Lorg/jf/dexlib2/Opcodes;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/jf/dexlib2/iface/DexFile;)V
    .registers 11
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/iface/DexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jf/dexlib2/analysis/ClassPathResolver;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/jf/dexlib2/iface/DexFile;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/jf/dexlib2/iface/DexFile;Z)V
    .registers 11
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/iface/DexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/beust/jcommander/internal/Sets;->newHashSet()Ljava/util/Set;

    move-result-object p5

    iput-object p5, p0, Lorg/jf/dexlib2/analysis/ClassPathResolver;->loadedFiles:Ljava/util/Set;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p5

    iput-object p5, p0, Lorg/jf/dexlib2/analysis/ClassPathResolver;->classProviders:Ljava/util/List;

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/ClassPathResolver;->classPathDirs:Ljava/lang/Iterable;

    invoke-interface {p4}, Lorg/jf/dexlib2/iface/DexFile;->getOpcodes()Lorg/jf/dexlib2/Opcodes;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/ClassPathResolver;->opcodes:Lorg/jf/dexlib2/Opcodes;

    if-nez p2, :cond_0

    iget-object p1, p0, Lorg/jf/dexlib2/analysis/ClassPathResolver;->opcodes:Lorg/jf/dexlib2/Opcodes;

    iget p1, p1, Lorg/jf/dexlib2/Opcodes;->api:I

    invoke-static {p4, p1}, Lorg/jf/dexlib2/analysis/ClassPathResolver;->getDefaultBootClassPath(Lorg/jf/dexlib2/iface/DexFile;I)Ljava/util/List;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 p5, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p2}, Lorg/jf/dexlib2/analysis/ClassPathResolver;->loadLocalOrDeviceBootClassPathEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jf/dexlib2/analysis/ClassPathResolver$NoDexException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/jf/dexlib2/analysis/ClassPathResolver$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, ".odex"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_1
    invoke-direct {p0, v3}, Lorg/jf/dexlib2/analysis/ClassPathResolver;->loadLocalOrDeviceBootClassPathEntry(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/jf/dexlib2/analysis/ClassPathResolver$NoDexException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/jf/dexlib2/analysis/ClassPathResolver$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    new-instance p1, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;

    invoke-direct {p1, v2}, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    new-instance p1, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    aput-object v3, p3, p5

    const-string p2, "Neither %s nor %s contain a dex file"

    invoke-direct {p1, p2, p3}, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;

    invoke-direct {p1, v2}, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception v2

    const-string v3, ".jar"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".odex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_2
    invoke-direct {p0, v3}, Lorg/jf/dexlib2/analysis/ClassPathResolver;->loadLocalOrDeviceBootClassPathEntry(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/jf/dexlib2/analysis/ClassPathResolver$NoDexException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/jf/dexlib2/analysis/ClassPathResolver$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    :catch_4
    new-instance p1, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;

    invoke-direct {p1, v2}, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_5
    new-instance p1, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    aput-object v3, p3, p5

    const-string p2, "Neither %s nor %s contain a dex file"

    invoke-direct {p1, p2, p3}, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;

    invoke-direct {p1, v2}, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :try_start_3
    invoke-direct {p0, p2}, Lorg/jf/dexlib2/analysis/ClassPathResolver;->loadLocalClassPathEntry(Ljava/lang/String;)Z
    :try_end_3
    .catch Lorg/jf/dexlib2/analysis/ClassPathResolver$NoDexException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_1

    :catch_6
    move-exception p1

    new-instance p2, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;

    invoke-direct {p2, p1}, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    instance-of p1, p4, Lorg/jf/dexlib2/iface/MultiDexContainer$MultiDexFile;

    if-eqz p1, :cond_6

    check-cast p4, Lorg/jf/dexlib2/iface/MultiDexContainer$MultiDexFile;

    invoke-interface {p4}, Lorg/jf/dexlib2/iface/MultiDexContainer$MultiDexFile;->getContainer()Lorg/jf/dexlib2/iface/MultiDexContainer;

    move-result-object p1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/MultiDexContainer;->getDexEntryNames()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object p4, p0, Lorg/jf/dexlib2/analysis/ClassPathResolver;->classProviders:Ljava/util/List;

    new-instance p5, Lorg/jf/dexlib2/analysis/DexClassProvider;

    invoke-interface {p1, p3}, Lorg/jf/dexlib2/iface/MultiDexContainer;->getEntry(Ljava/lang/String;)Lorg/jf/dexlib2/iface/DexFile;

    move-result-object p3

    invoke-direct {p5, p3}, Lorg/jf/dexlib2/analysis/DexClassProvider;-><init>(Lorg/jf/dexlib2/iface/DexFile;)V

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    iget-object p1, p0, Lorg/jf/dexlib2/analysis/ClassPathResolver;->classProviders:Ljava/util/List;

    new-instance p2, Lorg/jf/dexlib2/analysis/DexClassProvider;

    invoke-direct {p2, p4}, Lorg/jf/dexlib2/analysis/DexClassProvider;-><init>(Lorg/jf/dexlib2/iface/DexFile;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lorg/jf/dexlib2/iface/DexFile;)V
    .registers 10
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/iface/DexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/jf/dexlib2/analysis/ClassPathResolver;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/jf/dexlib2/iface/DexFile;Z)V

    return-void
.end method

.method private static getDefaultBootClassPath(Lorg/jf/dexlib2/iface/DexFile;I)Ljava/util/List;
    .registers 16
    .param p0    # Lorg/jf/dexlib2/iface/DexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    instance-of v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    check-cast p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;->getContainer()Lorg/jf/dexlib2/dexbacked/OatFile;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/OatFile;->getBootClassPath()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ".art"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".oat"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    new-array p0, v2, [Ljava/lang/String;

    const-string p1, "boot.oat"

    aput-object p1, p0, v3

    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;->getDependencies()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 p0, 0x8

    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x5

    if-gt p1, p0, :cond_5

    new-array p0, v5, [Ljava/lang/String;

    const-string p1, "/system/framework/core.jar"

    aput-object p1, p0, v3

    const-string p1, "/system/framework/ext.jar"

    aput-object p1, p0, v2

    const-string p1, "/system/framework/framework.jar"

    aput-object p1, p0, v4

    const-string p1, "/system/framework/android.policy.jar"

    aput-object p1, p0, v0

    const-string p1, "/system/framework/services.jar"

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 v6, 0xb

    const/4 v7, 0x6

    const/4 v8, 0x7

    if-gt p1, v6, :cond_6

    new-array p0, v8, [Ljava/lang/String;

    const-string p1, "/system/framework/core.jar"

    aput-object p1, p0, v3

    const-string p1, "/system/framework/bouncycastle.jar"

    aput-object p1, p0, v2

    const-string p1, "/system/framework/ext.jar"

    aput-object p1, p0, v4

    const-string p1, "/system/framework/framework.jar"

    aput-object p1, p0, v0

    const-string p1, "/system/framework/android.policy.jar"

    aput-object p1, p0, v1

    const-string p1, "/system/framework/services.jar"

    aput-object p1, p0, v5

    const-string p1, "/system/framework/core-junit.jar"

    aput-object p1, p0, v7

    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_6
    const/16 v9, 0xd

    if-gt p1, v9, :cond_7

    new-array p0, p0, [Ljava/lang/String;

    const-string p1, "/system/framework/core.jar"

    aput-object p1, p0, v3

    const-string p1, "/system/framework/apache-xml.jar"

    aput-object p1, p0, v2

    const-string p1, "/system/framework/bouncycastle.jar"

    aput-object p1, p0, v4

    const-string p1, "/system/framework/ext.jar"

    aput-object p1, p0, v0

    const-string p1, "/system/framework/framework.jar"

    aput-object p1, p0, v1

    const-string p1, "/system/framework/android.policy.jar"

    aput-object p1, p0, v5

    const-string p1, "/system/framework/services.jar"

    aput-object p1, p0, v7

    const-string p1, "/system/framework/core-junit.jar"

    aput-object p1, p0, v8

    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_7
    const/16 v10, 0xf

    const/16 v11, 0x9

    if-gt p1, v10, :cond_8

    new-array p1, v11, [Ljava/lang/String;

    const-string v6, "/system/framework/core.jar"

    aput-object v6, p1, v3

    const-string v3, "/system/framework/core-junit.jar"

    aput-object v3, p1, v2

    const-string v2, "/system/framework/bouncycastle.jar"

    aput-object v2, p1, v4

    const-string v2, "/system/framework/ext.jar"

    aput-object v2, p1, v0

    const-string v0, "/system/framework/framework.jar"

    aput-object v0, p1, v1

    const-string v0, "/system/framework/android.policy.jar"

    aput-object v0, p1, v5

    const-string v0, "/system/framework/services.jar"

    aput-object v0, p1, v7

    const-string v0, "/system/framework/apache-xml.jar"

    aput-object v0, p1, v8

    const-string v0, "/system/framework/filterfw.jar"

    aput-object v0, p1, p0

    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_8
    const/16 v10, 0x11

    const/16 v12, 0xa

    if-gt p1, v10, :cond_9

    new-array p1, v12, [Ljava/lang/String;

    const-string v6, "/system/framework/core.jar"

    aput-object v6, p1, v3

    const-string v3, "/system/framework/core-junit.jar"

    aput-object v3, p1, v2

    const-string v2, "/system/framework/bouncycastle.jar"

    aput-object v2, p1, v4

    const-string v2, "/system/framework/ext.jar"

    aput-object v2, p1, v0

    const-string v0, "/system/framework/framework.jar"

    aput-object v0, p1, v1

    const-string v0, "/system/framework/telephony-common.jar"

    aput-object v0, p1, v5

    const-string v0, "/system/framework/mms-common.jar"

    aput-object v0, p1, v7

    const-string v0, "/system/framework/android.policy.jar"

    aput-object v0, p1, v8

    const-string v0, "/system/framework/services.jar"

    aput-object v0, p1, p0

    const-string p0, "/system/framework/apache-xml.jar"

    aput-object p0, p1, v11

    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_9
    const/16 v10, 0x12

    if-gt p1, v10, :cond_a

    new-array p1, v6, [Ljava/lang/String;

    const-string v6, "/system/framework/core.jar"

    aput-object v6, p1, v3

    const-string v3, "/system/framework/core-junit.jar"

    aput-object v3, p1, v2

    const-string v2, "/system/framework/bouncycastle.jar"

    aput-object v2, p1, v4

    const-string v2, "/system/framework/ext.jar"

    aput-object v2, p1, v0

    const-string v0, "/system/framework/framework.jar"

    aput-object v0, p1, v1

    const-string v0, "/system/framework/telephony-common.jar"

    aput-object v0, p1, v5

    const-string v0, "/system/framework/voip-common.jar"

    aput-object v0, p1, v7

    const-string v0, "/system/framework/mms-common.jar"

    aput-object v0, p1, v8

    const-string v0, "/system/framework/android.policy.jar"

    aput-object v0, p1, p0

    const-string p0, "/system/framework/services.jar"

    aput-object p0, p1, v11

    const-string p0, "/system/framework/apache-xml.jar"

    aput-object p0, p1, v12

    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_a
    const/16 v10, 0x13

    const/16 v13, 0xc

    if-gt p1, v10, :cond_b

    const/16 p1, 0xe

    new-array p1, p1, [Ljava/lang/String;

    const-string v10, "/system/framework/core.jar"

    aput-object v10, p1, v3

    const-string v3, "/system/framework/conscrypt.jar"

    aput-object v3, p1, v2

    const-string v2, "/system/framework/core-junit.jar"

    aput-object v2, p1, v4

    const-string v2, "/system/framework/bouncycastle.jar"

    aput-object v2, p1, v0

    const-string v0, "/system/framework/ext.jar"

    aput-object v0, p1, v1

    const-string v0, "/system/framework/framework.jar"

    aput-object v0, p1, v5

    const-string v0, "/system/framework/framework2.jar"

    aput-object v0, p1, v7

    const-string v0, "/system/framework/telephony-common.jar"

    aput-object v0, p1, v8

    const-string v0, "/system/framework/voip-common.jar"

    aput-object v0, p1, p0

    const-string p0, "/system/framework/mms-common.jar"

    aput-object p0, p1, v11

    const-string p0, "/system/framework/android.policy.jar"

    aput-object p0, p1, v12

    const-string p0, "/system/framework/services.jar"

    aput-object p0, p1, v6

    const-string p0, "/system/framework/apache-xml.jar"

    aput-object p0, p1, v13

    const-string p0, "/system/framework/webviewchromium.jar"

    aput-object p0, p1, v9

    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 v10, 0x16

    if-gt p1, v10, :cond_c

    new-array p1, v9, [Ljava/lang/String;

    const-string v9, "/system/framework/core-libart.jar"

    aput-object v9, p1, v3

    const-string v3, "/system/framework/conscrypt.jar"

    aput-object v3, p1, v2

    const-string v2, "/system/framework/okhttp.jar"

    aput-object v2, p1, v4

    const-string v2, "/system/framework/core-junit.jar"

    aput-object v2, p1, v0

    const-string v0, "/system/framework/bouncycastle.jar"

    aput-object v0, p1, v1

    const-string v0, "/system/framework/ext.jar"

    aput-object v0, p1, v5

    const-string v0, "/system/framework/framework.jar"

    aput-object v0, p1, v7

    const-string v0, "/system/framework/telephony-common.jar"

    aput-object v0, p1, v8

    const-string v0, "/system/framework/voip-common.jar"

    aput-object v0, p1, p0

    const-string p0, "/system/framework/ims-common.jar"

    aput-object p0, p1, v11

    const-string p0, "/system/framework/mms-common.jar"

    aput-object p0, p1, v12

    const-string p0, "/system/framework/android.policy.jar"

    aput-object p0, p1, v6

    const-string p0, "/system/framework/apache-xml.jar"

    aput-object p0, p1, v13

    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_c
    const/16 v10, 0x17

    if-gt p1, v10, :cond_d

    new-array p1, v13, [Ljava/lang/String;

    const-string v9, "/system/framework/core-libart.jar"

    aput-object v9, p1, v3

    const-string v3, "/system/framework/conscrypt.jar"

    aput-object v3, p1, v2

    const-string v2, "/system/framework/okhttp.jar"

    aput-object v2, p1, v4

    const-string v2, "/system/framework/core-junit.jar"

    aput-object v2, p1, v0

    const-string v0, "/system/framework/bouncycastle.jar"

    aput-object v0, p1, v1

    const-string v0, "/system/framework/ext.jar"

    aput-object v0, p1, v5

    const-string v0, "/system/framework/framework.jar"

    aput-object v0, p1, v7

    const-string v0, "/system/framework/telephony-common.jar"

    aput-object v0, p1, v8

    const-string v0, "/system/framework/voip-common.jar"

    aput-object v0, p1, p0

    const-string p0, "/system/framework/ims-common.jar"

    aput-object p0, p1, v11

    const-string p0, "/system/framework/apache-xml.jar"

    aput-object p0, p1, v12

    const-string p0, "/system/framework/org.apache.http.legacy.boot.jar"

    aput-object p0, p1, v6

    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_d
    new-array p1, v9, [Ljava/lang/String;

    const-string v9, "/system/framework/core-oj.jar"

    aput-object v9, p1, v3

    const-string v3, "/system/framework/core-libart.jar"

    aput-object v3, p1, v2

    const-string v2, "/system/framework/conscrypt.jar"

    aput-object v2, p1, v4

    const-string v2, "/system/framework/okhttp.jar"

    aput-object v2, p1, v0

    const-string v0, "/system/framework/core-junit.jar"

    aput-object v0, p1, v1

    const-string v0, "/system/framework/bouncycastle.jar"

    aput-object v0, p1, v5

    const-string v0, "/system/framework/ext.jar"

    aput-object v0, p1, v7

    const-string v0, "/system/framework/framework.jar"

    aput-object v0, p1, v8

    const-string v0, "/system/framework/telephony-common.jar"

    aput-object v0, p1, p0

    const-string p0, "/system/framework/voip-common.jar"

    aput-object p0, p1, v11

    const-string p0, "/system/framework/ims-common.jar"

    aput-object p0, p1, v12

    const-string p0, "/system/framework/apache-xml.jar"

    aput-object p0, p1, v6

    const-string p0, "/system/framework/org.apache.http.legacy.boot.jar"

    aput-object p0, p1, v13

    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private getFilenameForOatDependency(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".art"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".oat"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private loadEntry(Ljava/io/File;Z)V
    .registers 10
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassPathResolver;->loadedFiles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassPathResolver;->opcodes:Lorg/jf/dexlib2/Opcodes;

    invoke-static {p1, v0}, Lorg/jf/dexlib2/DexFileFactory;->loadDexContainer(Ljava/io/File;Lorg/jf/dexlib2/Opcodes;)Lorg/jf/dexlib2/iface/MultiDexContainer;

    move-result-object v0
    :try_end_0
    .catch Lorg/jf/dexlib2/DexFileFactory$UnsupportedFileTypeException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/MultiDexContainer;->getDexEntryNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ClassPathResolver;->loadedFiles:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lorg/jf/dexlib2/analysis/ClassPathResolver;->classProviders:Ljava/util/List;

    new-instance v6, Lorg/jf/dexlib2/analysis/DexClassProvider;

    invoke-interface {v0, v2}, Lorg/jf/dexlib2/iface/MultiDexContainer;->getEntry(Ljava/lang/String;)Lorg/jf/dexlib2/iface/DexFile;

    move-result-object v2

    invoke-direct {v6, v2}, Lorg/jf/dexlib2/analysis/DexClassProvider;-><init>(Lorg/jf/dexlib2/iface/DexFile;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    instance-of p2, v0, Lorg/jf/dexlib2/dexbacked/OatFile;

    if-eqz p2, :cond_2

    check-cast v0, Lorg/jf/dexlib2/dexbacked/OatFile;

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/OatFile;->getBootClassPath()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jf/dexlib2/analysis/ClassPathResolver;->loadOatDependencies(Ljava/io/File;Ljava/util/List;)V
    :try_end_1
    .catch Lorg/jf/dexlib2/analysis/ClassPathResolver$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/jf/dexlib2/analysis/ClassPathResolver$NoDexException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p2

    new-instance v0, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "Error while loading dependencies for oat file %s"

    invoke-direct {v0, p2, p1, v1}, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p2

    new-instance v0, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "Error while loading oat file %s"

    invoke-direct {v0, p2, p1, v1}, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    return-void

    :cond_3
    new-instance p2, Lorg/jf/dexlib2/analysis/ClassPathResolver$NoDexException;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "%s contains no dex file"

    invoke-direct {p2, p1, v0}, Lorg/jf/dexlib2/analysis/ClassPathResolver$NoDexException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;

    invoke-direct {p2, p1}, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private loadLocalClassPathEntry(Ljava/lang/String;)Z
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/jf/dexlib2/analysis/ClassPathResolver;->loadEntry(Ljava/io/File;Z)V
    :try_end_0
    .catch Lorg/jf/dexlib2/DexFileFactory$UnsupportedFileTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v3, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "Couldn\'t load classpath entry %s"

    invoke-direct {v3, v0, p1, v1}, Lorg/jf/dexlib2/analysis/ClassPathResolver$ResolveException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_0
    return v2
.end method

.method private loadLocalOrDeviceBootClassPathEntry(Ljava/lang/String;)V
    .registers 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/ClassPathResolver;->loadLocalClassPathEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/jf/dexlib2/analysis/ClassPathResolver;->splitDevicePath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-char v1, Ljava/io/File;->pathSeparatorChar:C

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ClassPathResolver;->classPathDirs:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v7, v5}, Lorg/jf/dexlib2/analysis/ClassPathResolver;->loadEntry(Ljava/io/File;Z)V

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/jf/dexlib2/analysis/ClassPathResolver$NotFoundException;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "Could not find classpath entry %s"

    invoke-direct {v0, p1, v1}, Lorg/jf/dexlib2/analysis/ClassPathResolver$NotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private loadOatDependencies(Ljava/io/File;Ljava/util/List;)V
    .registers 7
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/analysis/ClassPathResolver;->getFilenameForOatDependency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, v3}, Lorg/jf/dexlib2/analysis/ClassPathResolver;->loadEntry(Ljava/io/File;Z)V

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/jf/dexlib2/analysis/ClassPathResolver$NotFoundException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "Cannot find dependency %s in %s"

    invoke-direct {p2, p1, v1}, Lorg/jf/dexlib2/analysis/ClassPathResolver$NotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_1
    return-void
.end method

.method private static splitDevicePath(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/16 v0, 0x2f

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getResolvedClassProviders()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassPathResolver;->classProviders:Ljava/util/List;

    return-object v0
.end method
