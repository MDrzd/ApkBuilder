.class Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$5;
.super Ljava/util/AbstractList;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$5;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$5;->get(I)Lorg/jf/dexlib2/dexbacked/reference/DexBackedFieldReference;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/jf/dexlib2/dexbacked/reference/DexBackedFieldReference;
    .registers 4

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$5;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getFieldCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    new-instance v0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedFieldReference;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$5;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {v0, v1, p1}, Lorg/jf/dexlib2/dexbacked/reference/DexBackedFieldReference;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$5;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getFieldCount()I

    move-result v0

    return v0
.end method
