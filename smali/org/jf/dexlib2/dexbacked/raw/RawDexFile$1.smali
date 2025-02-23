.class Lorg/jf/dexlib2/dexbacked/raw/RawDexFile$1;
.super Lorg/jf/dexlib2/dexbacked/util/FixedSizeList;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

.field final synthetic val$mapOffset:I

.field final synthetic val$mapSize:I


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;II)V
    .registers 4

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile$1;->this$0:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile$1;->val$mapOffset:I

    iput p3, p0, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile$1;->val$mapSize:I

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/util/FixedSizeList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic readItem(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile$1;->readItem(I)Lorg/jf/dexlib2/dexbacked/raw/MapItem;

    move-result-object p1

    return-object p1
.end method

.method public readItem(I)Lorg/jf/dexlib2/dexbacked/raw/MapItem;
    .registers 4

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile$1;->val$mapOffset:I

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr v0, p1

    new-instance p1, Lorg/jf/dexlib2/dexbacked/raw/MapItem;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile$1;->this$0:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-direct {p1, v1, v0}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile$1;->val$mapSize:I

    return v0
.end method
