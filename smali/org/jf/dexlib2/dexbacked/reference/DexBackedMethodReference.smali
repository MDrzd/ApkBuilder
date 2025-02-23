.class public Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;
.super Lorg/jf/dexlib2/base/reference/BaseMethodReference;


# instance fields
.field public final dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final methodIdItemOffset:I

.field private protoIdItemOffset:I


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseMethodReference;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getMethodIdItemOffset(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->methodIdItemOffset:I

    return-void
.end method

.method private getProtoIdItemOffset()I
    .registers 4

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->protoIdItemOffset:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->methodIdItemOffset:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUshort(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getProtoIdItemOffset(I)I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->protoIdItemOffset:I

    :cond_0
    iget v0, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->protoIdItemOffset:I

    return v0
.end method


# virtual methods
.method public getDefiningClass()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->methodIdItemOffset:I

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUshort(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->methodIdItemOffset:I

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->getProtoIdItemOffset()I

    move-result v0

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    new-instance v2, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference$1;-><init>(Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;II)V

    return-object v2

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->getProtoIdItemOffset()I

    move-result v0

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v2, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
