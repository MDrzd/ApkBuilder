.class public Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final dexContainer:Lorg/jf/dexlib2/iface/MultiDexContainer;

.field private final filename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/jf/dexlib2/DexFileFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jf/dexlib2/iface/MultiDexContainer;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/iface/MultiDexContainer;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;->filename:Ljava/lang/String;

    iput-object p2, p0, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;->dexContainer:Lorg/jf/dexlib2/iface/MultiDexContainer;

    return-void
.end method


# virtual methods
.method public findEntry(Ljava/lang/String;Z)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .registers 12
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object p2, p0, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;->dexContainer:Lorg/jf/dexlib2/iface/MultiDexContainer;

    invoke-interface {p2, p1}, Lorg/jf/dexlib2/iface/MultiDexContainer;->getEntry(Ljava/lang/String;)Lorg/jf/dexlib2/iface/DexFile;

    move-result-object p2

    check-cast p2, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    new-instance p2, Lorg/jf/dexlib2/DexFileFactory$DexFileNotFoundException;

    const-string v3, "Could not find entry %s in %s."

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v2

    iget-object v5, p0, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;->filename:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-direct {p2, v3, v4}, Lorg/jf/dexlib2/DexFileFactory$DexFileNotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
    :try_end_0
    .catch Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$NotADexFile; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p2, Lorg/jf/dexlib2/DexFileFactory$UnsupportedFileTypeException;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-object p1, p0, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;->filename:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "Entry %s in %s is not a dex file"

    invoke-direct {p2, p1, v0}, Lorg/jf/dexlib2/DexFileFactory$UnsupportedFileTypeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;->dexContainer:Lorg/jf/dexlib2/iface/MultiDexContainer;

    invoke-interface {v6}, Lorg/jf/dexlib2/iface/MultiDexContainer;->getDexEntryNames()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, p1}, Lorg/jf/dexlib2/DexFileFactory;->access$000(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;->dexContainer:Lorg/jf/dexlib2/iface/MultiDexContainer;

    invoke-interface {v8, v7}, Lorg/jf/dexlib2/iface/MultiDexContainer;->getEntry(Ljava/lang/String;)Lorg/jf/dexlib2/iface/DexFile;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v7, p1}, Lorg/jf/dexlib2/DexFileFactory;->access$100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;->dexContainer:Lorg/jf/dexlib2/iface/MultiDexContainer;

    invoke-interface {v8, v7}, Lorg/jf/dexlib2/iface/MultiDexContainer;->getEntry(Ljava/lang/String;)Lorg/jf/dexlib2/iface/DexFile;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v1, :cond_5

    :try_start_1
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    :try_end_1
    .catch Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$NotADexFile; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    new-instance p1, Lorg/jf/dexlib2/DexFileFactory$UnsupportedFileTypeException;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v0, v2

    iget-object p2, p0, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;->filename:Ljava/lang/String;

    aput-object p2, v0, v1

    const-string p2, "Entry %s in %s is not a dex file"

    invoke-direct {p1, p2, v0}, Lorg/jf/dexlib2/DexFileFactory$UnsupportedFileTypeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x3

    if-gt v3, v1, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p2

    if-gt p2, v1, :cond_6

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    return-object p1

    :cond_6
    new-instance p2, Lorg/jf/dexlib2/DexFileFactory$MultipleMatchingDexEntriesException;

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;->filename:Ljava/lang/String;

    aput-object v5, v3, v2

    aput-object p1, v3, v1

    const-string p1, ", "

    invoke-static {p1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "Multiple dex entries in %s match %s: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-direct {p2, p1, v0}, Lorg/jf/dexlib2/DexFileFactory$MultipleMatchingDexEntriesException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_7
    new-instance p2, Lorg/jf/dexlib2/DexFileFactory$DexFileNotFoundException;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;->filename:Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    const-string p1, "Could not find a dex entry in %s matching %s"

    invoke-direct {p2, p1, v0}, Lorg/jf/dexlib2/DexFileFactory$DexFileNotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_8
    new-instance v3, Lorg/jf/dexlib2/DexFileFactory$MultipleMatchingDexEntriesException;

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/jf/dexlib2/DexFileFactory$DexEntryFinder;->filename:Ljava/lang/String;

    aput-object v5, v4, v2

    aput-object p1, v4, v1

    const-string p1, ", "

    invoke-static {p1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    const-string p1, "Multiple entries in %s match %s: %s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-direct {v3, p1, p2}, Lorg/jf/dexlib2/DexFileFactory$MultipleMatchingDexEntriesException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method
