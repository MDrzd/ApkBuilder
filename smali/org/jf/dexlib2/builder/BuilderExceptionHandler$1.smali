.class final Lorg/jf/dexlib2/builder/BuilderExceptionHandler$1;
.super Lorg/jf/dexlib2/builder/BuilderExceptionHandler;


# instance fields
.field final synthetic val$exceptionType:Lorg/jf/dexlib2/iface/reference/TypeReference;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/iface/reference/TypeReference;)V
    .registers 3

    iput-object p2, p0, Lorg/jf/dexlib2/builder/BuilderExceptionHandler$1;->val$exceptionType:Lorg/jf/dexlib2/iface/reference/TypeReference;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/builder/BuilderExceptionHandler;-><init>(Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/builder/BuilderExceptionHandler$1;)V

    return-void
.end method


# virtual methods
.method public final getExceptionType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/BuilderExceptionHandler$1;->val$exceptionType:Lorg/jf/dexlib2/iface/reference/TypeReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getExceptionTypeReference()Lorg/jf/dexlib2/iface/reference/TypeReference;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/BuilderExceptionHandler$1;->val$exceptionType:Lorg/jf/dexlib2/iface/reference/TypeReference;

    return-object v0
.end method

.method public final getHandlerCodeAddress()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/builder/BuilderExceptionHandler$1;->handler:Lorg/jf/dexlib2/builder/Label;

    invoke-virtual {v0}, Lorg/jf/dexlib2/builder/Label;->getCodeAddress()I

    move-result v0

    return v0
.end method
