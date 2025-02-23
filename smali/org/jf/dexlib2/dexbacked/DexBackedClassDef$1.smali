.class Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$1;
.super Ljava/util/AbstractList;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

.field final synthetic val$interfacesOffset:I

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;II)V
    .registers 4

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$1;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$1;->val$interfacesOffset:I

    iput p3, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$1;->val$size:I

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$1;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$1;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    iget-object v0, v0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$1;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$1;->val$interfacesOffset:I

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUshort(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getType(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$1;->val$size:I

    return v0
.end method
