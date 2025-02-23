.class Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$1;
.super Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$1;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic readItem(I)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$1;->readItem(I)Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    move-result-object p1

    return-object p1
.end method

.method public readItem(I)Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$1;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$1;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {v2, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getClassDefItemOffset(I)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$1;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->access$000(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;)I

    move-result v0

    return v0
.end method
