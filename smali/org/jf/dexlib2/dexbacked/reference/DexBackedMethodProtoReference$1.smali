.class Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodProtoReference$1;
.super Lorg/jf/dexlib2/dexbacked/util/FixedSizeList;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodProtoReference;

.field final synthetic val$paramListStart:I

.field final synthetic val$parameterCount:I


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodProtoReference;II)V
    .registers 4

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodProtoReference$1;->this$0:Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodProtoReference;

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodProtoReference$1;->val$paramListStart:I

    iput p3, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodProtoReference$1;->val$parameterCount:I

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/util/FixedSizeList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic readItem(I)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodProtoReference$1;->readItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readItem(I)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodProtoReference$1;->this$0:Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodProtoReference;

    iget-object v0, v0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodProtoReference;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodProtoReference$1;->this$0:Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodProtoReference;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodProtoReference;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodProtoReference$1;->val$paramListStart:I

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

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodProtoReference$1;->val$parameterCount:I

    return v0
.end method
