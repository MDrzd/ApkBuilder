.class public Lorg/jf/dexlib2/dexbacked/DexBackedTypedExceptionHandler;
.super Lorg/jf/dexlib2/dexbacked/DexBackedExceptionHandler;


# instance fields
.field private final dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final handlerCodeAddress:I

.field private final typeId:I


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexReader;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedExceptionHandler;-><init>()V

    iget-object v0, p1, Lorg/jf/dexlib2/dexbacked/DexReader;->dexBuf:Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;

    check-cast v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iput-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTypedExceptionHandler;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTypedExceptionHandler;->typeId:I

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTypedExceptionHandler;->handlerCodeAddress:I

    return-void
.end method


# virtual methods
.method public getExceptionType()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTypedExceptionHandler;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTypedExceptionHandler;->typeId:I

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandlerCodeAddress()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedTypedExceptionHandler;->handlerCodeAddress:I

    return v0
.end method
