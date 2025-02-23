.class public Lorg/jf/dexlib2/writer/builder/BuilderTryBlock;
.super Lorg/jf/dexlib2/base/BaseTryBlock;


# instance fields
.field private final codeUnitCount:I

.field private final exceptionHandlers:Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final startCodeAddress:I


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .registers 4
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseTryBlock;-><init>()V

    iput p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderTryBlock;->startCodeAddress:I

    iput p2, p0, Lorg/jf/dexlib2/writer/builder/BuilderTryBlock;->codeUnitCount:I

    iput-object p3, p0, Lorg/jf/dexlib2/writer/builder/BuilderTryBlock;->exceptionHandlers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCodeUnitCount()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderTryBlock;->codeUnitCount:I

    return v0
.end method

.method public getExceptionHandlers()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderTryBlock;->exceptionHandlers:Ljava/util/List;

    return-object v0
.end method

.method public getStartCodeAddress()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderTryBlock;->startCodeAddress:I

    return v0
.end method
