.class abstract Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload$1ReturnedList;
.super Lorg/jf/dexlib2/dexbacked/util/FixedSizeList;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload$1ReturnedList;->this$0:Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/util/FixedSizeList;-><init>()V

    return-void
.end method


# virtual methods
.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload$1ReturnedList;->this$0:Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;

    iget v0, v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementCount:I

    return v0
.end method
