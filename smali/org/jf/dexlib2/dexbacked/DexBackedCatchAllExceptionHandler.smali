.class public Lorg/jf/dexlib2/dexbacked/DexBackedCatchAllExceptionHandler;
.super Lorg/jf/dexlib2/dexbacked/DexBackedExceptionHandler;


# instance fields
.field private final handlerCodeAddress:I


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexReader;)V
    .registers 2
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedExceptionHandler;-><init>()V

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedCatchAllExceptionHandler;->handlerCodeAddress:I

    return-void
.end method


# virtual methods
.method public getExceptionType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandlerCodeAddress()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedCatchAllExceptionHandler;->handlerCodeAddress:I

    return v0
.end method
