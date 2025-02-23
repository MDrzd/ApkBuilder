.class public Lorg/jf/dexlib2/dexbacked/raw/MapItem;
.super Ljava/lang/Object;


# static fields
.field public static final ITEM_SIZE:I = 0xc

.field public static final OFFSET_OFFSET:I = 0x8

.field public static final SIZE_OFFSET:I = 0x4

.field public static final TYPE_OFFSET:I


# instance fields
.field private final dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

.field private final offset:I


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->offset:I

    return-void
.end method

.method public static makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;
    .registers 3
    .param p0    # Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/dexbacked/raw/MapItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/dexbacked/raw/MapItem$1;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/dexbacked/raw/MapItem$1;-><init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->offset:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/jf/dexlib2/dexbacked/raw/ItemType;->getItemTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOffset()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->offset:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getType()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->offset:I

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUshort(I)I

    move-result v0

    return v0
.end method
