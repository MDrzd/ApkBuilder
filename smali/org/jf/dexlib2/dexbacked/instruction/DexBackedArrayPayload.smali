.class public Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;
.super Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;


# static fields
.field private static final ELEMENTS_OFFSET:I = 0x8

.field private static final ELEMENT_COUNT_OFFSET:I = 0x4

.field private static final ELEMENT_WIDTH_OFFSET:I = 0x2

.field public static final OPCODE:Lorg/jf/dexlib2/Opcode;


# instance fields
.field public final elementCount:I

.field public final elementWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/jf/dexlib2/Opcode;->ARRAY_PAYLOAD:Lorg/jf/dexlib2/Opcode;

    sput-object v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->OPCODE:Lorg/jf/dexlib2/Opcode;

    return-void
.end method

.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V
    .registers 6
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->OPCODE:Lorg/jf/dexlib2/Opcode;

    invoke-direct {p0, p1, v0, p2}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedInstruction;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;Lorg/jf/dexlib2/Opcode;I)V

    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readUshort(I)I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementWidth:I

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->readSmallUint(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementCount:I

    iget p1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementWidth:I

    int-to-long p1, p1

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementCount:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/jf/util/ExceptionWithContext;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Invalid array-payload instruction: element width*count overflows"

    invoke-direct {p1, v0, p2}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public getArrayElements()Ljava/util/List;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->instructionStart:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementWidth:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    if-eq v2, v1, :cond_0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Invalid element width: %d"

    invoke-direct {v0, v2, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    new-instance v1, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload$2;

    invoke-direct {v1, p0, v0}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload$2;-><init>(Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;I)V

    return-object v1

    :pswitch_1
    new-instance v1, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload$1;

    invoke-direct {v1, p0, v0}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload$1;-><init>(Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;I)V

    return-object v1

    :cond_0
    new-instance v1, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload$4;

    invoke-direct {v1, p0, v0}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload$4;-><init>(Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;I)V

    return-object v1

    :cond_1
    new-instance v1, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload$3;

    invoke-direct {v1, p0, v0}, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload$3;-><init>(Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;I)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCodeUnits()I
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementWidth:I

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementCount:I

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getElementWidth()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/instruction/DexBackedArrayPayload;->elementWidth:I

    return v0
.end method
