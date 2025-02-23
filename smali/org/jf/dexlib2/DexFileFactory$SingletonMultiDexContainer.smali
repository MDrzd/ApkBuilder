.class Lorg/jf/dexlib2/DexFileFactory$SingletonMultiDexContainer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/MultiDexContainer;


# instance fields
.field private final dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

.field private final entryName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/DexFileFactory$SingletonMultiDexContainer;->entryName:Ljava/lang/String;

    iput-object p2, p0, Lorg/jf/dexlib2/DexFileFactory$SingletonMultiDexContainer;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    return-void
.end method


# virtual methods
.method public getDexEntryNames()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/DexFileFactory$SingletonMultiDexContainer;->entryName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/DexFileFactory$SingletonMultiDexContainer;->entryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/jf/dexlib2/DexFileFactory$SingletonMultiDexContainer;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getEntry(Ljava/lang/String;)Lorg/jf/dexlib2/iface/DexFile;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/DexFileFactory$SingletonMultiDexContainer;->getEntry(Ljava/lang/String;)Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    move-result-object p1

    return-object p1
.end method

.method public getOpcodes()Lorg/jf/dexlib2/Opcodes;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/DexFileFactory$SingletonMultiDexContainer;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getOpcodes()Lorg/jf/dexlib2/Opcodes;

    move-result-object v0

    return-object v0
.end method
