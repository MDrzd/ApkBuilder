.class final Lorg/jf/dexlib2/builder/BuilderExceptionHandler$2;
.super Lorg/jf/dexlib2/builder/BuilderExceptionHandler;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/builder/Label;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/builder/BuilderExceptionHandler;-><init>(Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/builder/BuilderExceptionHandler$1;)V

    return-void
.end method


# virtual methods
.method public final getExceptionType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHandlerCodeAddress()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/builder/BuilderExceptionHandler$2;->handler:Lorg/jf/dexlib2/builder/Label;

    invoke-virtual {v0}, Lorg/jf/dexlib2/builder/Label;->getCodeAddress()I

    move-result v0

    return v0
.end method
