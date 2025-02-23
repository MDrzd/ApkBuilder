.class public abstract Lorg/jf/dexlib2/builder/BuilderExceptionHandler;
.super Lorg/jf/dexlib2/base/BaseExceptionHandler;


# instance fields
.field protected final handler:Lorg/jf/dexlib2/builder/Label;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/jf/dexlib2/builder/Label;)V
    .registers 2
    .param p1    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseExceptionHandler;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/builder/BuilderExceptionHandler;->handler:Lorg/jf/dexlib2/builder/Label;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/builder/BuilderExceptionHandler$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/builder/BuilderExceptionHandler;-><init>(Lorg/jf/dexlib2/builder/Label;)V

    return-void
.end method

.method static newExceptionHandler(Ljava/lang/String;Lorg/jf/dexlib2/builder/Label;)Lorg/jf/dexlib2/builder/BuilderExceptionHandler;
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/jf/dexlib2/builder/BuilderExceptionHandler;->newExceptionHandler(Lorg/jf/dexlib2/builder/Label;)Lorg/jf/dexlib2/builder/BuilderExceptionHandler;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/builder/BuilderExceptionHandler$3;

    invoke-direct {v0, p1, p0}, Lorg/jf/dexlib2/builder/BuilderExceptionHandler$3;-><init>(Lorg/jf/dexlib2/builder/Label;Ljava/lang/String;)V

    return-object v0
.end method

.method static newExceptionHandler(Lorg/jf/dexlib2/builder/Label;)Lorg/jf/dexlib2/builder/BuilderExceptionHandler;
    .registers 2
    .param p0    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance v0, Lorg/jf/dexlib2/builder/BuilderExceptionHandler$2;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/builder/BuilderExceptionHandler$2;-><init>(Lorg/jf/dexlib2/builder/Label;)V

    return-object v0
.end method

.method static newExceptionHandler(Lorg/jf/dexlib2/iface/reference/TypeReference;Lorg/jf/dexlib2/builder/Label;)Lorg/jf/dexlib2/builder/BuilderExceptionHandler;
    .registers 3
    .param p0    # Lorg/jf/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/jf/dexlib2/builder/BuilderExceptionHandler;->newExceptionHandler(Lorg/jf/dexlib2/builder/Label;)Lorg/jf/dexlib2/builder/BuilderExceptionHandler;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/builder/BuilderExceptionHandler$1;

    invoke-direct {v0, p1, p0}, Lorg/jf/dexlib2/builder/BuilderExceptionHandler$1;-><init>(Lorg/jf/dexlib2/builder/Label;Lorg/jf/dexlib2/iface/reference/TypeReference;)V

    return-object v0
.end method


# virtual methods
.method public getHandler()Lorg/jf/dexlib2/builder/Label;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/BuilderExceptionHandler;->handler:Lorg/jf/dexlib2/builder/Label;

    return-object v0
.end method
