.class public Lorg/jf/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;
.super Lorg/jf/dexlib2/base/value/BaseArrayEncodedValue;

# interfaces
.implements Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;


# instance fields
.field public final dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final elementCount:I

.field private final encodedArrayOffset:I


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexReader;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseArrayEncodedValue;-><init>()V

    iget-object v0, p1, Lorg/jf/dexlib2/dexbacked/DexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    check-cast v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput-object v0, p0, Lorg/jf/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->elementCount:I

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->encodedArrayOffset:I

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->elementCount:I

    invoke-static {p1, v0}, Lorg/jf/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->skipElementsFrom(Lorg/jf/dexlib2/dexbacked/DexReader;I)V

    return-void
.end method

.method private static skipElementsFrom(Lorg/jf/dexlib2/dexbacked/DexReader;I)V
    .registers 3
    .param p0    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-static {p0}, Lorg/jf/dexlib2/dexbacked/value/DexBackedEncodedValue;->skipFrom(Lorg/jf/dexlib2/dexbacked/DexReader;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static skipFrom(Lorg/jf/dexlib2/dexbacked/DexReader;)V
    .registers 2
    .param p0    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v0

    invoke-static {p0, v0}, Lorg/jf/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->skipElementsFrom(Lorg/jf/dexlib2/dexbacked/DexReader;I)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/util/List;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/dexbacked/value/DexBackedArrayEncodedValue$1;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->encodedArrayOffset:I

    iget v3, p0, Lorg/jf/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->elementCount:I

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/jf/dexlib2/dexbacked/value/DexBackedArrayEncodedValue$1;-><init>(Lorg/jf/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V

    return-object v0
.end method
