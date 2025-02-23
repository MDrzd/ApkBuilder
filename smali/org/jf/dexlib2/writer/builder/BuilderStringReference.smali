.class public Lorg/jf/dexlib2/writer/builder/BuilderStringReference;
.super Lorg/jf/dexlib2/base/reference/BaseStringReference;

# interfaces
.implements Lorg/jf/dexlib2/writer/builder/BuilderReference;


# instance fields
.field index:I

.field final string:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseStringReference;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;->index:I

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;->index:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;->string:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(I)V
    .registers 2

    iput p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;->index:I

    return-void
.end method
