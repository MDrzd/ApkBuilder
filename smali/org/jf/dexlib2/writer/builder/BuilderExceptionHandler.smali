.class public Lorg/jf/dexlib2/writer/builder/BuilderExceptionHandler;
.super Lorg/jf/dexlib2/base/BaseExceptionHandler;


# instance fields
.field final exceptionType:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final handlerCodeAddress:I


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;I)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseExceptionHandler;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderExceptionHandler;->exceptionType:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    iput p2, p0, Lorg/jf/dexlib2/writer/builder/BuilderExceptionHandler;->handlerCodeAddress:I

    return-void
.end method


# virtual methods
.method public getExceptionType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderExceptionHandler;->exceptionType:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderExceptionHandler;->exceptionType:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {v0}, Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandlerCodeAddress()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderExceptionHandler;->handlerCodeAddress:I

    return v0
.end method
