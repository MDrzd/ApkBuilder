.class public Lorg/jf/dexlib2/dexbacked/value/DexBackedMethodEncodedValue;
.super Lorg/jf/dexlib2/base/value/BaseMethodEncodedValue;


# instance fields
.field private final MethodIndex:I

.field public final dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexReader;I)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseMethodEncodedValue;-><init>()V

    iget-object v0, p1, Lorg/jf/dexlib2/dexbacked/DexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    check-cast v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput-object v0, p0, Lorg/jf/dexlib2/dexbacked/value/DexBackedMethodEncodedValue;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSizedSmallUint(I)I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/value/DexBackedMethodEncodedValue;->MethodIndex:I

    return-void
.end method


# virtual methods
.method public getValue()Lorg/jf/dexlib2/iface/reference/MethodReference;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/value/DexBackedMethodEncodedValue;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/value/DexBackedMethodEncodedValue;->MethodIndex:I

    invoke-direct {v0, v1, v2}, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object v0
.end method
